library(tidyverse)
library(dataforsocialscience)
library(psych)

df <- robo_care

# service comment: dieses Skript könnte bei der Klausurvorbereitung helfen! 

## Übung 1: Histogram und Density-Plot ----
# Mögliche Variablen: cse, diff_pref, technical_knowledge, privacy_concerns, automation_tendency, care_experience
meine_variable <- df$privacy_concerns
hist(meine_variable, breaks =19)
plot(density(meine_variable))

# service comment: der Befehl "breaks" gibt an, wie viele Säulen im Histogramm dargestellt werden sollen. Theoretisch können dort alle Werte angegeben werden, aber R lässt nicht alle zu. 

## Übung 2: Dichtefunktion mehrerer Variablen ----

plot(density(meine_variable), col = "red")
lines(density(df$technical_knowledge), col = "blue")
lines(density(df$cse), col = "green")

# service comment: Mit "lines" können weitere Graphen in einen Plot ergänzt werden. Die erste Variable gibt die Achsen vor.

## Übung 3: Binomialverteilung, Poissonverteilung, Normalverteilung ----

mybinom <- rbinom( n = 293, size = 10, prob = 0.5)
mybinom
hist(mybinom)
plot(density(mybinom))

# service comment: Binomialverteilungen können nur ganzzahlige Ereignisse enthalten

mypoiss <- rpois( n = 293, lambda = 3)
mypoiss
hist(mypoiss)
plot(density(mypoiss))

# service comment: mehrere Abbildungen und Grafiken können geöffnet werden, alle durchgeführten bleiben in "Plots" erhalten. Mit den blauen Pfeilen unter "Files" kann man navigieren

mynorm <- rnorm( n = 293, mean = mean(meine_variable), sd = sd(meine_variable))
mynorm
hist(meine_variable)
hist(mynorm)

plot(density(meine_variable))
lines(density(mynorm), col = "red")

# service comment: mit der roten Linie (nv) wird abgeglichen, ob die Variable normalverteilt ist. Man kann nur mit dem Auge vergleichen. 

## Übung 4: Z-Transformation ----

meine_z_standardisierte_variable <- (meine_variable - mean(meine_variable)) / sd(meine_variable)
plot(density(meine_variable))
plot(density(meine_z_standardisierte_variable))

# service comment: Bei der Z-Transformation  wird durch die Standardabweichung geteilt (Strecken / Stauchen). Der Mittelwert ist bei Null (Verschieben). Die auf x abgebildeten Werte sind die jeweiligen Standardabweichungen. Es ist aber kontextabhängig, ob sich das Rechnen mit der Z-Transformation lohnt, oder ob man andere Tests verwenden sollte.

## Übung 5: Visueller Vergleich Variable und Normalverteilung ----

plot(density(meine_variable), col = "red") 
lines(density(mynorm), col = "blue")

## Übung 6: Binärer Geschlechtervergleich im Densityplot ----

df_male <- filter(df, df$gender == "male")
df_female <- filter(df, df$gender == "female")

plot(density(df_male$cse), col = "blue")
lines(density(df_female$cse), col = "red")

# service comment: hier kann visuell schon abgeschätzt werden, ob ein Unterschied vorliegt (hier lohnt sich ein t-Test! Wir wissen sogar schon die Richtung und mehr als "nur" den Mittelwert)