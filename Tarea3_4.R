Script para Tarea 3.4

###Hacer un script a partir de los datos guardados en PracUni3/ejemplosgenerales/data/reads.txt:
### Usar rutas relativas desde donde esta ubicado el script (en general, en bin) !!
###1) Hacer un barplot de reads por muestra
###2) Poner titulos al grafico y a cada eje
###3) Colorear cada libreria cambiando la paleta de colores, usando su alma de data artistas
#4) Escribir el script usando Rmarkdown y guardarlo en html (knit)
#5) Subir los archivos Rmarkdown y .html a su repo de Github
#5) Mandar el link del archivo html para completar la tarea

# Llamar datos
reads<-read.delim("../data/reads.txt")
# Revisar datos
head(reads)

# Definir colores
palette(c("forestgreen", "dodgerblue", "firebrick"))          

#Generar Gráfico
barplot(reads$nreads, col=reads$Library,
        xlab= "Sample",                                       # Agregar eje X
        ylab= "number of reads",                              # Agregar eje Y
        main = "Read of sequenciation")                       # Agregar título

# Agregar leyenda
legend(x="topleft", legend=levels(reads$Library), fill=palette()[1:3])