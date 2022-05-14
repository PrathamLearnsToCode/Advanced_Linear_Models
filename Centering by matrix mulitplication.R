y = mtcars$mpg
x = cbind(1, mtcars$hp, mtcars$wt)
n = nrow(x)
I = diag(rep(1, n))
H = matrix(1, n, n) / n
xt = (I - H) %*% x
apply(xt, 2, mean)

## Doing it using sweep
xt2 = sweep(x, 2, apply(x, 2, mean))
apply(xt2, 2, mean)
