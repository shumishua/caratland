'use client'
import { useEffect, useRef } from 'react'

export function Cursor() {
  const dot = useRef<HTMLDivElement>(null)
  const ring = useRef<HTMLDivElement>(null)

  useEffect(() => {
    let rx = 0, ry = 0, tx = 0, ty = 0

    const onMove = (e: MouseEvent) => {
      tx = e.clientX; ty = e.clientY
      if (dot.current) { dot.current.style.left = tx + 'px'; dot.current.style.top = ty + 'px' }
      const el = document.elementFromPoint(tx, ty)
      const hoverable = el?.closest('button, a, [data-hover], input, select, .nav-link, .cl-card, .person-card, .stat-card, .sort-row, .compare-row, .fbtn, .section-link')
      dot.current?.classList.toggle('hovering', !!hoverable)
      ring.current?.classList.toggle('hovering', !!hoverable)
    }
    const onDown = () => { dot.current?.classList.add('clicking'); ring.current?.classList.add('clicking') }
    const onUp = () => { dot.current?.classList.remove('clicking'); ring.current?.classList.remove('clicking') }

    const animate = () => {
      rx += (tx - rx) * .14; ry += (ty - ry) * .14
      if (ring.current) { ring.current.style.left = rx + 'px'; ring.current.style.top = ry + 'px' }
      requestAnimationFrame(animate)
    }

    document.addEventListener('mousemove', onMove)
    document.addEventListener('mousedown', onDown)
    document.addEventListener('mouseup', onUp)
    animate()
    return () => { document.removeEventListener('mousemove', onMove); document.removeEventListener('mousedown', onDown); document.removeEventListener('mouseup', onUp) }
  }, [])

  return (
    <>
      <div ref={dot} className="cursor-dot" />
      <div ref={ring} className="cursor-ring" />
    </>
  )
}
