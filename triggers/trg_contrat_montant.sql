create or replace trigger "TRG_CONTRAT_MONTANT"
before
insert or update on "CONTRAT"
for each row
begin
    IF :NEW.MONTANT <= 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Le montant du contrat doit etre positif');
    END IF;
end;
/