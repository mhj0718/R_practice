# 원래의 직선식
true_fuc <- function(x){
  result <- x * 3 + 20
  return(result)
}

range_vec <- 1:20

plot(range_vec, true_fuc(range_vec), 
     type = 'l', lty = 2)

# 잡음이 없을 경우
# points(x, y) 관찰
points(4, true_fuc(4), pch = 19)
points(10, true_fuc(10), pch = 19)
x <- 5:15
points(x, true_fuc(x), pch = 19)


# 잡음이 숫자인 경우
noise_fuc <- function(x){
  result <- x * 3 + 20 + 4         # 4 부분이 노이즈
  return(result)
}
points(4, noise_fuc(4), pch = 19)
points(10, noise_fuc(10), pch = 19)
points(x, noise_fuc(x), pch = 19)


# 잡음이 어떤 규칙을 가진 경우
noise_fuc2 <- function(x){
  true_vec <- x * 3 + 20
  noise_vec <- rep(0, length(x))
  ## x가 짝수
  noise_vec[x %% 2 == 0] <- 3
  ## x가 홀수
  noise_vec[x %% 2 == 1] <- -5
  noise_vec
  result <- true_vec + noise_vec
  return(result)
}
points(4, noise_fuc2(4), pch = 19)
points(9, noise_fuc2(9), pch = 19)
points(x, noise_fuc2(x), pch = 19)

