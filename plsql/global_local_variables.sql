SET SERVEROUTPUT ON 

DECLARE 

--var i jashtem,global

var1 varchar2(10) := 'nensi';

BEGIN

dbms_output.put_line('Emri im eshte ' || var1);

	DECLARE
 -- var i brendshem,local 
 -- variables declared in an inner block and not accessible to outer blocks.
 
var2 varchar2(20) := 'skenderi';

	BEGIN

dbms_output.put_line('Mbiemri im eshte ' || var2);

END;

END;

/