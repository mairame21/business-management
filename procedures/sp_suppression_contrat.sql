create or replace procedure "SP_SUPPRESSION_CONTRAT"(
    p_contratid IN CONTRAT.CONTRATID%TYPE
)
IS
begin
    DELETE FROM CONTRAT WHERE CONTRATID = p_contratid;
end "SP_SUPPRESSION_CONTRAT";
/