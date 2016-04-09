/*
 * Author: BaerMitUmlaut/BlauBär
 * Adds interactions to flip tanks.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 */

private _actFlip = [
    "bb_tankflip",
    "Panzer umdrehen",
    "",
    { [_target] call bb_tankflip_fnc_flip },
    { [_target] call bb_tankflip_fnc_canFlip },
    {},
    [],
    {[0, 0, 0]},
    10
] call ace_interact_menu_fnc_createAction;

{
    if (_x isKindOf "Tank") then {
        [_x, 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToObject;
    };
    false
} count vehicles;
