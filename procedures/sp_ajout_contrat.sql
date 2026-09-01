create or replace procedure "SP_AJOUT_CONTRAT"(
    p_numcontrat IN CONTRAT.NUMCONTRAT%TYPE,
    p_clientid IN CONTRAT.CLIENTID%TYPE,
    p_orgid IN CONTRAT.ORGANIZATIONID%TYPE,
    p_datecontrat IN CONTRAT.DATECONTRAT%TYPE,
    p_libelle IN CONTRAT.LIBELLE%TYPE,
    p_montant IN CONTRAT.MONTANT%TYPE
)
IS
begin
    INSERT INTO CONTRAT(NUMCONTRAT, CLIENTID, ORGANIZATIONID, DATECONTRAT, LIBELLE, MONTANT)
    VALUES (p_numcontrat, p_clientid, p_orgid, p_datecontrat, p_libelle, p_montant);
end "SP_AJOUT_CONTRAT";
/