/*
 * Author: BaerMitUmlaut/BlauBär
 * Moves the tank to a free position and flips it.
 *
 * Arguments:
 * 0: Tank <OBJECT>
 *
 * Return Value:
 * None
 */
params ["_tank"];

hint parseText "<t color='#cf1226' size='2'>Achtung!</t><br />Der Panzer wird in 5 Sekunden umgedreht.";
[{
    private _position = (getPosATL _this) findEmptyPosition [0, 100, typeOf _this];
    _this setPos _position;
}, _tank, 5] call ace_common_fnc_waitAndExecute;
