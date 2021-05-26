SELECT --total up the weighted poverty gaps of each income group and divide them by 1000 to show the poverty gap in billions of dollars
	SUM(market_povgap) /1e3 as Market_Poverty_Gap_In_Billions,
	SUM(disposable_povgap)/1e3 as Disposable_Poverty_Gap_In_Billions
	
FROM
	povertygaps