SET SERVEROUTPUT ON

DECLARE 

a number(2) :=3;

BEGIN 

if(a < 20) then
dbms_output.put_line('testing output print');

END IF;

dbms_output.put_line('value of a is : ' || a);

END;

/