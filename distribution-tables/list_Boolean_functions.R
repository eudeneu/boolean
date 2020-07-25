#########
# (c) 2013
# list_Boolean_functions.R 
#
# prints raw data for n-variable Boolean functions lexicographically (n<5)
#   * Truth Table 
#   * Algebraic Normal Form 
#   * Algebraic Degree
#   * Nonlinearity
#   * Correlation Immunity
#   * Algebraic Immunity
#   * Walsh Transform 
# 
#########
library(boolfun)  # CRAN Repository -  "Cryptographic Boolean Functions With R, by F Lafitte et al, Royal Military Academy, The R Journal, Vol. 3 (1), 2011" [at] 'https://cran.r-project.org/web/packages/boolfun/index.html'

for(i in 0:2^(2^n)-1){ #unfeasible loop for n>4 with R
    f<- BooleanFunction(toBin(i, 2^n))
    write(c(tt(f),anf(f),deg(f),nl(f),ci(f),ai(f),unique(sort(abs(walshTransform(tt(f))))),table(abs(walshTransform(tt(f))))),,,append=TRUE)}


