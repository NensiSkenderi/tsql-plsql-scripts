SET SERVEROUTPUT ON

DECLARE

id klient.klient_id%type:=1;
emri klient.klient_name%type;

BEGIN

select klient_id, klient_name into id,emri
from klient
where klient_id=id;

if(emri='nensi') then

update klient 
set klient_name='nensiskenderi'
where klient_id=id;

dbms_output.put_line ('Name updated');

END IF;

END;

/