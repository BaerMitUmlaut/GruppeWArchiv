> ###Funktion:
> 
> 
>Verhindert das KI aussteigt wenn das Fahrzeug sich nicht mehr bewegen kann.


> ###Nutzung:

Baue dein Spawnscript für FUPS wie folgt auf:

`_grps = [...] call FUPS_fnc_spawn;
{
    {
          _x allowCrewInImmobile true;
    } forEach (units _x);
} forEach _grps;`

Ein konkretes Beispiel wäre:

`
_spawned = [getPos RallyPoint_zwischen,"patr_zwischen_sud",[5,1],["REINFORCEMENT:",[62]]] call FUPS_fnc_spawn;
{
    {
          _x allowCrewInImmobile true;
    } forEach (units _x);
} forEach _spawned;`

> ###Erläuterung:
Dieser Aufruf ist nicht über die Module möglich. Bitte beachtet die Regelung über das Nutzen von FUPS für Missionsdesigner.
