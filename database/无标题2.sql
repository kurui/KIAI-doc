select * from User_form

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



select * from Team_form where 1=1

select * from User_form

