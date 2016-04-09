# BlauBär's Tankflip - [Download](https://github.com/Mezilsa/Workarrounds/releases/download/0.2.1/B_tankflip.sqf)

## Funktion
Fügt Panzern einen ACE Interaktionspunkt zu, mit denen man sie wieder umdrehen kann falls sie dank eines PhysX Fehlers auf dem Kopf liegen.

## Nutzung
- Lade den Ordner herunter und lege ihn in deinem Missionsordner ab
- Schreibe folgendes in der description.ext in die CfgFunctions:  
  ```
  #include "bb_tankflip\CfgFunctions.hpp"
  ```

## Erläuterung
- Fügt den Interaktionspunkt nur bei Panzern hinzu, die bei Missionsstart bereits auf der Karte platziert sind.
- Panzer werden beim flippen meist etwas versetzt (je weniger Platz in der Umgebung ist, desto weiter werden sie wegbewegt).
