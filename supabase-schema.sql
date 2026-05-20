-- Run this in your Supabase SQL editor

-- Enable UUID extension
create extension if not exists "uuid-ossp";

-- Profiles table (extends auth.users)
create table profiles (
  id uuid references auth.users on delete cascade primary key,
  username text unique not null,
  avatar_url text,
  created_at timestamptz default now()
);

-- People/celebrities database
create table people (
  id uuid default uuid_generate_v4() primary key,
  name text not null,
  image_url text not null,
  category text not null check (category in ('kpop','esports','actor','anime','general')),
  group_team text,
  nationality text,
  birth_year int,
  created_at timestamptz default now()
);

-- Rankings
create table rankings (
  id uuid default uuid_generate_v4() primary key,
  user_id uuid references profiles(id) on delete cascade not null,
  title text not null,
  category text not null,
  is_public boolean default true,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Ranking items (ordered list)
create table ranking_items (
  id uuid default uuid_generate_v4() primary key,
  ranking_id uuid references rankings(id) on delete cascade not null,
  person_id uuid references people(id) on delete cascade not null,
  position int not null,
  unique(ranking_id, position)
);

-- RLS Policies
alter table profiles enable row level security;
alter table rankings enable row level security;
alter table ranking_items enable row level security;
alter table people enable row level security;

create policy "Public profiles" on profiles for select using (true);
create policy "Own profile" on profiles for all using (auth.uid() = id);

create policy "Public people" on people for select using (true);

create policy "Public rankings" on rankings for select using (is_public = true or auth.uid() = user_id);
create policy "Own rankings insert" on rankings for insert with check (auth.uid() = user_id);
create policy "Own rankings update" on rankings for update using (auth.uid() = user_id);
create policy "Own rankings delete" on rankings for delete using (auth.uid() = user_id);

create policy "Public items" on ranking_items for select using (true);
create policy "Own items" on ranking_items for all using (
  auth.uid() = (select user_id from rankings where id = ranking_id)
);

-- Trigger: auto-create profile on signup
create or replace function handle_new_user()
returns trigger as $$
begin
  insert into profiles (id, username)
  values (new.id, split_part(new.email, '@', 1));
  return new;
end;
$$ language plpgsql security definer;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure handle_new_user();

-- Seed: K-pop idols
insert into people (name, image_url, category, group_team, nationality) values
('Felix (Stray Kids)', 'https://i.ibb.co/placeholder/felix.jpg', 'kpop', 'Stray Kids', 'Australia'),
('Jungkook (BTS)', 'https://i.ibb.co/placeholder/jungkook.jpg', 'kpop', 'BTS', 'South Korea'),
('Karina (aespa)', 'https://i.ibb.co/placeholder/karina.jpg', 'kpop', 'aespa', 'South Korea'),
('Winter (aespa)', 'https://i.ibb.co/placeholder/winter.jpg', 'kpop', 'aespa', 'South Korea'),
('V (BTS)', 'https://i.ibb.co/placeholder/v.jpg', 'kpop', 'BTS', 'South Korea'),
('Lisa (BLACKPINK)', 'https://i.ibb.co/placeholder/lisa.jpg', 'kpop', 'BLACKPINK', 'Thailand'),
('Jennie (BLACKPINK)', 'https://i.ibb.co/placeholder/jennie.jpg', 'kpop', 'BLACKPINK', 'South Korea'),
('Haerin (NewJeans)', 'https://i.ibb.co/placeholder/haerin.jpg', 'kpop', 'NewJeans', 'South Korea'),
('Cha Eun-woo (ASTRO)', 'https://i.ibb.co/placeholder/chaeunwoo.jpg', 'kpop', 'ASTRO', 'South Korea'),
('Sehun (EXO)', 'https://i.ibb.co/placeholder/sehun.jpg', 'kpop', 'EXO', 'South Korea');

-- Seed: Esports
insert into people (name, image_url, category, group_team, nationality) values
('s1mple', 'https://i.ibb.co/placeholder/s1mple.jpg', 'esports', 'NAVI (ret.)', 'Ukraine'),
('ZywOo', 'https://i.ibb.co/placeholder/zywo0.jpg', 'esports', 'Vitality', 'France'),
('NiKo', 'https://i.ibb.co/placeholder/niko.jpg', 'esports', 'G2', 'Bosnia'),
('Faker', 'https://i.ibb.co/placeholder/faker.jpg', 'esports', 'T1', 'South Korea'),
('Shroud', 'https://i.ibb.co/placeholder/shroud.jpg', 'esports', 'Streamer', 'Canada'),
('f0rest', 'https://i.ibb.co/placeholder/f0rest.jpg', 'esports', 'Dignitas (ret.)', 'Sweden');
