## 06_01
## Numeric ~ Numeric -> Correlation

# head(partial_pizza)

Desc(d.pizza$temperature ~ d.pizza$delivery_min, plotit = FALSE)

Desc(d.pizza$temperature ~ d.pizza$delivery_min, plotit = TRUE)

Desc(temperature ~ delivery_min, d.pizza, plotit = TRUE)

Desc(temperature ~ delivery_min, d.pizza)

## 06_02 
## Numeric ~ Factor/Tex -> Mean Breakdown 
Desc(d.pizza$delivery_min ~ d.pizza$area, plotit = FALSE)

Desc(d.pizza$delivery_min ~ d.pizza$area, plotit = TRUE)


# head(d.pizza)
# length(unique(d.pizza$area))
# length(unique(d.pizza$driver))
 
## 06_03
## Factor/Text ~ Factor/Text -> Contingency Table 
Desc(d.pizza$area ~ d.pizza$driver, plotit = TRUE)

Desc(driver ~ area, d.pizza, plotit = TRUE)


