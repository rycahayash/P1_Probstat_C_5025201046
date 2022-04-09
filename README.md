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
<img src=""/><br>
Sehingga didapatkan hasil 0.1024.

### 1b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
<br><br>
**Penyelesaian:**
```
mean(rgeom(n = 10000, prob = p) == 3)
```
<img src=""/><br>
Sehingga didapatkan hasil 0.1042.

<br><br>
### 1c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?<br><br>

**Penyelesaian:**<br>
Hasil pada poin a sebesar 0.1024, sedangkan hasil pada poin b sebesar 0.1042.
Keduanya menunjukkan hasil yang berbeda dengan selisih 0.0018. Hasil pada poin a lebih kecil dari pada poin b. Oleh karena itu, dapat ditarik kesimpulan bahwa keduanya dapat digunakan untuk menyelesaikan permasalahan distribusi geometrik, namun poin b menggunakan data random, sehingga hasil yang didapatkan bisa berbeda-beda.

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
Histogram Distribusi Geometrik, Peluang X = 3 gagal Sebelum Sukses Pertama<br>
<img src=""/>


### 1e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.<br><br>
**Penyelesaian:**<br>
```
mean(rgeom(n = 10000, prob = p) <= 3)
var(rgeom(n = 10000, prob = p))

```
<img src=""/>

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
<img src=""/>
Jadi, peluang terdapat pasien sembuh dalam kasus tersebut adalah 0.218199.<br>

### 2b
Gambarkan grafik histogram berdasarkan kasus tersebut.<br>
<img src=""/>

### 2c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.<br><br>

**Penyelesaian:**<br>
<img src=""/>

## NOMOR 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### 3a
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?<br><br>

**Penyelesaian:**<br>
<img src=""/>

### 3b
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)<br><br>

**Penyelesaian:**<br>
<img src=""/><br>
<img src=""/>

### 3c
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan<br><br>

**Penyelesaian:**<br>
Hasil pada poin a dan b berbeda. Poin a memiliki hasil yang tetap, sedangkan poin b memiliki hasil yang berbeda-beda. Hal ini terjadi karena poin b menggunakan data random. Oleh karena itu, dapat ditarik kesimpulan bahwa cara pada poin a menunjukkan angka tetap, sedangkan b tidak.

### 3d
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.<br><br>

**Penyelesaian:**<br>
<img src=""/>

## NOMOR 4
Diketahui nilai x = 2 dan v = 10. Tentukan:

### 4a
Fungsi Probabilitas dari Distribusi Chi-Square.<br><br>

**Penyelesaian:**<br>
<img src=""/>

### 4b
Histogram dari Distribusi Chi-Square dengan 100 data random.<br><br>

**Penyelesaian:**<br>
<img src=""/>

### 4c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.<br><br>

**Penyelesaian:**<br>
<img src=""/>

## NOMOR 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### 5a
Fungsi Probabilitas dari Distribusi Exponensial<br><br>

**Penyelesaian:**<br>
<img src=""/>

### 5b
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random<br><br>

**Penyelesaian:**<br>
<img src=""/>

### 5c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Petunjuk:
● Gunakan set.seed(1)
● Gunakan fungsi bawaan R<br>

**Penyelesaian:**<br>
<img src=""/>

## NOMOR 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

### 6a
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
Keterangan :
- X1 = Dibawah rata-rata
- X2 = Diatas rata-rata
Contoh data :
```
11
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6
```
<br>

**Penyelesaian:**<br>
<img src=""/>

### 6b
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
<code>312312312_Rola_Probstat_A_DNhistogram</code>

### 6c
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.<br><br>

**Penyelesaian:**<br>
<img src=""/>
