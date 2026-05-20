-- Удаляем старых персон
delete from people;

insert into people (name, image_url, category, group_team, nationality) values

-- ==================== KPOP МУЖЧИНЫ ====================

-- BTS
('RM (BTS)', 'https://api.dicebear.com/7.x/initials/svg?seed=RM&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTS', 'South Korea'),
('Jin (BTS)', 'https://api.dicebear.com/7.x/initials/svg?seed=JN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTS', 'South Korea'),
('Suga (BTS)', 'https://api.dicebear.com/7.x/initials/svg?seed=SG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTS', 'South Korea'),
('J-Hope (BTS)', 'https://api.dicebear.com/7.x/initials/svg?seed=JH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTS', 'South Korea'),
('Jimin (BTS)', 'https://api.dicebear.com/7.x/initials/svg?seed=JM&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTS', 'South Korea'),
('V (BTS)', 'https://api.dicebear.com/7.x/initials/svg?seed=VV&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTS', 'South Korea'),
('Jungkook (BTS)', 'https://api.dicebear.com/7.x/initials/svg?seed=JK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTS', 'South Korea'),

-- SEVENTEEN
('S.Coups (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=SC&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),
('Jeonghan (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=JG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),
('Joshua (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=JO&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'USA'),
('Jun (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=JU&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'China'),
('Hoshi (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=HS&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),
('Wonwoo (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=WW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),
('Woozi (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=WZ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),
('DK (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=DK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),
('Mingyu (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=MG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),
('The8 (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=T8&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'China'),
('Seungkwan (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=SK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),
('Vernon (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=VN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),
('Dino (SEVENTEEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=DN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SEVENTEEN', 'South Korea'),

-- TREASURE
('Choi Hyunsuk (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=CH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'South Korea'),
('Jihoon (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=TJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'South Korea'),
('Yoshi (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=YS&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'Japan'),
('Junkyu (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=JY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'South Korea'),
('Mashiho (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=MS&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'Japan'),
('Jaehyuk (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=JR&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'South Korea'),
('Asahi (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=AS&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'Japan'),
('Yedam (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=YD&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'South Korea'),
('Doyoung (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=DY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'South Korea'),
('Haruto (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=HT&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'Japan'),
('Jeongwoo (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=JW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'South Korea'),
('Junghwan (TREASURE)', 'https://api.dicebear.com/7.x/initials/svg?seed=JF&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TREASURE', 'South Korea'),

-- BOYNEXTDOOR
('Sungho (BOYNEXTDOOR)', 'https://api.dicebear.com/7.x/initials/svg?seed=SH2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BOYNEXTDOOR', 'South Korea'),
('Riwoo (BOYNEXTDOOR)', 'https://api.dicebear.com/7.x/initials/svg?seed=RW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BOYNEXTDOOR', 'South Korea'),
('Taesan (BOYNEXTDOOR)', 'https://api.dicebear.com/7.x/initials/svg?seed=TS&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BOYNEXTDOOR', 'South Korea'),
('Jaehyun (BOYNEXTDOOR)', 'https://api.dicebear.com/7.x/initials/svg?seed=JB&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BOYNEXTDOOR', 'South Korea'),
('Leehan (BOYNEXTDOOR)', 'https://api.dicebear.com/7.x/initials/svg?seed=LH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BOYNEXTDOOR', 'South Korea'),
('Woonhak (BOYNEXTDOOR)', 'https://api.dicebear.com/7.x/initials/svg?seed=WH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BOYNEXTDOOR', 'South Korea'),

-- WANNA ONE
('Yoon Ji-sung (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=YJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Ha Sung-woon (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=HW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Hwang Minhyun (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=HM&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Ong Seong-wu (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=OS&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Kim Jae-hwan (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=KJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Kang Daniel (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=KD&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Park Jihoon (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=PJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Park Woo-jin (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=PW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Bae Jin-young (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=BJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Lee Daehwi (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=LD&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'South Korea'),
('Lai Guan-lin (Wanna One)', 'https://api.dicebear.com/7.x/initials/svg?seed=LG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Wanna One', 'Taiwan'),

-- MONSTA X
('Shownu (Monsta X)', 'https://api.dicebear.com/7.x/initials/svg?seed=SN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Monsta X', 'South Korea'),
('Minhyuk (Monsta X)', 'https://api.dicebear.com/7.x/initials/svg?seed=MH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Monsta X', 'South Korea'),
('Kihyun (Monsta X)', 'https://api.dicebear.com/7.x/initials/svg?seed=KH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Monsta X', 'South Korea'),
('Hyungwon (Monsta X)', 'https://api.dicebear.com/7.x/initials/svg?seed=HG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Monsta X', 'South Korea'),
('Joohoney (Monsta X)', 'https://api.dicebear.com/7.x/initials/svg?seed=JHX&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Monsta X', 'South Korea'),
('I.M (Monsta X)', 'https://api.dicebear.com/7.x/initials/svg?seed=IM&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Monsta X', 'South Korea'),

-- BTOB
('Eunkwang (BTOB)', 'https://api.dicebear.com/7.x/initials/svg?seed=EK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTOB', 'South Korea'),
('Minhyuk (BTOB)', 'https://api.dicebear.com/7.x/initials/svg?seed=MB&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTOB', 'South Korea'),
('Changsub (BTOB)', 'https://api.dicebear.com/7.x/initials/svg?seed=CB&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTOB', 'South Korea'),
('Hyunsik (BTOB)', 'https://api.dicebear.com/7.x/initials/svg?seed=HX&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTOB', 'South Korea'),
('Peniel (BTOB)', 'https://api.dicebear.com/7.x/initials/svg?seed=PN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTOB', 'USA'),
('Ilhoon (BTOB)', 'https://api.dicebear.com/7.x/initials/svg?seed=IL&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTOB', 'South Korea'),
('Sungjae (BTOB)', 'https://api.dicebear.com/7.x/initials/svg?seed=SJ2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BTOB', 'South Korea'),

-- EXO
('Suho (EXO)', 'https://api.dicebear.com/7.x/initials/svg?seed=SU&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'EXO', 'South Korea'),
('Baekhyun (EXO)', 'https://api.dicebear.com/7.x/initials/svg?seed=BH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'EXO', 'South Korea'),
('Chanyeol (EXO)', 'https://api.dicebear.com/7.x/initials/svg?seed=CY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'EXO', 'South Korea'),
('D.O. (EXO)', 'https://api.dicebear.com/7.x/initials/svg?seed=DO&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'EXO', 'South Korea'),
('Kai (EXO)', 'https://api.dicebear.com/7.x/initials/svg?seed=KI&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'EXO', 'South Korea'),
('Sehun (EXO)', 'https://api.dicebear.com/7.x/initials/svg?seed=SE&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'EXO', 'South Korea'),
('Xiumin (EXO)', 'https://api.dicebear.com/7.x/initials/svg?seed=XM&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'EXO', 'South Korea'),
('Lay (EXO)', 'https://api.dicebear.com/7.x/initials/svg?seed=LY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'EXO', 'China'),
('Chen (EXO)', 'https://api.dicebear.com/7.x/initials/svg?seed=CN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'EXO', 'South Korea'),

-- CRAVITY
('Serim (CRAVITY)', 'https://api.dicebear.com/7.x/initials/svg?seed=SRM&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'CRAVITY', 'South Korea'),
('Allen (CRAVITY)', 'https://api.dicebear.com/7.x/initials/svg?seed=AL&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'CRAVITY', 'USA'),
('Jungmo (CRAVITY)', 'https://api.dicebear.com/7.x/initials/svg?seed=JMO&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'CRAVITY', 'South Korea'),
('Woobin (CRAVITY)', 'https://api.dicebear.com/7.x/initials/svg?seed=WB2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'CRAVITY', 'South Korea'),
('Wonjin (CRAVITY)', 'https://api.dicebear.com/7.x/initials/svg?seed=WJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'CRAVITY', 'South Korea'),
('Minhee (CRAVITY)', 'https://api.dicebear.com/7.x/initials/svg?seed=MHC&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'CRAVITY', 'South Korea'),
('Hyeongjun (CRAVITY)', 'https://api.dicebear.com/7.x/initials/svg?seed=HJC&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'CRAVITY', 'South Korea'),
('Taeyoung (CRAVITY)', 'https://api.dicebear.com/7.x/initials/svg?seed=TYC&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'CRAVITY', 'South Korea'),
('Kangmin (CRAVITY)', 'https://api.dicebear.com/7.x/initials/svg?seed=KM&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'CRAVITY', 'South Korea'),

-- iKON
('B.I (iKON)', 'https://api.dicebear.com/7.x/initials/svg?seed=BI&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'iKON', 'South Korea'),
('Bobby (iKON)', 'https://api.dicebear.com/7.x/initials/svg?seed=BB&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'iKON', 'South Korea'),
('Jay (iKON)', 'https://api.dicebear.com/7.x/initials/svg?seed=IJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'iKON', 'South Korea'),
('Song (iKON)', 'https://api.dicebear.com/7.x/initials/svg?seed=ISG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'iKON', 'South Korea'),
('DK (iKON)', 'https://api.dicebear.com/7.x/initials/svg?seed=IDK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'iKON', 'South Korea'),
('Ju-ne (iKON)', 'https://api.dicebear.com/7.x/initials/svg?seed=IJN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'iKON', 'South Korea'),
('Chan (iKON)', 'https://api.dicebear.com/7.x/initials/svg?seed=ICH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'iKON', 'South Korea'),

-- STRAY KIDS
('Bang Chan (Stray Kids)', 'https://api.dicebear.com/7.x/initials/svg?seed=BC&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Stray Kids', 'Australia'),
('Lee Know (Stray Kids)', 'https://api.dicebear.com/7.x/initials/svg?seed=LK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Stray Kids', 'South Korea'),
('Changbin (Stray Kids)', 'https://api.dicebear.com/7.x/initials/svg?seed=CGB&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Stray Kids', 'South Korea'),
('Hyunjin (Stray Kids)', 'https://api.dicebear.com/7.x/initials/svg?seed=HJJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Stray Kids', 'South Korea'),
('Han (Stray Kids)', 'https://api.dicebear.com/7.x/initials/svg?seed=HAN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Stray Kids', 'Australia'),
('Felix (Stray Kids)', 'https://api.dicebear.com/7.x/initials/svg?seed=FL&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Stray Kids', 'Australia'),
('Seungmin (Stray Kids)', 'https://api.dicebear.com/7.x/initials/svg?seed=SM&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Stray Kids', 'South Korea'),
('I.N (Stray Kids)', 'https://api.dicebear.com/7.x/initials/svg?seed=IN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Stray Kids', 'South Korea'),

-- GOT7
('Jay B (GOT7)', 'https://api.dicebear.com/7.x/initials/svg?seed=JB2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'GOT7', 'South Korea'),
('Mark (GOT7)', 'https://api.dicebear.com/7.x/initials/svg?seed=MK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'GOT7', 'USA'),
('Jackson (GOT7)', 'https://api.dicebear.com/7.x/initials/svg?seed=JC&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'GOT7', 'Hong Kong'),
('Jinyoung (GOT7)', 'https://api.dicebear.com/7.x/initials/svg?seed=JY2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'GOT7', 'South Korea'),
('Youngjae (GOT7)', 'https://api.dicebear.com/7.x/initials/svg?seed=YJG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'GOT7', 'South Korea'),
('BamBam (GOT7)', 'https://api.dicebear.com/7.x/initials/svg?seed=BB2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'GOT7', 'Thailand'),
('Yugyeom (GOT7)', 'https://api.dicebear.com/7.x/initials/svg?seed=YG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'GOT7', 'South Korea'),

-- WINNER
('Jinwoo (WINNER)', 'https://api.dicebear.com/7.x/initials/svg?seed=JW2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'WINNER', 'South Korea'),
('Seunghoon (WINNER)', 'https://api.dicebear.com/7.x/initials/svg?seed=SGH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'WINNER', 'South Korea'),
('Mino (WINNER)', 'https://api.dicebear.com/7.x/initials/svg?seed=MN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'WINNER', 'South Korea'),
('Seungyoon (WINNER)', 'https://api.dicebear.com/7.x/initials/svg?seed=SY2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'WINNER', 'South Korea'),

-- ZEROBASEONE
('Sung Han-bin (ZB1)', 'https://api.dicebear.com/7.x/initials/svg?seed=SHB&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ZEROBASEONE', 'South Korea'),
('Kim Ji-woong (ZB1)', 'https://api.dicebear.com/7.x/initials/svg?seed=KJW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ZEROBASEONE', 'South Korea'),
('Zhang Hao (ZB1)', 'https://api.dicebear.com/7.x/initials/svg?seed=ZH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ZEROBASEONE', 'China'),
('Seok Matthew (ZB1)', 'https://api.dicebear.com/7.x/initials/svg?seed=SMT&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ZEROBASEONE', 'Canada'),
('Kim Tae-rae (ZB1)', 'https://api.dicebear.com/7.x/initials/svg?seed=KTR&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ZEROBASEONE', 'South Korea'),
('Ricky (ZB1)', 'https://api.dicebear.com/7.x/initials/svg?seed=RCK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ZEROBASEONE', 'China'),
('Kim Gyu-vin (ZB1)', 'https://api.dicebear.com/7.x/initials/svg?seed=KGV&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ZEROBASEONE', 'South Korea'),
('Park Gun-wook (ZB1)', 'https://api.dicebear.com/7.x/initials/svg?seed=PGW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ZEROBASEONE', 'South Korea'),
('Han Yu-jin (ZB1)', 'https://api.dicebear.com/7.x/initials/svg?seed=HYJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ZEROBASEONE', 'South Korea'),

-- 2PM
('Jun.K (2PM)', 'https://api.dicebear.com/7.x/initials/svg?seed=JKK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', '2PM', 'South Korea'),
('Nichkhun (2PM)', 'https://api.dicebear.com/7.x/initials/svg?seed=NK2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', '2PM', 'Thailand'),
('Taecyeon (2PM)', 'https://api.dicebear.com/7.x/initials/svg?seed=TC&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', '2PM', 'South Korea'),
('Wooyoung (2PM)', 'https://api.dicebear.com/7.x/initials/svg?seed=WY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', '2PM', 'South Korea'),
('Junho (2PM)', 'https://api.dicebear.com/7.x/initials/svg?seed=JHO&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', '2PM', 'South Korea'),
('Chansung (2PM)', 'https://api.dicebear.com/7.x/initials/svg?seed=CS2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', '2PM', 'South Korea'),

-- TXT
('Yeonjun (TXT)', 'https://api.dicebear.com/7.x/initials/svg?seed=YJ2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TXT', 'South Korea'),
('Soobin (TXT)', 'https://api.dicebear.com/7.x/initials/svg?seed=SB&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TXT', 'South Korea'),
('Beomgyu (TXT)', 'https://api.dicebear.com/7.x/initials/svg?seed=BG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TXT', 'South Korea'),
('Taehyun (TXT)', 'https://api.dicebear.com/7.x/initials/svg?seed=TH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TXT', 'South Korea'),
('Huening Kai (TXT)', 'https://api.dicebear.com/7.x/initials/svg?seed=HK&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TXT', 'USA'),

-- ATEEZ
('Hongjoong (ATEEZ)', 'https://api.dicebear.com/7.x/initials/svg?seed=HJ2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ATEEZ', 'South Korea'),
('Seonghwa (ATEEZ)', 'https://api.dicebear.com/7.x/initials/svg?seed=SHW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ATEEZ', 'South Korea'),
('Yunho (ATEEZ)', 'https://api.dicebear.com/7.x/initials/svg?seed=YH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ATEEZ', 'South Korea'),
('Yeosang (ATEEZ)', 'https://api.dicebear.com/7.x/initials/svg?seed=YS2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ATEEZ', 'South Korea'),
('San (ATEEZ)', 'https://api.dicebear.com/7.x/initials/svg?seed=SAN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ATEEZ', 'South Korea'),
('Mingi (ATEEZ)', 'https://api.dicebear.com/7.x/initials/svg?seed=MNG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ATEEZ', 'South Korea'),
('Wooyoung (ATEEZ)', 'https://api.dicebear.com/7.x/initials/svg?seed=WYA&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ATEEZ', 'South Korea'),
('Jongho (ATEEZ)', 'https://api.dicebear.com/7.x/initials/svg?seed=JHZ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ATEEZ', 'South Korea'),

-- SUPER JUNIOR
('Leeteuk (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=LT&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Heechul (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=HC&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Yesung (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=YSJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Kangin (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=KNG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Shindong (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=SDG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Sungmin (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=SMJ&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Eunhyuk (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=EH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Donghae (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=DH&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Siwon (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=SW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Ryeowook (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=RW2&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),
('Kyuhyun (Super Junior)', 'https://api.dicebear.com/7.x/initials/svg?seed=KY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'Super Junior', 'South Korea'),

-- SHINee
('Onew (SHINee)', 'https://api.dicebear.com/7.x/initials/svg?seed=OW&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SHINee', 'South Korea'),
('Jonghyun (SHINee)', 'https://api.dicebear.com/7.x/initials/svg?seed=JHY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SHINee', 'South Korea'),
('Key (SHINee)', 'https://api.dicebear.com/7.x/initials/svg?seed=KEY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SHINee', 'South Korea'),
('Minho (SHINee)', 'https://api.dicebear.com/7.x/initials/svg?seed=MHO&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SHINee', 'South Korea'),
('Taemin (SHINee)', 'https://api.dicebear.com/7.x/initials/svg?seed=TM&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'SHINee', 'South Korea'),

-- BIGBANG
('G-Dragon (BIGBANG)', 'https://api.dicebear.com/7.x/initials/svg?seed=GD&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BIGBANG', 'South Korea'),
('T.O.P (BIGBANG)', 'https://api.dicebear.com/7.x/initials/svg?seed=TOP&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BIGBANG', 'South Korea'),
('Taeyang (BIGBANG)', 'https://api.dicebear.com/7.x/initials/svg?seed=TYG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BIGBANG', 'South Korea'),
('Daesung (BIGBANG)', 'https://api.dicebear.com/7.x/initials/svg?seed=DSG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BIGBANG', 'South Korea'),
('Seungri (BIGBANG)', 'https://api.dicebear.com/7.x/initials/svg?seed=SRI&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'BIGBANG', 'South Korea'),

-- ENHYPEN
('Jungwon (ENHYPEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=JWN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ENHYPEN', 'South Korea'),
('Heeseung (ENHYPEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=HSG&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ENHYPEN', 'South Korea'),
('Jay (ENHYPEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=JAY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ENHYPEN', 'USA'),
('Jake (ENHYPEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=JKE&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ENHYPEN', 'Australia'),
('Sunghoon (ENHYPEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=SHN&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ENHYPEN', 'South Korea'),
('Sunoo (ENHYPEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=SNO&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ENHYPEN', 'South Korea'),
('Ni-ki (ENHYPEN)', 'https://api.dicebear.com/7.x/initials/svg?seed=NKI&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'ENHYPEN', 'Japan'),

-- TWS
('Shinyu (TWS)', 'https://api.dicebear.com/7.x/initials/svg?seed=SHY&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TWS', 'South Korea'),
('Jihoon (TWS)', 'https://api.dicebear.com/7.x/initials/svg?seed=JHT&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TWS', 'South Korea'),
('Dohoon (TWS)', 'https://api.dicebear.com/7.x/initials/svg?seed=DHT&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TWS', 'South Korea'),
('Youngjae (TWS)', 'https://api.dicebear.com/7.x/initials/svg?seed=YJT&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TWS', 'South Korea'),
('Kyungmin (TWS)', 'https://api.dicebear.com/7.x/initials/svg?seed=KMT&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TWS', 'South Korea'),
('Junhyeon (TWS)', 'https://api.dicebear.com/7.x/initials/svg?seed=JHV&backgroundColor=1a1a2e&fontColor=6496ff', 'kpop', 'TWS', 'South Korea'),

-- ==================== KPOP ЖЕНЩИНЫ ====================

-- NEWJEANS
('Minji (NewJeans)', 'https://api.dicebear.com/7.x/initials/svg?seed=MJN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NewJeans', 'South Korea'),
('Hanni (NewJeans)', 'https://api.dicebear.com/7.x/initials/svg?seed=HNI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NewJeans', 'Australia'),
('Danielle (NewJeans)', 'https://api.dicebear.com/7.x/initials/svg?seed=DNL&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NewJeans', 'Australia'),
('Haerin (NewJeans)', 'https://api.dicebear.com/7.x/initials/svg?seed=HRN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NewJeans', 'South Korea'),
('Hyein (NewJeans)', 'https://api.dicebear.com/7.x/initials/svg?seed=HYN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NewJeans', 'South Korea'),

-- AESPA
('Karina (aespa)', 'https://api.dicebear.com/7.x/initials/svg?seed=KRN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'aespa', 'South Korea'),
('Winter (aespa)', 'https://api.dicebear.com/7.x/initials/svg?seed=WTR&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'aespa', 'South Korea'),
('Giselle (aespa)', 'https://api.dicebear.com/7.x/initials/svg?seed=GSL&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'aespa', 'Japan'),
('NingNing (aespa)', 'https://api.dicebear.com/7.x/initials/svg?seed=NNG&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'aespa', 'China'),

-- BLACKPINK
('Jisoo (BLACKPINK)', 'https://api.dicebear.com/7.x/initials/svg?seed=JSO&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BLACKPINK', 'South Korea'),
('Jennie (BLACKPINK)', 'https://api.dicebear.com/7.x/initials/svg?seed=JNE&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BLACKPINK', 'South Korea'),
('Rosé (BLACKPINK)', 'https://api.dicebear.com/7.x/initials/svg?seed=RSE&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BLACKPINK', 'Australia'),
('Lisa (BLACKPINK)', 'https://api.dicebear.com/7.x/initials/svg?seed=LSA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BLACKPINK', 'Thailand'),

-- TWICE
('Nayeon (TWICE)', 'https://api.dicebear.com/7.x/initials/svg?seed=NYN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'TWICE', 'South Korea'),
('Jeongyeon (TWICE)', 'https://api.dicebear.com/7.x/initials/svg?seed=JYN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'TWICE', 'South Korea'),
('Momo (TWICE)', 'https://api.dicebear.com/7.x/initials/svg?seed=MMO&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'TWICE', 'Japan'),
('Sana (TWICE)', 'https://api.dicebear.com/7.x/initials/svg?seed=SNA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'TWICE', 'Japan'),
('Jihyo (TWICE)', 'https://api.dicebear.com/7.x/initials/svg?seed=JHW&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'TWICE', 'South Korea'),
('Mina (TWICE)', 'https://api.dicebear.com/7.x/initials/svg?seed=MNA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'TWICE', 'Japan'),
('Dahyun (TWICE)', 'https://api.dicebear.com/7.x/initials/svg?seed=DHY&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'TWICE', 'South Korea'),
('Chaeyoung (TWICE)', 'https://api.dicebear.com/7.x/initials/svg?seed=CYG&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'TWICE', 'South Korea'),
('Tzuyu (TWICE)', 'https://api.dicebear.com/7.x/initials/svg?seed=TZY&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'TWICE', 'Taiwan'),

-- (G)I-DLE
('Soyeon ((G)I-DLE)', 'https://api.dicebear.com/7.x/initials/svg?seed=SYN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '(G)I-DLE', 'South Korea'),
('Minnie ((G)I-DLE)', 'https://api.dicebear.com/7.x/initials/svg?seed=MNE&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '(G)I-DLE', 'Thailand'),
('Soojin ((G)I-DLE)', 'https://api.dicebear.com/7.x/initials/svg?seed=SJN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '(G)I-DLE', 'South Korea'),
('Miyeon ((G)I-DLE)', 'https://api.dicebear.com/7.x/initials/svg?seed=MYN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '(G)I-DLE', 'South Korea'),
('Yuqi ((G)I-DLE)', 'https://api.dicebear.com/7.x/initials/svg?seed=YQI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '(G)I-DLE', 'China'),
('Shuhua ((G)I-DLE)', 'https://api.dicebear.com/7.x/initials/svg?seed=SHH&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '(G)I-DLE', 'Taiwan'),

-- LE SSERAFIM
('Sakura (LE SSERAFIM)', 'https://api.dicebear.com/7.x/initials/svg?seed=SKR&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'LE SSERAFIM', 'Japan'),
('Kim Chaewon (LE SSERAFIM)', 'https://api.dicebear.com/7.x/initials/svg?seed=KCW&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'LE SSERAFIM', 'South Korea'),
('Huh Yunjin (LE SSERAFIM)', 'https://api.dicebear.com/7.x/initials/svg?seed=HYJ2&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'LE SSERAFIM', 'USA'),
('Kazuha (LE SSERAFIM)', 'https://api.dicebear.com/7.x/initials/svg?seed=KZH&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'LE SSERAFIM', 'Japan'),
('Hong Eunchae (LE SSERAFIM)', 'https://api.dicebear.com/7.x/initials/svg?seed=HEC&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'LE SSERAFIM', 'South Korea'),

-- ILLIT
('Wonhee (ILLIT)', 'https://api.dicebear.com/7.x/initials/svg?seed=WHE&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ILLIT', 'South Korea'),
('Minju (ILLIT)', 'https://api.dicebear.com/7.x/initials/svg?seed=MJU&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ILLIT', 'South Korea'),
('Moka (ILLIT)', 'https://api.dicebear.com/7.x/initials/svg?seed=MKA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ILLIT', 'Japan'),
('Yunah (ILLIT)', 'https://api.dicebear.com/7.x/initials/svg?seed=YNA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ILLIT', 'South Korea'),
('Iroha (ILLIT)', 'https://api.dicebear.com/7.x/initials/svg?seed=IRH&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ILLIT', 'Japan'),

-- NMIXX
('Lily (NMIXX)', 'https://api.dicebear.com/7.x/initials/svg?seed=LLY&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NMIXX', 'USA'),
('Haewon (NMIXX)', 'https://api.dicebear.com/7.x/initials/svg?seed=HWN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NMIXX', 'South Korea'),
('Sullyoon (NMIXX)', 'https://api.dicebear.com/7.x/initials/svg?seed=SLY&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NMIXX', 'South Korea'),
('Jinni (NMIXX)', 'https://api.dicebear.com/7.x/initials/svg?seed=JNI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NMIXX', 'South Korea'),
('BAE (NMIXX)', 'https://api.dicebear.com/7.x/initials/svg?seed=BAE&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NMIXX', 'South Korea'),
('Jiwoo (NMIXX)', 'https://api.dicebear.com/7.x/initials/svg?seed=JWO&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NMIXX', 'South Korea'),
('Kyujin (NMIXX)', 'https://api.dicebear.com/7.x/initials/svg?seed=KJN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'NMIXX', 'South Korea'),

-- IVE
('Yujin (IVE)', 'https://api.dicebear.com/7.x/initials/svg?seed=YJI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IVE', 'South Korea'),
('Gaeul (IVE)', 'https://api.dicebear.com/7.x/initials/svg?seed=GEL&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IVE', 'South Korea'),
('Rei (IVE)', 'https://api.dicebear.com/7.x/initials/svg?seed=REI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IVE', 'Japan'),
('Wonyoung (IVE)', 'https://api.dicebear.com/7.x/initials/svg?seed=WYG&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IVE', 'South Korea'),
('Liz (IVE)', 'https://api.dicebear.com/7.x/initials/svg?seed=LIZ&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IVE', 'South Korea'),
('Leeseo (IVE)', 'https://api.dicebear.com/7.x/initials/svg?seed=LSO&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IVE', 'South Korea'),

-- ITZY
('Yeji (ITZY)', 'https://api.dicebear.com/7.x/initials/svg?seed=YJZ&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ITZY', 'South Korea'),
('Lia (ITZY)', 'https://api.dicebear.com/7.x/initials/svg?seed=LIA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ITZY', 'South Korea'),
('Ryujin (ITZY)', 'https://api.dicebear.com/7.x/initials/svg?seed=RJN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ITZY', 'South Korea'),
('Chaeryeong (ITZY)', 'https://api.dicebear.com/7.x/initials/svg?seed=CRY&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ITZY', 'South Korea'),
('Yuna (ITZY)', 'https://api.dicebear.com/7.x/initials/svg?seed=YNA2&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'ITZY', 'South Korea'),

-- BABYMONSTER
('Ruka (BABYMONSTER)', 'https://api.dicebear.com/7.x/initials/svg?seed=RKA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BABYMONSTER', 'Japan'),
('Pharita (BABYMONSTER)', 'https://api.dicebear.com/7.x/initials/svg?seed=PHR&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BABYMONSTER', 'Thailand'),
('Asa (BABYMONSTER)', 'https://api.dicebear.com/7.x/initials/svg?seed=ASA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BABYMONSTER', 'Japan'),
('Ahyeon (BABYMONSTER)', 'https://api.dicebear.com/7.x/initials/svg?seed=AHY&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BABYMONSTER', 'South Korea'),
('Rami (BABYMONSTER)', 'https://api.dicebear.com/7.x/initials/svg?seed=RMI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BABYMONSTER', 'South Korea'),
('Rora (BABYMONSTER)', 'https://api.dicebear.com/7.x/initials/svg?seed=RRA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BABYMONSTER', 'South Korea'),
('Chiquita (BABYMONSTER)', 'https://api.dicebear.com/7.x/initials/svg?seed=CQT&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'BABYMONSTER', 'Thailand'),

-- 2NE1
('CL (2NE1)', 'https://api.dicebear.com/7.x/initials/svg?seed=CL2&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '2NE1', 'South Korea'),
('Minzy (2NE1)', 'https://api.dicebear.com/7.x/initials/svg?seed=MNZ&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '2NE1', 'South Korea'),
('Park Bom (2NE1)', 'https://api.dicebear.com/7.x/initials/svg?seed=PBM&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '2NE1', 'South Korea'),
('Dara (2NE1)', 'https://api.dicebear.com/7.x/initials/svg?seed=DRA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', '2NE1', 'Philippines'),

-- RED VELVET
('Irene (Red Velvet)', 'https://api.dicebear.com/7.x/initials/svg?seed=IRN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Red Velvet', 'South Korea'),
('Seulgi (Red Velvet)', 'https://api.dicebear.com/7.x/initials/svg?seed=SLG&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Red Velvet', 'South Korea'),
('Wendy (Red Velvet)', 'https://api.dicebear.com/7.x/initials/svg?seed=WND&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Red Velvet', 'Canada'),
('Joy (Red Velvet)', 'https://api.dicebear.com/7.x/initials/svg?seed=JRV&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Red Velvet', 'South Korea'),
('Yeri (Red Velvet)', 'https://api.dicebear.com/7.x/initials/svg?seed=YRI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Red Velvet', 'South Korea'),

-- MAMAMOO
('Solar (MAMAMOO)', 'https://api.dicebear.com/7.x/initials/svg?seed=SLR&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'MAMAMOO', 'South Korea'),
('Moonbyul (MAMAMOO)', 'https://api.dicebear.com/7.x/initials/svg?seed=MBL&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'MAMAMOO', 'South Korea'),
('Wheein (MAMAMOO)', 'https://api.dicebear.com/7.x/initials/svg?seed=WHI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'MAMAMOO', 'South Korea'),
('Hwasa (MAMAMOO)', 'https://api.dicebear.com/7.x/initials/svg?seed=HWS&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'MAMAMOO', 'South Korea'),

-- GIRLS GENERATION
('Taeyeon (SNSD)', 'https://api.dicebear.com/7.x/initials/svg?seed=TYS&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girls Generation', 'South Korea'),
('Jessica (SNSD)', 'https://api.dicebear.com/7.x/initials/svg?seed=JSS&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girls Generation', 'USA'),
('Sunny (SNSD)', 'https://api.dicebear.com/7.x/initials/svg?seed=SNY&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girls Generation', 'South Korea'),
('Tiffany (SNSD)', 'https://api.dicebear.com/7.x/initials/svg?seed=TFY&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girls Generation', 'USA'),
('Hyoyeon (SNSD)', 'https://api.dicebear.com/7.x/initials/svg?seed=HYO&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girls Generation', 'South Korea'),
('Yuri (SNSD)', 'https://api.dicebear.com/7.x/initials/svg?seed=YRI2&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girls Generation', 'South Korea'),
('Sooyoung (SNSD)', 'https://api.dicebear.com/7.x/initials/svg?seed=SYG&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girls Generation', 'South Korea'),
('Yoona (SNSD)', 'https://api.dicebear.com/7.x/initials/svg?seed=YNA3&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girls Generation', 'South Korea'),
('Seohyun (SNSD)', 'https://api.dicebear.com/7.x/initials/svg?seed=SHX&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girls Generation', 'South Korea'),

-- MISS A
('Fei (Miss A)', 'https://api.dicebear.com/7.x/initials/svg?seed=FEI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Miss A', 'China'),
('Jia (Miss A)', 'https://api.dicebear.com/7.x/initials/svg?seed=JIA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Miss A', 'China'),
('Min (Miss A)', 'https://api.dicebear.com/7.x/initials/svg?seed=MIN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Miss A', 'South Korea'),
('Suzy (Miss A)', 'https://api.dicebear.com/7.x/initials/svg?seed=SUZ&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Miss A', 'South Korea'),

-- IOI
('Chungha (IOI)', 'https://api.dicebear.com/7.x/initials/svg?seed=CHG&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IOI', 'South Korea'),
('Kim Sejeong (IOI)', 'https://api.dicebear.com/7.x/initials/svg?seed=KSJ&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IOI', 'South Korea'),
('Pinky (IOI)', 'https://api.dicebear.com/7.x/initials/svg?seed=PNK&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IOI', 'South Korea'),
('Nayoung (IOI)', 'https://api.dicebear.com/7.x/initials/svg?seed=NYG&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IOI', 'South Korea'),
('Somi (IOI)', 'https://api.dicebear.com/7.x/initials/svg?seed=SMI&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'IOI', 'Canada'),

-- GIRLFRIEND
('Sowon (GFRIEND)', 'https://api.dicebear.com/7.x/initials/svg?seed=SWN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'GFRIEND', 'South Korea'),
('Yerin (GFRIEND)', 'https://api.dicebear.com/7.x/initials/svg?seed=YRN&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'GFRIEND', 'South Korea'),
('Eunha (GFRIEND)', 'https://api.dicebear.com/7.x/initials/svg?seed=ENH&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'GFRIEND', 'South Korea'),
('SinB (GFRIEND)', 'https://api.dicebear.com/7.x/initials/svg?seed=SNB&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'GFRIEND', 'South Korea'),
('Umji (GFRIEND)', 'https://api.dicebear.com/7.x/initials/svg?seed=UMJ&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'GFRIEND', 'South Korea'),
('Yuju (GFRIEND)', 'https://api.dicebear.com/7.x/initials/svg?seed=YJU&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'GFRIEND', 'South Korea'),

-- GIRLS DAY
('Minah (Girl''s Day)', 'https://api.dicebear.com/7.x/initials/svg?seed=MNH&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girl''s Day', 'South Korea'),
('Hyeri (Girl''s Day)', 'https://api.dicebear.com/7.x/initials/svg?seed=HYR&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girl''s Day', 'South Korea'),
('Sojin (Girl''s Day)', 'https://api.dicebear.com/7.x/initials/svg?seed=SJG&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girl''s Day', 'South Korea'),
('Yura (Girl''s Day)', 'https://api.dicebear.com/7.x/initials/svg?seed=YRA&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Girl''s Day', 'South Korea'),

-- IU
('IU', 'https://api.dicebear.com/7.x/initials/svg?seed=IUU&backgroundColor=2e1a2e&fontColor=ff6496', 'kpop', 'Solo', 'South Korea'),

-- ==================== CS2 ИГРОКИ ====================

-- Team Spirit
('chopper (Spirit)', 'https://api.dicebear.com/7.x/initials/svg?seed=CPR&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Team Spirit (CS2)', 'Russia'),
('sh1ro (Spirit→C9)', 'https://api.dicebear.com/7.x/initials/svg?seed=SH1&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Cloud9 (CS2)', 'Russia'),
('donk (Spirit)', 'https://api.dicebear.com/7.x/initials/svg?seed=DNK&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Team Spirit (CS2)', 'Russia'),
('zont1x (Spirit)', 'https://api.dicebear.com/7.x/initials/svg?seed=ZNX&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Team Spirit (CS2)', 'Russia'),
('magixx (Spirit)', 'https://api.dicebear.com/7.x/initials/svg?seed=MGX&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Team Spirit (CS2)', 'Russia'),

-- Mouze / mouz
('torzsi (mouz)', 'https://api.dicebear.com/7.x/initials/svg?seed=TRZ&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'mouz (CS2)', 'Hungary'),
('xertioN (mouz)', 'https://api.dicebear.com/7.x/initials/svg?seed=XRT&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'mouz (CS2)', 'Germany'),
('siuhy (mouz)', 'https://api.dicebear.com/7.x/initials/svg?seed=SHU&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'mouz (CS2)', 'Denmark'),
('Brollan (mouz)', 'https://api.dicebear.com/7.x/initials/svg?seed=BRL&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'mouz (CS2)', 'Sweden'),
('jimpphat (mouz)', 'https://api.dicebear.com/7.x/initials/svg?seed=JMP&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'mouz (CS2)', 'Finland'),

-- Furia
('FalleN (FURIA)', 'https://api.dicebear.com/7.x/initials/svg?seed=FLN&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FURIA (CS2)', 'Brazil'),
('yuurih (FURIA)', 'https://api.dicebear.com/7.x/initials/svg?seed=YRH&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FURIA (CS2)', 'Brazil'),
('KSCERATO (FURIA)', 'https://api.dicebear.com/7.x/initials/svg?seed=KSC&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FURIA (CS2)', 'Brazil'),
('chelo (FURIA)', 'https://api.dicebear.com/7.x/initials/svg?seed=CHL&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FURIA (CS2)', 'Brazil'),
('skullz (FURIA)', 'https://api.dicebear.com/7.x/initials/svg?seed=SKZ&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FURIA (CS2)', 'Brazil'),

-- Falcons
('Magisk (Falcons)', 'https://api.dicebear.com/7.x/initials/svg?seed=MGK&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Falcons (CS2)', 'Denmark'),
('dupreeh (Falcons)', 'https://api.dicebear.com/7.x/initials/svg?seed=DPR&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Falcons (CS2)', 'Denmark'),
('Xyp9x (Falcons)', 'https://api.dicebear.com/7.x/initials/svg?seed=XYP&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Falcons (CS2)', 'Denmark'),

-- Vitality
('ZywOo (Vitality)', 'https://api.dicebear.com/7.x/initials/svg?seed=ZYW&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Vitality (CS2)', 'France'),
('apEX (Vitality)', 'https://api.dicebear.com/7.x/initials/svg?seed=APX&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Vitality (CS2)', 'France'),
('mezii (Vitality)', 'https://api.dicebear.com/7.x/initials/svg?seed=MZI&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Vitality (CS2)', 'UK'),
('flameZ (Vitality)', 'https://api.dicebear.com/7.x/initials/svg?seed=FLZ&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Vitality (CS2)', 'Israel'),
('spinx (Vitality)', 'https://api.dicebear.com/7.x/initials/svg?seed=SPX&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Vitality (CS2)', 'Israel'),

-- FaZe
('NiKo (FaZe)', 'https://api.dicebear.com/7.x/initials/svg?seed=NKF&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FaZe (CS2)', 'Bosnia'),
('broky (FaZe)', 'https://api.dicebear.com/7.x/initials/svg?seed=BRK&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FaZe (CS2)', 'Latvia'),
('karrigan (FaZe)', 'https://api.dicebear.com/7.x/initials/svg?seed=KRG&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FaZe (CS2)', 'Denmark'),
('frozen (FaZe)', 'https://api.dicebear.com/7.x/initials/svg?seed=FRZ&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FaZe (CS2)', 'Slovakia'),
('rain (FaZe)', 'https://api.dicebear.com/7.x/initials/svg?seed=RNF&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'FaZe (CS2)', 'Norway'),

-- NAVI
('electronic (NAVI)', 'https://api.dicebear.com/7.x/initials/svg?seed=ELC&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'NAVI (CS2)', 'Ukraine'),
('b1t (NAVI)', 'https://api.dicebear.com/7.x/initials/svg?seed=B1T&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'NAVI (CS2)', 'Ukraine'),
('jL (NAVI)', 'https://api.dicebear.com/7.x/initials/svg?seed=JLN&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'NAVI (CS2)', 'Czech Republic'),
('iM (NAVI)', 'https://api.dicebear.com/7.x/initials/svg?seed=IMN&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'NAVI (CS2)', 'Ukraine'),
('w0nderful (NAVI)', 'https://api.dicebear.com/7.x/initials/svg?seed=WDF&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'NAVI (CS2)', 'Ukraine'),
('s1mple (NAVI ret.)', 'https://api.dicebear.com/7.x/initials/svg?seed=S1M&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'NAVI (ret.)', 'Ukraine'),

-- G2
('NiKo (G2 era)', 'https://api.dicebear.com/7.x/initials/svg?seed=NKG&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'G2 (CS2)', 'Bosnia'),
('HooXi (G2)', 'https://api.dicebear.com/7.x/initials/svg?seed=HXI&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'G2 (CS2)', 'Denmark'),
('nexa (G2)', 'https://api.dicebear.com/7.x/initials/svg?seed=NXA&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'G2 (CS2)', 'Serbia'),
('m0NESY (G2)', 'https://api.dicebear.com/7.x/initials/svg?seed=MNS&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'G2 (CS2)', 'Armenia'),

-- Astralis
('device (Astralis)', 'https://api.dicebear.com/7.x/initials/svg?seed=DVS&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Astralis (CS2)', 'Denmark'),
('gla1ve (Astralis)', 'https://api.dicebear.com/7.x/initials/svg?seed=GLV&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Astralis (CS2)', 'Denmark'),
('K0nfig (Astralis)', 'https://api.dicebear.com/7.x/initials/svg?seed=KFG&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Astralis (CS2)', 'Denmark'),

-- BetBoom
('Krad (BetBoom)', 'https://api.dicebear.com/7.x/initials/svg?seed=KRD&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'BetBoom (CS2)', 'Russia'),
('nafany (BetBoom)', 'https://api.dicebear.com/7.x/initials/svg?seed=NFN&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'BetBoom (CS2)', 'Russia'),
('zorte (BetBoom)', 'https://api.dicebear.com/7.x/initials/svg?seed=ZRT&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'BetBoom (CS2)', 'Russia'),

-- Heroic
('stavn (Heroic)', 'https://api.dicebear.com/7.x/initials/svg?seed=STV&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Heroic (CS2)', 'Denmark'),
('cadiaN (Heroic)', 'https://api.dicebear.com/7.x/initials/svg?seed=CDN&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Heroic (CS2)', 'Denmark'),
('sjuush (Heroic)', 'https://api.dicebear.com/7.x/initials/svg?seed=SJU&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Heroic (CS2)', 'Denmark'),

-- The Mongolz
('Senzu (Mongolz)', 'https://api.dicebear.com/7.x/initials/svg?seed=SNZ&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'The Mongolz (CS2)', 'Mongolia'),
('mzinho (Mongolz)', 'https://api.dicebear.com/7.x/initials/svg?seed=MZH&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'The Mongolz (CS2)', 'Mongolia'),
('bLas (Mongolz)', 'https://api.dicebear.com/7.x/initials/svg?seed=BLS&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'The Mongolz (CS2)', 'Mongolia'),
('Techno4K (Mongolz)', 'https://api.dicebear.com/7.x/initials/svg?seed=T4K&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'The Mongolz (CS2)', 'Mongolia'),
('Annihilation (Mongolz)', 'https://api.dicebear.com/7.x/initials/svg?seed=ANH&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'The Mongolz (CS2)', 'Mongolia'),

-- Vision Strikers / PARI
('karrigan-like (PARI)', 'https://api.dicebear.com/7.x/initials/svg?seed=PRI&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'PARI (CS2)', 'Russia'),
('Magnojez (PARI)', 'https://api.dicebear.com/7.x/initials/svg?seed=MGJ&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'PARI (CS2)', 'Russia'),

-- Легенды CS
('f0rest (ret.)', 'https://api.dicebear.com/7.x/initials/svg?seed=F0R&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'Dignitas (CS ret.)', 'Sweden'),
('GeT_RiGhT (ret.)', 'https://api.dicebear.com/7.x/initials/svg?seed=GTR&backgroundColor=0a1628&fontColor=64c8ff', 'esports', 'NiP (CS ret.)', 'Sweden'),

-- ==================== DOTA 2 ====================

-- Team Spirit
('Yatoro (Spirit Dota)', 'https://api.dicebear.com/7.x/initials/svg?seed=YTR&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Team Spirit (Dota2)', 'Ukraine'),
('TORONTOTOKYO (Spirit)', 'https://api.dicebear.com/7.x/initials/svg?seed=TTK&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Team Spirit (Dota2)', 'Russia'),
('Collapse (Spirit)', 'https://api.dicebear.com/7.x/initials/svg?seed=CLP&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Team Spirit (Dota2)', 'Russia'),
('Miposhka (Spirit)', 'https://api.dicebear.com/7.x/initials/svg?seed=MPS&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Team Spirit (Dota2)', 'Russia'),
('Larl (Spirit)', 'https://api.dicebear.com/7.x/initials/svg?seed=LRL&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Team Spirit (Dota2)', 'Russia'),

-- Aurora
('Skiter (Aurora)', 'https://api.dicebear.com/7.x/initials/svg?seed=SKT&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Aurora (Dota2)', 'Sweden'),
('33 (Aurora)', 'https://api.dicebear.com/7.x/initials/svg?seed=T33&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Aurora (Dota2)', 'Israel'),
('Pure (Aurora)', 'https://api.dicebear.com/7.x/initials/svg?seed=PRE&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Aurora (Dota2)', 'Russia'),
('Tobi (Aurora)', 'https://api.dicebear.com/7.x/initials/svg?seed=TBI&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Aurora (Dota2)', 'UK'),
('zai (Aurora)', 'https://api.dicebear.com/7.x/initials/svg?seed=ZAI&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Aurora (Dota2)', 'Sweden'),

-- Tundra
('Nine (Tundra)', 'https://api.dicebear.com/7.x/initials/svg?seed=NIN&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Tundra (Dota2)', 'Germany'),
('Sneyking (Tundra)', 'https://api.dicebear.com/7.x/initials/svg?seed=SNK&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Tundra (Dota2)', 'Canada'),
('Saksa (Tundra)', 'https://api.dicebear.com/7.x/initials/svg?seed=SKS&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Tundra (Dota2)', 'Finland'),
('Skiter-era (Tundra)', 'https://api.dicebear.com/7.x/initials/svg?seed=SKE&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Tundra (Dota2)', 'Sweden'),
('Nisha (Tundra)', 'https://api.dicebear.com/7.x/initials/svg?seed=NSH&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Tundra (Dota2)', 'Poland'),

-- Falcons Dota
('Ame (Falcons Dota)', 'https://api.dicebear.com/7.x/initials/svg?seed=AME&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Falcons (Dota2)', 'China'),
('XinQ (Falcons)', 'https://api.dicebear.com/7.x/initials/svg?seed=XNQ&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Falcons (Dota2)', 'China'),
('fy (Falcons)', 'https://api.dicebear.com/7.x/initials/svg?seed=FYD&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Falcons (Dota2)', 'China'),
('xNova (Falcons)', 'https://api.dicebear.com/7.x/initials/svg?seed=XNV&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Falcons (Dota2)', 'Singapore'),
('Somnus (Falcons)', 'https://api.dicebear.com/7.x/initials/svg?seed=SMS&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Falcons (Dota2)', 'China'),

-- mouz Dota
('Nisha (mouz Dota)', 'https://api.dicebear.com/7.x/initials/svg?seed=NMZ&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'mouz (Dota2)', 'Poland'),
('Boom (mouz)', 'https://api.dicebear.com/7.x/initials/svg?seed=BMD&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'mouz (Dota2)', 'Indonesia'),
('Malr1ne (mouz)', 'https://api.dicebear.com/7.x/initials/svg?seed=MLR&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'mouz (Dota2)', 'Brazil'),

-- BetBoom Dota
('gpk (BetBoom Dota)', 'https://api.dicebear.com/7.x/initials/svg?seed=GPK&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'BetBoom (Dota2)', 'Russia'),
('Noticed (BetBoom)', 'https://api.dicebear.com/7.x/initials/svg?seed=NTC&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'BetBoom (Dota2)', 'Russia'),
('Save- (BetBoom)', 'https://api.dicebear.com/7.x/initials/svg?seed=SAV&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'BetBoom (Dota2)', 'Russia'),

-- PARI Dota
('RAMZES666 (PARI)', 'https://api.dicebear.com/7.x/initials/svg?seed=RMZ&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'PARI (Dota2)', 'Russia'),
('No[o]ne (PARI)', 'https://api.dicebear.com/7.x/initials/svg?seed=NNN&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'PARI (Dota2)', 'Ukraine'),

-- NAVI Dota
('Crystallize (NAVI)', 'https://api.dicebear.com/7.x/initials/svg?seed=CRS&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'NAVI (Dota2)', 'Russia'),
('GeneRaL (NAVI)', 'https://api.dicebear.com/7.x/initials/svg?seed=GNR&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'NAVI (Dota2)', 'Ukraine'),

-- Легенды Dota
('Miracle- (ret.)', 'https://api.dicebear.com/7.x/initials/svg?seed=MRC&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'Nigma (Dota2 ret.)', 'Jordan'),
('ana (ret.)', 'https://api.dicebear.com/7.x/initials/svg?seed=ANA&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'OG (Dota2 ret.)', 'Australia'),
('N0tail (ret.)', 'https://api.dicebear.com/7.x/initials/svg?seed=NTL&backgroundColor=0a2814&fontColor=64ff96', 'esports', 'OG (Dota2 ret.)', 'Denmark'),

-- ==================== КОРЕЙСКИЕ АКТЁРЫ ====================

('Lee Min-ho', 'https://api.dicebear.com/7.x/initials/svg?seed=LMH&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Kim Soo-hyun', 'https://api.dicebear.com/7.x/initials/svg?seed=KSH&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Park Seo-joon', 'https://api.dicebear.com/7.x/initials/svg?seed=PSJ&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Hyun Bin', 'https://api.dicebear.com/7.x/initials/svg?seed=HBN&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Song Joong-ki', 'https://api.dicebear.com/7.x/initials/svg?seed=SJK&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Ji Chang-wook', 'https://api.dicebear.com/7.x/initials/svg?seed=JCW&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Gong Yoo', 'https://api.dicebear.com/7.x/initials/svg?seed=GYO&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Lee Jong-suk', 'https://api.dicebear.com/7.x/initials/svg?seed=LJS&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Kim Woo-bin', 'https://api.dicebear.com/7.x/initials/svg?seed=KWB&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Cha Eun-woo', 'https://api.dicebear.com/7.x/initials/svg?seed=CEW&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama / ASTRO', 'South Korea'),
('Nam Joo-hyuk', 'https://api.dicebear.com/7.x/initials/svg?seed=NJH&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Park Bogum', 'https://api.dicebear.com/7.x/initials/svg?seed=PBG&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Lee Joon-gi', 'https://api.dicebear.com/7.x/initials/svg?seed=LJG&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('So Ji-sub', 'https://api.dicebear.com/7.x/initials/svg?seed=SJS&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Lee Seung-gi', 'https://api.dicebear.com/7.x/initials/svg?seed=LSG&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Yoo Ah-in', 'https://api.dicebear.com/7.x/initials/svg?seed=YAI&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Jung Hae-in', 'https://api.dicebear.com/7.x/initials/svg?seed=JHI&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Ahn Hyo-seop', 'https://api.dicebear.com/7.x/initials/svg?seed=AHS&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Kim Young-dae', 'https://api.dicebear.com/7.x/initials/svg?seed=KYD&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Wi Ha-jun', 'https://api.dicebear.com/7.x/initials/svg?seed=WHJ&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Lee Do-hyun', 'https://api.dicebear.com/7.x/initials/svg?seed=LDH&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Song Kang', 'https://api.dicebear.com/7.x/initials/svg?seed=SKG&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),
('Rowoon (SF9)', 'https://api.dicebear.com/7.x/initials/svg?seed=RWN&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama / SF9', 'South Korea'),
('Choi Woo-shik', 'https://api.dicebear.com/7.x/initials/svg?seed=CWS&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Film', 'South Korea'),
('Park Hyung-sik', 'https://api.dicebear.com/7.x/initials/svg?seed=PHS&backgroundColor=1e0a2e&fontColor=c896ff', 'actor', 'Korean Drama', 'South Korea'),

-- Корейские актрисы
('Son Ye-jin', 'https://api.dicebear.com/7.x/initials/svg?seed=SYJ&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Jun Ji-hyun', 'https://api.dicebear.com/7.x/initials/svg?seed=JJH&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Kim Tae-hee', 'https://api.dicebear.com/7.x/initials/svg?seed=KTH&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Song Hye-kyo', 'https://api.dicebear.com/7.x/initials/svg?seed=SHK&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Han Ga-in', 'https://api.dicebear.com/7.x/initials/svg?seed=HGI&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('IU (actor)', 'https://api.dicebear.com/7.x/initials/svg?seed=IUA&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Park Shin-hye', 'https://api.dicebear.com/7.x/initials/svg?seed=PSH&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Suzy (actress)', 'https://api.dicebear.com/7.x/initials/svg?seed=SZA&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Kim Go-eun', 'https://api.dicebear.com/7.x/initials/svg?seed=KGE&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Yoona (actress)', 'https://api.dicebear.com/7.x/initials/svg?seed=YNA4&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Moon Ga-young', 'https://api.dicebear.com/7.x/initials/svg?seed=MGY&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Kim Yoo-jung', 'https://api.dicebear.com/7.x/initials/svg?seed=KYJ&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Park Min-young', 'https://api.dicebear.com/7.x/initials/svg?seed=PMY&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Shin Min-a', 'https://api.dicebear.com/7.x/initials/svg?seed=SMA&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Han So-hee', 'https://api.dicebear.com/7.x/initials/svg?seed=HSH&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Kim Da-mi', 'https://api.dicebear.com/7.x/initials/svg?seed=KDM&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Jeon Yeo-been', 'https://api.dicebear.com/7.x/initials/svg?seed=JYB&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Kim Hye-soo', 'https://api.dicebear.com/7.x/initials/svg?seed=KHS&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Lee Bo-young', 'https://api.dicebear.com/7.x/initials/svg?seed=LBY&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Seo Ye-ji', 'https://api.dicebear.com/7.x/initials/svg?seed=SYZ&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Jung Ho-yeon', 'https://api.dicebear.com/7.x/initials/svg?seed=JHY2&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Kim Ji-won', 'https://api.dicebear.com/7.x/initials/svg?seed=KJW2&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Bae Suzy', 'https://api.dicebear.com/7.x/initials/svg?seed=BSZ&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Drama', 'South Korea'),
('Cho Yeo-jeong', 'https://api.dicebear.com/7.x/initials/svg?seed=CYJ&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Film', 'South Korea'),
('Tang Wei', 'https://api.dicebear.com/7.x/initials/svg?seed=TWE&backgroundColor=1e0a2e&fontColor=ffb6c8', 'actor', 'Korean Film', 'China');
