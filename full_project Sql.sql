DROP TABLE COMPLAINT;
DROP TABLE TRANSACTIONS;
DROP TABLE BILL;
DROP TABLE BOARD;
DROP TABLE CUSTOMERS;

--LAB 01:

CREATE TABLE CUSTOMERS(
    CUST_ID INTEGER PRIMARY KEY,
    C_NAME VARCHAR(10),
    EMAIL VARCHAR(20) unique, --lab 03 (using unique key constraints)
    PASS VARCHAR(10),
    ADDRESS VARCHAR(20)
);

CREATE TABLE BILL(
    BILL_ID INTEGER PRIMARY KEY,
    AMOUNT INTEGER,
    STAT VARCHAR(15),
    CUST_ID INTEGER NOT NULL,
    FOREIGN KEY (CUST_ID) references CUSTOMERS(CUST_ID)
);

CREATE TABLE BOARD(
  BOARD_ID INTEGER PRIMARY KEY,
  BOARD_NAME VARCHAR(25) NOT NULL,
  ADDRESS VARCHAR(40) unique,
  MAIL VARCHAR(25) unique,
  CONTACT VARCHAR(11) unique,
  PASS VARCHAR(5) NOT NULL  
);

CREATE TABLE TRANSACTIONS(
	T_ID INTEGER PRIMARY KEY,
	DATE_PAY VARCHAR(10) NOT NULL,
	PAYABLE VARCHAR(15) NOT NULL,
  BILL_ID INTEGER NOT NULL unique,
  FOREIGN KEY (BILL_ID) references BILL(BILL_ID)
);

CREATE TABLE COMPLAINT(
  COM_ID INTEGER NOT NULL,
  CUST_ID INTEGER NOT NULL,
  BOARD_ID INTEGER,
  COM VARCHAR(30) NOT NULL,
  STAT VARCHAR(15) NOT NULL,
  FOREIGN KEY (CUST_ID) references CUSTOMERS(CUST_ID)
);
--------------------------------------------------
--inserting data into CUSTOMERS table
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (1, 'Ameen Khan', 'ameen@gmail.com', 'qwerty', 'Rangamati');
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (2, 'Abhishek', 'abhishek@gmail.com', 'qwerty', 'Ghaziabad');
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (3, 'Anzal', 'anzal@gmail.com', 'qwerty', 'Noakhali');
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (4, 'Manaf', 'manaf@gmail.com', 'qwerty', 'Ashugonj');
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (5, 'abc', 'abc@gmail.com', 'qwerty', 'Kishoreganj');
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (6, 'xyz', 'xyz@gmail.com','qwerty', 'Dhaka');
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (7, 'akshit', 'akshit@gmail.com', 'qwerty', 'Dhaka');
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (8, 'akshita', 'akshita@gmail.com', 'qwerty', 'Bandarbon');
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (9, 'nakshit', 'nakshit@gmail.com', 'qwerty', 'Chittagong');
INSERT INTO CUSTOMERS (CUST_ID, C_NAME, EMAIL, PASS, ADDRESS) VALUES (10, 'shita', 'shita@gmail.com', 'qwerty', 'Tangail');

--showing table data
SELECT * FROM CUSTOMERS;

--inserting data into BILL table
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (101, 1000, 'PAID', 1);
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (102, 2000, 'PAID', 4);
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (103, 3000, 'NOT PAID', 4);
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (104, 4000, 'PAID', 4);
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (105, 5000, 'NOT PAID', 4);
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (106, 6000, 'NOT PAID', 6);
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (107, 7000, 'PAID', 6);
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (108, 8000, 'NOT PAID', 8);
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (109, 9000, 'PAID', 9);
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (110, 1100, 'NOT PAID', 10);

--showing table data
SELECT * FROM BILL;

--inserting data into electricity table

INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(1,'Agrabad SD','Agrabad Industrial Area,Chittagong','xenagra.ctg@bpdb.gov.bd','01755583007','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(2,'Ashugonj SD','Ashugonj','xenbpdbashugonj@gmail.com','01841121245','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(3,'Bajitput SD','Bajitpur,Kishoreganj','rebajitpur@bpdb.gov.bd','01755581377','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(4,'Bakalia SD','Syed Shah Road,Chittagong','xenbak.ctg@bpdb.gov.bd','01755583005','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(5,'Bandarbon Distributin','Bandarbon,Hilltrac District','xenban.ctg@bpdb.gov.bd','01755583035','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(6,'Barobkundu SD','Shetakundu,Chittagong','xenbarob.ctg@bpdb.gov.bd','01755583014','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(7,'Basurhar Electricity','Companiganj,Noakhali','bpdbasurhat@yahoo.com','01841121252','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(8,'Betbuniya Electricity','Betbuniya,Kawkhaly,Rangamati','rebetbunia@yahoo.com','01755583027','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(9,'Bhairab SD','Bhairab,Kishoreganj','xen_bpdb.bhairb@yahoo.com','01755581383','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(10,'Bhuapur SD','Bhuapur,Tangail','bhuapursnd@gmail.com','01755581389','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(11,'INDI SD','Bhuapur,India','snd@gmail.com','01755581399','SUL');
--showing table data
SELECT * FROM BOARD;

--inseting data into TRANSACTIONS table
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(1, '22-05-2000','PROCESSED',101);
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(2, '22-06-2000','PROCESSED',102);
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(3, '22-07-2000','PROCESSED',103);
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(4, '22-05-2020','PROCESSED',104);
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(5, '22-12-2000','PROCESSED',105);
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(6, '20-05-2000','PROCESSED',106);
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(7, '30-05-2000','PROCESSED',107);
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(8, '22-05-2000','PROCESSED',108);
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(9, '14-05-2010','PROCESSED',109);
INSERT INTO TRANSACTIONS (T_ID, DATE_PAY, PAYABLE, BILL_ID) VALUES(10, '02-01-2012','PROCESSED',110);

--showing table data
SELECT * FROM TRANSACTIONS;

--inserting data into COMPLAINTtable
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (1, 1, 1, 'Transaction Not Processed','PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (2, 1, 1, 'Transaction Not Processed', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (3, 2, 1, 'Complaint Not Processed', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (4, 2, 1, 'Transaction Not Processed', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, COM, STAT) VALUES (5, 2, 'Transaction Not Processed', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (6, 1, 1, 'BILL Not Correct', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (7, 3, 1, 'BILL Not Correct', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (8, 3, 2, 'Transaction Not Processed', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, COM, STAT) VALUES (9, 4, 'Transaction Not Processed', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (10, 4, 1, 'BILL Not Correct', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (11, 5, 2, 'BILL Generated Late', 'PROCESSED');
INSERT INTO COMPLAINT(COM_ID, CUST_ID, BOARD_ID, COM, STAT) VALUES (12, 1, 1, 'BILL Not Correct', 'NOT PROCESSED');


--showing table data
SELECT * FROM COMPLAINT;
-------------------------------------------------------------------------




------------------------------------------------------------------------------------------
--lab 2

--describes table structure
desc customers;
desc bill;
DESC board;
desc transactions;
desc complaint;

--showing all tables with data
select * from customers;
select * from bill;
select * from board;
select * from transactions;
select * from complaint;

----------alter command-------------------
--adding columns
alter table board
add(statename varchar(100),
    country varchar(100));
desc board;

--modify
alter table board
modify(statename varchar(20),
    country varchar(10));
desc board;

--rename
alter table board
rename column statename to district;
desc board;


--show table
select district from board;

--drop a column
alter table board
drop column country;
desc board;

--update
update board
set pass='dhaka' where board_name='Agrabad SD';
select * from board;

--delete a whole row
delete from board where ADDRESS like '%India%';
select * from board;

-------------------------------------------------------------------------------------------



ALTER TABLE COMPLAINT ADD CONSTRAINT PK_COMPLAINT
PRIMARY KEY (COM_ID);
ALTER TABLE COMPLAINT ADD CONSTRAINT FK_COMPLAINT
FOREIGN KEY (BOARD_ID) REFERENCES BOARD(BOARD_ID);

--select clause
SELECT DISTINCT (CUST_ID+0),C_NAME,ADDRESS
FROM CUSTOMERS
WHERE ADDRESS like '%Dha%' AND CUST_ID BETWEEN 1 AND 10;
--set
SELECT DISTINCT (CUST_ID+0),C_NAME,ADDRESS --lab 4 distinct
FROM CUSTOMERS
WHERE CUST_ID NOT IN(1,10);

--order by
SELECT CUST_ID
FROM CUSTOMERS
ORDER BY CUST_ID desc;


--lab 4 operations
--order by more than one column
SELECT CUST_ID,BILL_ID
FROM BILL
ORDER BY CUST_ID,BILL_ID desc;

--5 aggregate functions
--max
SELECT MAX(AMOUNT) FROM BILL;
--MIN
SELECT MIN(AMOUNT) FROM BILL;
--count function
SELECT COUNT(*), COUNT(COM_ID) FROM COMPLAINT;
SELECT COUNT(BOARD_ID), COUNT(DISTINCT BOARD_ID), COUNT(ALL BOARD_ID) FROM COMPLAINT;
--SUM AND AVERAGE
SELECT SUM(BOARD_ID), AVG(BOARD_ID), AVG(NVL(BOARD_ID,0))
FROM COMPLAINT;

--GROUP BY CLAUSE
SELECT BOARD_ID, COUNT(COM_ID)
FROM COMPLAINT
GROUP BY BOARD_ID;

--HAVING CLAUSE
SELECT BOARD_ID, COUNT(COM_ID)
FROM COMPLAINT
GROUP BY BOARD_ID
HAVING COUNT(COM_ID)>2;


------------------------------------lab 5 operations
--subquery search
SELECT CUST_ID, C_NAME 
FROM CUSTOMERS
WHERE CUST_ID IN ( SELECT CUST_ID 
FROM BILL 
WHERE STAT= 'PAID');


SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--UNION ALL OPERATION
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
UNION ALL
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--UNION
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
UNION
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--INTERSECT
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
INTERSECT
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--MINUS
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Ghaziabad'
MINUS
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--precedence of set operators
--without parentheses
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
UNION
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED')
INTERSECT
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Dhaka';

--with parentheses
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
UNION
(
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED')
INTERSECT
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Kishoreganj'
);




----------------------------lab 6----------------------------------------
--join operations

--customers who didn't pay bill (using natural join)
SELECT DISTINCT(C.C_NAME)
FROM CUSTOMERS C NATURAL JOIN BILL B
WHERE B.STAT='NOT PAID';

--CUSTOMER WHO DIDN'T PAY BILL BECAUSE THEIR BILL WAS INCORRECT(USING RIGHT OUTER JOIN)
SELECT C.C_NAME
FROM CUSTOMERS C 
WHERE C.CUST_ID IN(
SELECT DISTINCT(CUST_ID)
FROM COMPLAINT CM RIGHT OUTER JOIN BILL B
USING (CUST_ID) WHERE B.STAT='NOT PAID' AND CM.COM LIKE '%BILL%');

SELECT CM.COM,C.C_NAME
FROM CUSTOMERS C CROSS JOIN COMPLAINT CM;

-- CROSS JOIN
select * from CUSTOMERS cross join BILL;

--left outer join
select CUST_ID,C.C_NAME,B.AMOUNT from CUSTOMERS C left outer join BILL B
using(CUST_ID);

--FULL outer join
select CUST_ID,C.C_NAME,B.AMOUNT from CUSTOMERS C full outer join BILL B
using(CUST_ID);

--Self Join
--(max category no.)
select B.AMOUNT from BILL B MINUS
select B.AMOUNT from BILL B join BILL C on B.AMOUNT<C.AMOUNT;






---------------------------------lab 7---------------------------------------------
--welcome message of electricity board
set serveroutput on
begin
dbms_output.put_line('Welcome to Electricity Board. Thanks for choosing us.');
end;
/


--find total no of boards
set serveroutput on

declare 
total_board BOARD.BOARD_ID%type;
begin
select count(BOARD_ID) into total_board
from BOARD;
dbms_output.put_line('Total no of boards: '||total_board);
end;
/

--no of processed transactions
set serveroutput on

declare 
total_trans TRANSACTIONS.T_ID%type;
pro_trans TRANSACTIONS.T_ID%type;

begin
select count(distinct(T_ID)) into total_trans
from TRANSACTIONS;
select count(distinct(T_ID)) into pro_trans
from TRANSACTIONS
WHERE PAYABLE='PROCESSED';
if(pro_trans=total_trans) then
dbms_output.put_line('ALL TRANSACTIONS HAS BEEN PROCESSED. ');
else
dbms_output.put_line('SOME TRANSACTIONS HAVE NOT BEEN PROCESSED!');
end if;
end;
/



---------------------------------lab 8-------------------------------------
-- loop+curse to show all board informations
SET SERVEROUTPUT ON
DECLARE
   cursor cur_row is select BOARD_NAME,ADDRESS,MAIL,CONTACT from BOARD;
   details cur_row%rowtype;

BEGIN
open cur_row;
   loop
      fetch cur_row into details;
      exit when cur_row%notfound;
      DBMS_OUTPUT.PUT_LINE('Board C_NAME: ' ||details.BOARD_NAME||'    Address: '||details.ADDRESS || '    Mail Address: ' ||details.MAIL||'   Contact Info '||details.CONTACT);
   end loop;
close cur_row;
end;
/

--while loop to show customers information
set serveroutput on
declare
cid CUSTOMERS.CUST_ID%type;
cname CUSTOMERS.C_NAME%type;
cmail CUSTOMERS.EMAIL%type;

begin
   cid:=1;
   while cid<=10
   loop
      select C_NAME,EMAIL into cname,cmail
      from CUSTOMERS
      where CUST_ID=cid;
      dbms_output.put_line('CUSTOMERS id: '||cid||'   CUSTOMER NAME is '||cname||'   EMAIL is '||cmail);
      cid:=cid+1;
   end loop;
end;
/

--for loop to show complaints
set serveroutput on
declare
comid COMPLAINT.COM_ID%type;
ccom COMPLAINT.COM%type;

begin
   for comid in 1..12
   loop
      select COM into ccom
      from COMPLAINT
      where COM_ID=comid;
      dbms_output.put_line('COMPLAINT id IS: '||comid||' AND THE COMPLAINT is '||ccom);
   end loop;
end;
/


--add a value using procedure
set serveroutput on
create or replace procedure add_CUSTOMERS(
id CUSTOMERS.CUST_ID%type,
cname CUSTOMERS.C_NAME%type,
mail CUSTOMERS.EMAIL%type,
pass CUSTOMERS.PASS%type,
addr CUSTOMERS.ADDRESS%type)
is
begin
insert into CUSTOMERS(CUST_ID,C_NAME,EMAIL,PASS,ADDRESS) values(id,cname,mail,pass,addr);
end add_CUSTOMERS;
/
show errors
set serveroutput on
declare
id CUSTOMERS.CUST_ID%type;
cname CUSTOMERS.C_NAME%type;
mail CUSTOMERS.EMAIL%type;
pass CUSTOMERS.PASS%type;
addr CUSTOMERS.ADDRESS%type;
begin
dbms_output.put_line('Enter values for adding CUSTOMERS');
id:=&id;
cname:=&cname;
mail:=&mail;
pass:=&pass;
addr:=&addr;
add_CUSTOMERS(id,cname,mail,pass,addr);
end;
/
select * from CUSTOMERS
order by CUST_ID;


-- show total bill amount using function

CREATE OR REPLACE FUNCTION total_bill RETURN NUMBER IS
 total_amount BILL.AMOUNT%type;
BEGIN
 SELECT SUM(AMOUNT) INTO total_amount
 FROM BILL;
 RETURN total_amount;
END;
/

set serveroutput on
begin
dbms_output.put_line('Total bill amount is '||total_bill);
end;
/

-----------------------------------lab 9------------------------------------------------------------------
-- trigger use, checking invalid bill amount
CREATE OR REPLACE TRIGGER bill_checking BEFORE INSERT OR UPDATE ON 
BILL
FOR EACH ROW
DECLARE
 c_min constant number(2,1) := 1.0;
 c_max constant number(9,2) := 9000000.0;
BEGIN
 IF :new.AMOUNT > c_max OR :new.AMOUNT < c_min THEN
 RAISE_APPLICATION_ERROR(-20000,'New bill amount is too small or large');
END IF;
END bill_checking;
/
-- checking trigger 
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (111, 0, 'PAID', 1);
drop TRIGGER bill_checking;


--rollback
commit;
INSERT INTO COMPLAINT (COM_ID,CUST_ID,BOARD_ID,COM,STAT) VALUES (13, 1, 1, 'BILL Not Correct', 'NOT PROCESSED');
select * from COMPLAINT;
delete from COMPLAINT;
rollback;
select * from COMPLAINT;

--savepoint
savepoint first;
delete from COMPLAINT where STAT like '%PROCESSED';
savepoint second;
select * from COMPLAINT;
rollback to first;
select * from COMPLAINT;

--system time,date
select sysdate,current_date,systimestamp from dual;







----------------------------------------------------------view-------------------------------------------------
-- create view of Complaint table
CREATE VIEW COMPLAINT_DETAILS AS
SELECT
    COM_ID,
    CUST_ID,
    COM,
    STAT
FROM
    COMPLAINT
WHERE STAT LIKE '%PROCESSED%';

SELECT * FROM COMPLAINT_DETAILS;

--inserting into view
Insert into COMPLAINT_DETAILS values(16,1,'COMPLAINT NOT CHECKED','PROCESSED');
-- deleting FROM view
DELETE FROM COMPLAINT_DETAILS WHERE CUST_ID=1;
SELECT * FROM COMPLAINT_DETAILS;
DROP VIEW COMPLAINT_DETAILS;


-- create view using join 
CREATE VIEW CUSTOMERS_BILL AS
SELECT
    CUST_ID,
    C_NAME,
    AMOUNT
FROM
    CUSTOMERS
JOIN BILL USING (CUST_ID);

SELECT * FROM CUSTOMERS_BILL;

--UPDATING VIEW
UPDATE CUSTOMERS_BILL 
SET 
    AMOUNT = 1200
WHERE
    CUST_ID = 10;

SELECT * FROM CUSTOMERS_BILL;
DROP VIEW CUSTOMERS_BILL;
