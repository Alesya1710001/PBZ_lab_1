CREATE DATABASE student_groupdb;
USE student_groupdb;
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