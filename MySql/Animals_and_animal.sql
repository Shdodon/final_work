drop database if exists animal_registry;
create database animal_registry;
use animal_registry;
create table pets_type(
 pet_id int auto_increment not null primary key,
 type_of_animal varchar(10) not null
);

create table pets(
ypet_id int auto_increment not null primary key,
kind_of_animal varchar(10),
aviary int not null
);

create table pack_animals(
pack_animals_id int auto_increment not null primary key,
kind_of_animal varchar(10),
aviary int not null
);

create table dogs(
dogs_id int auto_increment not null primary key, 
dogs_name varchar(15) not null,
dog_order varchar(20) not null,
year_of_birth date not null,
cell_number int not null
);

create table cats(
cats_id int auto_increment not null primary key, 
cats_name varchar(15) not null,
cats_order varchar(20) not null,
year_of_birth date not null,
cell_number int not null
);

create table humsters(
humsters_id int auto_increment not null primary key, 
humsters_name varchar(15) not null,
humsters_order varchar(20) not null,
year_of_birth date not null,
cell_number int not null
);

create table horses(
horses_id int auto_increment not null primary key, 
horses_name varchar(15) not null,
horses_order varchar(20) not null,
year_of_birth date not null,
cell_number int not null
);

create table camels(
camels_id int auto_increment not null primary key, 
camels_name varchar(15) not null,
camels_order varchar(20) not null,
year_of_birth date not null,
cell_number int not null
);

create table donkeys(
donkeys_id int auto_increment not null primary key, 
donkeys_name varchar(15) not null,
donkeys_order varchar(20) not null,
year_of_birth date not null,
cell_number int not null
);

insert into pets_type(type_of_animal)
values
('домашнее'),
('вьючное');

insert into pets(kind_of_animal, aviary)
values
('собаки', 1),
('кошки', 2),
('хомяки', 3);

insert into pack_animals(kind_of_animal, aviary)
values
('лошади', 4),
('верблюды', 5),
('ослы', 6);

insert into dogs(dogs_name, dog_order, year_of_birth, cell_number)
values
('Рекс', 'голос', '2020-12-29', 1),
('Шарик', 'сидеть', '2021-10-09', 1),
('Вальдемар', 'лежать', '2022-12-20', 1),
('Мухтар', 'сидеть', '2022-01-08', 1);

truncate dogs; -- сгенерировал данные с ошибкой, очистил--

insert into dogs(dogs_name, dog_order, year_of_birth, cell_number)
values
('Рекс', 'голос', '2020-12-29', 1),
('Шарик', 'сидеть', '2021-10-09', 2),
('Вальдемар', 'лежать', '2022-12-20', 3),
('Мухтар', 'сидеть', '2022-01-08', 4);

insert into cats(cats_name,cats_order, year_of_birth, cell_number)
values
('Мурзик', 'кушать', '2015-12-29', 1),
('Муся', 'гулять', '2021-09-09', 2),
('Васька', 'спать', '2022-12-12', 3),
('Матроскин', 'мяукать', '2022-01-01', 4);

insert into humsters(humsters_name, humsters_order, year_of_birth, cell_number)
values
('Антошка', 'грызть', '2020-12-29', 1),
('Крыска', 'бугать', '2021-07-07', 2),
('Злюка', 'кушать', '2022-06-12', 3),
('Пушистик', 'спать', '2022-01-01', 4);

insert into horses(horses_name, horses_order, year_of_birth, cell_number)
values
('Мишка', 'вперёд', '2014-12-29', 1),
('Орел', 'рысь', '2020-07-07', 2),
('Буцефал', 'тише', '2021-06-12', 3),
('Лизетта', 'хоп', '2018-01-01', 4);

insert into camels(camels_name, camels_order, year_of_birth, cell_number)
values
('Эсмахан', 'гит', '2016-12-29', 1),
('Амаль', 'дурр', '2017-04-04', 2),
('Жуля', 'каш', '2022-06-06', 3),
('Дамен', 'цок-цок', '2014-02-02', 4);

insert into donkeys(donkeys_name, donkeys_order, year_of_birth, cell_number)
values
('Фидо', 'хоп', '2013-12-29', 1),
('Уилбер', 'рысь', '2021-03-03', 2),
('Полька', 'шагом', '2022-01-06', 3),
('Теса', 'вперед', '2014-05-02', 4);

drop table camels;

select donkeys.donkeys_id, donkeys.donkeys_name, donkeys.donkeys_order, donkeys.year_of_birth, donkeys.cell_number,
horses.horses_name, horses.horses_order, horses.year_of_birth, horses.cell_number
from  donkeys
inner join horses on donkeys.donkeys_id = horses.horses_id;

select donkeys_name as name_, donkeys_order as order_, year_of_birth , cell_number
from  donkeys
union select horses_name, horses_order, year_of_birth, cell_number
from  horses;

create table yang_animals(
animal_id int auto_increment not null primary key,
animal_name varchar(15),
year_of_birth date
);


insert into yang_animals(animal_name, year_of_birth)
select dogs_name, year_of_birth from dogs
where year_of_birth between ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);

insert into yang_animals(animal_name, year_of_birth)
select cats_name, year_of_birth from cats
where year_of_birth between ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);

insert into yang_animals(animal_name, year_of_birth)
select humsters_name, year_of_birth from humsters
where year_of_birth between ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);

insert into yang_animals(animal_name, year_of_birth)
select horses_name, year_of_birth from horses
where year_of_birth between ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);

insert into yang_animals(animal_name, year_of_birth)
select donkeys_name, year_of_birth from donkeys
where year_of_birth between ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);

