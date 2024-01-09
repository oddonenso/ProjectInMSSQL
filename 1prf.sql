﻿create database excel
use excel

create table [Product]
(
[id] int not null identity(1,1) primary key,
[Наименование продукции] nvarchar(max),
[Тип продукции] nvarchar(max), 
[Артикул] int,
[Изображение] nvarchar(max),
[Количество человек для производства] nvarchar(max),
[Номер цеха для производства] nvarchar(max), 
[Минимальная стоимость для агента] nvarchar(max)
)

insert into [Product] values
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Набор 24М дыня', 'Двая слоя',  337632, 'нет', 5, '5', '11471.00'  ),
('Набор 9М Бриз', 'Два слоя',  259548, 'нет', 4, '5', '2317'  ),
('Набор 50М Клубника', 'Детская',  334385, '\products\paper_21.jpg', 3, '1', '14220'  ),
('Полотенце 23М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9962 руб.'  ),
('Бумага 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9962 руб.'  ),
('Полотенце 44М Ваниль', 'Три слоя',  354385, 'нет', 2, 'Цех № 6', '9208'  ),
('Бумага 5М Дыня', 'Два слоя',  232485, '\products\paper_22.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 41М Дыня', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Бумага 26М Ваниль', 'Три слоя',  309862, '\products\paper_20.jpg', 2, 'Цех № 6', '2580.00'  ),
('Набор 18М Ваниль', 'Три слоя',  334385, 'отсутствует', 2, 'Цех № 6', '4501.00'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_18.jpg', 2, 'Цех № 6', '2580.00'  ),
('Набор 12М Бриз', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', '4 слоя',  309862, '\products\paper_20.jpg', 2, 'Цех № 6', '12767.00 ₽'  ),
('Бумага 7М Ваниль', 'один слой',  334385, '\products\paper_17.jpg', 2, 'Цех № 6', '2580.00'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '12767.00 ₽'  ),
('Полотенце 28М Клубника', 'Три слоя',  374263, 'нет', 2, 'Цех № 6', '9208'  ),
('Бумага 29М Дыняа', 'Два слоя',  403054, '\нет', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 1', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, '№2', '9208'  ),
('Набор 11М Дыня', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 1', '9208'  ),
('Полотенце 28М Клубника', '2 слоя',  334385, '\products\paper_20.jpg', 2, '10', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '3477.00'  ),
('Бумага 7М Ваниль', 'Три слоя',  294441, '\products\paper_20.jpg', 2, '2', '12767.00 ₽'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, ' 6', '2580.00'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  309862, '\products\paper_20.jpg', 2, 'Цех № 1', '9208'  ),
('Полотенце 45М Клубникаэ', 'Три слоя',  334385, '\products\paper_20.jpg', 2, '4', '9208'  ),
('Полотенце 28М Клубника', 'Четыре слоя',  403054, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Шесть слоев',  334385, '\products\paper_20.jpg', 2, 'Цех № 8', '12175 руб.'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Бумага 38М Ваниль', 'Три слоя',  330360, '\products\paper_20.jpg', 2, '10', '4501.00'  ),
('Бумага 38М Ваниль', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 2', '9208'  ),
('Бумага 38М Ваниль', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 3', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  294441, '\products\paper_20.jpg', 2, 'Цех № 4', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  374263, 'отсутствует', 2, 'Цех № 6', '4501.00'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 8', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  403054, '\products\paper_20.jpg', 2, '№4', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 5', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  330360, '\products\paper_20.jpg', 2, '№4', '9208'  )

insert into [Product] values
('Полотенце 41М Дыня', 'Супер Мягкая',  334385, '\products\paper_15.jpg', 2, 'Цех № 6', '9208'  ),
('Бумага 26М Ваниль', 'Три слоя',  309862, 'нет', 2, 'Цех № 6', '2580.00'  ),
('Набор 18М Ваниль', 'Три слоя',  334385, 'отсутствует', 5, 'Цех № 6', '4501.00'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_18.jpg', 2, 'Цех № 6', '2580.00'  ),
('Набор 12М Бриз', 'Три слоя',  334385, '\products\paper_20.jpg', 4, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', '4 слоя',  309862, '\products\paper_20.jpg', 3, 'Цех № 6', '12767.00 ₽'  ),
('Бумага 7М Ваниль', 'один слой',  334385, '\products\paper_17.jpg', 2, 'Цех № 6', '2580.00'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '12767.00 ₽'  ),
('Полотенце 28М Клубника', 'Три слоя',  374263, 'нет', 2, 'Цех № 6', '9208'  ),
('Бумага 29М Дыняа', 'Два слоя',  403054, '\нет', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, '№5', '9208'  ),
('Набор 11М Дыня', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Набор 19М Дыня', '2 слоя',  334385, '\products\paper_20.jpg', 1, '5', '9208'  ),
('Полотенце 28М Клубника', 'Супер Мягкая',  334385, '\products\paper_20.jpg', 1, 'Цех № 6', '3477.00'  ),
('Бумага 7М Ваниль', 'Три слоя',  294441, '\products\paper_20.jpg', 2, 'Цех № 6', '12767.00 ₽'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 8, 'Цех № 6', '2580.00'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Супер Мягкая',  309862, '\products\paper_20.jpg', 7, 'Цех № 1', '9208'  ),
('Полотенце 45М Клубникаэ', 'Три слоя',  334385, '\products\paper_20.jpg', 2, '4', '9208'  ),
('Полотенце 28М Клубника', 'Четыре слоя',  403054, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 45М Клубникаа', 'Шесть слоев',  334385, '\products\paper_20.jpg', 2, 'Цех № 8', '12175 руб.'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Бумага 38М Ваниль', 'Три слоя',  330360, '\products\paper_20.jpg', 2, 'Цех № 6', '4501.00'  ),
('Набор 19М Дыня', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Бумага 38М Ваниль', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  294441, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 2, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  374263, 'отсутствует', 2, 'Цех № 6', '4501.00'  ),
('Полотенце 28М Клубника', 'Три слоя',  334385, '\products\paper_20.jpg', 1, 'Цех № 8', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  403054, '\products\paper_20.jpg', 2, '№4', '9208'  ),
('Полотенце 45М Клубникаа', 'Три слоя',  334385, '\products\paper_20.jpg', 7, 'Цех № 6', '9208'  ),
('Полотенце 28М Клубника', 'Три слоя',  330360, '\products\paper_20.jpg', 5, '№4', '9208'  )


select*from 
[Product]
create table [product_material]
(
[id] int not null identity(1,1) primary key,
[Продукция] nvarchar(max),
[Наименование материала] nvarchar(max),
[Необходимое количество] int
)

insert into  [product_material] values 

('Рулон бумаги синий 2x2', 'Набор 10М Дыня',20),
('Бумага 45М Клубника', 'Рулон бумаги 2к1', 20),
('Бумага 33м Клубника', 'Переработка бумаги белый 3x0', 20),
('Бумага 15М Клубника', 'Рулон бумаги 2к1', 23),
('Бумага 33м Клубника', 'Спрессованный материал цветной 0x0', 19),
('Бумага 40М Бриз', 'Рулон бумаги 2к1', 20),
('Бумага 33м Клубника', 'Спрессованный материал цветной 0x0', 20),
('Гранулы для бумаги цветной 0x3', 'Рулон бумаги 2к1', 23),
('Бумага 33м Клубника', 'Рулон бумаги 2к1', 21),
('Бумага 10М Клубника', 'Рулон бумаги розовый 2x1', 20),
('Полотенце 47М Клубника', 'Гранулы для бумаги синий 1x3', 20),
('Бумага 33м Клубника', 'Спрессованный материал цветной 0x0', 20),
('Бумага 33м Клубника', 'Рулон бумаги 2к1', 20),
('Полотенце 45М Бриз', 'Рулон бумаги 2к1', 23),
('Набор 9М Дыня', 'Рулон бумаги 2к1', 20),
('Полотенце 16М Ваниль', 'Рулон бумаги 2к1', 18),
('Набор 34М Клубника', 'Рулон бумаги 2к1', 11),
('Бумага 29М Дыня', 'Рулон бумаги 2к1', 20),
('Гранулы для бумаги цветной 0x3', 'Рулон бумаги 2к1', 23),
('Бумага 33м Клубника', 'Рулон бумаги 2к1', 10),
('Бумага 10М Клубника', 'Рулон бумаги розовый 2x1', 20),
('Полотенце 47М Клубника', 'Рулон бумаги 2к1', 20),
('Бумага 33м Клубника', 'Спрессованный материал цветной 0x0', 20),
('Бумага 33м Клубника', 'Рулон бумаги 2к1', 16),
('Полотенце 45М Бриз', 'Рулон бумаги 2к1', 23),
('Набор 9М Дыня', 'Рулон бумаги 2к1', 20),
('Полотенце 16М Ваниль', 'Рулон бумаги 2к1', 18),
('Набор 34М Клубника', 'Рулон бумаги 2к1', 10),
('Бумага 29М Дыня', 'Рулон бумаги 2к1', 6),
('Полотенце 47М Клубника', 'Гранулы для бумаги синий 1x3', 20),
('Бумага 33м Клубника', 'Спрессованный материал цветной 0x0', 20),
('Бумага 33м Клубника', 'Рулон бумаги 2к1', 20),
('Полотенце 45М Бриз', 'Рулон бумаги 2к1', 23),
('Набор 9М Дыня', 'Рулон бумаги 2к1', 20),
('Полотенце 16М Ваниль', 'Рулон бумаги 2к1', 18),
('Набор 34М Клубника', 'Рулон бумаги 2к1', 11),
('Бумага 29М Дыня', 'Рулон бумаги 2к1', 20),
('Гранулы для бумаги цветной 0x3', 'Рулон бумаги 2к1', 23),
('Бумага 33м Клубника', 'Рулон бумаги 2к1', 10),
('Бумага 10М Клубника', 'Рулон бумаги розовый 2x1', 20),
('Полотенце 47М Клубника', 'Рулон бумаги 2к1', 20),
('Бумага 33м Клубника', 'Спрессованный материал цветной 0x0', 20),
('Бумага 33м Клубника', 'Рулон бумаги 2к1', 16),
('Полотенце 45М Бриз', 'Рулон бумаги 2к1', 23),
('Набор 9М Дыня', 'Рулон бумаги 2к1', 24),
('Полотенце 16М Ваниль', 'Рулон бумаги 2к1', 18),
('Набор 34М Клубника', 'Рулон бумаги 2к1', 11),
('Бумага 29М Дыня', 'Рулон бумаги 2к1', 1)


drop table [product_material] 

create table [material_shorts]  
(
[id] int not null identity(1,1) primary key,
[Тип материала] nvarchar(max),
[Количество в упаковке]  int,
[Единица измерения]  nvarchar(25),
[Количество на складе]  int,
[Минимальный возможный остаток]  int,
[Стоимость] money
)
insert into [material_shorts] values 
(