> ###Funktion:
> 
> 
> Verhindert das eine Fraktion sprinten kann.
> 
> ###Nutzung:
> 
> Füge folgende Zeile in die InitPlayerLocal ein.

`sleep 3;`<br>
`if (side player == resistance) then {`<br>
`	[{player allowSprint false;}, 0, []] call CBA_fnc_addPerFrameHandler;`<br>
`};`<br>

> 
> ###Erläuterung:
> 
