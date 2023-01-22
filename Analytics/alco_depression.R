#gdp_poor <- gdp[gdp$per_capita>1000,]
#gdp_poor <- gdp[gdp$per_capita<10000,]

poor_drinks = merge(drinks, gdp_poor, by = "name")

alco_depression = merge(poor_drinks, depression_rate, by = "name")

corellation(alco_depression$total_liters_of_pure_alchohol,
            "Total liters of alchohol consumed",
            alco_depression$`Depression Rate`,
            "Depression Rate")
