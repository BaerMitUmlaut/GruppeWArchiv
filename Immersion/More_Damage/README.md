#Under Construction


> ###Funktion:
> 
> 
>Ermöglicht das zuweisen von größerem Schaden pro Schuss an vorher festgelegten Zielen.
> 
> ###Nutzung:
> 
> Lade die Datei herunter und lege sie im Scripts Ordner deiner Mission ab <br>
> 
> **Füge den Code der SQF in die InitServer.sqf**
> 

|#include “Scripts\vehicle_respawn.sqf”  |
|------------------------------------------|

>-Erstelle einen Fahrzeug
>
>**-Füge diesen Code in die Init-Zeile des Fahrzeuges**

| this setVariable ["EX_posVar",[getPosATL this,getDir this]]     |
|------------------------------------------|
> 
> ###Erläuterung:
>Es ist selbstverständlich, dass dieses Script nichts in einer Mission zu suchen hat, die nichts mit Training zu tun hat.
>
