SET SERVEROUTPUT ON

DECLARE 

numri number(3) := 100;

BEGIN

if(numri=10) then
dbms_output.put_line('numri eshte : 10');

elsif (numri=20) then
dbms_output.put_line('numri eshte : 20');

elsif(numri=30) then
dbms_output.put_line('numri eshte : 30');

else

dbms_output.put_line('no condition matches');

END IF;

dbms_output.put_line('nr value is ' || numri);


END;

/