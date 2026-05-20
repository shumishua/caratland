'use client'
import { useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import { supabase } from '@/lib/supabase'
import { StarsBg } from '@/components/StarsBg'
import { Cursor } from '@/components/Cursor'
import { ArrowLeft } from 'lucide-react'

export default function AuthPage() {
  const [mode, setMode] = useState<'login'|'signup'>('login')
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [username, setUsername] = useState('')
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)
  const router = useRouter()

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    setError(''); setLoading(true)
    if (mode === 'signup') {
      const { error: err } = await supabase.auth.signUp({ email, password })
      if (err) { setError(err.message); setLoading(false); return }
      if (username) {
        const { data: { user } } = await supabase.auth.getUser()
        if (user) await supabase.from('profiles').update({ username }).eq('id', user.id)
      }
    } else {
      const { error: err } = await supabase.auth.signInWithPassword({ email, password })
      if (err) { setError('Неверный email или пароль'); setLoading(false); return }
    }
    router.push('/rankings')
  }

  return (
    <>
      <Cursor />
      <StarsBg />
      <main style={{minHeight:'100vh',display:'flex',alignItems:'center',justifyContent:'center',padding:'24px',position:'relative',zIndex:1}}>
        <div style={{width:'100%',maxWidth:'360px'}}>
          <div style={{display:'flex',alignItems:'center',gap:'10px',justifyContent:'center',marginBottom:'32px'}}>
            <div className="logo-diamond" />
            <div className="logo-text">CARATLAND</div>
          </div>

          <div className="cl-card" style={{padding:'24px'}}>
            <h1 style={{fontSize:'18px',fontWeight:500,color:'var(--text)',marginBottom:'4px'}}>
              {mode === 'login' ? 'Войти' : 'Создать аккаунт'}
            </h1>
            <p style={{fontSize:'13px',color:'var(--text3)',marginBottom:'20px'}}>
              {mode === 'login' ? 'С возвращением, Carat 🤍' : 'Добро пожаловать в Caratland'}
            </p>

            <form onSubmit={handleSubmit} style={{display:'flex',flexDirection:'column',gap:'12px'}}>
              {mode === 'signup' && (
                <div>
                  <label style={{fontSize:'11px',color:'var(--text3)',display:'block',marginBottom:'6px',letterSpacing:'.06em'}}>НИКНЕЙМ</label>
                  <input className="cl-input" placeholder="например: carat_shumi" value={username} onChange={e=>setUsername(e.target.value)} required />
                </div>
              )}
              <div>
                <label style={{fontSize:'11px',color:'var(--text3)',display:'block',marginBottom:'6px',letterSpacing:'.06em'}}>EMAIL</label>
                <input type="email" className="cl-input" placeholder="you@example.com" value={email} onChange={e=>setEmail(e.target.value)} required />
              </div>
              <div>
                <label style={{fontSize:'11px',color:'var(--text3)',display:'block',marginBottom:'6px',letterSpacing:'.06em'}}>ПАРОЛЬ</label>
                <input type="password" className="cl-input" placeholder="••••••••" value={password} onChange={e=>setPassword(e.target.value)} required minLength={6} />
              </div>
              {error && (
                <div style={{fontSize:'12px',color:'#f87171',background:'rgba(248,113,113,.1)',border:'1px solid rgba(248,113,113,.2)',borderRadius:'8px',padding:'8px 12px'}}>
                  {error}
                </div>
              )}
              <button type="submit" disabled={loading} className="btn-primary" style={{width:'100%',justifyContent:'center',marginTop:'4px'}}>
                {loading ? <span style={{width:'16px',height:'16px',borderRadius:'50%',border:'2px solid rgba(255,255,255,.3)',borderTopColor:'#fff',animation:'spin 1s linear infinite',display:'inline-block'}} /> : mode === 'login' ? 'Войти' : 'Создать аккаунт'}
              </button>
            </form>

            <button onClick={()=>{setMode(mode==='login'?'signup':'login');setError('')}} style={{width:'100%',textAlign:'center',fontSize:'12px',color:'var(--text3)',marginTop:'16px',background:'none',border:'none',cursor:'none',transition:'color .2s'}}
              onMouseEnter={e=>(e.currentTarget.style.color='var(--text2)')}
              onMouseLeave={e=>(e.currentTarget.style.color='var(--text3)')}>
              {mode === 'login' ? 'Нет аккаунта? Зарегистрируйся' : 'Уже есть аккаунт? Войти'}
            </button>
          </div>

          <Link href="/" style={{display:'flex',alignItems:'center',gap:'6px',justifyContent:'center',fontSize:'12px',color:'var(--text3)',marginTop:'20px',textDecoration:'none',transition:'color .2s'}}
            onMouseEnter={e=>(e.currentTarget.style.color='var(--text2)')}
            onMouseLeave={e=>(e.currentTarget.style.color='var(--text3)')}>
            <ArrowLeft size={12} /> На главную
          </Link>
        </div>
      </main>
    </>
  )
}
