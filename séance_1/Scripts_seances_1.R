
#########################################################

# Seances 1

# Manipulation des structures de donn?es

#########################################################

# ! set your working directory
# setwd("....")
# ex:setwd("C:/Users/a.romain.leroux/Documents/Formations_R/iame_club_biostats/club_BioStats_2025/Séances_1_2")

# -------------------------------------------------------
# Vectors
# -------------------------------------------------------

# -------------------------------------------------------
# Create a vector
# -------------------------------------------------------

# vectors of integer, double, character, logical
vecInteger = c( 1,2,3,4,5,6,7,8,9,10 )

vecDouble = c(0.1,0.2,0.3,0.4,0.5)

vecColors = c("red","green","blue")

vecLogicals = c(TRUE, FALSE, TRUE)

vecData = c( data1 = 1, data2 = 2, data3 = 3 )

#c() vector length
vectorLength = length( vecInteger )

# create sequence
seq = seq( from = 1, to = 10, by = 1)
seq = seq( from = 1.5, to = 10.5, by = 1)
seq = seq_along( vecColors )

# repeated values & vectors

repeatedValue = rep( 1, times = 3 )
repeatedValue

repeatedVector = rep( vecInteger , times = 3 )
repeatedElements = rep( seq, each = 3)

rep_len( vecInteger, length.out = 3)
rep_len( vecInteger, length.out = 4)
rep_len( vecInteger, length.out = 5)
rep_len( vecInteger, length.out = 12)

# type of a  vector

# type double
typeof( vec )
# type character
typeof( vecColors )

# type change !
vecColorInteger = c( "red","green","blue", 1,2,3,4,5,6,7,8,9,10 )
vecColorInteger = c( colors, vec )
typeof( vecColorInteger )

# coercion
# convert character to number
# NA due to conversion

# as.double
# as.character

vecColorInteger = as.double( vecColorInteger )

as.character( vecInteger )

# -------------------------------------------------------
# Vector operations and functions
# -------------------------------------------------------

# -----------------------------
# Select vector elements
# -----------------------------

# -------------------------
# position
# -------------------------

# select 5th element
vecInteger[5]

# select 1,3,5th element

indices = c(1,3,5)
vecInteger[indices]

# select  all except the 5th
vecInteger[-c(5)]

# select range 2th to 5th
indice = seq( from = 2, to = 5, by = 1)
vecInteger[indice]

# select all except 2th to 5th
vecInteger[-c(2:5)]

# -------------------------
# value
# -------------------------

vec = c(1,2,3,4,5,5)
indice = which(vec == 5)
vec[indice]

indice = which(vecInteger == 5)
vecInteger[indice]

vecInteger[vecInteger == 5]
vecInteger[vecInteger >= 5]

#criteria selection
indiceMin = 5
indiceMax = 8
indices = (vecInteger >= indiceMin ) & (vecInteger < indiceMax )
vecInteger[ indices ]

vecInteger[vecInteger %in% c(2,5)]

repvecInteger = rep( vecInteger, 5)
repvecInteger[repvecInteger %in% c(2,5)]

## vec boolean nombre true false random

# distributionTRUE = ...
# distributionFALSE = ...
# vecRandomTRUE = rep( TRUE, distributionTRUE)
# vecRandomFALSE = rep( TRUE, distributionFALSE)
# vecRandomBooleans = c( vecRandomTRUE, vecRandomFALSE )

vecLogicals[ vecLogicals == TRUE ]
which( vecLogicals == TRUE  )

##which( vecInteger[vecInteger %in% c(2,5)] )

# la fonction match
# match teste si un element est present dans un vecteur
vecMois = month.name
match( c("Mai","May") , vecMois, nomatch=0)

grepl( "er", vecMois )

# trouver string in string
patientName="138"
patientNames =c("138","666","200")
indice = grepl(patientName,patientNames)
indice = which( indice ==TRUE)
patient = patientNames[indiceMutation]



# =======================================================
# Exercise 1
# =======================================================

# Créer un vecteur x contenant les éléments 1, 4 et 5
# Créer un vecteur y contenant les chiffres  de 1 à 9
# Afficher le 2ème élément de y
# Afficher tous les éléments de y sauf le 2ème
# Afficher les éléments 2 à 4 de y

# =======================================================
x = c(1,4,5)
y = seq(1,9,1)
y[c(2)]
y[-c(2)]
y[c(2:4)]

#Créer un vecteur xy contenant le premier, quatri?me et cinqui?me ?l?ment de y
xy=y[c(1,4,5)]

# -----------------------------
# Functions on vector
# -----------------------------

vec = seq(1,10,1)

vecMin = min( vec )
vecMax = max( vec )

vec=c(10,20,1,50)
inMinVec = which( vec == min( vec ) )

# --------------------------------------
# Function	& Description
# --------------------------------------

# round()	Round numeric values
# min(), max()	Minimum and maximum
# mean(), median()	Arithmetic mean and median
# sum()	Sum
# sd(), var()	Standard deviation and variance
# sqrt()	Square root

# head() show the first elements
# summary()	Numerical summary

# sort()	Sort a vector
# rev()	reverse a vector
# table()	see occurrence of values
# unique() see unique  values
# duplicated() see unique  values

vecInteger = c(1,3,5,2,10,3)

vecIntegerSorted = sort( vecInteger )

vecIntegerRev = rev( vecInteger )

vecIntegerCount = table( vecInteger )

vecIntegerUnique = unique( vecInteger )

vecIntegerDuplicated = duplicated( vecInteger )

vecInteger[which( duplicated( vecInteger ) ) ]

# --------------------------------------------------------
# list / boucles / indices / vecteurs de données
# --------------------------------------------------------

## Examples sur les lists
# Access List Elements in R
# Modify a List Element in R
# Add Items to R List
# Remove Items From a List in R (NULL)
# Length of R List
# Loop Over a List
# Check if Element Exists in R List

##  list : par indice et par nom d'élements
vec1 = seq(1,6,1)
vec2 = seq(6,7,1)

# by indices
listVectors = list( vec1, vec2 )
listVectors[[1]]
listVectors[[2]]

# by names
listVectors = list( "vec1" = vec1, "vec2" = vec2 )
listVectors$vec1
listVectors[["vec1"]]
listVectorsNames = names( listVectors )

vec1Values = listVectors$vec1
vec1Values[1]
vec1Values[c(1,4,6)]
indicesVec1 = which(vec1Values<1)
vec1Values[ indicesVec1 ]

# boucles

for ( i in 1:6 )
{
  print(i)
}

for ( i in c(1,2,5,6) )
{
  print(i)
}


# --------------------------------------
# loop and access and condition
# --------------------------------------

# --------------------------------------
# exemple 1
# --------------------------------------

for ( listVectorName in listVectorsNames )
{
  print( listVectors[[listVectorName]] )
}

# --------------------------------------
# exemple 2
# --------------------------------------

for ( listVectorName in listVectorsNames )
{
  vector = listVectors[[listVectorName]]

  if ( length( vector ) > 3 )
  {
    # vector
    resultsVec = vector
  }
}

print( resultsVec )

# --------------------------------------
# exemple 3
# --------------------------------------

resultsList = list()

for ( listVectorName in listVectorsNames )
{
  vector = listVectors[[listVectorName]]

  if ( length( vector ) > 3 )
  {
    resultsList[[listVectorName]] = vector
  }
}

print( resultsList )
length(resultsList)
lengths(resultsList)

# --------------------------------------
# exemple 4
# --------------------------------------

dataAnimaux = list("animal1"=18,"animal2"=20,"animal3"=15)
poidsAnimaux = unlist( dataAnimaux )
indicePoidsAnimaux = which( poidsAnimaux > 15 )
poidsAnimauxEtude = poidsAnimaux[ indicePoidsAnimaux ]
namesAnimauxEtude = names( poidsAnimauxEtude )

print( namesAnimauxEtude )
print( poidsAnimauxEtude )

# add element
newAnimal1 = c("animal4"=22)
newAnimal2 = c("animal5"=23)
newAnimal = c( newAnimal1, newAnimal2 )
dataAnimaux = append( dataAnimaux, newAnimal )

dataAnimaux = list("animal1"=18,"animal2"=20,"animal3"=15)

animal4 = c("animal4"=22)
animal5 = c("animal5"=23)
newAnimal = list( animal4, animal5 )
names( newAnimal ) = c("animal4","animal5")

# create new list of animals
for( nameNewAnimal in names( newAnimal ) )
{
  if ( newAnimal[[nameNewAnimal]] > 22)
  {
    dataAnimaux = append( dataAnimaux, newAnimal[[nameNewAnimal]] )
  }
}

print( dataAnimaux )

# --------------------------------------
# loop, dataframe, list
# --------------------------------------

data = mtcars

dataMtcars = list( "data1" = mtcars,
                   "data2" = mtcars,
                   "data3" = mtcars,
                   "data4" = mtcars,
                   "data5" = mtcars)

modelName = "Merc"
numberCylinderCar = 8

numberOfCylinders = list()


for( nameData in names( dataMtcars ) )
{
  # on récupère la donnée
  dataMtcarsTmp = dataMtcars[[nameData]]

  # names of the car
  carNames = rownames( dataMtcarsTmp )

  # on travail sur la donnée

  # selection cylindre, criteria = numberCylinderCar
  numberOfCylindersTmp = data.frame( "cylinder" = dataMtcarsTmp[["cyl"]], "carName" = carNames )

  indiceCylinder = which( numberOfCylindersTmp[["cylinder"]] >= numberCylinderCar )

  numberOfCylindersTmp = numberOfCylindersTmp[indiceCylinder,]

  # selection model
  # grep: permet de chercher une cha?ne de caract?re
  indModelName = grep( modelName, numberOfCylindersTmp$carName )

  numberOfCylindersTmp = numberOfCylindersTmp[indModelName,]

  # on stock la donnée
  numberOfCylinders[[nameData]] = numberOfCylindersTmp
}

# --------------------------------------
# function
# --------------------------------------

modelAndCylinder = function( dataMtcars, modelName, numberCylinderCar )
{
  numberOfCylinders = list()

  for( nameData in names( dataMtcars ) )
  {
    # on récupère la donnée
    dataMtcarsTmp = dataMtcars[[nameData]]

    # names of the car
    carNames = rownames( dataMtcarsTmp )

    # on travail sur la donnée

    # selection cylindre: criteria = numberCylinderCar
    numberOfCylindersTmp = data.frame( "cylinder" = dataMtcarsTmp[["cyl"]], "carName" = carNames )

    indiceCylinder = which( numberOfCylindersTmp[["cylinder"]] == numberCylinderCar )

    numberOfCylindersTmp = numberOfCylindersTmp[indiceCylinder,]

    # selection model
    indModelName = grep( modelName, numberOfCylindersTmp$carName )

    numberOfCylindersTmp = numberOfCylindersTmp[indModelName,]

    # on stocke la donnée
    numberOfCylinders[[nameData]] = numberOfCylindersTmp

  }
  return( numberOfCylinders )
}


modelName = "Mazda"
numberCylinderCar = 6
numberOfCylinders = modelAndCylinder( dataMtcars, modelName, numberCylinderCar )

print( numberOfCylinders )

# --------------------------------------
# !! Pipe-line
# --------------------------------------

# données traitées = fonction( données brutes )
# stats = fonction( données traitées  )
# plot = fonction( stats )


# =======================================================
# Exercices
# =======================================================

lst <- list("a","b","c","d","e","f")

class(lst[[1]])

# A list of integers
lst <- list(1, 2, 3)

# A list of characters
lst <- list("red", "green", "blue")

# A list of mixed datatypes
lst <- list(1, "abc", 1.23, TRUE)
lst <- list(1, "abc", 1.23, TRUE)
lst <- list(1, "abc", 1.23, TRUE, 1:3)

# extract 2nd element
# extract 5th element

# select 1st, 3rd and 5th element
lst[c(1,3,5)]


# flatten
lst <- list(5, 10, 15, 20, 25)
mean(unlist(lst))


# ? # question: find indice and number of the duplicated

# aggregate vector
# by column and by row

vec1 = 1:5
vec2 = 6:10

rbind(vec1,vec2)
cbind(vec1,vec2)

# -----------------------------
# Missing values
# -----------------------------

y = c(1:4,NA,rep(0.8,2),NA)

# test missing value
is.na(y)

# remove missing value
y[is.na(y)==F]
y[!is.na(y)]

# remove missing value and keep y>1
y[!is.na(y) & y>1]

# =======================================================
# Exercise
# =======================================================

#Créer un vecteur vec de taille 10 avec la commande rnorm(10)).
#Calculer le nombre d'éléments positifs de vec.
#Calculer yvec dont les éléments sont composés du logarithme des éléments de vec.
#Créer le vecteur vec2 avec seulement les éléments non manquants de yvec.
#Afficher le nombre d'éléments de vec2.

# =======================================================


vec = rnorm(10)
vec
length(vec[vec>0])
yvec = log(vec)
yvec
vec2 = yvec[!is.na(yvec)]
vec2
length(vec2)

# -----------------------------
# Matrix
# -----------------------------

# create from a vector
vecInteger = c(1,2,3,4,5,6,7,8,9,10)

M = matrix( vecInteger, nrow = 5, ncol = 2)
M = matrix( vecInteger, ncol = 2, byrow = TRUE )

# dimensions

dim(M)

# number of row
dim(M)[1]
nrow(M)

# number of column
dim(M)[2]
ncol(M)

# Matrix functions

# aggregate data
x = 1:4
y = x**2
z = x**3

mat = rbind(x,y,z)
mat

mat = cbind(x,y,z)
mat

#select element by indice
mat[1,]
mat[,2]
mat[4,3]
mat[c(1,2,4),3]
mat[ mat[,1] > 14, ]

# select by name
colnames( mat ) = c("col1","col2","col3","col4")
mat[,"col3"]

# diagonal
Mdiag = diag( mat )

# identity
identityMatrix = diag( 1, 10 )

# transpose
matTranspose = t( mat )

# multiplication
mat = mat %*% matTranspose

# =======================================================
# EXERCICE
# =======================================================

#Créer une matrice à 3 lignes et 5 colonnes ayant pour éléments 15 chiffres entre 1 et 20
#Extraire la sous-matrice form?e par les 2 dernières lignes et les colonnes 2 et 4

x=1:15
dim(x)=c(3,5)
x
x[2:3,c(2,4)]

# -------------------------------------------------------
# Dataframe
# -------------------------------------------------------

#format d'un dataframe
#Les data frames ressemblent ? des matrices, mais
#sont beaucoup plus flexibles. Ils sont utilises dans la plupart
#des techniques statistiques a disposition dans S-PLUS

#A data frame in R is a list, with
#each component of the list being a vector corresponding to a column in our
#“matrix” of data.

#exemples de jeux de donnees structures disponibles sous R :
#jeu de donnees pressure sur la relation entre la temperature en degres et la pression en millimetres de mercure

pressure
is.data.frame(pressure) #TRUE

# Ecriture de fichiers de donnees
# import data
dataAirquality = airquality

# write data csv and txt
write.csv( dataAirquality, file='airquality.csv')
write.table( dataAirquality, file='airquality.txt')

# read data csv and txt
data = read.csv('airquality.csv')
data = read.table('airquality.txt',sep='')

#visualier les premieres lignes
names(pressure)
head(pressure)
colnames(pressure)

#pour recuperer une variable on utilise le caractere $
pressure$temperature
pressure$pressure

#referencer la colonne comme pour une matrice
pressure[,1]

#appeler par le nom de la colonne
pressure[,"temperature"]

#Les 2 premiers elements de temperature
pressure$temperature[1:2]
pressure[1:2,1]
pressure[1:2,"temperature"]

# merge dataframe
temperatureMerge = merge(x = pressure, y = pressure, by = "temperature")
pressureMerge = merge(x = pressure, y = pressure, by = "pressure")

# -----------------------------------
# Extraction de donnees
# -----------------------------------

# remove column
tmp = subset(pressure, select = -c(temperature))

#On utilise la base airquality, disponible dans R
#Si l'on veut extraire la sous-base pour laquelle la temperature est > 92

airquality

air1 = subset( airquality, Temp > 92 )
air1

air1 = airquality[airquality$Temp>92,]
air1

# -----------------------------------
# Transformation de donnees
# -----------------------------------

#Pour ajouter dans air1 la variable logTemp, log de la temperature, on a plusieurs choix


air1$logTemp = log(air1$Temp)
#ou
air1["logTemp"] = log(air1["Temp"])
#ou
air1=cbind(air1,logTemp=log(air1$Temp))

#Creer une variable indicatrice a l'aide de la fonction ifelse
#creer la variable ftemp qui vaut 1 si Temp > 94, 0 sinon

air1$ftemp=ifelse( air1$Temp>94, 1, 0)

# order data
air1[order(air1$Wind ),]

# ============================
# EXERCICE
# ============================

# Creer a partir de air1 le dataframe air2, où :
# 1) la variable Ozone n'est pas manquante
# 2) la temperature est  =< 94F

# Ajouter une colonne a air3 representant une variable valant 1 si :
# 1) on est dans les 6 premiers mois de l'annee
# 2) la temperature est superieure a 80F
#et 0 sinon.

# Ordonner air1 selon la valeur de Temp
# Ordonner air1 selon la valeur de Month et Day
# Rajouter une colonne avec le nom du mois a air1

# ============================


air2 = air1[!is.na(air1$Ozone) & air1$Temp<=94,]
air2

# Creer a partir de airquality le dataframe air3, où la variable
# Ozone n'est pas manquante.
air3 = airquality[!is.na(airquality$Ozone),]
air3[1:10,] # pour voir les 10 premières lignes de air3
head(air3) # pour voir les 6 premières lignes de air3

# Ajouter une colonne a air3 representant une variable valant 1 si :
# 1) on est dans les 6 premiers mois de l'annee
# 2) la temperature est superieure a 80F
#et 0 sinon.

air3$indMonthsAndTemp = ifelse( air3$Month<7 & air3$Temp>80,1,0 )

# *** ajout exo 5
# Pour ordonner air1 selon la valeur de Temp
# Pour ordonner air1 selon la valeur de Month et Day
# Rajouter une colonne avec le nom du mois a air1

air1[order(air1$Temp),]

#On peut trier sur plusieurs variables :
air1[order(air1$Month,air1$Day),]

#Application : rajouter une colonne avec le nom du mois a air1
NamMon=month.name[match(air1$Month,1:12)]
transform(air1,NamMon=NamMon)

# ============================
# EXERCICE
# ============================

#On vous donne un releve des profondeurs de glace relevees dans une station meteo avec les dates correspondantes :

dates=c("1971-01-20","1971-01-28","1971-02-03",
        "1971-02-11","1971-02-18","1973-01-17","1973-01-25",
        "1973-01-31","1973-02-17","1974-01-07","1974-01-10",
        "1974-01-15","1974-01-22","1974-01-29","1974-02-05",
        "1974-02-12","1974-02-19")

mesure=c(64,69,71,71,71,32,42,28,32,18,25,29,34,36,42,50,61)

# 1) Extraire de ce vecteur la premiere incidence de chaque
# profondeur mesuree, en utilisant la fonction match.

# 2) Trier les mesures de glace dans l'ordre croissant et creer une
# matrice avec comme premiere colonne les mesures triees et
# comme deuxieme colonne les dates correspondantes
# (necessite un tri simultane)



dates[match(unique(mesure),mesure)]
mat=cbind(mesure=mesure,dates=dates)
mat=mat[order(mat[,1]),]


################################################################################


# pour la suite séances 2,3,4
#-----------------------------------
# Statistiques descriptives
#-----------------------------------

x=c(4,6,2,9,0,1,2)
x

#moyenne et médiane
mean(x)
median(x)

#valeurs manquantes
x[3]=NA
mean(x)
median(x)
mean(x,na.rm=T)
median(x,na.rm=T)

#variance et écart-type
x=c(4,6,2,9,0,1,2)
var(x)
sd(x)
sqrt(var(x))
x[3]=NA
var(x,na.rm=T)

#corrélation
x=c(4,6,2,9,0,1,2)
y=c(9,2,5,1,6,0,3)
cor(x,y)
cor(x,y,method="spearman")
cov(x,y)

#quantiles
quantile(x)
dec=seq(0,1,0.1)
dec
quantile(x,dec)

#fonctions appliquées au tableau ou dataframe
x=matrix(seq(1:100),ncol=4)
quantile(x) #ne calcule pas les statistiques d'un tableau ou d'un data.frame colonne par colonne mais le considère comme un grand vecteur
#pour préserver cette structure :
summary(x) #donne un résumé quantitatif

#fonction apply
apply(x,2,quantile)
apply(x,2,quantile,c(0.05,0.95))

#Une vue d'ensemble de la structure d'un jeu de données est fournie par str
str(airquality)

# ----------------------------
# EXERCICE
# ----------------------------

# calcul de moyenne et variance

x=matrix(1:100,ncol=4)

#Moyenne, variance :
mean(x)
apply(x,2,mean)
apply(x,2,var)
apply(x[1:3,],1,mean)
apply(x[1:3,],1,var)

# corrélation sur des données

?ToothGrowth
head(ToothGrowth)
str(ToothGrowth)
mat=matrix(ToothGrowth[,1],ncol=6)
cor(mat)


