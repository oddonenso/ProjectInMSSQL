create database computerCOMP
use computerCOMP
create table [client] 
(
[id] int not null identity(1,1) primary key,
[FIO_client] nvarchar(50),
[phone] nvarchar(MAX),
[age] int
)
insert into [client] values ('Стребков Александр', '79130648791', 31),
                            ('Симон Туманян', '79136661488', 28),
							('Александр Бызов', '79513700909', 18),
							('Nicholas Oddone', '79130648791', 18),
                            ('Галина Плотникова', '79609069917', 47),
							('Зульфия Бызова', '79139493839', 52),
							('Алекс Стребков', '79605443838', 30),
                            ('Andrew Online', '79137985772', 18),
							('Никита Голов', '79132003090', 18),
							('Никита Балуев', '79137024259', 18)

create table [sotrudniki] (
[id] int not null identity(1,1) primary key,
[FIO_sotrudniki] nvarchar(50),
[doljnost] nvarchar(200),
[salary] money,
[work_opit] int
)

insert into [sotrudniki] values ('Stebkov Alex', 'Programmer', 60000,6),
                                ('Saymon Tymanyan', 'comp-Engeneer', 45000,10),
								('Николас Грузных', 'Programmer', 50000,4),
								('Андрей Онлайнов', 'менеджер', 45000,10),
								('Жанночка', 'менеджер по чистоте', 25000,2),
								('Боря', 'Охранник', 22000,4),
								('Nicholas Sasoddone', 'Директор', 150000,12),
								('Татьяна Грузных', 'Заместитель директора', 100000,5),
								('Бызятня', 'HR-менеджер', 40000,9),
								('Федя Барбарисов', 'comp-Engeneer', 55000,5)

create table [uslugi] (
[id] int not null identity(1,1) primary key,
[name_uslugi] nvarchar(max),
[price] money
)
insert into [uslugi] values ('Разработка и дизайн ПО', 10000),
                            ('Установка и настройка ОС', 2000),
							('Обслуживание и ремонт компот и переферии', 7000),
                            ('Консультации по выбору комп.техники и ПО', 1000),
							('Создание и поддержка сайтов и веб-приложений', 10000),
                            ('Аудит безопасности компьютерной инфраструктуры', 3000),
						('Восстановление данных с поврежденных носителей', 4500),
                            ('Обучение пользователям работе с компьютером и программным обеспечением', 1499),
							('Интеграция различных систем и приложений для повышения эффективности бизнес-процессов', 4500),
                            ('Поддержка и обновление ПО клиентов', 6500)


create table [zakaz] (
[id] int not null identity(1,1) primary key,
[id_clienta] int null foreign key references [client] ([id]),
[id_uslugi] int null foreign key references [uslugi] ([id]),
[win] nvarchar(50)
)

insert into [zakaz] values (1,1, 'В процессе'),
                           (2,1,'Выполнено'),
						   (3,4, 'Отменен'),
						   (5,8, 'В процессе'),
                           (4,1,'В процессе'),
						   (10,4, 'Выполнен'),
						   (9,1, 'Отменен'),
                           (8,6,'Выполнено'),
						   (6,10, 'Отменен'),
						   (7,3, 'Выполнено')

select*from [client] 
select*from [sotrudniki]
where [FIO_sotrudniki] = 'Saymon Tymanyan'
select*from[zakaz]
select*from[uslugi]

select *from [zakaz] inner join [sotrudniki] on [zakaz].id = [sotrudniki].id
