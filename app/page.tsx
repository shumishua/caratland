'use client'
import { useEffect } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import { useAuth } from '@/lib/auth-context'
import { StarsBg } from '@/components/StarsBg'
import { Cursor } from '@/components/Cursor'
import { ArrowRight } from 'lucide-react'

const features = [
  { icon: '💎', title: 'База 300+ персон', desc: 'Айдолы, про-игроки CS2 и Dota2, корейские актёры — всё с фотками и поиском.' },
  { icon: '🏆', title: 'Рейтинги', desc: 'Drag & drop расстановка, сохранение истории, категории по вкусу.' },
  { icon: '⚔️', title: 'Сравнение', desc: 'Твой топ vs Insomnia — сразу видно кто на каком месте у каждой.' },
]

export default function Home() {
  const { user, loading } = useAuth()
  const router = useRouter()

  useEffect(() => {
    if (!loading && user) router.push('/rankings')
  }, [user, loading, router])

  if (loading) return (
    <div style={{minHeight:'100vh',display:'flex',alignItems:'center',justifyContent:'center',background:'var(--bg)'}}>
      <div style={{width:'20px',height:'20px',borderRadius:'50%',border:'2px solid var(--p1)',borderTopColor:'transparent',animation:'spin 1s linear infinite'}} />
    </div>
  )
  if (user) return null

  return (
    <>
      <Cursor />
      <StarsBg />
      <main style={{minHeight:'100vh',display:'flex',flexDirection:'column',position:'relative',zIndex:1}}>
        {/* Logo */}
        <div style={{padding:'24px 28px',display:'flex',alignItems:'center',gap:'10px'}}>
          <div className="logo-diamond" />
          <div>
            <div className="logo-text">CARATLAND</div>
            <div className="logo-sub">your personal universe</div>
          </div>
        </div>

        {/* Hero */}
        <div style={{flex:1,display:'flex',flexDirection:'column',alignItems:'center',justifyContent:'center',textAlign:'center',padding:'40px 24px',animation:'fadeUp .6s ease forwards'}}>
          <div className="hero-eyebrow"><div className="hero-dot" />к-поп · cs2 · dota2 · актёры</div>
          <h1 className="hero-title">
            <span className="hero-main">CARATLAND</span>
            <span className="hero-sub-text">your universe of rankings</span>
          </h1>
          <span className="svt-text">Say the name — SEVENTEEN!</span>
          <div style={{display:'flex',gap:'12px',justifyContent:'center',flexWrap:'wrap'}}>
            <Link href="/auth" className="btn-primary">
              Начать бесплатно <ArrowRight size={15} />
            </Link>
            <Link href="/search" className="btn-ghost">Посмотреть базу</Link>
          </div>
        </div>

        {/* Features */}
        <div style={{maxWidth:'860px',margin:'0 auto',padding:'0 24px 60px',width:'100%',display:'grid',gridTemplateColumns:'repeat(auto-fit,minmax(240px,1fr))',gap:'12px'}}>
          {features.map(f => (
            <div key={f.title} className="cl-card" style={{padding:'20px'}}>
              <div style={{fontSize:'24px',marginBottom:'12px'}}>{f.icon}</div>
              <div style={{fontSize:'14px',fontWeight:500,color:'var(--text)',marginBottom:'6px'}}>{f.title}</div>
              <div style={{fontSize:'12px',color:'var(--text2)',lineHeight:1.6}}>{f.desc}</div>
            </div>
          ))}
        </div>
      </main>
    </>
  )
}
