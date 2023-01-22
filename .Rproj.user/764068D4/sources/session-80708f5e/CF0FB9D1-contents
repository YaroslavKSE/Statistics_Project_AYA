bigmac_happ = merge(bigmac_index, happiness, by = "name")

corellation(bigmac_happ$dollar_price,
            "Price, $",
            as.double(bigmac_happ$happiness_score),
            "Happiness Score")

corellation(bigmac_happ$dollar_price,
            "Price, $",
            as.double(bigmac_happ$happ_govtrust_impact),
            "Government Trust Impact on Happiness")

corellation(bigmac_happ$dollar_price,
            "Price, $",
            as.double(bigmac_happ$happ_generosity_impact),
            "Generosity Impact on Happiness")