#CAS + FUPS

> ###Funktion:
> 
> 
>> Verbindet FUPS Spawn indirekt mit dem CAS Modul von BIS.   
> 
> ###Nutzung:
> 
>-erstelle ein Spawn-Script für FUPS 
>-erstelle drei Trigger, einen zum spawnen, einen um angreifen zu lassen sowie einen zum auslösen des Jets

|#include “Scripts\vehicle_respawn.sqf”         |
|------------------------------------------|

> 
>-Synchronisiere den CAS Trigger mit dem CAS Modul
>-schreibe folgenden Text in die init des spawns-Triggers
>
>
|null = execVM "scripts\<i>spawnscript</i>.sqf";  deleteVehicle thistrigger;      |
|------------------------------------------|

> ###Erläuterung:

>-dieser Hinterhalt lässt sich mit beliebigen Modulen/ IEDs oder Effekten ergänzen, wichtig ist jedoch, dass Module und Sprengsätze auf dem Server ausgeführt werden (Bedinung this&& isserver) und der Spawn und der Angriff der KI auf dem HC, wenn dieser vorhanden ist. 

 > -Wenn mehrere Trigger an das CAS Modul angeschlossen werden, werden mehrere Jets erscheinen.
