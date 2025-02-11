-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。
postgres=# create database practice;
CREATE DATABASE

-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
practice=# create type gender_type as enum ('Man','Woman','Other');
CREATE TYPE

practice=# create table users(
practice(# id serial primary key,
practice(# name varchar(255) not null default '',
practice(# age int check (age >= 0) default 0,
practice(# gender gender_type not null default 'Other');
CREATE TABLE

practice=# comment on column users.name is '氏名';
COMMENT
practice=# comment on column users.age is '年齢';
COMMENT
practice=# comment on column users.gender is '性別';
COMMENT

-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
practice=# create table jobs(
practice(# id serial primary key,
practice(# user_id int not null,
practice(# name varchar(255) not null default '',
practice(# constraint fk_user_id foreign key (user_id) references users(id) on delete cascade);
CREATE TABLE

practice=# comment on column jobs.name is '仕事名';
COMMENT