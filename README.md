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
        Setuju karena berdasarkan hasil dari p-value(1) > 0.05.
        H0: µ => 20.000
        H1: µ < 20.000
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
      ```yml
        maksud dari output yang dihasilkan peneliti setuju dengan hipotesis awal, 
        dimana rata-rata kecepatan => 20000. dari hasil tersebut kita juga yakin,
        bahwa dengan kepercayaan 95% kecepatan mobil berada pada 24141.49 km per tahun (>20000)
      ```
      jawaban :     
![Soal2](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal2.PNG)


  - Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
    ```yml
    P(Z > 8.9744) = 1 - P(Z < 8.977)
                  = 1 - 1 = 0
    ```
    Berdasarkan hasil p-value yang diperoleh p-value (1) > 0.05 dan hasil P(Z > 8.9744) = 0, maka
      dapat dikatakan bahwa tidak ada perbedaan nyata antara populasi. artinya semua populasi memiki kecepatan > 20000 per tahunnya.
      Maka dari hasil p-value nya terima H0, kecepatan > 20000 per tahunnya
    
    
  
## Soal 3
![Soal3](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal3.PNG)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah

  - H0 dan H1
  ```yml
  H0 <- rata-rata bali = rata-rata bandung
  H1 <- rata-rata bali != rata-rata bandung
  ```

  - Hitung Sampel Statistik
  ```yml  
  tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "two.side", var.equal = TRUE, conf.level = 0.95)
  ```
  penggunaan <code>tsum.test</code> dikarenakan jumlah n_bandung dan n_bali < 30, dan altenative = two.side karena terdapat 2 populasi, bandung dan bali.
  
  menentukan tes statistik :
  ```yml 
    n_bandung < 30
    n_bali < 30
  ```
  maka menggunakan tabel t.
  
  ![Soal3b](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal3b.PNG)
  
 - Lakukan Uji Statistik (df =2)
 
   untuk melaukan uji statistik dengan <code>df=2</code>, maka melakukan dengan t tabel menggunakan fungsi <code>qt</code>
   ```yml
    uji <- qt(c(alpha/2, 1-(alpha/2)), df=2)
   ```
    ![Soal3c](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal3c.PNG)
    
 - Nilai Kritikal
   untuk menentukan nilai kritikal kita menggunakan <code>n_bandung</code> dan <code>n_bali</code> serta <code>df=2</code>
   
   ```yml
    poin_kritis <- n_bali + n_bandung - 2
   ```
   setelah diperoleh poin kritisnya, maka selanjutnya mengecek pada tabel t, dan diperoleh:
   
   ```yml
      t_tabel <- 2.015
   ```   
 
 - Keputusan
    
    pertama kita perlu mencari nilai <code>sp</code>:
    
     ```yml
      sp <- (((n_bandung-1)*dp_bandung)+ ((n_bali-1)*dp_bali))/(n_bali + n_bandung - df)
     ```
     setelah diperoleh nilai sp, kemudian kita uji 2 sampel, <code>T</code> :
     
     ```yml
       T <- (n_bandung - n_bali)/(sp*((1/n_bandung) + (1/n_bali)))
     ```
     ![Soal3d1](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/soal3d1.PNG)
     
     maka kita dapat menarik keputusan 
     
     ```yml
      melalui uji statistik dengan df = 2, maka diperoleh batas bawah = -4.3 dan batas atas = 4.3 . karena T (-62.1920)<batas bawah dan batas atas, maka menolah H0.
     ```
  
 - kesimpulan

    ```yml
      terdapat perbedaan rata rata pada bandung dan bali jika alpa nya 0.05 dan variance bebas
    ```  




