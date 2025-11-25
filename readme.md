-   Annika
-   Maike
-   Anastasiya
-   Henrik
-   Marie

## Forschungsfrage

“Welche Faktoren beeinflussen die Nutzungsbereitschaft von innovativen
Services der Kommunalverwaltung?”

## Faktorenraum

<figure>
<img src="Faktorenraum.jpg" alt="Faktorenraum" />
<figcaption aria-hidden="true">Faktorenraum</figcaption>
</figure>

## Validierte Messinstrumente

[Technikakzeptanz aus
zis](https://zis.gesis.org/skala/Neyer-Felber-Gebhardt-Kurzskala-Technikbereitschaft-%28TB,-technology-commitment%29?redirect_url=https%253A%252F%252Fzis.gesis.org%252Fsearch%253Fsource%253D%257B%2522query%2522%253A%257B%2522bool%2522%253A%257B%2522must%2522%253A%255B%257B%2522query_string%2522%253A%257B%2522query%2522%253A%2522technikakzeptanz%2522%252C%2522default_operator%2522%253A%2522AND%2522%257D%257D%255D%252C%2522filter%2522%253A%255B%257B%2522term%2522%253A%257B%2522type%2522%253A%2522zis_scales%2522%257D%257D%255D%257D%257D%257D&lang=de)

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

1.  LandbewohnerInnen und StadtbewohnerInnen unterscheiden sich in der
    Nutzungsbereitschaft von innovativen Services der
    Kommunalverwaltung.

<!-- -->

    Das klingt so als würden Sie aus den vier AVs im Fragebogen eine machen, korrekt?

1.  Männer und Frauen unterscheiden sich in der Nutzungsbereitschaft von
    innovativen Services der Kommunalverwaltung.
2.  Die Nutzungsbereitschaft ist bei Szenario A (öffentlicher Dienst)
    höher, als bei Szenario B (privatwirtschaftliche Zwecke).

#### Unterschiedshypothese für ANOVA

1.  Wohnort und Bildung haben einen Einfluss auf die
    Nutzungsbereitschaft von innovativen Services der
    Kommunalverwaltung.

<!-- -->

    Das ist handwerklich einwandfrei. Später in der Auswertung wird ihnen hier aber höchstwahrscheinlich auffallen, dass die Stichprobe hierfür nicht geeignet ist. Wenn Wohnort 3 Stufen hat und Bildung auch, haben Sie 3x3 = 9 verschiedene Gruppen (niedriger Bildungsstand Land, mittlerer Bildungsstand Land, usw.). Die Chance, dass eine dieser Gruppen leer ist, ist groß. Sie können die Hypothese so lassen, aber bitte stellen Sie sich drauf ein, dass Sie eine der Variablen umgruppieren müssen als z.B. Hochschulreife vs. keine Hochschulreife. 

### Zusammenhangshypothesen

1.  Es gibt einen Zusammenhang zwischen der Technikaffinität und der
    Nutzungsbereitschaft von innovativen Services der
    Kommunalverwaltung.
2.  Es gibt einen Zusammenhang zwischen Digital Literacy und
    Nutzungsbereitschaft von innovativen Services der
    Kommunalverwaltung.
3.  Es gibt einen positiven Zusammenhang zwischen KI-Vertrauen und
    Nutzungsbereitschaft von innovativen Services der
    Kommunalverwaltung.

#### Zusammenhangshypothese für multiple lineare Regression

1.  Die Nutzungsbereitschaft von innovativen Services der
    Kommunalverwaltung ist abhängig von Einkommen, Bildungsabschluss und
    Jobstatus.

<!-- -->

    Das passt alles so. Nutzungsbereitschaft von digitalen Services fast immer als AV zu nehmen kann Ihnen aber nach p-hacking ausgelegt werden (Erklärung später). Für diese Woche passt das, ich würde Ihnen aber empfehlen, die Hypothesen später nochmal anzupassen und z.B. zwischen den Szenarien zu varriieren. 
