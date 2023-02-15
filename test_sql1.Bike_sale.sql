select *
from  test_sql1.dbo.Bike_sales;


			---remove duplicate
--- identify the duplicated column
select ID,  COUNT(*) 
from test_sql1.dbo.Bike_sales
group by ID 
having  COUNT(*) > 1;

-----create temp table
select distinct *
from test_sql1.dbo.Bike_sales;

-----select distinct column to temp table
select distinct *
into temp 
from test_sql1.dbo.Bike_sales;


delete from test_sql1.dbo.Bike_sales;

insert into test_sql1.dbo.Bike_sales
select * 
from temp;

drop table temp;

select *
from test_sql1.dbo.Bike_sales;



-----------UPDATE COLUMN
select distinct Marital_Status, Gender
from test_sql1.dbo.Bike_sales;


select Marital_Status
from test_sql1.dbo.Bike_sales;

 update test_sql1.dbo.Bike_sales
 set Marital_Status = 'Married'
 where Marital_Status = 'M';

 update test_sql1.dbo.Bike_sales
 set Marital_Status = 'Single'
 where Marital_Status = 'S';


 ----for the Gender column
 select Gender
from test_sql1.dbo.Bike_sales;

update test_sql1.dbo.Bike_sales
 set Gender = 'Male'
 where Gender  = 'M';


 update test_sql1.dbo.Bike_sales
 set Gender = 'Female'
 where Gender  = 'F';


 -----Delete used column
 select *
from  test_sql1.dbo.Bike_sales;

alter table test_sql1.dbo.Bike_sales
drop column Cars, children

