t <- function() {
  e1 <- new.env(parent = baseenv())
  e2 <- new.env(parent = baseenv())
  e3 <- new.env(parent = baseenv())
  e4 <- new.env(parent = baseenv())
  e5 <- new.env(parent = baseenv())

assign("x",
       c(1:1000),
       envir = e1)

assign("x", 
       c(1:1000), 
       envir = e2)

assign("x", 
       c(1:1000), 
       envir = e3)

assign("x", 
       c(1:1000), 
       envir = e4)

assign("x", 
       c(1:1000), 
       envir = e5)

k <- function() {
  get("x", envir = e1)
  setwd("//vdiprofile/up$/st553-13/Desktop/Lab4")
  x <- read.table("11.txt",header = FALSE)
  
  get("x", envir = e2)
  setwd("//vdiprofile/up$/st553-13/Desktop/Lab4")
  x <- read.table("22.txt",header = FALSE)
  
  get("x", envir = e3)
  setwd("//vdiprofile/up$/st553-13/Desktop/Lab4")
  x <- read.table("33.txt",header = FALSE)
  
  get("x", envir = e4)
  setwd("//vdiprofile/up$/st553-13/Desktop/Lab4")
  x <- read.table("44.txt",header = FALSE)
  
  get("x", envir = e5)
  setwd("//vdiprofile/up$/st553-13/Desktop/Lab4")
  x <- read.table("55.txt",header = FALSE)
}
boxplot(c(0,1000))
for(b in c(get("x", envir = e1),
           get("x", envir = e2),
           get("x", envir = e3),
           get("x", envir = e4),
           get("x", envir = e5),)) 
  boxplot(b, 0,1, add = T)

df <- data.frame(
  get("x", envir = e1),
  get("x", envir = e2),
  get("x", envir = e3),
  get("x", envir = e4),
  get("x", envir = e5)
)
print(df)
}

