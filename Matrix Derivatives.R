y = mtcars$mpg
x = cbind(1, mtcars$hp, mtcars$wt)
solve(t(x) %*% x) %*% t(x) %*% y
coef(lm(mpg ~ hp + wt, data = mtcars))
