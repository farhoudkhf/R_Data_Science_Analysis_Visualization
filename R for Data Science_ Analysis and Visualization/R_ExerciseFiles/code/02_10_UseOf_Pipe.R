# 2_10 Use of pipe
# example of using pipe
round(prop.table(margin.table(UCBAdmissions, 3)), 2) * 100

UCBAdmissions |>
  margin.table(3) |>
  prop.table() |>
  round(2) *
  100

# function(data)
# data |> function()
# 
# function(data, arg)
# data |> function(arg)
# 
# three(two(one(data, a), b), c)
# data |>
#   one(a) |>
#   two(b) |>
#   three (c)

# other types on oyhrt packages:
# magritter: %>%, %<>%, %T>%

