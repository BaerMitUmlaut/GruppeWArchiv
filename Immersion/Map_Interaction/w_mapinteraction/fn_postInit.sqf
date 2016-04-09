/*
 * Author: BaerMitUmlaut/BlauBär
 * Adds the interactions to player and static maps.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 */
private ["_actOpen", "_actTake", "_actPut"];

if (!hasInterface) exitWith {};

_actOpen = ["W_Map_Open", "Anschauen", "", {_this call w_mapinteraction_fnc_openMap}, {!("ItemMap" in assignedItems ACE_player)}] call ace_interact_menu_fnc_createAction;
_actTake = ["W_Map_Take", "Aufheben",  "", {_this call w_mapinteraction_fnc_takeMap}, {!("ItemMap" in assignedItems ACE_player)}] call ace_interact_menu_fnc_createAction;
_actPut =  ["W_Map_Put", "Karte auf den Boden legen", "", {_this call w_mapinteraction_fnc_putMap}, {"ItemMap" in assignedItems ACE_player}] call ace_interact_menu_fnc_createAction;

["Land_Map_blank_F", 0, ["ACE_MainActions"], _actOpen] call ace_interact_menu_fnc_addActionToClass;
["Land_Map_blank_F", 0, ["ACE_MainActions"], _actTake] call ace_interact_menu_fnc_addActionToClass;
[typeOf ACE_player,  1, ["ACE_SelfActions", "ACE_Equipment"], _actPut] call ace_interact_menu_fnc_addActionToClass;
