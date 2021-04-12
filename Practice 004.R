# 사용자 정의 함수 및 필터링(filtering)
# 화씨 -> 섭씨 변환
(F - 32) * 5/9 = C

tempF <- c(67,45,92,83,70)

# Method 1 : 벡터형식 코드사용
(tempF - 32) * (5/9)


# Method 2 : 사용자 정의 함수 만들기
convFtoC <- function(Temp){
  result <- (Temp - 32) * 5/9
  return(result)
}

convFtoC(87)
convFtoC(tempF)


# 최빈값(Mode) 함수 만들기
x <- c(1,3,9,7,1,2,2,5,3,3,3)

table(x)    # 3이 4번 나와 x벡터의 최빈값임

statMode <- function(data_vec){
  mytable <- table(data_vec)
  n <- length(mytable)
  result <- names(sort(mytable))[n]
  return(result)
}

statMode(x)


# 카테고리컬 (categorical) 변수 만들기
# 연산자
1 == 2
1 < 2
1 > 2
1 <= 2
1 >= 2
c(1,2,3) < 4    # vector에서도 연산자 사용 가능

a <- c(1:10)
a[1:5] <- c(1,5,3,2,4)
a


# 벡터(vector) 필터링 : 특정 조건 만족하는 값만 추출
a < 4       # TRUE 와 FALSE로 이루어진 vector
a[a < 4]

b <- rep(0,10)
b[a < 4] <- 'low'
b[a >= 4] <- 'high'
mytable <- table(b)

pie(mytable, labels = names(mytable),
    main = 'Pie Chart of categorical variable')
