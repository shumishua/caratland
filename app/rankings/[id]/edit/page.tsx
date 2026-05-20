'use client'
import { useEffect, useState, useCallback } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { DndContext, closestCenter, KeyboardSensor, PointerSensor, useSensor, useSensors } from '@dnd-kit/core'
import { SortableContext, sortableKeyboardCoordinates, verticalListSortingStrategy, arrayMove } from '@dnd-kit/sortable'
import { supabase } from '@/lib/supabase'
import { useAuth } from '@/lib/auth-context'
import { Nav } from '@/components/Nav'
import { StarsBg } from '@/components/StarsBg'
import { Cursor } from '@/components/Cursor'
import { SortableRow } from '@/components/SortableRow'
import { Save, Check, ChevronLeft, Search } from 'lucide-react'
import Link from 'next/link'
import Image from 'next/image'
import type { Person, Ranking } from '@/lib/supabase'

export default function EditRanking() {
  const { id } = useParams<{id:string}>()
  const { user } = useAuth()
  const router = useRouter()
  const [ranking, setRanking] = useState<Ranking|null>(null)
  const [items, setItems] = useState<Person[]>([])
  const [results, setResults] = useState<Person[]>([])
  const [query, setQuery] = useState('')
  const [saved, setSaved] = useState(false)
  const [saving, setSaving] = useState(false)

  const sensors = useSensors(useSensor(PointerSensor),useSensor(KeyboardSensor,{coordinateGetter:sortableKeyboardCoordinates}))

  useEffect(()=>{
    if (!id) return
    supabase.from('rankings').select('*').eq('id',id).single().then(({data})=>{ if(data) setRanking(data as Ranking) })
    supabase.from('ranking_items').select('position,people(*)').eq('ranking_id',id).order('position').then(({data})=>{
      if(data) setItems(data.map((d:any)=>d.people))
    })
  },[id])

  const search = useCallback(async(q:string)=>{
    if (!ranking) return
    const base = supabase.from('people').select('*').eq('category',ranking.category).limit(16)
    const {data} = q.trim() ? await base.or(`name.ilike.%${q}%,group_team.ilike.%${q}%`) : await base
    setResults((data||[]) as Person[])
  },[ranking?.category])

  useEffect(()=>{ const t=setTimeout(()=>search(query),300); return()=>clearTimeout(t) },[query,search])
  useEffect(()=>{ if(ranking) search('') },[ranking])

  async function save() {
    if (!user||!id) return
    setSaving(true)
    await supabase.from('ranking_items').delete().eq('ranking_id',id)
    if(items.length>0) await supabase.from('ranking_items').insert(items.map((p,i)=>({ranking_id:id,person_id:p.id,position:i+1})))
    await supabase.from('rankings').update({updated_at:new Date().toISOString()}).eq('id',id)
    setSaving(false); setSaved(true); setTimeout(()=>setSaved(false),2000)
  }

  const medalColors = ['#c8ff00','#aaa','#cd7f32']

  return (
    <>
      <Cursor />
      <StarsBg />
      <Nav />
      <main style={{maxWidth:'960px',margin:'0 auto',padding:'80px 24px 48px',position:'relative',zIndex:1}}>
        <div style={{display:'flex',alignItems:'center',justifyContent:'space-between',marginBottom:'24px',gap:'12px'}}>
          <div style={{display:'flex',alignItems:'center',gap:'10px',minWidth:0}}>
            <Link href="/rankings" style={{padding:'8px',borderRadius:'10px',color:'var(--text3)',display:'flex',flexShrink:0,textDecoration:'none',transition:'all .2s'}}
              onMouseEnter={e=>{e.currentTarget.style.color='var(--text)';e.currentTarget.style.background='rgba(255,255,255,.05)'}}
              onMouseLeave={e=>{e.currentTarget.style.color='var(--text3)';e.currentTarget.style.background='none'}}>
              <ChevronLeft size={18} />
            </Link>
            <div>
              <h1 style={{fontFamily:'Bebas Neue',fontSize:'28px',letterSpacing:'3px',overflow:'hidden',textOverflow:'ellipsis',whiteSpace:'nowrap'}} className="shine-text">{ranking?.title||'...'}</h1>
              <p style={{fontSize:'11px',color:'var(--text3)',marginTop:'2px'}}>{items.length} позиций — перетаскивай для изменения порядка</p>
            </div>
          </div>
          <button onClick={save} disabled={saving} className="btn-primary" style={{padding:'10px 20px',fontSize:'13px',flexShrink:0}}>
            {saved?<><Check size={13}/> Сохранено</>:saving?<span style={{width:'14px',height:'14px',borderRadius:'50%',border:'2px solid rgba(255,255,255,.3)',borderTopColor:'#fff',animation:'spin 1s linear infinite',display:'inline-block'}}/>:<><Save size={13}/> Сохранить</>}
          </button>
        </div>

        <div style={{display:'grid',gridTemplateColumns:'1fr 1fr',gap:'20px'}}>
          <div>
            <div className="section-head"><div className="section-title">Твой рейтинг</div></div>
            {items.length===0 ? (
              <div className="cl-card" style={{padding:'40px',textAlign:'center',color:'var(--text3)',fontSize:'13px'}}>Добавь людей справа →</div>
            ) : (
              <DndContext sensors={sensors} collisionDetection={closestCenter} onDragEnd={({active,over})=>{
                if(active.id!==over?.id){
                  const oi=items.findIndex(i=>i.id===active.id)
                  const ni=items.findIndex(i=>i.id===over?.id)
                  setItems(arrayMove(items,oi,ni)); setSaved(false)
                }
              }}>
                <SortableContext items={items.map(i=>i.id)} strategy={verticalListSortingStrategy}>
                  {items.map((p,i)=><SortableRow key={p.id} id={p.id} person={p} rank={i+1} onRemove={()=>{setItems(prev=>prev.filter(x=>x.id!==p.id));setSaved(false)}} />)}
                </SortableContext>
              </DndContext>
            )}
          </div>

          <div>
            <div className="section-head"><div className="section-title">Добавить</div></div>
            <div style={{display:'flex',alignItems:'center',gap:'8px',background:'var(--bg2)',border:'1px solid var(--border)',borderRadius:'10px',padding:'9px 14px',marginBottom:'12px'}}>
              <Search size={13} style={{color:'var(--text3)',flexShrink:0}} />
              <input style={{background:'none',border:'none',outline:'none',color:'var(--text)',fontSize:'13px',flex:1,fontFamily:'Inter',cursor:'none'}} placeholder="Поиск..." value={query} onChange={e=>setQuery(e.target.value)} />
            </div>
            <div style={{display:'grid',gridTemplateColumns:'1fr 1fr',gap:'8px',maxHeight:'520px',overflowY:'auto',paddingRight:'4px'}}>
              {results.map(p=>{
                const added = !!items.find(i=>i.id===p.id)
                return (
                  <div key={p.id} onClick={()=>{if(!added){setItems(prev=>[...prev,p]);setSaved(false)}}} className="person-card" style={{opacity:added?.7:1}}>
                    <div className="person-card-inner">
                      <div className="person-avatar" style={{background:'var(--bg3)',color:'var(--p2)',fontSize:'20px'}}>
                        {p.image_url&&!p.image_url.includes('placeholder')
                          ? <Image src={p.image_url} alt={p.name} width={80} height={80} style={{objectFit:'cover',width:'100%',height:'100%',position:'absolute',inset:0}} onError={e=>{(e.target as HTMLImageElement).style.display='none'}} />
                          : p.name.charAt(0)}
                        {added&&<div style={{position:'absolute',inset:0,background:'rgba(139,92,246,.3)',display:'flex',alignItems:'center',justifyContent:'center',fontSize:'20px',zIndex:3}}>✓</div>}
                      </div>
                      <div className="person-info">
                        <div className="person-name">{p.name}</div>
                        {p.group_team&&<div className="person-group">{p.group_team}</div>}
                      </div>
                    </div>
                  </div>
                )
              })}
            </div>
          </div>
        </div>
      </main>
    </>
  )
}
