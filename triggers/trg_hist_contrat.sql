create or replace trigger "TRG_HIST_CONTRAT"
after
insert or update or delete on "CONTRAT"
for each row
DECLARE 
    v_action VARCHAR2(10);
    v_old VARCHAR2(4000);
    v_new VARCHAR2(4000);
begin
    IF INSERTING THEN
    v_action := 'INSERT';
    v_new := 'NumContrat=' || :NEW.NumContrat || ', Montant=' || :NEW.Montant;
  ELSIF UPDATING THEN
    v_action := 'UPDATE';
    v_old := 'NumContrat=' || :OLD.NumContrat || ', Montant=' || :OLD.Montant;
    v_new := 'NumContrat=' || :NEW.NumContrat || ', Montant=' || :NEW.Montant;
  ELSIF DELETING THEN
    v_action := 'DELETE';
    v_old := 'NumContrat=' || :OLD.NumContrat || ', Montant=' || :OLD.Montant;
  END IF;

  INSERT INTO HISTORIQUE_AFFAIRE (Utilisateur, AncienneValeur, NouvelleValeur, Action)
  VALUES (NVL(V('APP_USER'), USER), v_old, v_new, v_action);
end;
/