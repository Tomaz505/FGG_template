# PODLOGA ZA ZAKLJUČNA DELA NA FGG
Pripravljena osnova za zaključna dela na FGG. Jaz uporabljam \TeXLive distribucijo.


## Osnovni podatki
 - V **main.tex** vnesi podatke avtorja, naslova, leta, itd...
 - V **Sec/0_biblio_zakljucna.tex** moraš ročno vnesti naslov dela, če ta sega čez več vrstic.
 - V **Sec/0_biblio_zakljucna.tex** popravi stopnjo, in smer študija.
 - V **Sec/0_biblio_zakljucna.tex** napišeš zahvalo, ključne besede in izvleček (tudi v angleščini).
 - V **output.xmpdata** popravi podatke avtorja in dela.

## Pisanje
Podloga je zasnovana tako, da v mapo **Sec** dodajaš posamezne dele besedila v datoteke s končnico **.tex**. Slike in priloge dodajaj v mapo **Img**.
Ko z delom zaključuješ popravi števila strani, preglednic, slik itd. v **Sec/0_biblio_zakljucna.tex**.

### Sestavljanje **main.pdf**
Če uporabljaš IDE kot je VSC ali Overleaf, lahko uporabiš gumbe za sestavljanje .pdf datoteke. Pri tem moraš biti pozoren saj je ponekod potrebno programu povedati katera datoteka je glavna.
V ukazni vrstici (ko se nahajaš v mapi TeX) .pdf sestaviš z ukazi `pdflatex main` in `bibtex main`. Za sestavo datoteke iz nič moraš izvesti 
```
pdflatex main
bibtex main
pdflatex main
pdflatex main
```
Možna je tudi uporaba ukaza `make`, ki izvede ukaze v **makefile**.
Ta ne deluje na WIndowsovem PowerShellu, lahko se pa na računalnih inštalira **GIT bash
**, ki ta ukaz izvede brez napak.

## Potrebni popravki
 - Razmik med elementi kazala.
 - Slog naslovov.
 - Navajanje virov in privzeti dopisi.
 - Razmaki v bibliograbsko dokumentacijski strani.
 - Preveri če `make` deluje na Windowsih.
