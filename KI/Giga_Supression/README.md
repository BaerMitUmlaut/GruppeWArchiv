> ##[Download](https://github.com/Mezilsa/KI/releases/download/1.0.3/suppression.sqf)

> ###Funktion:


Lässt ein Geschütz auf vorher festgelegte Positionen schießen


> ###Nutzung:

Lade das Script herunter und lege es in deinem Scripts Ordner ab.

Erstelle eine statische Waffe, oder ein Fahrzeug und benenne es. 
Stelle sicher, dass es auf die Positionen wirken kann.

Syntax:

`nul = [FAHRZEUGNAME,[ARRAY mit MARKERNAMEN ],WIE OFT AUF DIE POSITION GESCHOSSEN WERDEN SOLL] execVM "suppression.sqf";`

Beispielaufruf

`nul=[Gun1,["mk_1","mk_2","mk_3"],42] execVM "scripts\suppression.sqf"; `



> ###Erläuterung:
Die KI achtet nicht auf die Distanz. Wenn das Ziel zu weit weg ist, werden die Schüsse zu kurz kommen.
