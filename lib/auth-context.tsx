'use client'
import { createContext, useContext, useEffect, useState, ReactNode } from 'react'
import { supabase } from '@/lib/supabase'
import type { User } from '@supabase/supabase-js'

interface AuthCtx {
  user: User | null
  username: string | null
  loading: boolean
  signOut: () => void
}

const Ctx = createContext<AuthCtx>({ user: null, username: null, loading: true, signOut: () => {} })

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<User | null>(null)
  const [username, setUsername] = useState<string | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    supabase.auth.getSession().then(({ data }) => {
      setUser(data.session?.user ?? null)
      if (data.session?.user) fetchUsername(data.session.user.id)
      setLoading(false)
    })
    const { data: sub } = supabase.auth.onAuthStateChange((_, session) => {
      setUser(session?.user ?? null)
      if (session?.user) fetchUsername(session.user.id)
      else setUsername(null)
    })
    return () => sub.subscription.unsubscribe()
  }, [])

  async function fetchUsername(uid: string) {
    const { data } = await supabase.from('profiles').select('username').eq('id', uid).single()
    setUsername(data?.username ?? null)
  }

  function signOut() {
    supabase.auth.signOut()
  }

  return (
    <Ctx.Provider value={{ user, username, loading, signOut }}>
      {children}
    </Ctx.Provider>
  )
}

export const useAuth = () => useContext(Ctx)
