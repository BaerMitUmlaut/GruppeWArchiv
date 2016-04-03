#EX_Breath

> ##[Download](https://github.com/Mezilsa/Immersion/releases/download/1.0.1/EX_Breath.rar)


> ###Funktion:
> 

 Erzeugt eine Atemdampfwolke vor dem Mund von Spieler und KI.         

> ###Nutzung:
 
-Laden den Ordner herunter und füge ihn in deinen Missionsordner<br>
<b>-schreibe folgendes in die description.ext in die class CfgFunctions </b>


|#include "EX_Breath\CfgFunctions.hpp"      |
|------------------------------------------|

-Erstelle einen Fahrzeug

*-Füge diesen Code in die Init-Zeile des Fahrzeuges**

| this setVariable ["EX_posVar",[getPosATL this,getDir this]]     |
|------------------------------------------|
> 
> ###Erläuterung:

