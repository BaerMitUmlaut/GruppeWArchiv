params [["_mode","",[""]]];
switch _mode do {
	case "init": {
		if (!isNil "FETT_teleportAction") then {
			player removeAction FETT_teleportAction;
		};

		if (!isNil "FETT_teleportID") then {
			[FETT_teleportID,"onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
			FETT_teleportID = nil;
		};

		FETT_teleportAction = player addAction ["Teleport",{["teleport"] call FETT_gt_fnc_teleport;}];
	};
	case "teleport": {
		hint "Klicke einfach auf die Karte, um dich zu dem Punkt zu teleportieren. Im Mausradmenü kannst du das teleportieren abbrechen.";
		player removeAction FETT_teleportAction;
		FETT_teleportAction = player addAction ["Teleport abbrechen",{["init"] call FETT_gt_fnc_teleport;}];

		FETT_teleportID = ["onMapSingleClick_id","onMapSingleClick",{
			private "_positions";
			_positions = units player - [crew player];
			{
				if (player distance _x > 50) then {
					_positions set [_forEachIndex,[objNull,[0,0,0]]];
				} else {
					_positions set [_forEachIndex,[vehicle _x,player worldToModel getPosATL vehicle  _x]];
				};
			} forEach _positions;

			vehicle player setPos _pos;
			{
				_x params ["_unit","_relPos"];
				_unit setPosATL (player modelToWorld _relPos);
			} forEach _positions;

			["init"] call FETT_gt_fnc_teleport;
		}] call BIS_fnc_addStackedEventHandler;
	};
};
