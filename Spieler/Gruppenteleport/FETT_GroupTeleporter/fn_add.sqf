params ["_player"];

if (player == _player) then {
	FETT_teleportAction = player addAction ["Teleport",{["teleport"] call FETT_gt_fnc_teleport;}];
};
