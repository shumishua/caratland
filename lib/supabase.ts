import { createClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

export type Category = 'kpop' | 'esports' | 'actor' | 'anime' | 'general'

export interface Person {
  id: string
  name: string
  image_url: string
  category: Category
  group_team?: string
  nationality?: string
}

export interface RankingItem {
  person_id: string
  position: number
  person: Person
}

export interface Ranking {
  id: string
  user_id: string
  title: string
  category: Category
  items: RankingItem[]
  created_at: string
  updated_at: string
  username?: string
}
