create database computerCOMP
use computerCOMP
create table [client] 
(
[id] int not null identity(1,1) primary key,
[FIO_client] nvarchar(50),
[phone] nvarchar(MAX),
[age] int
)
insert into [client] values ('�������� ���������', '79130648791', 31),
                            ('����� �������', '79136661488', 28),
							('��������� �����', '79513700909', 18),
							('Nicholas Oddone', '79130648791', 18),
                            ('������ ����������', '79609069917', 47),
							('������� ������', '79139493839', 52),
							('����� ��������', '79605443838', 30),
                            ('Andrew Online', '79137985772', 18),
							('������ �����', '79132003090', 18),
							('������ ������', '79137024259', 18)

create table [sotrudniki] (
[id] int not null identity(1,1) primary key,
[FIO_sotrudniki] nvarchar(50),
[doljnost] nvarchar(200),
[salary] money,
[work_opit] int
)

insert into [sotrudniki] values ('Stebkov Alex', 'Programmer', 60000,6),
                                ('Saymon Tymanyan', 'comp-Engeneer', 45000,10),
								('������� �������', 'Programmer', 50000,4),
								('������ ��������', '��������', 45000,10),
								('��������', '�������� �� �������', 25000,2),
								('����', '��������', 22000,4),
								('Nicholas Sasoddone', '��������', 150000,12),
								('������� �������', '����������� ���������', 100000,5),
								('�������', 'HR-��������', 40000,9),
								('���� ����������', 'comp-Engeneer', 55000,5)

create table [uslugi] (
[id] int not null identity(1,1) primary key,
[name_uslugi] nvarchar(max),
[price] money
)
insert into [uslugi] values ('���������� � ������ ��', 10000),
                            ('��������� � ��������� ��', 2000),
							('������������ � ������ ������ � ���������', 7000),
                            ('������������ �� ������ ����.������� � ��', 1000),
							('�������� � ��������� ������ � ���-����������', 10000),
                            ('����� ������������ ������������ ��������������', 3000),
						('�������������� ������ � ������������ ���������', 4500),
                            ('�������� ������������� ������ � ����������� � ����������� ������������', 1499),
							('���������� ��������� ������ � ���������� ��� ��������� ������������� ������-���������', 4500),
                            ('��������� � ���������� �� ��������', 6500)


create table [zakaz] (
[id] int not null identity(1,1) primary key,
[id_clienta] int null foreign key references [client] ([id]),
[id_uslugi] int null foreign key references [uslugi] ([id]),
[win] nvarchar(50)
)

insert into [zakaz] values (1,1, '� ��������'),
                           (2,1,'���������'),
						   (3,4, '�������'),
						   (5,8, '� ��������'),
                           (4,1,'� ��������'),
						   (10,4, '��������'),
						   (9,1, '�������'),
                           (8,6,'���������'),
						   (6,10, '�������'),
						   (7,3, '���������')

select*from [client] 
select*from [sotrudniki]
where [FIO_sotrudniki] = 'Saymon Tymanyan'
select*from[zakaz]
select*from[uslugi]

select *from [zakaz] inner join [sotrudniki] on [zakaz].id = [sotrudniki].id
