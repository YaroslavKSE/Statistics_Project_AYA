obesity_alco = merge(obesity_level, drinks, by = "name")

corellation(obesity_alco$total_liters_of_pure_alchohol,
            "Total liters of alchohol consumed",
            obesity_alco$obesity_level,
            "Obesity in Country")

