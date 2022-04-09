# P1_Probstat_C_5025201046
Nama : Rycahaya Sri Hutomo<br>
NRP : 5025201046<br>
Kelas : Probabilitas dan Statistik C

## NOMOR 1
### 1a
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik)<br>
<br>
**Penyelesaian:**<br>
**Diketahui:**<br>
- n = 3
- peluang sukses: p = 0.20

**Ditanya:** P(X = 3)
<br>
**Jawab:**
```
dgeom(x = n, prob = p)
```
<img src="https://github.com/rycahayash/P1_Probstat_C_5025201046/blob/40dfda6b656262be3ecd5614b5e1df4db8a63e96/Screenshot%20Modul%201/1a.png"/><br>
Sehingga didapatkan hasil 0.1024.

### 1b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
<br><br>
**Penyelesaian:**
```
mean(rgeom(n = 10000, prob = p) == 3)
```
<imgsrc=""/><br>
Sehingga didapatkan hasil 0.1042.

<br><br>
### 1c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?<br><br>

**Penyelesaian:**<br>
Hasil pada poin a sebesar 0.1024, sedangkan hasil pada poin b sebesar 0.1042.
Keduanya menunjukkan hasil yang berbeda dengan selisih 0.0018. Hasil pada poin a lebih kecil dari pada poin b. Oleh karena itu, dapat ditarik kesimpulan bahwa keduanya dapat digunakan untuk menyelesaikan permasalahan distribusi geometrik, namun poin b menggunakan data random, sehingga hasil yang didapatkan tergantung dari data random yang didapatkan.

### 1d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama.<br><br>
**Penyelesaian:**<br>
```
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
```
Histogram Distribusi Geometrik, Peluang X = 3 gagal Sebelum Sukses Pertama
<imgsrc=""/>


### 1e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.<br><br>
**Penyelesaian:**<br>
```
mean(rgeom(n = 10000, prob = p) <= 3)
var(rgeom(n = 10000, prob = p))

```


## NOMOR 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

### 2a
Peluang terdapat 4 pasien yang sembuh.<br>
<br>
**Penyelesaian:**<br>
Percobaan Binomial
- banyak percobaan: n = 20
- banyak sukses: x = 3
- peluang sukses: p = 0.2

Peluang Binomial
```
dbinom(k, n, prob)
```
<img src="https://github.com/rycahayash/P1_Probstat_C_5025201046/blob/bb5cbd71e2bfe113707342be64e8b77b7165c1fe/Screenshot%20Modul%201/2a.png"/>
Jadi, peluang terdapat pasien sembuh dalam kasus tersebut adalah 0.218199.<br>

### 2b
Gambarkan grafik histogram berdasarkan kasus tersebut.



