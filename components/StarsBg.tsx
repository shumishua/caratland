'use client'
import { useEffect, useRef } from 'react'

export function StarsBg() {
  const ref = useRef<HTMLDivElement>(null)
  useEffect(() => {
    if (!ref.current) return
    for (let i = 0; i < 80; i++) {
      const s = document.createElement('div')
      s.className = 'star'
      const sz = Math.random() * 2.5 + .5
      s.style.cssText = `width:${sz}px;height:${sz}px;left:${Math.random()*100}%;top:${Math.random()*100}%;--d:${2+Math.random()*5}s;--delay:${-Math.random()*5}s`
      ref.current.appendChild(s)
    }
  }, [])
  return (
    <>
      <div className="stars-bg" ref={ref} />
      <div className="orb" style={{width:'320px',height:'320px',background:'rgba(109,40,217,.2)',top:'-120px',left:'-100px',['--d' as any]:'11s',['--tx' as any]:'25px',['--ty' as any]:'35px'}} />
      <div className="orb" style={{width:'220px',height:'220px',background:'rgba(167,139,250,.13)',top:'100px',right:'-70px',['--d' as any]:'7s',['--delay' as any]:'-3s',['--tx' as any]:'-20px',['--ty' as any]:'15px'}} />
      <div className="orb" style={{width:'180px',height:'180px',background:'rgba(196,181,253,.09)',bottom:'100px',left:'35%',['--d' as any]:'9s',['--delay' as any]:'-5s',['--tx' as any]:'15px',['--ty' as any]:'-25px'}} />
    </>
  )
}
