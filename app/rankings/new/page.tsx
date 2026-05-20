'use client'
import { useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import { useAuth } from '@/lib/auth-context'
import { supabase } from '@/lib/supabase'
import { Nav } from '@/components/Nav'
import { StarsBg } from '@/components/StarsBg'
import { Cursor } from '@/components/Cursor'
import { ArrowRight, ChevronLeft } from 'lucide-react'
import type { Category } from '@/lib/supabase'

const cats: {value:Category;label:string;desc:string;color:string}[] = [
  {value:'kpop',label:'К-поп',desc:'Айдолы, группы, солисты',color:'#f472b6'},
  {value:'esports',label:'Киберспорт',desc:'CS2, Dota2, LoL, Valorant',color:'#818cf8'},
  {value:'actor',label:'Актёры',desc:'Дорамы и кино',color:'var(--p3)'},
  {value:'anime',label:'Аниме',desc:'Персонажи и сейю',color:'#fbbf24'},
  {value:'general',label:'Другое',desc:'Что угодно своё',color:'#34d399'},
]

export default function NewRanking() {
  const { user } = useAuth()
  const router = useRouter()
  const [title, setTitle] = useState('')
  const [cat, setCat] = useState<Category>('kpop')
  const [loading, setLoading] = useState(false)

  async function create() {
    if (!user || !title.trim()) return
    setLoading(true)
    const { data, error } = await supabase.from('rankings').insert({ user_id: user.id, title: title.trim(), category: cat }).select().single()
    if (!error && data) router.push(`/rankings/${data.id}/edit`)
    else setLoading(false)
  }

  return (
    <>
      <Cursor />
      <StarsBg />
      <Nav />
      <main style={{maxWidth:'520px',margin:'0 auto',padding:'80px 24px 48px',position:'relative',zIndex:1}}>
        <div style={{display:'flex',alignItems:'center',gap:'12px',marginBottom:'24px'}}>
          <Link href="/rankings" style={{padding:'8px',borderRadius:'10px',color:'var(--text3)',display:'flex',alignItems:'center',transition:'all .2s',textDecoration:'none'}}
            onMouseEnter={e=>{e.currentTarget.style.color='var(--text)';e.currentTarget.style.background='rgba(255,255,255,.05)'}}
            onMouseLeave={e=>{e.currentTarget.style.color='var(--text3)';e.currentTarget.style.background='none'}}>
            <ChevronLeft size={18} />
          </Link>
          <h1 style={{fontFamily:'Bebas Neue',fontSize:'32px',letterSpacing:'3px'}} className="shine-text">НОВЫЙ РЕЙТИНГ</h1>
        </div>

        <div style={{marginBottom:'20px'}}>
          <label style={{fontSize:'11px',color:'var(--text3)',display:'block',marginBottom:'8px',letterSpacing:'.08em'}}>НАЗВАНИЕ</label>
          <input className="cl-input" style={{fontSize:'15px'}} placeholder="Лучшие айдолы 2025, Топ CS2 игроков..." value={title} onChange={e=>setTitle(e.target.value)} onKeyDown={e=>e.key==='Enter'&&create()} autoFocus />
        </div>

        <div style={{marginBottom:'28px'}}>
          <label style={{fontSize:'11px',color:'var(--text3)',display:'block',marginBottom:'8px',letterSpacing:'.08em'}}>КАТЕГОРИЯ</label>
          <div style={{display:'grid',gridTemplateColumns:'1fr 1fr',gap:'8px'}}>
            {cats.map(c => (
              <button key={c.value} onClick={()=>setCat(c.value)} style={{
                padding:'12px',borderRadius:'12px',textAlign:'left',cursor:'none',transition:'all .2s',
                background: cat===c.value ? 'rgba(139,92,246,.12)' : 'var(--bg2)',
                border: cat===c.value ? '1px solid rgba(139,92,246,.4)' : '1px solid var(--border)',
              }}>
                <p style={{fontSize:'13px',fontWeight:500,color:cat===c.value?c.color:'var(--text)',marginBottom:'2px'}}>{c.label}</p>
                <p style={{fontSize:'11px',color:'var(--text3)'}}>{c.desc}</p>
              </button>
            ))}
          </div>
        </div>

        <button onClick={create} disabled={!title.trim()||loading} className="btn-primary" style={{width:'100%',justifyContent:'center',fontSize:'14px',padding:'13px'}}>
          {loading ? <span style={{width:'16px',height:'16px',borderRadius:'50%',border:'2px solid rgba(255,255,255,.3)',borderTopColor:'#fff',animation:'spin 1s linear infinite',display:'inline-block'}} /> : <>Создать и добавить людей <ArrowRight size={15} /></>}
        </button>
      </main>
    </>
  )
}
