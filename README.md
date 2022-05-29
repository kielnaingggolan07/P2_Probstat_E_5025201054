# P2_Probstat_E_5025201054

#### Praktikum 2 [ Probabilitas & Statistika ]


## Soal 1
Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, 
dan setelah melakukan aktivitas 𝐴 sebanyak 70.

![Soal1](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal1.PNG)

  - Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas.
 
      Untuk menentukan standar deviasi dari datanya, maka hal pertama yang dilakukan ialah mencari selisi dari x dan y:
      
       ```yml
         x <- c(78,75,67,77,70,72,78,74,77)
         y <- c(100,95,70,90,90,90,89,90,100)
         selisi <- c(y-x)
       ```
        
      setelah kita mendapat selisih dari x dan y, maka selanjutnya kita mencari standar deviasi menggunakan fungsi <code>sd</code> :
       
       ```yml
       sd <- sd(selisi)
       ```
    
  - carilah nilai t (p-value)
      Untuk mecari nilai t, maka pertama kita harus mencari rata-rata dari selisih x dan y:
      
      ```yml
       d <- sum(selisi)/9
       t <- (d-0)/(sd/sqrt(9))
      ```
      setelah kita mendapat rata-rata, maka kita masukkan kedalam rumus:
       ```yml
       t <- (d-0)/(sd/sqrt(9))
      ```
      
  - tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
     
    untuk mencari apakah H0 ditolak atau tidak maka, kita tentukan nilai T menggunakan tabel t statistika, dan diperoleh hasil :
  ```yml
       df <- 9-1
       alpa <- 0.05
       T <- 2.306
  ```
      
      
## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul)

   - Apakah Anda setuju dengan klaim tersebut?
   
      ```yml
        Setuju
      ```
      untuk mencari nilai z dan p-value :
        - menggunakan library
           ```yml
            zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
            alternative = "less", mu = 20000,
            conf.level = 0.95)
          ```
        - secara manual
          ```yml
            N <- 20000
            n <- 100
            rata <- 23500
            sd <- 3900
            z <- (rata-N)/(sd*sqrt(n))
          ```
          
   - Jelaskan maksud dari output yang dihasilkan!
      
 



