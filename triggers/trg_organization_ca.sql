create or replace trigger "TRG_ORGANIZATION_CA"
before
insert or update  on "ORGANIZATION"
for each row
begin
    IF :NEW.CAREEL > :NEW.CAPLAFOND THEN
        RAISE_APPLICATION_ERROR(-20005, 'Le chiffres d affaires reel ne peut pas etre superieur au chiffre d affaires maximal');
    END IF;
end;
/