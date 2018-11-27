use test;
DROP PROCEDURE IF EXISTS insertdata;

delimiter $$

create procedure insertdata()  
begin
declare i int default 10;  
while i < 100 do               
INSERT INTO t1 (id,age,time) values(i,i*2,now());
set i = i + 1; 
select sleep(1);
end while;      
end $$
delimiter ;


call insertdata();


select * from t1;	
		
