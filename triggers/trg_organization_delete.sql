create or replace trigger "TRG_ORGANIZATION_DELETE"
before
delete on "ORGANIZATION"
for each row
DECLARE
    v_nb NUMBER;
begin
    SELECT COUNT(*) INTO v_nb FROM CONTRAT WHERE ORGANIZATIONID = :OLD.ORGANIZATION_ID;
    IF v_nb > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Impossible de supprimer une organisation avec au moins un contrat');
    END IF;
    
end;
/