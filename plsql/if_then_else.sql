SET SERVEROUTPUT ON

DECLARE

nr number(3) := 140;

BEGIN

if(nr > 100) then 

dbms_output.put_line('conditon is true ');

else

dbms_output.put_line('condition not true');

END IF;

dbms_output.put_line('nr is : '|| nr);

END;

/