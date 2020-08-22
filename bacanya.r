library(ggplot2)
library(openxlsx)

mahasiswa<- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx",
                      sheet="Sheet 1")
gambar <- ggplot(mahasiswa, aes(x=Fakultas, y=JUMLAH, fill=Fakultas))
gambar <- gambar + geom_bar(width=1, stat="identity")
# gambar <- gambar + scale_fill_manual(values=c("#999999", "#E69F00",
#                                           "#56B4E9","#037ef3","#f85a40"))
gambar <- gambar + scale_fill_brewer(palette="Spectral")
gambar