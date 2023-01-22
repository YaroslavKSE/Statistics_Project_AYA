temp_obesity = merge(obesity_level, temperature, by = "name")

corellation(temp_obesity$obesity_level,
            "Obesity in Country",
            temp_obesity$last_temp,
            "Average temperature in Country")

