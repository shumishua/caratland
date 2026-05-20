'use client'
import { useEffect, useState } from 'react'
import { useParams } from 'next/navigation'
import Link from 'next/link'
import Image from 'next/image'
import { supabase } from '@/lib/supabase'
import { Nav } from '@/components/Nav'
import { StarsBg } from '@/components/StarsBg'
import { Cursor } from '@/components/Cursor'
import { useAuth } from '@/lib/auth-context'
import { Edit, GitCompare, ChevronLeft } from 'lucide-react'
import type { Person, Ranking } from '@/lib/supabase'

const medals = ['🥇','🥈','🥉']
const medalColors = ['#c8ff00','#aaa','#cd7f32']
const catLabels: Record<string,string> = {kpop:'К-поп',esports:'Киберспорт',actor:'Актёры',anime:'Аниме',general:'Другое'}

export default function ViewRanking() {
  const { id } = useParams<{id:string}>()
  const { user } = useAuth()
  const [ranking, setRanking] = useState<Ranking|null>(null)
  const [items, setItems] = useState<Person[]>([])

  useEffect(() => {
    if (!id) return
    supabase.from('rankings').select('*,profiles(username)').eq('id',id).single().then(({data})=>{
      if (data) setRanking({...data,username:(data as any).profiles?.username} as Ranking)
    })
    supabase.from('ranking_items').select('position,people(*)').eq('ranking_id',id).order('position').then(({data})=>{
      if (data) setItems(data.map((d:any)=>d.people))
    })
  },[id])

  const isOwner = user?.id === ranking?.user_id

  return (
    <>
      <Cursor />
      <StarsBg />
      <Nav />
      <main style={{maxWidth:'640px',margin:'0 auto',padding:'80px 24px 48px',position:'relative',zIndex:1}}>
        {ranking && (
          <>
            <div style={{display:'flex',alignItems:'flex-start',justifyContent:'space-between',marginBottom:'24px',gap:'12px'}}>
              <div style={{display:'flex',alignItems:'center',gap:'10px',minWidth:0}}>
                <Link href="/rankings" style={{padding:'8px',borderRadius:'10px',color:'var(--text3)',display:'flex',flexShrink:0,textDecoration:'none',transition:'all .2s'}}
                  onMouseEnter={e=>{e.currentTarget.style.color='var(--text)';e.currentTarget.style.background='rgba(255,255,255,.05)'}}
                  onMouseLeave={e=>{e.currentTarget.style.color='var(--text3)';e.currentTarget.style.background='none'}}>
                  <ChevronLeft size={18} />
                </Link>
                <div style={{minWidth:0}}>
                  <h1 style={{fontFamily:'Bebas Neue',fontSize:'28px',letterSpacing:'3px',overflow:'hidden',textOverflow:'ellipsis',whiteSpace:'nowrap'}} className="shine-text">{ranking.title}</h1>
                  <div style={{display:'flex',alignItems:'center',gap:'8px',marginTop:'4px'}}>
                    <span className={`tag tag-${ranking.category}`}>{catLabels[ranking.category]}</span>
                    <span style={{fontSize:'11px',color:'var(--text3)'}}>· {ranking.username||'аноним'}</span>
                  </div>
                </div>
              </div>
              <div style={{display:'flex',gap:'8px',flexShrink:0}}>
                <Link href="/compare" className="btn-ghost" style={{padding:'8px 14px',fontSize:'12px'}}>
                  <GitCompare size={12} /> Сравнить
                </Link>
                {isOwner && <Link href={`/rankings/${id}/edit`} className="btn-primary" style={{padding:'8px 14px',fontSize:'12px'}}>
                  <Edit size={12} /> Изменить
                </Link>}
              </div>
            </div>

            <div style={{display:'flex',flexDirection:'column',gap:'6px'}}>
              {items.map((p,i)=>(
                <div key={p.id} className="cl-card" style={{display:'flex',alignItems:'center',gap:'12px',padding:'12px 16px'}}>
                  <span style={{fontFamily:'Bebas Neue',fontSize:'22px',width:'32px',textAlign:'center',flexShrink:0,color:i<3?medalColors[i]:'var(--text3)'}}>
                    {i<3?medals[i]:`#${i+1}`}
                  </span>
                  <div style={{width:'40px',height:'40px',borderRadius:'10px',overflow:'hidden',background:'var(--bg3)',flexShrink:0,display:'flex',alignItems:'center',justifyContent:'center',fontSize:'16px',color:'var(--text3)'}}>
                    {p.image_url&&!p.image_url.includes('placeholder')
                      ? <Image src={p.image_url} alt={p.name} width={40} height={40} style={{objectFit:'cover',width:'100%',height:'100%'}} onError={e=>{(e.target as HTMLImageElement).style.display='none'}} />
                      : p.name.charAt(0)}
                  </div>
                  <div style={{flex:1,minWidth:0}}>
                    <p style={{fontSize:'14px',fontWeight:500,color:'var(--text)',overflow:'hidden',textOverflow:'ellipsis',whiteSpace:'nowrap'}}>{p.name}</p>
                    {p.group_team&&<p style={{fontSize:'12px',color:'var(--text3)'}}>{p.group_team}</p>}
                  </div>
                  {p.nationality&&<span style={{fontSize:'11px',color:'var(--text3)',flexShrink:0,display:'none'}}>{p.nationality}</span>}
                </div>
              ))}
              {items.length===0&&<div className="cl-card" style={{padding:'60px',textAlign:'center',color:'var(--text3)',fontSize:'14px'}}>Рейтинг пуст</div>}
            </div>
          </>
        )}
      </main>
    </>
  )
}
