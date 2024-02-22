# Implementation Guide für Bluttransfusionen

Dieses Repository wird zur Erstellen des FHIR Implementation Guides für das Bluttransfusionen verwendet.

Der Implmentation Guide Draft ist auf GitHub öffentlich erreichbar

https://build.fhir.org/ig/ReMeDi-Blut/remedi_ig/index.html 


## FHIR Data Processing

In dem Ordner [FHIR Data Processing](./fhir_data_processing) fidnen sich nützliche Python Skripte für das Verarbeiten von FHIR Daten. Eine der Hauptufunktionen in das Konvertieren von Ressourcen zu einem Import fertigem Bundle 

## FHIR ShortHand 

Die Profile werden hauptsächlich mit FHIR Shorthand (FSH) erstellt.

Informationen, wie man FSH installiert finden sich in der [FSH School Doc](https://fshschool.org/docs/).

Weitere hilfreiche Tool fidnen sich im [FSH GitHub](https://github.com/FSHSchool)


### Projekt SetUp

 Das wurde bereist mit `sushi init` erstellt.

 Änderungen werden in dem `input` ordner vorgenommen.\
 Wenn die Änderungen vorgenommen wurde, können die Profile etc. mit `sushi .` generiert werden. Diese finden sich dann in dem ORdner `fsg-generated`


## Deployment

Der IG wird über dem FHIR Auto IG Builder auf GitHub veröffentlicht.\
Bei jedem Commit in einer Branch wird der IG aktualisiert.

Der IG ist unter https://build.fhir.org/ig/ReMeDi-Blut/remedi_ig/index.html erreichbar 