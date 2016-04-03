

> ##[Download](FETT_GroupTeleporter.rar)
 
>###Funktion:
>Dieses Skript teleportiert den Spieler und alle Spieler derselben Gruppe in einem Abstand von weniger als 50 Metern zu einem selbstgewählten Punkt.
>
>###Nutzung:
>-Downloade den FETT_GroupTeleporter   
>-Füge den Ordner deinem Missionsordner hinzu:<br>
><b>-Füge folgenden Code in die class CfgFunctions in der Description.ext ein:  </b>  <br>

*#include FETT_GroupTeleporter\CfgFunctions.hpp*
>
>Erstellen eines Soldaten      <br>
>-Benennung des Soldaten         <br>
<b>-Einfügen des folgenden Codes in die PlayerInitLocal.sqf   </b>


<i> if !(isNil "object" ) then{
<b>Einheitenname</b> call FETT_gt_fnc_add;}</i>

>###Erläuterung:
-für jede Einheit die die Gruppenteleportfunktion erhalten soll muss die oben genannte Zeile mit dem jeweiligen Einheitennamen in die<br> PlayerInitLocal.sqf geschrieben werden.        
