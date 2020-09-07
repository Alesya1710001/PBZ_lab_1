-- 13.	Получить номера проектов, обеспечиваемых по крайней мере одним поставщиком не из того же города.
select distinct project_number from number_of_details
	inner join project
		on number_of_details.project_number = project.project_id
			inner join provider
				on number_of_details.provider_number = provider.provider_id
where provider.city != project.city;

-- 15.	Получить общее число проектов, обеспечиваемых поставщиком П1.
select distinct count(project_number) from number_of_details
	inner join provider
		on number_of_details.provider_number = provider.provider_id
where provider.provider_id = 'П1';

-- 18.	Получить номера деталей, поставляемых для некоторого проекта со средним количеством больше 320.
select distinct detail_number from number_of_details
where amount > 320;

-- 19.	Получить имена проектов, обеспечиваемых поставщиком П1.
select distinct title from project
	inner join number_of_details
		on number_of_details.project_number = project.project_id
			inner join provider
				on provider.provider_id = number_of_details.provider_number
where provider_number = 'П1';

-- 20.	Получить цвета деталей, поставляемых поставщиком П1.
select distinct color from detail
	inner join number_of_details
		on number_of_details.detail_number = detail.detail_id
			inner join provider
				on provider.provider_id = number_of_details.provider_number
where provider_number = 'П1';

-- 21.	Получить номера деталей, поставляемых для какого-либо проекта в Лондоне.
select distinct detail_id from detail
	inner join number_of_details
		on number_of_details.detail_number = detail.detail_id
			inner join project
				on project.project_id = number_of_details.project_number
where project.city = 'Лондон';

-- 25.	Получить номера проектов, город которых стоит первым в алфавитном списке городов.
select project_id from project
order by project.city ASC
limit 1;

-- 29.	Получить номера проектов, полностью обеспечиваемых поставщиком П1.
select distinct project_number from number_of_details
where project_number in(
	select distinct project_number from number_of_details
	group by project_number
	having count(provider_number)=1 and provider_number = 'П1'
);

-- 33.	Получить все города, в которых расположен по крайней мере один поставщик, одна деталь или один проект.
select distinct city from provider
where provider.city in(
	select detail.city from detail
		inner join project
			on project.city = detail.city
	where provider.city = detail.city
);

-- 35.	Получить пары "номер поставщика-номер детали", такие, что данный поставщик не поставляет данную деталь.
select distinct g1.provider_number as first, g2.detail_number as second from number_of_details as g1, number_of_details as g2
where g1.detail_number not in(
	select detail_number from number_of_details as g3
    where g3.provider_number = g2.provider_number
);

