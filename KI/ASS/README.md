#ASS
by [W]Omniman and [W]Mezilsa

> ##[Download](https://github.com/Mezilsa/GruppeWArchiv/releases/download/1.2.0/ASS.1.2.0.rar)

###Funktion:
 
Automatisiert den Angriff auf ein festgelegtes Areal.
 
###Nutzung
 
 -lade den Ordner herunter und lege ihn in deinem Missionsordner ab.
 
 **-schreibe diesen Text in die CfgFunctions**


| #include "ASS\CfgFunctions.hpp"  |
|------------------------------------------|

Erstelle einen Marker und benenne ihn. Dieser stellt das Zielgebiet da in das die KI wandert, wenn der Trigger, der das Script startet, leer bleibt.

Erstelle einen Trigger und schreibe folgendes hinein:<br>
```_startASS=[thisTrigger,"Markername",MaxKI,TimeToTanks,TimeToAir] spawn ass_fnc_main;```

####Benötigte Parameter:
___
**-thisTrigger** Übergibt den aufrufenden Trigger als Parameter. Dies darf nicht **!** verändert werden.<br>

**-"Markername"** beschreibt das Patrulliengebiet der KI wenn es noch keinen Feindkontakt gibt. Lege den Marker am besten unter den Trigger<br>

**-MaxKI:** beschreibt die maximal von diesem Script gespawnte KI. Für diese wird jede KI auf dem Server gezählt und bis zu diesem Wert gespawnt. Spawns von FUPS können ohne Probleme ausgeführt werden, jedoch wird, sobald die Maximale KI erreicht ist über ASS nichts gespawnt.<br>

**-TimeToTanks:** beschreibt die Zeit bis schwere Einheiten des Types "Gepanzert" gespawnt werden.<br>

**-TimeToAir:** beschreibt die Zeit bis Lufteinheiten gespawnt werden.<br>

####Optionale Parameter:
___
**-opt PropTank:** wahrscheinlichkeit dass in einem durchlauf eine Panzergruppe gespawnt wird. Def: 10%

**-opt PropAir:** wahrscheinlichkeit dass in einem durchlauf eine Fluggruppe gespawnt wird.    Def: 5%

**-opt endKI:** Sobald so viele Gegner gespawned wurden schaltet ASS ab. Def: 300 Einheiten

Ein beispielhafter Aufruf sieht so aus

```_assStart=[thisTrigger,"Kabul_central",80,3600,1200,5,20,3000] spawn ass_fnc_main;```

_____
###Verstärkung
ASS spawnt über FUPS gespeicherte Templates. Dabei werden Templates mit dem Befehl <br>
```null = [this,*Zahl*,true] call FUPS_fnc_saveTemplate;``` gespeichert. Das speichern über Module hat keinen Einfluss auf die über diesen Befehl gespeicherten Templates.

Es werden Infantrie, Panzer jeglicher Art, Autos und jede Sorte Luftfahrzeug unterstützt.

____
###Rallypoints
ASS unterscheidet zwischen zwei Rallypoints, Ground und Air.
Am Rallypoint Ground spawnen alle Bodeneinheiten und am Rallypoint Air alle Flugeinheiten.<br>
Um einen Rallypoint Ground zu erstellen, setze eine Gamelogic und füge folgendes in die Init der Gamelogic.

```[this] call ass_fnc_addRallyPoint_Ground;```

Um einen Rallypoint Air zu erstellen, setzte eine Gamelogic und füge folgendes in die Init der Gamelogic.

```[this] call ass_fnc_addRallyPoint_Air;```

### Erläuterung:

- Es gibt in der aktuellen Version noch keine Möglichkeit dieses Script zu stoppen. In späteren Versionen wird eine Zeit Bedingung geliefert, die ebenfals einstellbar ist.

- Es ist kein Problem wenn keine Einheit vom Typ Luft, Gepanzert oder Infantrie in den Templates vorhanden ist.
 
- Bei weiteren Fragen bitte bei [W]Mezilsa melden
- mezilsa@gruppe-w.de



