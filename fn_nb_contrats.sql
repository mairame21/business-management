create or replace function "FN_NB_CONTRATS"(
    p_orgid IN ORGANIZATION.ORGANIZATION_ID%TYPE
) 
return NUMBER IS
    v_nb NUMBER;
begin
    SELECT COUNT(*) INTO v_nb FROM CONTRAT WHERE ORGANIZATIONID = p_orgid;
    return v_nb;
end "FN_NB_CONTRATS";
/