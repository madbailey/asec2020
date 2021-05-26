SELECT SPM_ID, SPM_POVTHRESHOLD, SPM_RESOURCES, 
--calculate market income by subtracting cash benefits and expenses from total income, cash benefits must be summed because different members in a spm unit get different benefits
SPM_TOTVAL - SUM(SS_VAL + SSI_VAL + UC_VAL + VET_VAL + WC_VAL + PAW_VAL) + (SPM_CAPWKCCXPNS + SPM_MEDXPNS + SPM_CHILDSUPPD) as market_income,
--calculate the distance families below the poverty line are from it in dollars for disposable income, use the max function to filter out any incomes above the poverty line
--multiply the weights to get approximate values for the whole country. the weights are multiplied by 100, and we divide by 1000000 to put it in the millions of dollars
MAX(SPM_POVTHRESHOLD - SPM_RESOURCES, 0) * (SPM_WEIGHT/100)/1e6 as disposable_povgap, 
--making the same calculation for market income
MAX(SPM_POVTHRESHOLD -(SPM_TOTVAL- (SUM(SS_VAL + SSI_VAL + UC_VAL + VET_VAL + WC_VAL + PAW_VAL) + (SPM_CAPWKCCXPNS + SPM_MEDXPNS + SPM_CHILDSUPPD))), 0) *(SPM_WEIGHT /100)/1e6 as market_povgap
FROM pppub20
--each spm unit has different household members, the spm id corresponds to a household
GROUP BY SPM_ID