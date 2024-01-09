

create database fastapi
use Fastttapi
create table Userr
(
id int not null identity(1,1) primary key,
namee nvarchar(150),
passwordd nvarchar(50),
)


create table [product]
(
[id] int not null identity(1,1) primary key,
[name] nvarchar(150),
[description] nvarchar(250),
[price] money
)

create table  [orders] (
[id] int not null identity(1,1) primary key,
[user_id] int not null foreign key references [user]([id]),
[product_id] int not null foreign key references [product]([id]),
[quantity] int
)
