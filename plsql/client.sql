SET SERVEROUTPUT ON

DECLARE 

id klient.klient_id%type:=1;
emri klient.klient_name%type;
qyteti klient.klient_qytet%type;

BEGIN

select klient_id,klient_name,klient_qytet INTO id,emri,qyteti from klient
where klient_id=id;

dbms_output.put_line('Klienti me id ' || id || ' e ka emrin ' || emri || ' dhe jeton ne ' || qyteti);

END;

/