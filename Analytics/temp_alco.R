temp_alco = merge(temperature, drinks, by = "name")

temp_alco_happines = merge(temp_alco, happiness, by = "name")

corellation(temp_alco$total_liters_of_pure_alchohol,
            "Total liters of alchohol consumed",
            temp_alco$last_temp,
            "Avetage Temperature in Country")

# Correlation between alcohol consumption, depression and temperature

corellation(temp_alco_happines$total_liters_of_pure_alchohol,
            "Total liters of alchohol consumed",
            as.double(temp_alco_happines$happiness_score),
            "Happiness Score")

