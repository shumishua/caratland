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
  return <div className="stars-bg" ref={ref} />
}
