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
dgeom(3, 0.2)
```
Sehingga didapatkan hasil 0,1024.
