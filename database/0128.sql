/*�������ݿ�*/
--create database Insurance
/*ɾ�����ݿ�*/
--drop database Insurance

go
/*1 �ͻ���Ϣ��*/
create table Client_form 
(
Client_No int identity(1,1) primary key ,     /*�ͻ����,�������Զ�����*/
Group_No varchar(20),          /*�ͻ������*/
Client_Name varchar(20)  not null,    /*�ͻ�����*/
Nick_Name varchar(20)  ,         /*����*/
Client_Sex int not null,     /*�Ա�*/
Birthday varchar(12) ,
Age int ,
Client_Type int,        /*�ͻ����ͱ���֮ƥ��*/
Client_Commary varchar(20),   /*������λ*/
Client_Interest varchar(50),   /*����*/
Client_Address varchar(50), /*��ͥסַ*/
Home_No varchar(20),          /*ס���绰*/
Tele_No1 varchar(20),          /*�ƶ��绰1*/
Tele_No2 varchar(20),         /*�ƶ��绰2*/
E_mail varchar(50),     /*�����ʼ���ַ*/
Consort_Name varchar(20),    /*��ż����*/

Remark varchar(200),      /*��ע*/
Avail int    /*���ô��������Ƿ���Ч*/
)
go


/*3 ������Ϣ��*/
create table Plicy_form 
(
Plicy_No varchar(20) primary key ,  /*�����ţ�����*/
Plicy_Name varchar(50) not null ,             /*��������*/
Holder_Name varchar(20) not null,   /*Ͷ��������*/
HCard_Id varchar(20) ,      /*Ͷ�������֤��*/
Insurant_Name varchar(20),   /*������������*/
ICard_Id varchar(20) ,   /*�����������֤��*/
Relation int  ,      /*��Ͷ���˹�ϵ */    /*��ϵ����֮ƥ��*/
State varchar(20)  not null ,   /*״̬*/
Pay_Type int  not null,      /*���ѷ�ʽ��*/
Pay_Stadard float not null,   /*���ѱ�׼*/
Start_Time varchar(20) not null,       /*��ʼʱ��*/
End_Time varchar(20) not null  ,  /*��ֹʱ��*/
Remark varchar(200),           /*��ע*/
Avail int,               /*���ô��������Ƿ���Ч*/
ForDate int identity(1,1) /*����ӵ��� ��������*/
)

go
/*2 ���ղ�Ʒ��Ϣ��*/
create table Insure_form
(
Insure_No varchar(20)  primary key not null,   /*��Ʒ���ţ�����*/ 
Insure_Name varchar(100) not null  ,         /*��Ʒ����*/
Insure_UpAge int,        /*��������*/
Insure_DownAge int,        /*��������*/

State varchar(10) not null,          /*��Ʒ��״̬*/     
Remark varchar(200)     not null,        /*��ע*/ 
Avail int    /*���ô��������Ƿ���Ч*/
)
go

/*�������α�*/
create table Duty_form
(
Duty_No int primary key,       /*�����������*/
Duty_Txt varchar(200)         /*�������ε�����˵��*/
)



go
/*4 �Ŷ���Ϣ��*/
create table Team_form
(
Team_Name varchar(20),         /*1��С������*/
Code_Name varchar(20)  primary key not null,    /*2Ա�����ţ�����*/
Grade_Type varchar(20)     ,   /*3ְ��*/
Colleague_Name varchar(20)  not null ,       /*4�Ŷӻ������*/
Birth varchar(20)  not null  ,/*5��������*/
Marriage varchar(20) ,          /*6����*/
Education  varchar(20) ,        /*7ѧ��*/
Before_Occup varchar(20) ,       /*8�빫˾ǰְҵ*/
Join_Time varchar(20),        /*��˾ʱ��*/
Strong  varchar(20),           /*�س�*/
Home_No varchar(20),          /*ס���绰*/
Tele_No1 varchar(20) ,            /*�ƶ��绰1*/
Tele_No2 varchar(20) ,           /*�ƶ��绰2*/
QQ_No varchar(20)  ,            /*qq��*/
E_mail varchar(50),            /*E_mail��ַ*/
Remark varchar(200),          /*��ע*/
Team_Img varchar(50) ,  /*ͬ��ͷ��*/
Avail int               /*���ô��������Ƿ���Ч*/
)
--drop table Team_form

insert into Team_form values ('����','code','����','name','19890220','marriage','edu','occu','jiontime','strong]','2225','155','1554','258','2@1','pic','remark',1)
insert into Team_form values ('op;','5t90','�ֹ�˾����','���','950tt','δ��','��ѧ','����Ա','9','����','69;','96;','','','','','lk',1)insert into Team_form values ('op;','b0ore','ҵ����','�˾�','��oij;t','δ��','��ѧ','����/��ѵ','9','����','69;','96;','','','','','lk',1)
select * from Team_form where Colleague_Name like '��%'
select * from Team_form where Avail = 1
delete  from Team_form where Colleague_Name='��'
update  Team_form set Avail=0  where Colleague_Name='name'
select * from Team_form where Colleague_Name like '%��%' and Avail = 1
select * from Team_form where Remark='lk'
update Team_form  set Remark='' where Remark='lk'
update  Team_form set  Team_Name = 'IT' where Team_Name ='op;' 
update  Team_form set Tele_No1 = '13970215486' where Tele_No1 ='96;' 
update  Team_form set Birth = '19800125' where Birth ='��oij;t'
update  Team_form set Birth = '19891015' where Birth ='950tt' 
update  Team_form set Join_Time = '20070707' where Join_Time ='9' 
update  Team_form set Birth = '19700528'where Birth=''
update  Team_form set Code_Name='Hk001'where Code_Name ='' 
update  Team_form set Before_Occup='��ѧ' where  Before_Occup='����Ա' and Code_Name ='QN'
update Team_form set Team_Img='' where Team_Img='lk'
update Team_form set Team_Name='�쵼��' where Team_Name='IT'


/*5 �ݷ��г̱�*/
create table Visit_form
(
Vis_No int identity(1,1) primary key,    /*���к�,����*/
Vis_Name varchar(20) , /*�ͻ�����*/
Vis_Time varchar(20),    /*�ݷ�ʱ��*/
Remark varchar(200) ,   /*��ע*/
Avail int    /*���ô��������Ƿ���Ч*/
)
go
/*6 Ͷ�����뱻�����˹�ϵ��*/
create table Relation_form
(
Relation_No int identity(1,1) , /*��ϵ��*/
Relation_Name varchar(10)        /*��ϵ����*/
)
go
/*7 ���ѷ�ʽ��*/
create table Capture_form
(
Capture_No int identity(1,1) ,/*��ţ�����*/
Capture_Name varchar(10)     /*��ʽ��*/
)
/*8 �ͻ����ͱ�*/
create table ClientType_form
(
CType_No int identity(1,1) ,/*���*/
CType_Name varchar(10)    /*������*/
)

/*�û���Ϣ��*/
create table User_form
(
   Login_Name varchar (20) not null,    /*��¼��*/
   Login_Id varchar(20) not null ,     /*��¼����*/
   Question varchar(100)  not null ,   /*���뱣������*/
   Answer varchar(100) not null ,   /*���뱣�������*/
   picture varchar(200)     /*����ͷ��·��*/
)

insert into User_form 
values
('admin','123','','','')
insert into User_form 
values
('rui','123','','','')
select * from User_form where Login_Name = 'admin'and Login_Id='123'


/*�г̰ݷñ�*/
create table GoWhere_form
(
Who varchar(30) not null,
Tel varchar(30) ,
Begintime varchar(30),
Endtime varchar(30),
Result varchar(100),
Avail int 
)
--drop table GoWhere_form

/*��ѯ���ݿ���е�����*/

select * from Client_form
select * from Insure_form
select * from Plicy_form 
select * from Team_form
select * from Visit_form
select * from  Relation_form
select * from Capture_form
select * from ClientType_form
select * from User_form
select * from Occup_form
select * from InsureInfo

select * from GoWhere_form


select distinct BigType from Occup_form  order by Bigtype

select Team_Img from Team_form where Colleague_Name='���'

