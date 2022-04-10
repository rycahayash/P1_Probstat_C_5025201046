# Nama : Rycahaya Sri Hutomo
# NRP : 5025201046
# Kelas : Probabilitas dan Statistik C

# P1_Probstat_C_5025201046

# NOMOR 1a
n <- 3
p <- 0.20
dgeom(x = n, prob = p)

# NOMOR 1b
mean(rgeom(n = 10000, prob = p) == 3)

# NOMOR 1d
#install.packages("ggplot2")
#install.packages("dplyr")

library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability")

# NOMOR 1e
mean(rgeom(n = 10000, prob = p))
var(rgeom(n = 10000, prob = p))

# NOMOR 2a
x <- 4
size <- 20
prob <- 0.2
dbinom(x, size, prob)

# NOMOR 2b
iter = seq(0, size, by = 1)
p = dbinom(iter, size, prob)
length(iter) == length(p)
plot(iter,p,type='h')

# NOMOR 2C
mean(rbinom(x, size, prob) <= 4)
var(rbinom(x, size, prob))

# NOMOR 3a
dpois(6, 4.5)

# NOMOR 3b
set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Jumlah bayi yang lahir per periode',
       y = 'Proporsi',
       title = '365 simulasi kelahiran di rumah sakit dengan Poisson(lambda = 4.5)') +
  theme_bw()

babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())

# NOMOR 3d
P <- rpois(365, 4.5)
mean(P)
var(P)

# NOMOR 4a
x <- 2
v <- 10
dchisq(x, v)

# NOMOR 4b
n <- 100
data_rcis <- rchisq(n, v)
hist(data_rcis, main="Chi-Square Histogram")

# NOMOR 4c
mean(data_rcis)
var(data_rcis)

# NOMOR 5a
rate <- 3
  # misal sequence mulai dari 1 sampai 10
x_dexp <- seq(1, 10, by = 1)
dexp(x_dexp, rate)

# NOMOR 5b
  # N = 10
N <- 10
data_exp <- rexp(N, rate = 3)
hist(data_exp, main="Distribusi Eksponensial untuk 10 bilangan random")

# N = 100
N <- 100
data_exp <- rexp(N, rate = 3)
hist(data_exp, main="Distribusi Eksponensial untuk 100 bilangan random")

# N = 1000
N <- 1000
data_exp <- rexp(N, rate = 3)
hist(data_exp, main="Distribusi Eksponensial untuk 1000 bilangan random")

# N = 10000
N <- 10000
data_exp <- rexp(N, rate = 3)
hist(data_exp, main="Distribusi Eksponensial untuk 10000 bilangan random")

# NOMOR 5c
set.seed(1)
n <- 100
data_exp <- rexp(n, rate)
mean(data_exp)
var(data_exp)

# NOMOR 6a
n <- 100
mean <- 50
sd <- 8

X1 = runif(1, max = mean)
X2 = runif(1, min = mean, max = 100)
x = runif(1, min = X1, max = X2)

data_norm <- rnorm(n, mean, sd)

iter = seq(1, n, by = 1)
plot(iter, data_norm, type = 'l')

dnorm(iter, mean, sd)

x.z <- (x - mean) / sd
x.z

# NOMOR 6b
hist(data_norm, breaks = 50, main="5025201046_Rycahaya_Probstat_C_DNhistogram")

# NOMOR 6c
var(data_norm)