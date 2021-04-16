# 우리나라 전체 아이들 (2~10세)
# 목표 : 대한민국 전체 2~10세 아이들 나이별 몸무게
#       추세를 추정

true_func <- function(x){
  result <- x * 3 + 10   # x = 나이
  return(result)
}

age <- sample(seq(2, 10, by = 1/12), 3000, replace = TRUE)  # replace는 겹치는 값 여부
variation <- rnorm(length(age)) * 3

weight <- true_func(age) + variation

plot(age,weight,
     ylim = c(0,50),
     pch=0,type = 'n')
abline(10,3,col='blue')



# 우리는 시간과 돈 부족
# 실제의 데이터 조사는 5명을 모집

mysample_age <- sample(seq(2, 10, by = 1/12), 5, replace = TRUE)
mysample_weight <- true_func(mysample_age) + rnorm(length(mysample_age))*3

points(mysample_age, mysample_weight, pch=19, col = 'green')

# 주어진 데이터를 사용한 회귀 직선 계산
result <- lm(mysample_weight ~ mysample_age)
abline(result, col='green')

# 계속 바뀐다 >>> 검정통계량 / p-value / 신뢰구간 구하는 이유

