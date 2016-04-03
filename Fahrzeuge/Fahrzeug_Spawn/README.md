> ##[Download](https://github.com/Mezilsa/Fahrzeuge/releases/download/0.1.0/spawn_vehiclehull.sqf)

> ###Funktion:
> 
> 
>Erzeugt einen Interaction Menu Eintrag der ein zufälliges Fahrzeug aus einer Liste von Classnames spawnt.
> 
> ###Nutzung:
> 
> -lade diesen Ordner herunter und die darin enthaltene SQF in deinen Scripts Ordner ein.
> 
> 
> **-schreibe diesen Text in die InitPlayerLocal.sqf**
> 

| #include “Scripts\spawn_vehiclehull.sqf” |
|------------------------------------------|

>-Erstelle einen Soldaten und benenne ihn.
>
>**-Füge diesen Code in die Init-Zeile des Soldaten ein**

| this setVariable ["canSpawn",true];      |
|------------------------------------------|
> 
> ###Erläuterung:
> In die Liste vehicleList kann man unendlich viele Classnames hineinschreiben. <br>
>Wichtig ist dabei nicht die Anführungszeichen und die Kommata zu vergessen.      <br>
>Ein Löschen der Fahrzeughüllen ist nicht vorgesehen.

