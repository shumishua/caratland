'use client'
import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { Nav } from '@/components/Nav'
import { StarsBg } from '@/components/StarsBg'
import { Cursor } from '@/components/Cursor'
import { useAuth } from '@/lib/auth-context'
import { GitCompare } from 'lucide-react'
import type { Person } from '@/lib/supabase'

interface RankingWithItems {
  id: string; user_id: string; title: string; category: string
  is_public?: boolean; created_at: string; updated_at: string
  username?: string; items: Person[]
}

export default function Compare() {
  const { user } = useAuth()
  const [myRankings, setMyRankings] = useState<any[]>([])
  const [allRankings, setAllRankings] = useState<any[]>([])
  const [leftId, setLeftId] = useState('')
  const [rightId, setRightId] = useState('')
  const [left, setLeft] = useState<RankingWithItems|null>(null)
  const [right, setRight] = useState<RankingWithItems|null>(null)

  useEffect(()=>{
    if (!user) return
    supabase.from('rankings').select('*').eq('user_id',user.id).then(({data})=>setMyRankings(data||[]))
    supabase.from('rankings').select('*,profiles(username)').eq('is_public',true).limit(50).then(({data})=>setAllRankings(data||[]))
  },[user])

  async function loadRanking(id:string): Promise<RankingWithItems|null> {
    const [{data:r},{data:items}] = await Promise.all([
      supabase.from('rankings').select('*,profiles(username)').eq('id',id).single(),
      supabase.from('ranking_items').select('position,people(*)').eq('ranking_id',id).order('position'),
    ])
    if (!r) return null
    return {...r,username:(r as any).profiles?.username,items:(items||[]).map((i:any)=>i.people)}
  }

  useEffect(()=>{ if(leftId) loadRanking(leftId).then(setLeft) },[leftId])
  useEffect(()=>{ if(rightId) loadRanking(rightId).then(setRight) },[rightId])

  const allPeople = (() => {
    if (!left||!right) return []
    const m = new Map<string,Person>()
    left.items.forEach(p=>m.set(p.id,p))
    right.items.forEach(p=>m.set(p.id,p))
    return Array.from(m.values())
  })()

  const mc = ['#c8ff00','#aaa','#cd7f32']

  return (
    <>
      <Cursor />
      <StarsBg />
      <Nav />
      <main style={{maxWidth:'760px',margin:'0 auto',padding:'80px 24px 48px',position:'relative',zIndex:1}}>
        <div style={{display:'flex',alignItems:'center',gap:'12px',marginBottom:'24px'}}>
          <GitCompare size={20} style={{color:'var(--p2)'}} />
          <h1 style={{fontFamily:'Bebas Neue',fontSize:'36px',letterSpacing:'4px'}} className="shine-text">СРАВНЕНИЕ</h1>
        </div>

        <div style={{display:'grid',gridTemplateColumns:'1fr 1fr',gap:'12px',marginBottom:'20px'}}>
          <div>
            <label style={{fontSize:'11px',color:'var(--text3)',display:'block',marginBottom:'6px',letterSpacing:'.08em'}}>МОЙ РЕЙТИНГ</label>
            <select className="cl-input" value={leftId} onChange={e=>setLeftId(e.target.value)}>
              <option value="">— Выбери —</option>
              {myRankings.map(r=><option key={r.id} value={r.id}>{r.title}</option>)}
            </select>
          </div>
          <div>
            <label style={{fontSize:'11px',color:'var(--text3)',display:'block',marginBottom:'6px',letterSpacing:'.08em'}}>РЕЙТИНГ INSOMNIA</label>
            <select className="cl-input" value={rightId} onChange={e=>setRightId(e.target.value)}>
              <option value="">— Выбери —</option>
              {allRankings.map(r=><option key={r.id} value={r.id}>{r.title} ({(r as any).profiles?.username||'аноним'})</option>)}
            </select>
          </div>
        </div>

        {left&&right ? (
          <div className="cl-card" style={{overflow:'hidden'}}>
            <div style={{padding:'14px 16px',borderBottom:'1px solid var(--border)',display:'grid',gridTemplateColumns:'1fr 44px 1fr',gap:'8px',alignItems:'center',textAlign:'center'}}>
              <div style={{fontSize:'13px',fontWeight:500,color:'var(--p3)',overflow:'hidden',textOverflow:'ellipsis',whiteSpace:'nowrap'}}>{left.title}</div>
              <div style={{fontSize:'10px',color:'var(--text3)',fontWeight:500,background:'var(--bg3)',border:'1px solid var(--border)',borderRadius:'8px',padding:'4px 0'}}>VS</div>
              <div style={{fontSize:'13px',fontWeight:500,color:'#818cf8',overflow:'hidden',textOverflow:'ellipsis',whiteSpace:'nowrap'}}>{right.title}</div>
            </div>
            <div style={{padding:'8px'}}>
              {allPeople.map(p=>{
                const lr = left.items.findIndex(x=>x.id===p.id)+1
                const rr = right.items.findIndex(x=>x.id===p.id)+1
                const diff = lr&&rr ? rr-lr : 0
                return (
                  <div key={p.id} className="compare-row">
                    <div style={{display:'flex',alignItems:'center',gap:'8px',minWidth:0}}>
                      <span style={{fontFamily:'Bebas Neue',fontSize:'16px',width:'24px',textAlign:'center',flexShrink:0,color:lr?lr<=3?mc[lr-1]:'var(--text3)':'var(--text3)'}}>{lr||'—'}</span>
                      <span style={{fontSize:'12px',color:'var(--text)',overflow:'hidden',textOverflow:'ellipsis',whiteSpace:'nowrap'}}>{p.name}</span>
                    </div>
                    <div className={`diff-badge ${!lr||!rr?'diff-eq':diff>0?'diff-up':diff<0?'diff-dn':'diff-eq'}`}>
                      {!lr||!rr?'—':diff>0?`▲${diff}`:diff<0?`▼${Math.abs(diff)}`:'—'}
                    </div>
                    <div style={{display:'flex',alignItems:'center',gap:'8px',justifyContent:'flex-end',minWidth:0}}>
                      <span style={{fontSize:'12px',color:'var(--text)',overflow:'hidden',textOverflow:'ellipsis',whiteSpace:'nowrap'}}>{p.name}</span>
                      <span style={{fontFamily:'Bebas Neue',fontSize:'16px',width:'24px',textAlign:'center',flexShrink:0,color:rr?rr<=3?mc[rr-1]:'var(--text3)':'var(--text3)'}}>{rr||'—'}</span>
                    </div>
                  </div>
                )
              })}
            </div>
          </div>
        ) : (
          <div className="cl-card" style={{padding:'60px',textAlign:'center'}}>
            <GitCompare size={32} style={{color:'var(--text3)',margin:'0 auto 16px',opacity:.3}} />
            <p style={{color:'var(--text3)',fontSize:'14px'}}>Выбери два рейтинга чтобы сравнить</p>
          </div>
        )}
      </main>
    </>
  )
}
