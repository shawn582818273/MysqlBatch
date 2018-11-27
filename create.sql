drop database if exists test;

create database test;
use test;
create table parameters(
unitid varchar(64) not null,
ip varchar(64) not null,
temper varchar(64) not null,
current1 varchar(64) not null,
current2 varchar(64) not null,
current3 varchar(64) not null,
time datetime  not null);
