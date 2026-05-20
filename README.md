# Rankr 🏆

Приложение для составления и сравнения рейтингов — к-поп айдолов, киберспортсменов, актёров и всего что угодно.

## Деплой за 10 минут

### 1. Supabase (база данных)

1. Зайди на [supabase.com](https://supabase.com) → New project
2. Запомни **URL** и **anon key** (Settings → API)
3. Открой **SQL Editor** и вставь весь код из `supabase-schema.sql` → Run

### 2. Vercel (хостинг)

1. Залей этот проект на GitHub (или форкни)
2. Зайди на [vercel.com](https://vercel.com) → New Project → Import из GitHub
3. Добавь переменные окружения:
   - `NEXT_PUBLIC_SUPABASE_URL` — твой URL из Supabase
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY` — твой anon key
4. Deploy!

### Локально

```bash
npm install
cp .env.example .env.local
# заполни .env.local своими ключами от Supabase
npm run dev
```

## Добавить айдолов / игроков

Через Supabase → Table Editor → people → Insert row:

| Поле | Пример |
|------|--------|
| name | Felix (Stray Kids) |
| image_url | https://... (ссылка на фото) |
| category | kpop / esports / actor / anime / general |
| group_team | Stray Kids |
| nationality | Australia |

Или вставляй сразу много через SQL:
```sql
insert into people (name, image_url, category, group_team) values
('Karina', 'https://...', 'kpop', 'aespa'),
('Winter', 'https://...', 'kpop', 'aespa');
```

## Функции

- ✅ Регистрация / вход
- ✅ Создание рейтингов по категориям
- ✅ Drag & drop для расстановки мест
- ✅ База персон с поиском
- ✅ Сравнение двух рейтингов
- ✅ История — все рейтинги сохраняются
- ✅ Публичные рейтинги — видны друг другу
