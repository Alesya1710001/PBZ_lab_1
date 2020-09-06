USE studying_information;
-- Получить полную информацию обо всех преподавателях.
select * from professor;

-- Получить полную информацию обо всех студенческих группах на специальности ЭВМ.
select * from student_group where speciality= 'ЭВМ';

-- Получить личный номер преподавателя и номера аудиторий, в которых они преподают предмет с кодовым номером 18П.
select distinct professor_id, number_of_class from studying_proccess where subject_id = '18П';

-- Получить  номера предметов и названия предметов, которые ведет преподаватель Костин.
select distinct subject_number, title from subject 
inner join studying_proccess
on studying_proccess.subject_id = subject.subject_number
inner join professor
on professor.professors_number = studying_proccess.professors_id
where professor.surname = 'Костин';

-- Получить номер группы, в которой ведутся предметы преподавателем Фроловым.
select distinct group_id from studying_proccess
inner join professor
on professor.professors_number = studying_proccess.professors_id
where professor.surname = 'Фролов';

-- Получить информацию о предметах, которые ведутся на специальности АСОИ.
select distinct * from subject where speciality = 'АСОИ';

-- Получить информацию о преподавателях, которые ведут предметы на специальности АСОИ.
select distinct * from professor where speciality like '%АСОИ%';

-- Получить фамилии преподавателей, которые ведут предметы в 210 аудитории.
select distinct surname from professor 
inner join studying_proccess
on studying_proccess.professors_id = professor.professors_number
where studying_proccess.number_of_class= 210;

-- Получить названия предметов и названия групп, которые ведут занятия в аудиториях с 100 по 200. 
select distinct subject.title as 'subject_name', student_group.title as 'group_name' from studying_proccess
inner join subject
on  subject.subject_number = studying_proccess.subject_id
inner join  student_group
on student_group.group_number = studying_proccess.group_id
where number_of_class between 100 and 200;

-- Получить пары номеров групп с одной специальности.

-- Получить общее количество студентов, обучающихся на специальности ЭВМ.
-- Получить номера преподавателей, обучающих студентов по специальности ЭВМ.
-- Получить номера предметов, изучаемых всеми студенческими группами.
-- Получить фамилии преподавателей, преподающих те же предметы, что и преподаватель преподающий предмет с номером 14П.
-- Получить информацию о предметах, которые не ведет преподаватель с личным номером 221П.
-- Получить информацию о предметах, которые не изучаются в группе М-6.
-- Получить информацию о доцентах, преподающих в группах 3Г и 8Г.
-- Получить номера предметов, номера преподавателей, номера групп, в которых ведут занятия преподаватели с кафедры ЭВМ, имеющих специальность АСОИ.
-- Получить номера групп с такой же специальностью, что и специальность преподавателей.
-- Получить номера преподавателей с кафедры ЭВМ, преподающих предметы по специальности, совпадающей со специальностью студенческой группы. 
-- Получить специальности студенческой группы, на которых работают преподаватели кафедры АСУ.
-- Получить номера предметов, изучаемых группой АС-8.
-- Получить номера студенческих групп, которые изучают те же предметы, что и студенческая группа АС-8.
-- Получить номера студенческих групп, которые не изучают предметы, преподаваемых в студенческой группе АС-8.
-- Получить номера студенческих групп, которые не изучают предметы, преподаваемых преподавателем 430Л.
-- Получить номера преподавателей, работающих с группой Э-15, но не преподающих предмет 12П.
