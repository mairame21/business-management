create or replace trigger "TRG_COUNTRY_DELETE"
before
insert or update or delete on "COUNTRY"
for each row
DECLARE
    v_nb NUMBER;
begin
    SELECT COUNT(*) INTO v_nb FROM ORGANIZATION WHERE COUNTRYID = :OLD.COUNTRYID;
    IF v_nb > 0 THEN 
        RAISE_APPLICATION_ERROR(-20003, 'Impossible de supprimer un pays qui est utilise');
    END IF;
end;
/