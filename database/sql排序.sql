select * from Team_form  where Avail=1 order by Grade_Type,Team_Name
update Team_form set Education ='�� ѧ' where Education ='��ѧ'

update Team_form set Team_Name ='�������' where Team_Name ='����'or Team_Name='��Ա'
update Team_form set Grade_Type='��Ʒ�߻�' where Grade_Type=' ��Ʒ�߻� '

select Team_Name,Grade_Type,Colleague_Name from Team_form where Team_Name='IT'

/*ITͨѶ¼*/
select Colleague_Name,Home_No,Tele_No1,Tele_No1,QQ_No,E_mail
from Team_form
where Team_Name='IT'

/*ҵ��ԱͨѶ¼*/
select Colleague_Name,Home_No,Tele_No1,Tele_No1,QQ_No,E_mail
from Team_form
where Grade_Type='ҵ �� Ա'

/*��ѧ����ѧ��Ա��*/
select Colleague_Name,Education,Grade_Type
from Team_form
where Education ='�� ѧ' or Education ='�о�������'
order by Education

/*δ��Ա��*/
select Colleague_Name,Marriage,Birth
from Team_form
order by Marriage

/*�������س���Ա��*/
select Colleague_Name,Strong
from Team_form
where Strong != '' and Strong !='��  ��'
order by Strong

/*��������*/
select Colleague_Name,Birth
from Team_form
order by Birth
desc  /*����*/

/*��ǰ��ְҵ*/
select Colleague_Name,Before_Occup
from Team_form
order by Before_Occup
