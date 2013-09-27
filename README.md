# Převod dat České obchodní inspekce do RDF

Převod do RDF je proveden pomocí mapování CSV odvozených od Excelových souborů České obchodní inspekce (ČOI) v nástroji [tarql](https://github.com/cygri/tarql).
Tarql jako svůj vstup bere CSV soubor a SPARQL mapování (v souboru `transformation.rq`).

## Použití

```
export TARQL_HOME=/cesta/k/tarql/
cd cesta/ke/slozce/se/soubory
../convert.sh soubor.csv
```

## Problémy s daty

* Mezery v názvech sloupců
* Data neobsahují sankce za rok 2013?
