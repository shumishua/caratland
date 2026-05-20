'use client'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { useAuth } from '@/lib/auth-context'
import { LogOut } from 'lucide-react'

export function Nav() {
  const { user, username, signOut } = useAuth()
  const path = usePathname()

  return (
    <nav className="cl-nav">
      <Link href="/" className="logo-wrap" style={{textDecoration:'none'}}>
        <div className="logo-diamond" />
        <div>
          <div className="logo-text">CARATLAND</div>
          <div className="logo-sub">your personal universe</div>
        </div>
      </Link>

      {user && (
        <>
          <div className="nav-links">
            {[
              { href: '/rankings', label: 'Рейтинги' },
              { href: '/search', label: 'База' },
              { href: '/compare', label: 'Сравнить' },
            ].map(({ href, label }) => (
              <Link key={href} href={href} className={`nav-link ${path.startsWith(href) ? 'active' : ''}`}>
                {label}
              </Link>
            ))}
          </div>
          <div style={{display:'flex',alignItems:'center',gap:'8px'}}>
            <Link href="/profile" className="user-pill">
              <div className="user-avatar">{(username || 'U')[0].toUpperCase()}</div>
              <div className="user-name">{username}</div>
            </Link>
            <button onClick={signOut} style={{background:'none',border:'none',cursor:'none',padding:'6px',color:'var(--text3)',borderRadius:'8px',transition:'color .2s'}}
              onMouseEnter={e=>(e.currentTarget.style.color='var(--text2)')}
              onMouseLeave={e=>(e.currentTarget.style.color='var(--text3)')}>
              <LogOut size={14} />
            </button>
          </div>
        </>
      )}
    </nav>
  )
}
