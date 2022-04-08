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
- penyurvei bertemu 3 kejadian gagal sebelum sukses pertama. Berarti sukses pertama berada di kejadian keempat, sehingga X sebenarnya adalah 4.
- peluang sukses: p = 0.2.

**Ditanya:** P(X = 3)
<br>
**Jawab:**
```
dgeom(x-1, p)
```
<img src="https://github.com/rycahayash/P1_Probstat_C_5025201046/blob/40dfda6b656262be3ecd5614b5e1df4db8a63e96/Screenshot%20Modul%201/1a.png"/><br>
Sehingga didapatkan hasil 0,1024.

### 1b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
<br><br>
**Penyelesaian:**

<br><br>
### 1c
### 1d
### 1e

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



