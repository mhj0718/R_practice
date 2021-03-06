# 회귀분석을 하는 이유
# 부동산 데이터 : 
# 집 - 크기/방갯수/위치(위도,경도),집의 시세...
# 나의 데이터 :
# 내 집 - 크기/방갯수/위치...

# 구하고 싶은 변수 = 종속변수(시세)
# 종속변수를 결정하는 변수들 = 독립변수(크기,방갯수,위치 등)


# 단순회귀분석 (크기,시세)
plot(0,0,type='n',
     xlim = c(0,10),
     ylim = c(0,10))
abline(v = 0)
abline(h = 0)
points(x = c(2,4,6,8),
       y = c(1,6,4,8))

abline(a = 2, b = 0.5)    # y = 2 + 0.5 * x  (직선1)
# 내 집 크기: 5 / 직선 1 예측값 = 4.5

abline(a = 1,b = 0.8, col='red')  # y = 1 + 0.8 * x  (직선2)
# 내 집 크기: 5 / 직선 2 예측값 = 5

abline(a = 0.0005164763, b = 0.9499521173, col = 'blue')
0.9499521173 * 5 + 0.0005164763 = 4.750277   # 내 집 크기로 본 시세
# optim 사용한 최소 RSS값을 갖는 최적의 직선


# 여러 개 직선 중에 어떤 직선이 더 좋은가? 에 대한 문제가 있다.
# 잔차제곱합(RSS) = sum((실제값 - 예측값)^2) 를 최소로 만드는 직선이 좋은 직선
# 실제값  : (2,1) (4,6) (6,4) (8,8)
# 직선1   : (2,3) (4,4) (6,5) (8,6)
# 직선2   : (2,2.6) (4,4.2) (6,5.8) (8,7.4)
# 직선2의 RSS가 직선1보다 작기 때문에 직선2가 더 좋은 식임


# 직선1의 RSS : 13
y_i_hat <- c(2,4,6,8) * 0.5 + 2   
y_i = c(1,6,4,8)
sum((y_i - y_i_hat)^2)    

# 직선2의 RSS : 9.4
y_i_hat <- c(2,4,6,8) * 0.8 + 1 
y_i = c(1,6,4,8)
sum((y_i - y_i_hat)^2)  
y_i_hat


# RSS 함수 만들기
RSS <- function(par){
  intercept <- par[1]
  slope <- par[2]
  y_i_hat <- c(2,4,6,8) * slope + intercept
  y_i = c(1,6,4,8)
  sum((y_i - y_i_hat)^2)
}

RSS(c(2, 0.5))
RSS(c(1, 0.8))
..
..


result <- optim(par = c(2, 0.5), fn = RSS)    # 
result
