'use client'
import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { Nav } from '@/components/Nav'
import { StarsBg } from '@/components/StarsBg'
import { Cursor } from '@/components/Cursor'
import { Search } from 'lucide-react'
import Image from 'next/image'
import type { Person, Category } from '@/lib/supabase'

const cats: {value:Category|'all';label:string}[] = [
  {value:'all',label:'Все'},{value:'kpop',label:'К-поп'},{value:'esports',label:'Киберспорт'},
  {value:'actor',label:'Актёры'},{value:'anime',label:'Аниме'},{value:'general',label:'Другое'},
]

export default function SearchPage() {
  const [query, setQuery] = useState('')
  const [cat, setCat] = useState<Category|'all'>('all')
  const [people, setPeople] = useState<Person[]>([])
  const [loading, setLoading] = useState(true)

  useEffect(()=>{
    const t = setTimeout(async()=>{
      setLoading(true)
      let q = supabase.from('people').select('*')
      if (cat!=='all') q = q.eq('category',cat)
      if (query.trim()) q = q.or(`name.ilike.%${query}%,group_team.ilike.%${query}%`)
      const {data} = await q.order('name').limit(60)
      setPeople((data||[]) as Person[]); setLoading(false)
    },300)
    return()=>clearTimeout(t)
  },[query,cat])

  return (
    <>
      <Cursor />
      <StarsBg />
      <Nav />
      <main style={{maxWidth:'960px',margin:'0 auto',padding:'80px 24px 48px',position:'relative',zIndex:1}}>
        <div style={{marginBottom:'24px'}}>
          <h1 style={{fontFamily:'Bebas Neue',fontSize:'36px',letterSpacing:'4px',marginBottom:'16px'}} className="shine-text">БАЗА ПЕРСОН</h1>
          <div style={{display:'flex',alignItems:'center',gap:'10px',background:'var(--bg2)',border:'1px solid var(--border)',borderRadius:'12px',padding:'11px 16px',marginBottom:'12px',transition:'border-color .2s'}}
            onFocus={()=>{}} onBlur={()=>{}}>
            <Search size={15} style={{color:'var(--text3)',flexShrink:0}} />
            <input style={{background:'none',border:'none',outline:'none',color:'var(--text)',fontSize:'14px',flex:1,fontFamily:'Inter',cursor:'none'}} placeholder="Поиск по имени, группе, команде..." value={query} onChange={e=>setQuery(e.target.value)} autoFocus />
          </div>
          <div style={{display:'flex',gap:'6px',flexWrap:'wrap'}}>
            {cats.map(c=>(
              <button key={c.value} onClick={()=>setCat(c.value)} style={{
                padding:'5px 14px',borderRadius:'20px',fontSize:'12px',cursor:'none',
                border:`1px solid ${cat===c.value?'rgba(139,92,246,.4)':'var(--border)'}`,
                background:cat===c.value?'rgba(139,92,246,.15)':'transparent',
                color:cat===c.value?'var(--p3)':'var(--text2)',transition:'all .2s',fontFamily:'Inter'
              }}>{c.label}</button>
            ))}
          </div>
        </div>

        {loading ? (
          <div style={{display:'flex',justifyContent:'center',padding:'60px 0'}}>
            <div style={{width:'20px',height:'20px',borderRadius:'50%',border:'2px solid var(--p1)',borderTopColor:'transparent',animation:'spin 1s linear infinite'}} />
          </div>
        ) : (
          <div style={{display:'grid',gridTemplateColumns:'repeat(auto-fill,minmax(130px,1fr))',gap:'10px'}}>
            {people.map(p=>(
              <div key={p.id} className="person-card">
                <div className="person-card-inner">
                  <div className="person-avatar" style={{background:'var(--bg3)',color:'var(--p2)',fontSize:'24px'}}>
                    {p.image_url&&!p.image_url.includes('placeholder')
                      ? <Image src={p.image_url} alt={p.name} width={130} height={130} style={{objectFit:'cover',width:'100%',height:'100%',position:'absolute',inset:0}} onError={e=>{(e.target as HTMLImageElement).style.display='none'}} />
                      : p.name.charAt(0)}
                  </div>
                  <div className="person-info">
                    <div className="person-name">{p.name}</div>
                    {p.group_team&&<div className="person-group">{p.group_team}</div>}
                    <div style={{marginTop:'4px'}}><span className={`tag tag-${p.category}`} style={{fontSize:'9px'}}>{p.category==='kpop'?'К-поп':p.category==='esports'?'Спорт':p.category==='actor'?'Актёр':p.category}</span></div>
                  </div>
                </div>
              </div>
            ))}
            {people.length===0&&<div style={{gridColumn:'1/-1',padding:'60px',textAlign:'center',color:'var(--text3)',fontSize:'14px'}}>Ничего не найдено</div>}
          </div>
        )}
      </main>
    </>
  )
}
