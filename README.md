# Poverty Gap Analysis with ASEC 2020 Survey Data
Matt Bruenig at the People's Policy Project created an interesting way to measure the effectiveness of the US welfare state by measuring the "Total Poverty Gap". The Total Poverty Gap is defined as the total distance poor families are from the poverty threshold in dollar terms. To measure the effectiveness of welfare programs at closing this poverty gap, we measure the total poverty gap of poor families with market income alone and then compare it to the total poverty gap as measured with all money benefits the state provides to poor families. 

You can read his post describing this process [here](https://www.peoplespolicyproject.org/2019/09/16/the-us-welfare-state-cut-poverty-by-two-thirds-in-2018/).

I decided to perform this analysis using the Anual Social and Economic Supplements (ASEC) 2020 survey. You can find the link to the original data I used at the [Census Website](https://www.census.gov/data/datasets/time-series/demo/cps/cps-asec.html). I will be using SQL to filter and transform the original CSV file into something that can easily be graphed and analyzed in Excel.

The goals for this project are to recreate the original Poverty Gap Analysis that Bruenig demonstrates. Then perform a detailed analysis of the poverty gap closure by specific programs and the poverty gap of specific demographics. 

