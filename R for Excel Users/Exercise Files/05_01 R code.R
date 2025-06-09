library(DescTools)

Fmt(abs=structure(list(big.mark=","),class="fmt"))

z <- Desc(d.pizza$temperature)

print(z,digits=1,plotit=FALSE)

Desc(d.pizza$temperature)

# my practices
head(d.pizza)

Desc(d.pizza)

summary(d.pizza$temperature)
