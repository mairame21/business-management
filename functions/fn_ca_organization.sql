create or replace function "FN_CA_ORGANIZATION"(
    p_orgid IN ORGANIZATION.ORGANIZATION_ID%TYPE
)
return NUMBER IS
    v_ca NUMBER;
begin
    SELECT NVL(SUM(MONTANT), 0) INTO v_ca FROM CONTRAT WHERE ORGANIZATIONID = p_orgid; 
    return v_ca;
end "FN_CA_ORGANIZATION";
/