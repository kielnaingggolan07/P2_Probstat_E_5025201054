
-- menggunakan library
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
          alternative = "less", mu = 20000,
          conf.level = 0.95)

-- menggunakan manual
N <- 20000
n <- 100
rata <- 23500
sd <- 3900

remove(N)
z <- (rata-N)/(sd*sqrt(n))

-- no 2a
setuju karena berdasarkan hasil dari p-value(1) > 0.05.

-- no 2b
maksud dari output yang dihasilkan peneliti setuju dengan hipotesis awal, 
dimana rata-rata kecepatan => 20000. dari hasil tersebut kita juga yakin,
bahwa dengan kepercayaan 95% kecepatan mobil berada pada 24141.49 km per tahun (>20000)

-- no 2c
berdasarkan hasil p-value yang diperoleh p-value (1) > 0.05, maka 
dapat dikatakan bahwa tidak ada perbedaan nyata antara populasi. artinya semua populasi memiki kecepatan 20000 per tahunnya.

