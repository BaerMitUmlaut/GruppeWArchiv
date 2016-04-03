/************************************************
fnc_getOut

Verhindert das die Indfor Piloten mit dem Littlebird einfach davon fliegen können
************************************************/
private ["_vehicle","_seat","_unit"];

_vehicle = _this select 0;
_seat = _this select 1;
_unit = _this select 2;

if (side _unit == resistance) then {
	_unit action ["getOut", _vehicle];
	 cutText ["Du kannst dich an der Bank nicht festschnallen.","PLAIN DOWN",3,true];
};
