USE professorsdb;
select * from professor;
USE student_groupdb;
select * from student_group where speciality= 'ЭВМ';
USE studying_proccessdb;
select distinct professor_id, number_of_class from studying_proccess where subject_id = '18П';