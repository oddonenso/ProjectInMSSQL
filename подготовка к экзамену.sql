create database osvej
use osvej


create table listOsvej(
[id] int not null identity(1,1) primary key,
[name] nvarchar(100),
[color] nvarchar(50),
[price] money
)


insert into listOsvej values
('�����', '�����', 2500)
('���', '������', 500),
('�����', '�������', 5000),
('�������', '�����', 3400),
('������', '������', 1488)


--������� �� ����� ������
select*from listOsvej
where [color] = '������'

--������� �� ����� ������ 5000 ��� ������
select*from listOsvej
where [price] >=5000

--������� �� ����� ����� �� 2500
select*from listOsvej
where [color] = '�����' and [price] = 2500


--������� �� �����������
--������� �������� � ���������
--��� ������� ���� �������� ��������� Email   

create database working
use working

create table [regions] (
[region_id] int not null identity(1,1) primary key,
[region_name] nvarchar(150)
)

insert into [regions] values 
('������������� �������'),('������������ ����'), 
('���������� �������'), ('������������� ����'), ('���������� �������')

create table [countries]
(
[country_id] int not null identity(1,1) primary key,
[country_name] nvarchar(100),
[region id] int not null foreign key references [regions]([region_id])
)

insert into [countries] values  
('���������� ���������', 1), ('���������� ���������', 2), 
('���������� ���������', 3),
('���������� ���������', 4), ('���������� ���������', 5)
create table [location] (
[location_id] int not null identity(1,1) primary key,
[street_address] nvarchar(120),
[postal_code] int,
[city] nvarchar(80),
[state_province] nvarchar(80),
[country_id] int not null foreign key references [countries]([country_id])
)
insert into [location] values 
('������������ 20', 666333, '�����������', '������', 1), ('������� �������� 72', 666333, '�����������', '������', 1), 
('�������� 25', 7221412, '���������', '�� ������', 2),
('������� �������', 195210, '������', '�����', 3) 
create table [departments] 
(
[department_id] int not null identity(1,1) primary key,
[department_name] nvarchar(100),
[manager_id] int not null,
[location_id] int not null foreign key references [location]([location_id])
)
insert into [departments] values
('�������� Top', 1, 1), ('YANDEX', 2, 2), ('������������ �������� "���"', 3, 3)
create table jobs (
[job_id] int not null identity(1,1) primary key,
[job_title] nvarchar(100),
[min_salary] money,
[max_salary] money
)
insert into jobs values
('�����������', 30000, 120000), ('��������', 30000, 100000),  ('�����������', 20000, 70000), 
('����������', 45000, 150000), ('���������', 20000, 90000)

create table [Employees] (
[Employee_id] int not null identity(1,1) primary key,
[FIO] nvarchar(150),
[email] nvarchar(250),
[phone_number] nvarchar(22),
[hire_date] date,
[job_id] int not null foreign key references jobs([job_id]),
[salary] money,
[commission_pct] int,
[manager_id]  int not null,
[department_id] int not null foreign key references [departments]([department_id]),
)
insert into [Employees] values 
('�������� ����� ���������', 'kulak1488@gmail.com', '+79994685906', '2021-09-01', 1, 50000, 13, 1, 2),
('Nicholas Oddone', 'oddonenso@gmail.com', '+79130648791', '2021-09-01', 1, 51000, 12, 1, 1),
('������� ����� ��������', 'irinka666@gmail.com', '+79233504680', '2023-09-09', 2, 30000, 45, 2, 1),
('�������� ��������� ����������', 'stripa@gmail.com', '+79139494546', '2017-04-09', 2, 120000, 13, 2, 1),
('������� ����� �����������', 'churkaebanya@gmail.com', '+79236661488', '2015-08-18', 2, 20000, 45, 2, 3)

select *from [Employees]

  

create table [job_history] (
[Employee_id] int not null foreign key references [Employees]([Employee_id]),
[start_Date] date,
[end_Date] date,
[job_id] int not null foreign key references jobs([job_id]),
[department_id] int not null foreign key references [departments]([department_id]),
)

insert into [job_history] values
(2, '2021-09-14', '', 1, 2), (3, '2021-09-14', '', 1, 1), (4, '2023-09-14', '', 2, 1),  (5, '2017-04-09', '', 1, 1), 
(6, '2015-08-18', '2023-01-09', 4, 3)


--������� Employees. �������� ������ � ����������� ��� ���� �����������
select *from [Employees]
--������� Employees. �������� ������ ���� ����������� � ������ 'Simon'
select*from [Employees]
where [FIO] = '������� ����� �����������'

--������� Employees. �������� ������ ���� ����������� ������� �������� � �������� ���
SELECT [Employees].FIO, jobs.[job_title]
FROM [Employees]
INNER JOIN jobs ON [Employees].job_id = jobs.job_id
WHERE jobs.job_title = '�����������'

--������� Employees. �������� ������ ���� ����������� �������� ��� (department_id) � ���������(salary), ������� 5000

SELECT [Employees].FIO, departments.department_name
FROM [Employees] inner join departments on[Employees].department_id= departments.[department_id]
where departments.department_name = '�������� Top' and [Employees].salary >50000



--������� Employees.
--�������� ������ �� department_id � ����������� � ������������ ���������, 
--� ������ � ������� ����� ������� �� ������
--� � ����������� �����������. ���������� �� ���������� ����������� (�� ��������)
  SELECT department_id,
         MIN (salary) min_salary,
		 max(salary) max_salary,
		 MIN (hire_date) min_hire_date,
         MAX (hire_date) max_hire_Date,
		 COUNT (*) count
    FROM employees
GROUP BY department_id
order by count(*) desc


