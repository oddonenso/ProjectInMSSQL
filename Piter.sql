create database work
use work
create table Userrr (
[id] int not null identity(1,1) primary key,
[login] nvarchar(30) not null,
[password] nvarchar(10) not null CHECK (LEN([password])>=3),
[fio] nvarchar(50) 
)

create table [job] 
(
[id] int not null identity(1,1) primary key,
[title] nvarchar(50) not null,
[cash] money  check ([cash]>16054)
)

insert into Userrr values('Bob', '1488', 'Bob Strebkov'),
('Joe', '09/11', 'Joe Joe'),
('Zulfiya', '18/08', 'Zulfiya Kirova'),
('Kira', '09/04', 'Sas Sas'),
('Gudvin', '12345', 'Adolf Hitler')

insert into [job] values ('Уборшик', 20000),
                           ('Дизайнер', 50000),
						   ('Программист', 100000)


Create table [User_to_job]
(
[id] int not null identity(1,1) primary key,
[User_ID]  int not null foreign key references userrr([id]),
[Job_Id]  int not null foreign key references [job]([id])

)

insert into  [User_to_job] values
(1,3), (2,2), (3,1), (4,1), (5,3) 

create table [Mail] (
[id] int not null identity(1,1) primary key,
[message] nvarchar(Max),
[data_send] datetime,
[User_Id] int not null foreign key references userrr([id])
)

insert into [Mail] 
values
( 'Нужен новый интерфейс для нашего!!!', '2023-09-01 19:35:01',1),
( 'Хай гудвин, с днюхой', '2023-08-01 19:35:01',2),
( 'ТУТ САЙМОН!!!', '2023-08-08 19:35:01',3),
( 'С 1 Сентября', '2023-09-01 11:35:01',4)


select *from job  inner join [User_to_job] on [User_to_job].Job_Id = job.id
                   inner join Userrr on Userrr.id = [User_to_job].User_ID
				   inner join [Mail] on Mail.User_Id = Userrr.id;

--fio и уборщик
 SELECT Userrr.[fio], [job].[title]
FROM [job]
INNER JOIN [User_to_job] ON [User_to_job].Job_Id = [job].[id]
INNER JOIN Userrr ON Userrr.[id] = [User_to_job].User_ID
WHERE [job].[title] = 'Уборщик'; 

--вывод фио и должность, у кого др 1 сентября
select *from job  inner join [User_to_job] on [User_to_job].Job_Id = job.id
                   inner join Userrr on Userrr.id = [User_to_job].User_ID
				   inner join [Mail] on Mail.User_Id = Userrr.id
				   WHERE YEAR([Mail].data_send) = 2023 AND MONTH([Mail].data_send) = 9;

--вывести пользователя и письмо, которое было отправлено в сентябре 2023

				   SELECT Userrr.fio, [Mail].[message]
FROM Userrr join Mail.User_Id = Userrr.id
w


