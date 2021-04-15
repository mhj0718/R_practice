# 표준화 이용방법과 R에서 pnorm()사용방법
?pnorm

# pnorm() ansqjq
pnorm(,mean=0,sd=1,lower.tail = TRUE)

# P(X <= 3.12) = ?
pnorm(3.12, mean =3, sd =2)


# P(X >= 3.12) = ?
pnorm(3.12, mean=3, sd=2, lower.tail = FALSE)
1-0.5239222


# 연습문제1
## 숙제 점수의 분포는 mean=10, sd=2인 정규분포를 따른다.
## 내 점수 12점. 나보다 숙제점수를 낮게 받은 학생들은 대략 몇 명인가?
## 단, 우리반 학색 수는 75명이다.
pnorm(12, mean = 10, sd = 2, lower.tail = TRUE)
P <- pnorm(12, mean = 10, sd = 2, lower.tail = TRUE)
75 * P
63.1명 이므로 답 >> 63명


# 연습문제2
## 친구 보미는 상위 8%안에 들었다.
## 보미의 성적은 최소 몇 점 이상일까?
## 숙제 점수의 분포는 mean=10, sd=2인 정규분포를 따른다.
P (Z <= 1.41) = 약 92%
X = 보미의 점수
1.41 = (X-10) / 2
X = 2*1.41+10 = 약12.82
답 > 최소 12.82점 이상

## R함수 사용해서 구하는 방법
qnorm(0.92, mean = 10, sd = 2, lower.tail = TRUE)
qnorm(0.08, mean = 10, sd = 2, lower.tail = FALSE)


