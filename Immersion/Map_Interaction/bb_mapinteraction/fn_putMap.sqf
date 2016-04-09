/*
 * Author: BaerMitUmlaut/BlauBär
 * Spawns a map and sets the objects texture to the current map.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 */

ACE_player playActionNow "PutDown";

private _map = "Land_Map_blank_F" createVehicle [0,0,0];
switch (worldName) do {
    case "Altis": {
        _map setObjectTextureGlobal [0, "\A3\structures_f_epb\Items\Documents\Data\map_altis_co.paa"];
    };
    case "Stratis": {
        _map setObjectTextureGlobal [0, "\A3\structures_f_epb\Items\Documents\Data\map_stratis_co.paa"];
    };
    default {
        if (isText (configFile >> "CfgWorlds" >> worldName >> "pictureMap")) then {
            _map setObjectTextureGlobal [0, getText (configFile >> "CfgWorlds" >> worldName >> "pictureMap")];
        } else {
            //Blank map looks no bueno
            _map setObjectTextureGlobal [0, "\A3\structures_f_epb\Items\Documents\Data\map_altis_co.paa"];
        };
    };
};
_map setPosATL ((getPosATL ACE_player) vectorAdd (vectorDir ACE_player));
_map setDir (90 + direction ACE_player);

ACE_player unlinkItem "ItemMap";
