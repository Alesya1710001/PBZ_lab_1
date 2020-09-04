CREATE DATABASE subjectsdb;
USE subjectsdb;
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