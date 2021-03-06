//Solution 1-01
WD=get_absolute_file_path('1_02_solution.sce');
datafile=WD+filesep()+'1_02_example.sci';
clc;
exec(datafile)
totE = turbine_power * t; //total energy generated by turbine in one yeear [kWh]
money_saved = totE * unit_cost; //money saved per year [$]
printf("The amount of electric power generated by wind turbine is %1.2f kW", totE)
printf("\nMoney saved by turbine per year: \$%1.2f", money_saved);
