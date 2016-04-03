private "_actUndig";
private "_trench"; 
private "_unit";

_actUndig = ["undig", "Undig Trench", "", {
  _trench = _this select 0;
  _unit = _this select 1;
  _unit playMove "AinvPknlMstpSnonWnonDnon_medic4";
   [{_this setPosATL [(getPosATL _this) select 0, (getPosATL _this) select 1, ((getPosATL _this) select 2)-0.15];}, _target, 3] call ace_common_fnc_waitAndExecute;
  [{_this setPosATL [(getPosATL _this) select 0, (getPosATL _this) select 1, ((getPosATL _this) select 2)-0.15];}, _target, 4] call ace_common_fnc_waitAndExecute;
  [{_this setPosATL [(getPosATL _this) select 0, (getPosATL _this) select 1, ((getPosATL _this) select 2)-0.16];}, _target, 5] call ace_common_fnc_waitAndExecute;
  [{_this setPosATL [(getPosATL _this) select 0, (getPosATL _this) select 1, ((getPosATL _this) select 2)-0.16];}, _target, 6] call ace_common_fnc_waitAndExecute;
  [{_this setPosATL [(getPosATL _this) select 0, (getPosATL _this) select 1, ((getPosATL _this) select 2)-0.16];}, _target, 7] call ace_common_fnc_waitAndExecute;
  [{_this setPosATL [(getPosATL _this) select 0, (getPosATL _this) select 1, ((getPosATL _this) select 2)-0.2];}, _target, 8] call ace_common_fnc_waitAndExecute;
  [{_this setPosATL [(getPosATL _this) select 0, (getPosATL _this) select 1, ((getPosATL _this) select 2)-0.2];}, _target, 9] call ace_common_fnc_waitAndExecute;
  [{_this setPosATL [(getPosATL _this) select 0, (getPosATL _this) select 1, ((getPosATL _this) select 2)-0.2];}, _target, 10] call ace_common_fnc_waitAndExecute;
  [{deleteVehicle _this}, _target, 11] call ace_common_fnc_waitAndExecute;
  
}, {true}] call ace_interact_menu_fnc_createAction;
    
 ["ACE_envelope_small", 0, ["ACE_MainActions"], _actUndig] call ace_interact_menu_fnc_addActionToClass;
 ["ACE_envelope_big", 0, ["ACE_MainActions"], _actUndig] call ace_interact_menu_fnc_addActionToClass;
