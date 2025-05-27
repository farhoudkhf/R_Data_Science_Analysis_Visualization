## 07_01

Desc(d.pizza$temperature ~ d.pizza$delivery_min, plotit = FALSE)


## 07_02
Desc(d.pizza$temperature ~ d.pizza$area, plotit = TRUE)

## 07_03
## Factor/Text ~ Factor/Text -> Contingency Table 
Desc(d.pizza$area ~ d.pizza$driver, plotit = TRUE)
