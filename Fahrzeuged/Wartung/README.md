> ###Funktion:
> 
> 
>Setzt sofort Treibstoff, Hülle und Munition auf 100%      
> 
> ###Nutzung:
> 
>-Erstellen eines Triggers    
>-Benenne den Trigger als “rearmTrigger”, Einstellen der Größe     
>-Einfügen des folgenden Codes in die InitplayerLocal.sqf:
> 

rearmTrigger triggerAttachVehicle [player]; rearmTrigger
setTriggerActivation    ["VEHICLE","PRESENT",true]; 
rearmTrigger setTriggerStatements ["this && vehicle player isKindOf 'Air'",
"vehicle player setDamage 0;vehicle player setVehicleAmmo 1;vehicle player setFuel 1;",""]; 

> ###Erläuterung:

>-**“rearmTrigger”**ist der Name des angesprochenen Triggers. Dieser muss mit dem Namen des <br>
>in der Mission verwendeten Triggers übereinstimmen.         <br>
>-die im letzten Befehl verwendeten Befehle „setDamage“,“setVehicleAmmo“ und „setFuel“ <br>
>können durch löschen von Teilen oder Abänderung der Werte angepasst werden. <br>
>-um alle Fahrzeuge im Trigger-Bereich zu versorgen muss die Bedingung
>
>
>*„vehicle player isKindOf 'Air'“*
>
entweder entfernt oder durch eine oder(Operator: || im Gegensatz zu &&) Funktion erweitert werden <br>
die den Typ 'Air' in einen anderen Typ ändert.      <br>
Mögliche Typen z.B. sind „armored“, “autonomous“, „car“, „ship“, “submarine“, „support“ und „static“.


