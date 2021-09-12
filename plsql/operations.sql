SET SERVEROUTPUT ON

DECLARE 
a integer := 4;
b integer := 6;
c integer;
f float;

BEGIN 

c := a+b;

dbms_output.put_line('value of c is ' || c);

f := 40.0/3.0;

dbms_output.put_line('value of f is ' || f);

END;

/