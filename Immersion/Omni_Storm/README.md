
> ##[Download](https://github.com/Mezilsa/Immersion/releases/download/1.0.1/OmniStorm.rar)



> ###Funktion:
 
 
Erzeugt ein authentisches Unwetter mit Wind, Blitz und Donner.
 
> ###Nutzung:
 
 Lade die Datei herunter und lege den OmniStorm Ordner in deinem Missionsverzeichnis ab. <br>
 
 **Füge folgende Zeile in die cfgSounds in der Describtion.ext ein**
 

`class CfgSounds{`<br>
`#include "OmniStorm\CfgOmniSounds.hpp"`  <br>
 ` };`


**Füge folgende Zeile in die InitPlayerLocal**

|execVM "OmniStorm\OmniStorm.sqf";  |
|------------------------------------------|

> 
> ###Erläuterung:
>Dieses Script wurde von [W] Omniman geschrieben. Die Blitze können sehr grell sein. 
>
