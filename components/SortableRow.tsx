'use client'
import { useSortable } from '@dnd-kit/sortable'
import { CSS } from '@dnd-kit/utilities'
import { GripVertical, X } from 'lucide-react'
import Image from 'next/image'
import type { Person } from '@/lib/supabase'

interface Props { id: string; person: Person; rank: number; onRemove: () => void }
const mc = ['#c8ff00','#aaa','#cd7f32']
const mm = ['🥇','🥈','🥉']

export function SortableRow({ id, person, rank, onRemove }: Props) {
  const { attributes, listeners, setNodeRef, transform, transition, isDragging } = useSortable({ id })
  const style = { transform: CSS.Transform.toString(transform), transition, opacity: isDragging ? .4 : 1 }

  return (
    <div ref={setNodeRef} style={style} className="sort-row">
      <div {...attributes} {...listeners} style={{cursor:'grab',color:'var(--text3)',flexShrink:0,touchAction:'none'}}>
        <GripVertical size={14} />
      </div>
      <span className="sort-rank" style={{color:rank<=3?mc[rank-1]:'var(--text3)'}}>
        {rank<=3?mm[rank-1]:`#${rank}`}
      </span>
      <div className="sort-avatar" style={{background:'var(--bg3)',color:'var(--p2)'}}>
        {person.image_url&&!person.image_url.includes('placeholder')
          ? <Image src={person.image_url} alt={person.name} width={36} height={36} style={{objectFit:'cover',width:'100%',height:'100%'}} onError={e=>{(e.target as HTMLImageElement).style.display='none'}} />
          : person.name.charAt(0)}
      </div>
      <div style={{flex:1,minWidth:0}}>
        <p className="sort-name">{person.name}</p>
        {person.group_team&&<p className="sort-meta">{person.group_team}</p>}
      </div>
      <button onClick={onRemove} style={{padding:'4px',borderRadius:'6px',background:'none',border:'none',cursor:'none',color:'var(--text3)',flexShrink:0,transition:'all .2s'}}
        onMouseEnter={e=>{(e.currentTarget as HTMLButtonElement).style.color='#f87171';(e.currentTarget as HTMLButtonElement).style.background='rgba(248,113,113,.1)'}}
        onMouseLeave={e=>{(e.currentTarget as HTMLButtonElement).style.color='var(--text3)';(e.currentTarget as HTMLButtonElement).style.background='none'}}>
        <X size={13} />
      </button>
    </div>
  )
}
