SELECT CONCAT(PH_SEQ,P_SEQ) as unique_id, A_WKSTAT, RSNNOTW, WORKYN
FROM pppub20;
--this query gathers all the information you need to sort workers into full time, other workers, retired, disabled, children, students, caretakers, unemployed, and other non workers
--creates a unique id that you can use to match labor force status to income variables
--i used these to create a vlookup function in excel 


SELECT CONCAT(PH_SEQ, P_SEQ) as unique_id, 
--unique id to match to labor force query 
SPM_POVTHRESHOLD, 
SPM_RESOURCES/SQRT(SPM_NUMPER) as unit_disposable_income,
--household income is divied to individuals by total household income divided by the square root of household numbers.
((SPM_TOTVAL - (SS_VAL + SSI_VAL + UC_VAL + VET_VAL + WC_VAL + PAW_VAL) + (SPM_CAPWKCCXPNS + SPM_MEDXPNS + SPM_CHILDSUPPD))/(SQRT(SPM_NUMPER))) as unit_market_income
-- same unit income calculation, but for market income
FROM pppub20
--each spm unit has different household members, the spm id corresponds to a household
