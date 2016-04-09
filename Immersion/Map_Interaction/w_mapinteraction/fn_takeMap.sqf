/*
 * Author: BaerMitUmlaut/BlauBär
 * Removes the static map and adds it to the inventory.
 *
 * Arguments:
 * 0: Static map <OBJECT>
 *
 * Return Value:
 * None
 */
params ["_target"];

ACE_player playActionNow "PutDown";
deleteVehicle _target;
ACE_player linkItem "ItemMap";
