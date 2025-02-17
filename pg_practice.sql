-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。
create database practice;

-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
create type gender_type as enum ('Man','Woman','Other');

create table users(
 id serial primary key,
 name varchar(255) not null default '',
 age int check (age >= 0) default 0,
 gender gender_type not null default 'Other'
 );

comment on column users.name is '氏名';
comment on column users.age is '年齢';
comment on column users.gender is '性別';


-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
create table jobs(
 id serial primary key,
 user_id int not null,
 name varchar(255) not null default '',
 constraint fk_user_id foreign key (user_id) references users(id) on delete cascade
 );

comment on column jobs.name is '仕事名';
