y = mtcars$mpg
x = cbind(1, mtcars$hp, mtcars$wt)
n = nrow(x)
I = diag(rep(1, n))
H = matrix(1, n, n) / n
round(t(x) %*% (I - H) %*% x / (n - 1), 6)
var(x)
