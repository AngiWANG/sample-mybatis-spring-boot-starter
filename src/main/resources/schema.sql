--
--    Copyright 2015-2016 the original author or authors.
--
--    Licensed under the Apache License, Version 2.0 (the "License");
--    you may not use this file except in compliance with the License.
--    You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--    Unless required by applicable law or agreed to in writing, software
--    distributed under the License is distributed on an "AS IS" BASIS,
--    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--    See the License for the specific language governing permissions and
--    limitations under the License.
--
drop table if exists country;
drop table if exists city;
drop table if exists hotel;

create table country (id int primary key auto_increment, name varchar);
create table city (id int primary key auto_increment, name varchar, state varchar, country varchar);
create table hotel (id int primary key auto_increment, name varchar, address varchar, zip varchar, city int);

insert into country (name) values ('US');
insert into city (name, state, country) values ('San Francisco', 'CA', 'US');
insert into hotel(name, address, zip, city) values ('Conrad Treasury Place', 'William & George Streets', '4001',1);
