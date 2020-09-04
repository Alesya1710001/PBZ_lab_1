CREATE DATABASE studying_information;
USE studying_information;
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

CREATE TABLE student_group(
	id char(3),
    title char(5),
    number_of_students INTEGER, 
	speciality char(30),
    surname_of_headman TEXT
);
INSERT INTO student_group (id, title, number_of_students, speciality, surname_of_headman) 
VALUES ('8Г', 'Э-12', 18, 'ЭВМ', 'Иванова' ),('7Г', 'Э-15', 22, 'ЭВМ', 'Сеткин' ),
('4Г', 'АС-9', 24, 'АСОИ', 'Балабанов' ),('3Г', 'АС-8', 20, 'АСОИ', 'Чижов' ),
('17Г', 'С-14', 29, 'СД', 'Амросов' ),('12Г', 'М-6', 16, 'Международная экономика', 'Трубин' ),
('10Г', 'Б-4', 21, 'Бухучет', 'Зязютник' );

CREATE TABLE subject(
	id char(3),
    title TEXT,
    number_of_hours INTEGER, 
	speciality char(30),
    semester INTEGER
);
INSERT INTO subject (id, title, number_of_hours, speciality, semester) 
VALUES ('12П', 'Мини ЭВМ', 36, 'ЭВМ', 1 ),('14П', 'ПЭВМ', 72, 'ЭВМ', 2 ), ('17П', 'СУБД ПК', 48, 'ФСОИ', 4 ),
('18П', 'ВКСС', 52, 'АСОИ', 6 ),('34П', 'Физика', 30, 'СД', 6 ),('22П', 'Аудит', 24, 'Бухучета', 3 );

CREATE TABLE studying_proccess(
	gruop_id char(3) references student_group(id) on delete cascade,
    subject_id char(3) references subject(id) on delete cascade,
    professor_id char(4) references professor(id) on delete cascade,
    number_of_class INTEGER,
    primary key (gruop_id, subject_id, professor_id, number_of_class)
);

INSERT INTO studying_proccess (gruop_id, subject_id, professor_id, number_of_class) 
VALUES ('8Г', '12П', '222Л', 112 ), ('8Г', '14П', '221Л', 220 ),('8Г', '17П', '222Л', 112 ),
('7Г', '14П', '221Л', 220 ),('7Г', '17П', '222Л', 241 ),('7Г', '18П', '225Л', 210 ),
('4Г', '12П', '222Л', 112 ),('4Г', '18П', '225Л', 210 ),('3Г', '12П', '222Л', 112 ),
('3Г', '17П', '221Л', 241 ),('3Г', '18П', '225Л', 210 ),('17Г', '12П', '222Л', 112 ),
('17Г', '22П', '110Л', 220 ),('17Г', '34П', '430Л', 118 ),('12Г', '12П', '222Л', 112 ),
('12Г', '22П', '110Л', 210 ),('10Г', '12П', '222Л', 210 ),('10Г', '22П', '110Л', 210 );