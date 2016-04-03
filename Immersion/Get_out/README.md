> ##[Download](https://github.com/Mezilsa/Immersion/releases/download/1.0.1/fnc_getOut.sqf)

###Funktion:

Verhindert, dass eine Fraktion in ein bestimmtes Fahrzeug einsteigen kann.
 
###Nutzung:

 Lade die Datei herunter und lege sie im Scripts Ordner deiner Mission ab <br>
 
 **Füge folgende Zeile in die INIT Zeile des Fahrzeuges, dass du modifizieren möchtest.**<br>
 

`this addEventHandler["getIn",{call fnc_getOut}]; `<br>


**Füge folgende Zeile in die Init.sqf ein**<br>


`fnc_getOut = compile preprocessFileLineNumbers "scripts\fnc_getOut.sqf"; `<br>


Öffne die **fnc_get_out.sqf** und überprüfe die Sideabfrage in Zeile 12 und den angezeigten Text in Zeile 14<br>

###Erläuterung:

Dieses Script wurde von [W] Omniman geschrieben. Es wirkt dabei für gesammte Fraktion.

