# Pakete installieren

#install.packages("tidyverse")
#install.packages("psych")
#install.packages("plotrix")
#install.packages("remotes")
#remotes::install_github("statisticsforsocialscience/dataforsocialscience")

# Pakete aktivieren
library(tidyverse)
library(psych)
library(plotrix)
library(dataforsocialscience)

# Daten einlesen
df <- robo_care
table(df$gender)
library(ggplot2)
qplot(df$gender)
median(df$age)
quantile(df$age)
boxplot(df$age)



# eigene Daten
quantile(df$privacy_concerns)
boxplot(df$privacy_concerns)
mean(df$privacy_concerns)
# MAD berechnet den durchscnittlichen Abstand zum Mittelwert (standardmäßig Median)
mad(df$privacy_concerns)
var(df$privacy_concerns)
# die Varianz zerstört dadurch, dass sie quadriert wird, die Einheit. Dadurch wird sie kaum interpretierbar. Die Standardabweichung zieht die Wurzel, um das Problem zu lösen.
SD(df$privacy_concerns)
# Der Standardfehler (SE) teilt die SD durch die Wurzel aus n. Die SD wird also durch die Wurzel der Stichprobengröße geteilt
std.error(df$privacy_concerns)

# Maßnahmenpaket psych sammelt lauter tolle Maße
psych::describe(df)
# trimmed berechnet den Durchschnitt ohne Extremwerte (oberste und unterste 10 %)