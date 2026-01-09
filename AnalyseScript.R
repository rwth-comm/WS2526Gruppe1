# Pakete aktivieren ----
library(tidyverse)
library(psych)
source("qualtricshelpers.R")

# Daten einlesen ----
raw <- load_qualtrics_csv("data/echteDaten.csv")

# Rohdaten filtern ----
raw %>% 
  filter(Progress == 100) %>% 
  filter(Status == 0) -> raw

# Überflüssige Variablen entfernen ----
raw.short <- raw[,c(6,9,19:24,40:45,53:70,92:97,101:102)]

# Variablen umbenennen ----
generate_codebook(raw.short, "data/echteDaten.csv", "data/codebook.csv")
codebook <- read_codebook("data/codebook_final.csv")
names(raw.short) <- codebook$variable

# Korrekte Datentypen zuordnen

raw.short$Age %>% 
  as.numeric() -> raw.short$Age

raw.short$Gender %>% 
  recode(`1` = "Männlich", `2` = "Weiblich", `3` = "Divers") %>% 
  as.factor() -> raw.short$Gender

raw.short$Edu %>% 
  ordered(levels = c(1:5),
          labels = c("(noch) kein Schulabschluss",
                     "Hauptschulabschluss",
                     "Realschulabschluss",
                     "Abitur",
                     "Hochschulabschluss")) -> raw.short$Edu

raw.short$Jobstatus %>% recode(`1` = "In Ausbildung", 
                               `2` = "Arbeitnehmer/in", 
                               `3` = "Arbeitgeber/in", 
                               `4` = "Selbstständig", 
                               `5` = "Beamter/-in", 
                               `6` = "Im Ruhestand",
                               `7` = "Hausmann/-frau",
                               `8` = "Sonstiges (bitte angeben)")%>% 
  as.factor() -> raw.short$Jobstatus

# Qualitätskontrolle ----

# Skalenwerte berechnen ----

schluesselliste <- list(
  AD = c("ad_1", "ad_2", "ad_3"),
  Priv = c("priv_1", "priv_2", "priv_3"),
  DigLit = c("digLit_1", "digLit_2", "digLit_3", "digLit_4", "digLit_5", "digLit_6", "digLit_7", "digLit_8", "digLit_9", "digLit_9", "digLit_10", "digLit_11", "digLit_12", "digLit_13", "digLit_14", "digLit_15", "digLit_16", "digLit_17", "digLit_18"),
  SzOeff = c("szOeff_1", "szOeff_2", "szOeff_3"),
  SzPriv = c("szPriv_1", "szPriv_2", "szPriv_3")
)

scores <- scoreItems(schluesselliste, items = raw.short, min = 1, max = 6)

scores$alpha

data<- bind_cols(raw.short, scores$scores)

# Daten exportieren ----
write_rds(data, "data/data.rds")


# Poweranalyse: Wir suchen die Effektstärke ----
pwr::pwr.t.test(n = 180, sig.level = 0.05 , d = NULL, power = 0.8)

# Poweranalyse: Wir suchen die notwendigen Stichprobengrößen je nach antizipiertem Effekt
# kleiner Effekt
pwr::pwr.t.test(n = NULL, sig.level = 0.05 , d =0.2, power = 0.8)
393.4057*2
pwr::pwr.t.test(n = NULL, sig.level = 0.05 , d =0.5, power = 0.8)
63.76561*2
pwr::pwr.t.test(n = NULL, sig.level = 0.05 , d =0.8, power = 0.8)
25.52458*2
