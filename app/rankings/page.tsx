'use client'
import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import { useAuth } from '@/lib/auth-context'
import { supabase } from '@/lib/supabase'
import { Nav } from '@/components/Nav'
import { StarsBg } from '@/components/StarsBg'
import { Cursor } from '@/components/Cursor'
import { Plus, Trophy, Clock, Trash2, ChevronRight } from 'lucide-react'
import type { Ranking } from '@/lib/supabase'

const catLabels: Record<string, string> = { kpop:'К-поп', esports:'Киберспорт', actor:'Актёры', anime:'Аниме', general:'Другое' }

export default function Rankings() {
  const { user, loading } = useAuth()
  const router = useRouter()
  const [rankings, setRankings] = useState<Ranking[]>([])
  const [fetching, setFetching] = useState(true)

  useEffect(() => { if (!loading && !user) router.push('/auth') }, [user, loading, router])

  useEffect(() => {
    if (!user) return
    supabase.from('rankings').select('*').eq('user_id', user.id).order('updated_at', {ascending:false})
      .then(({ data }) => { setRankings((data as Ranking[]) || []); setFetching(false) })
  }, [user])

  async function del(id: string) {
    await supabase.from('rankings').delete().eq('id', id)
    setRankings(p => p.filter(r => r.id !== id))
  }

  if (loading || !user) return null

  return (
    <>
      <Cursor />
      <StarsBg />
      <Nav />
      <main style={{maxWidth:'760px',margin:'0 auto',padding:'80px 24px 48px',position:'relative',zIndex:1}}>
        <div style={{display:'flex',alignItems:'center',justifyContent:'space-between',marginBottom:'24px'}}>
          <div>
            <h1 style={{fontFamily:'Bebas Neue',fontSize:'36px',letterSpacing:'4px'}} className="shine-text">МОИ РЕЙТИНГИ</h1>
            <p style={{fontSize:'12px',color:'var(--text3)',marginTop:'2px'}}>{rankings.length} рейтингов</p>
          </div>
          <Link href="/rankings/new" className="btn-primary" style={{fontSize:'13px',padding:'10px 20px'}}>
            <Plus size={14} /> Новый
          </Link>
        </div>

        {fetching ? (
          <div style={{display:'flex',justifyContent:'center',padding:'60px 0'}}>
            <div style={{width:'20px',height:'20px',borderRadius:'50%',border:'2px solid var(--p1)',borderTopColor:'transparent',animation:'spin 1s linear infinite'}} />
          </div>
        ) : rankings.length === 0 ? (
          <div className="cl-card" style={{padding:'60px',textAlign:'center'}}>
            <Trophy size={32} style={{color:'var(--text3)',margin:'0 auto 16px'}} />
            <p style={{color:'var(--text2)',marginBottom:'16px',fontSize:'14px'}}>Пока нет ни одного рейтинга</p>
            <Link href="/rankings/new" className="btn-primary" style={{fontSize:'13px',padding:'10px 20px'}}>
              <Plus size={14} /> Создать первый
            </Link>
          </div>
        ) : (
          <div style={{display:'flex',flexDirection:'column',gap:'8px'}}>
            {rankings.map(r => (
              <div key={r.id} className="cl-card" style={{display:'flex',alignItems:'center',gap:'12px',padding:'14px 16px',cursor:'pointer'}} data-hover>
                <Link href={`/rankings/${r.id}`} style={{flex:1,display:'flex',alignItems:'center',gap:'12px',textDecoration:'none',minWidth:0}}>
                  <div style={{width:'36px',height:'36px',borderRadius:'10px',background:'rgba(139,92,246,.15)',display:'flex',alignItems:'center',justifyContent:'center',flexShrink:0}}>
                    <Trophy size={15} style={{color:'var(--p2)'}} />
                  </div>
                  <div style={{minWidth:0}}>
                    <p style={{fontSize:'14px',fontWeight:500,color:'var(--text)',overflow:'hidden',textOverflow:'ellipsis',whiteSpace:'nowrap'}}>{r.title}</p>
                    <div style={{display:'flex',alignItems:'center',gap:'8px',marginTop:'3px'}}>
                      <span className={`tag tag-${r.category}`}>{catLabels[r.category]}</span>
                      <span style={{fontSize:'11px',color:'var(--text3)',display:'flex',alignItems:'center',gap:'4px'}}>
                        <Clock size={9} />{new Date(r.updated_at).toLocaleDateString('ru-RU')}
                      </span>
                    </div>
                  </div>
                </Link>
                <div style={{display:'flex',gap:'4px',flexShrink:0}}>
                  <button onClick={()=>del(r.id)} style={{padding:'6px',borderRadius:'8px',background:'none',border:'none',cursor:'none',color:'var(--text3)',transition:'all .2s'}}
                    onMouseEnter={e=>{(e.currentTarget as HTMLButtonElement).style.color='#f87171';(e.currentTarget as HTMLButtonElement).style.background='rgba(248,113,113,.1)'}}
                    onMouseLeave={e=>{(e.currentTarget as HTMLButtonElement).style.color='var(--text3)';(e.currentTarget as HTMLButtonElement).style.background='none'}}>
                    <Trash2 size={13} />
                  </button>
                  <Link href={`/rankings/${r.id}/edit`} style={{padding:'6px',borderRadius:'8px',color:'var(--text3)',transition:'all .2s',display:'flex',alignItems:'center'}}
                    onMouseEnter={e=>{e.currentTarget.style.color='var(--text)';e.currentTarget.style.background='rgba(255,255,255,.05)'}}
                    onMouseLeave={e=>{e.currentTarget.style.color='var(--text3)';e.currentTarget.style.background='none'}}>
                    <ChevronRight size={13} />
                  </Link>
                </div>
              </div>
            ))}
          </div>
        )}
      </main>
    </>
  )
}
