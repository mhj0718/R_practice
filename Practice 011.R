## print with possibly greater accuracy:
options(digits.secs = 6)
Sys.time()

# 무작위수 - 이론적 0 ~ 0.9999
0371 / 10000
6964 / 10000
4414 / 10000
0742 / 10000

random_0to1 <- function(){
  options(digits.secs = 6)
  y <- Sys.time()
  mode(y)
  current_time <- as.character(Sys.time())
  n <- nchar(current_time)
  time_decimal <- substr(current_time, n-3, n)    #sustr 문자열의 부분을 가져옴
  return(as.integer(time_decimal)/ 10000)
}
random_0to1()


# 무작위 동일한 기회로 0~1 사이 아무값을 n개 골라주는
# 착한 함수
runif(2)           
runif(10)

# 5 ~ 10사이 아무 숫자나 뽑아줘
runif(10)*5 + 5

# 15 ~ 19사이 아무 숫자를 뽑아줘
runif(1)*4 + 15


# runif를 통한 잡음 (잡음의 범위가 정해져 있다는 한계)
true_fuc <- function(x){
  result <- x * 3 + 20
  return(result)
}

range_vec <- 1:20
plot(range_vec, true_fuc(range_vec), 
     type = 'l', lty = 2)

noise_fuc3 <- function(x){
  true_vec <- x * 3 + 20
  noise_vec <- runif(length(x)) * 10 - 5
  
  result <- true_vec + noise_vec
  return(result)
}
points(4, noise_fuc3(4), pch = 19)
points(9, noise_fuc3(9), pch = 19)
x <- 5:15
points(x, noise_fuc3(x), pch = 19)


# 정규분포를 사용해서 잡음을 모델링하게 된다.