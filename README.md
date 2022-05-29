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

## Soal 4
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama.
Maka Kerjakan atau Carilah

  - Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians.

    ```yml
      Datacat <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),header = TRUE, check.names = TRUE)
       byGroup <- split(Datacat, Datacat$Group)
     ```  
     setelah datanya kita baca dan masukkan kedalam tabel, maka kita set nama variabel grupnya.
     
     ```yml
      grup1 <- byGroup$`1`
      grup2 <- byGroup$`2`
      grup3 <- byGroup$`3`
     ``` 
     kemudian kita bagi tampilkan menggunakan <code>qqnorm</code>
   
      ```yml
        qqnorm(grup1$Length,main = "Grup1")
        qqnorm(grup2$Length,main = "Grup2")
        qqnorm(grup3$Length,main = "Grup3")
     ```

  - carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
  
     ```yml
      bartlett.test(Datacat$Length, Datacat$Group)
     ```
  -  Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
  
    ```yml
      model1 <- lm(Datacat$Length~Datacat$Group)
      summary(model1)
    ```
    
  - Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?
  
    berdasarkan hasil perhitungan sebelumnya maka didapatkan nilai P adalah 0.6401. Sehingga, Hipotesis H0 dapat diterima.
    
  -  Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?

     ```yml
       av <- aov(Length ~ factor(Group), data = Datacat)
      TukeyHSD(av)
     ```
    
  - Visualisasikan data dengan ggplot2
  
    ```yml
      library(ggplot2)
      ggplot(Datacat, aes(x = Group, y = Length)) + 
       geom_boxplot(fill = "black", colour = "Red")  + 
       scale_x_discrete() + xlab("Group") + ylab("Length")
    ```
    ![Soal4a](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal4a.PNG)
    
## Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut:

  - Buatlah plot sederhana untuk visualisasi data
      
      hal pertama yang kita lakukan ialah menginstal package, dan data dari soal:
      
       ```yml
         library(readr)
         library(ggplot2)
         library(multcompView)
         library(dplyr)
      ```
      kemudian kita panggil file <code>GTL.cvs</code>. untuk memfisualisasi kta gunakan <code>read_cvs</code> dan <code>head(GTL)</code>
      ```yml
         GTL <- read_csv("GTL.csv")
         head(GTL)
         str(GTL)
         qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
      ```
      
      ![Soal5](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal5.PNG)
      ![Soal5](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal5a.PNG)
      
  - Lakukan uji ANOVA dua arah
    
    kita create sebuah variabel sebagai faktor untuk ANOVA
    
    ```yml
      GTL$Glass <- as.factor(GTL$Glass)
      GTL$Temp_Factor <- as.factor(GTL$Temp)
      str(GTL)
    ```
    ![Soal5a](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal5a.PNG)
    
    setelah itu, kita defenisikan ANOVA:
     
    ```yml
      anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
      summary(anova)
    ```
    
    ![Soal5b](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal5b.PNG)
    ![Soal5c](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal5c.PNG)
     
     Dengan mempertimbangkan taraf signifikansi 0,05, tabel ANOVA menunjukkan bahwa terdapat signifikansi suhu, jenis kaca pelat muka, dan interaksi antar keduanya.      Hasil ini diharapkan mengingat visualisasi data sebelumnya yang dilakukan pada bagian sebelumnya.
     
     
  - Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
  
  ```yml
    data_summary <- group_by(GTL, Glass, Temp) %>%
    summarise(mean=mean(Light), sd=sd(Light)) %>%
    arrange(desc(mean))
    print(data_summary)
  ```
  untuk menampilkan tabel mean dan standar deviasi keluaran cahaya, maka menggunakan <code>summarise(mean=mean(Light))</code> dan <code>arrange(desc(mean))</code>
  
   ![Soal5d](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal5d.PNG)

  - Lakukan uji Tukey
    
    ```yml
      tukey <- TukeyHSD(anova)
      print(tukey)
    ```
    untuk melakukan pengujian Tukey, maka pertama kita defenisikan <code>tukey</code> sebagai variabel penampung. kemudian menggunakan fungsi <code>TukeyHSD</code> dari variabel <code>anova</code> yang sebelumnya telah dibuat.
    
    ![Soal5e](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal5e.PNG)
    ![Soal5f](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal5f.PNG)
   
 - Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey.
 
    ```yml
      tukey.cld <- multcompLetters4(anova, tukey)
      print(tukey.cld)
    ```
    untk menunjukkan perbedaan signifikan anatara uji anova dan uji tukey, maka digunakan function <code>multcompLetters4(anova, tukey)</code>.
    ![Soal5g](https://github.com/Kielgolan10/P2_Probstat_E_5025201054/blob/main/Screenshoot/Soal5g.PNG)
    
  

