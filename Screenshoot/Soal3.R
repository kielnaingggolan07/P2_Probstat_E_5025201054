-- soal 3a
karena n_bandung dan n_bali <30 dan terdapat 2 sampel, maka digunakan tsum.test:
  tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, 
         n.y = 27, alternative = "two.side", var.equal = TRUE, conf.level = 0.95)

-- soal3b
n_bandung <- 19
n_bali <- 27
mean_bandung <- 3.64
mean_bali <- 2.79
dp_bandung <- 1.67
dp_bali <- 1.32
df <- 2
alpha <- 0.05


-- soal3c
poin_kritis <- n_bali + n_bandung - 2
t_tabel <- 2.015

-- soal3d
sp <- (((n_bandung-1)*dp_bandung)+ ((n_bali-1)*dp_bali))/(n_bali + n_bandung - df)
T <- (n_bandung - n_bali)/(sp*((1/n_bandung) + (1/n_bali)))
