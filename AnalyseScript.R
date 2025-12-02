library(tidyverse)
library(psych)
source("qualtricshelpers.R")

raw <- load_qualtrics_csv("data/datacleaning_Beispieldaten.csv")


raw <- filter(raw, Progress == 100)

raw.short <- raw[,c(6,9,18:54)]

dput(names(raw.short))

names(raw.short) <- c("Duration", "ResponseId", "Age", "Gender", "Edu", "JobType", 
                      "bf_1n", "bf_2", "bf_3n", "bf_4n", "bf_5n", 
                      "bf_6", "bf_7n", "bf_8", "bf_9", "bf_10", 
                      "ati_1", "ati_2", "ati_3n", "ati_4", "ati_5", 
                      "ati_6n", "ati_7", "ati_8n", "ati_9", 
                      "wrfq_1", "wrfq_2", "wrfq_3", "wrfq_4", "wrfq_5", 
                      "wrfq_6", "wrfq_7", "wrfq_8", "wrfq_9", 
                      "svi_1n", "svi_2n", "svi_3", "svi_4n", "svi_5")

raw.short$age <- as.numeric(raw.short$age)
raw.short$gender <- as.factor(recode(raw.short$gender,
                           `1` = "männlich", `2` = "weiblich", `3` = "divers"))
raw.short$edu <- ordered(raw.short$edu, levels=c(1:5),
                        labels = c("Haupt-oder Realschulabschluss",
                                    "Fach-/Hochschulreife (Abitur)",
                                    "Ausbildung",
                                    "Hochschulabschluss",
                                    "Promotion"))
raw.short$ANAG <- as.factor(recode(raw.short$ANAG,
                                  `1` = "In Ausbildung / Studium", 
                                  `2` = "Arbeitnehmer/-in und Studierende/-r", 
                                  `3` = "Arbeitnehmer/-in", 
                                  `4` = "Arbeitgeber/-in", 
                                  `5` = "Selbstständig ohne Mitarbeiter", 
                                  `6` = "Rentner/-in"))
# service comment: bei uns heißt die Variable JobType ANAG (siehe Fragebogen)

schluesselliste <- list(
  BF_extraversion = c("-bf_2n", "bf_6"),
  BF_Agreeableness = c("bf_2", "-bf_7n"),
  BF_Openness = c("-bf_5n", "bf_10"),
  BF_Neuroticism = c("-bf_4n", "bf_9"),
  BF_Concientiousness = c("-bf_3n", "bf_8"),
  ATI = c("ati_1", "ati_2", "-ati_3n", "ati_4", "ati_5", "-ati_6n", "ati_7", "-ati_8n", "ati_9"),
  PRO = c("wrfq_1", "wrfq_2", "wrfq_3", "wrfq_4", "wrfq_9"),
  PRE = c("wrfq_5", "wrfq_6", "wrfq_7", "wrfq_8"),
  SVI = c("svi_3", "svi_5", "-svi_1n", "-svi_2n", "-svi_4n")
)

# scores <- scoreItems(schluesselliste, items = raw.short, min = 1, max = 6)
# habe das auskommentiert weil der bei mir nur noch buggt, vllt stimmt was mit den packages nicht oder so
