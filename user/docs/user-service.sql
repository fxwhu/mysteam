/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/4/22 18:06:54                           */
/*==============================================================*/


drop table if exists account;

drop table if exists account_flow;

drop table if exists user;

/*==============================================================*/
/* Table: account                                               */
/*==============================================================*/
create table account
(
   id                   bigint unsigned not null auto_increment,
   balance              bigint not null,
   userId               bigint not null,
   primary key (id)
);

/*==============================================================*/
/* Table: account_flow                                          */
/*==============================================================*/
create table account_flow
(
   id                   bigint unsigned not null auto_increment,
   balance              bigint not null,
   accountId            bigint not null,
   description          varchar(255),
   type                 varchar(32),
   primary key (id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   bigint unsigned not null auto_increment,
   username             varchar(100) not null,
   password             varchar(255) not null,
   createTime           datetime,
   updateTime           datetime,
   optlock              int default 0,
   primary key (id)
);
