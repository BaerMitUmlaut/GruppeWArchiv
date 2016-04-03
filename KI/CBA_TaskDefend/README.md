

> ###Funktion:
> 
> 
>Verteidigt eine vorgegebene Position mit Infanterie und lässt diese in Gebäuden Schutz suchen sowie CSWs besetzen.
> 
> ###Nutzung:
> 
> -Erstelle eine Infanteriegruppe
>
>-lasse sie folgenden Code ausführen:
> 

| [GruppenName,POSITION,RADIUS,Zahl der Personen pro Haus,Patrouillen] call CBA_fnc_taskDefend |
|------------------------------------------|

>**Beispiel**

|[grp1,getMarkerPos "KavallaZentrum",100,2,false] call CBA_fnc_taskDefend;   |
|------------------------------------------|
> 
> ###Erläuterung:
-Es darf nicht mit FUPS parallel laufen. Die Einheit muss mit Fups_fnc_stop aus dem Patrouillen-Modus herausgeholt werden um den neuen CBA Befehl ausführen zu können.
>
>-Auf Arma 3 Karten funktioniert dieses Script besser als auf Arma 2 Ports.



