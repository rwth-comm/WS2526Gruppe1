-   Annika
-   Maike
-   Anastasiya
-   Henrik
-   Marie

## Setup-Chunk

## Forschungsfrage

“Welche Faktoren beeinflussen die Nutzungsbereitschaft von innovativen
Services der Kommunalverwaltung bei Weitergabe der Daten an private oder
öffentliche Träger?”

## Faktorenraum

<figure>
<img src="Faktorenraum.jpg" alt="Faktorenraum" />
<figcaption aria-hidden="true">Faktorenraum</figcaption>
</figure>

## Validierte Messinstrumente

[Digital
literacy](https://zis.gesis.org/skala/Schauffel-Schmidt-Peiffer-Ellwart-ICT-Self-Concept-Scale-%28ICT-SC25%29?redirect_url=https%253A%252F%252Fzis.gesis.org%252Fsearch%253Fsource%253D%257B%2522query%2522%253A%257B%2522bool%2522%253A%257B%2522must%2522%253A%255B%257B%2522query_string%2522%253A%257B%2522query%2522%253A%2522digital%2520literacy%2522%252C%2522default_operator%2522%253A%2522AND%2522%257D%257D%255D%252C%2522filter%2522%253A%255B%257B%2522term%2522%253A%257B%2522type%2522%253A%2522zis_scales%2522%257D%257D%255D%257D%257D%257D&lang=de)

“General” also I1-5 bleiben drin. “Communicate”: I7, I9 raus. “Proccess
and Store”: I12 weg. “Generate Content”: I15, I17 raus. “Safe
application”: I18 raus. “Solve problems”: I23, I25 raus.

Items, die nicht die Nutzung von digitalen Services der
Kommunalverwaltung beeinflussen, wurden herausgekürzt. Dies umfasst
hauptsächlich kooperative und generative Szenarien, die wir im
Anwendungsfall nicht antizipieren. Die Skala wurde von 25 Items auf 17
Items gekürzt. Es wurde darauf geachtet, dass die Subskalen genug
Substanz (mindestens 3 Items) - und damit ihre Funktionalität behalten.

## Hypothesen

### Unterschiedshypothesen

1.  Männer und Frauen unterscheiden sich in der Nutzungsbereitschaft in
    Szenario A (öffentlicher Dienst).

<!-- -->

    ## 
    ##  Welch Two Sample t-test
    ## 
    ## data:  df_male$SzOeff and df_female$SzOeff
    ## t = 2.7526, df = 342.08, p-value = 0.006228
    ## alternative hypothesis: true difference in means is not equal to 0
    ## 95 percent confidence interval:
    ##  0.09443344 0.56726842
    ## sample estimates:
    ## mean of x mean of y 
    ##  4.091880  3.761029

![](readme_files/figure-markdown_strict/unnamed-chunk-3-1.png)

1.  Männer und Frauen unterscheiden sich in der Nutzungsbereitschaft in
    Szenario B (privatwirtschaftliche Zwecke).

<!-- -->

    ## 
    ##  Welch Two Sample t-test
    ## 
    ## data:  df_male$SzPriv and df_female$SzPriv
    ## t = -0.65447, df = 312.85, p-value = 0.5133
    ## alternative hypothesis: true difference in means is not equal to 0
    ## 95 percent confidence interval:
    ##  -0.3503573  0.1754579
    ## sample estimates:
    ## mean of x mean of y 
    ##  3.119658  3.207108

![](readme_files/figure-markdown_strict/unnamed-chunk-5-1.png)

1.  Die Nutzungsbereitschaft ist bei Szenario A (öffentlicher Dienst)
    höher, als bei Szenario B (privatwirtschaftliche Zwecke).

<!-- -->

    ## 
    ##  Paired t-test
    ## 
    ## data:  df$SzOeff and df$SzPriv
    ## t = 13.833, df = 463, p-value < 2.2e-16
    ## alternative hypothesis: true mean difference is not equal to 0
    ## 95 percent confidence interval:
    ##  0.6237313 0.8302917
    ## sample estimates:
    ## mean difference 
    ##       0.7270115

    ## Ignoring unknown labels:
    ## • fill : "Szenario"

![](readme_files/figure-markdown_strict/unnamed-chunk-9-1.png)

#### Unterschiedshypothese für MANOVA

1.  LandbewohnerInnen und StadtbewohnerInnen unterscheiden sich in der
    Nutzungsbereitschaft in Szenario A (öffentlicher Dienst) und
    Szenario B (privatwirtschaftliche Zwecke).

<!-- -->

    ## 
    ##  MANCOVA
    ## 
    ##  Multivariate Tests                                                             
    ##  ────────────────────────────────────────────────────────────────────────────── 
    ##                              value        F           df1    df2    p           
    ##  ────────────────────────────────────────────────────────────────────────────── 
    ##    Urban    Wilks' Lambda    0.9771934    2.459652      4    848    0.0440538   
    ##  ────────────────────────────────────────────────────────────────────────────── 
    ## 
    ## 
    ##  Univariate Tests                                                                                      
    ##  ───────────────────────────────────────────────────────────────────────────────────────────────────── 
    ##                 Dependent Variable    Sum of Squares    df     Mean Square    F            p           
    ##  ───────────────────────────────────────────────────────────────────────────────────────────────────── 
    ##    Urban        SzOeff                     0.4253409      2      0.2126704    0.1402479    0.8691830   
    ##                 SzPriv                     8.5962508      2      4.2981254    2.5002969    0.0832671   
    ##    Residuals    SzOeff                   644.4656249    425      1.5163897                             
    ##                 SzPriv                   730.5945591    425      1.7190460                             
    ##  ─────────────────────────────────────────────────────────────────────────────────────────────────────

### Zusammenhangshypothesen

1.  Es gibt einen Zusammenhang zwischen Digital Literacy und
    Nutzungsbereitschaft in Szenario A (öffentlicher Dienst).

<!-- -->

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  df$DigLit and df$SzOeff
    ## t = 5.7053, df = 462, p-value = 2.077e-08
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  0.1694784 0.3396517
    ## sample estimates:
    ##       cor 
    ## 0.2565522

    ## `geom_smooth()` using formula = 'y ~ x'

![](readme_files/figure-markdown_strict/unnamed-chunk-12-1.png)

1.  Es gibt einen Zusammenhang zwischen Digital Literacy und
    Nutzungsbereitschaft in Szenario B (privatwirtschaftliche Zwecke).

<!-- -->

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  df$DigLit and df$SzPriv
    ## t = 4.0152, df = 462, p-value = 6.929e-05
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  0.09417119 0.27014507
    ## sample estimates:
    ##       cor 
    ## 0.1836289

    ## `geom_smooth()` using formula = 'y ~ x'

![](readme_files/figure-markdown_strict/unnamed-chunk-14-1.png)

#### Zusammenhangshypothese für multiple lineare Regression

1.  Die Nutzungsbereitschaft von innovativen Services der
    Kommunalverwaltung in Szenario B (privatwirtschaftliche Zwecke) ist
    abhängig von Privacy-Einstellungen und Alter.  
2.  Die Nutzungsbereitschaft von innovativen Services der
    Kommunalverwaltung in Szenario A (öffentlicher Dienst Zwecke) ist
    abhängig von Privacy-Einstellungen und Alter.

service comment (nur so 90 % garantie auf richtigkeit): adjusted R^2
stellt dar, wie viel Prozent der Varianz der abhängigen Variable (den
Variablen) durch die unabhängige Variable erklärt wird. Diese
Betrachtung geht über den Mittelwertsvergleich hinaus. Bsp.: die Varianz
der Nutzungsbereitschaft wird zu x % von Privacy-EInstellungen erklärt.
Das wird durch das “Estimate” berechnet. Sollen Variablen verglichen
werden, müssen die Estimates bereinigt werden (da bspw. Alter immer
höhere Werte hat als eine Skala), betrachtet man die “standadisierten
Estimates”. aus mehreren Variablen setzen sich Modelle zusammen. Das
beste Modell hat die wenigsten Variablen und das größte stand. Estimate.
Wir machen basically ein lineares Gleichungssystem mit den Variablen, um
das Intercept zu berechnen. Das funktioniert nicht perfekt, daher kommt
der Fehlerterm zustande.

## Operationalisierung

future text

## Poweranalyse

<figure>
<img src="power.jpg" alt="Power" />
<figcaption aria-hidden="true">Power</figcaption>
</figure>

antizipierte ProbandInnenanzahl: n=360  
wird für die Poweranalyse halbiert (Gruppenvergleich, daher wird die
Gruppe geteilt)  
Signifikanzniveau (wir sind SozialwissenschaftlerInnen): *α* = 0,05  
Power (1-(4 · *α*)): 0,8  
kleinste Effektstärke, die wir messen können (ausgerechnet):
d=0.2961082  
Poweranalysen, um herauszufinden, wie viele ProbandInnen wir je nach
antizipiertem Effekt brauchen.  
n(d=0.2; “schwach”)=786.8114  
n(d=0.5; “mittel”)=127.5312  
n(d=0.8; “hoch”)=51.04916

## Histogramm Altersverteilung

    ## Warning: Removed 37 rows containing non-finite outside the scale range
    ## (`stat_bin()`).

![](readme_files/figure-markdown_strict/unnamed-chunk-15-1.png)
