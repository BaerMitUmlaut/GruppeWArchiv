/*
 * Author: BaerMitUmlaut/BlauBär
 * Adds and opens a map and removes it from inventory once closed.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 */

ACE_player linkItem "ItemMap";
openMap true;

[{ !visibleMap }, { ACE_player unlinkItem "ItemMap" }, []] call ace_common_fnc_waitUntilAndExecute;
