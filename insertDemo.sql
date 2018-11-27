use test;
DROP TABLE IF EXISTS `user`;  


CREATE TABLE `user` (
    `userId` INT (11) NOT NULL AUTO_INCREMENT,
    `userLoginAccount` INT (255) NOT NULL,
    `userPassword` VARCHAR (255) DEFAULT '1234',
    `userName` INT (255) DEFAULT NULL,
    `userAge` INT (25) DEFAULT NULL,
    PRIMARY KEY (`userId`),
    UNIQUE KEY `userLoginAccount` (`userLoginAccount`)
) ENGINE = INNODB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8;


DROP PROCEDURE IF EXISTS insertdata;

#desc user; 
delimiter $$

create procedure insertdata()  
begin
declare i int default 30;  
while i < 40 do               
INSERT INTO user (userLoginAccount,userPassword,userName,userAge) VALUE (i , '4321' ,  i , 88 ) ; 
set i = i + 1;  
end while;      
end $$
delimiter ;


call insertdata();


select * from user;	
		
