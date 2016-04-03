
###Funktion:
Erzeugt einen Eintrag im Action Menu eines Spielers für einen Kameramodus

###Nutzung:
Kopiere diesen Code in das Loadout des Spielers.

`this addAction ["Hey! Ich bin eine Kamera", "[] spawn BIS_fnc_camera;"];`

Wenn kein Loadout ausgeführt wird, schreibe es in die Init Zeile des Spielers.

###Erläuterung:

Wenn die Kamera an einem Objekt aufrufbar sein soll, dann benne das Objekt und füge diese Zeile in die ServerInit.sqf:
`OBJECTNAME addAction ["Hey! Ich bin eine Kamera", "[] spawn BIS_fnc_camera;"];`
