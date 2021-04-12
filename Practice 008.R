# 3D 플랏을 이용한 결과 확인

library(rgl)
RSS <- function(intercept,slope){
  y_i_hat <- c(2,4,6,8) * slope + intercept
  y_i = c(1,6,4,8)
  sum((y_i - y_i_hat)^2)
}

# vectorize
rss <- Vectorize(RSS)

library(rgl)
open3d()
persp3d(rss,
        xlim = c(-5,5),
        ylim = c(-2,2),
        zlim = c(6,15),
        n = 100)

rgl.spheres(x = 0.0005164763,
            y = 0.9499521173,
            z = RSS(0.0005164763,0.9499521173),
            r = 0.05, color = 'red')