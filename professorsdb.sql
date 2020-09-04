CREATE DATABASE professorsdb;
USE professorsdb;
CREATE TABLE professor(
	id char(4),
    surname TEXT,
    post TEXT,
    department TEXT,
    speciality char(30),
    phone_number INTEGER
);
INSERT INTO professor (id, surname, post, department, speciality, phone_number) 
VALUES ('221Л', 'Фролов', 'Доцент', 'ЭВМ', 'АСОИ ЭВМ', 487 ), 
('222Л', 'Костин', 'Доцент', 'ЭВМ', 'ЭВМ', 543 ),
('225Л', 'Бойко', 'Профессор', 'АСУ', 'АСОИ ЭВМ', 112 ),
('430Л', 'Глизов', 'Ассистент', 'ТФ', 'СД', 421 ),
('110Л', 'Петров', 'Ассистент', 'Экономики', 'Международная экономика', 324 );