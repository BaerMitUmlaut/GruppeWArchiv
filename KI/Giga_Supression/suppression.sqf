// KI feuert zufällig auf eine bestimmte Anzahl von Markern
// In die Init-Zeile eines Triggers: nul = [Gun1,["mk_1","mk_2"],40] execVM "suppression.sqf";

params[["_gunname", objNull, [objNull]], "_targets", ["_foretime", 0, [0]]];


//params ["_gunname","_targets","_foretime"];

if (!isServer) exitWith {};
_gunnername = gunner _gunname;
while {_foretime > 0} do {
	if (!alive _gunnername) exitWith {};	
	_changetarget = selectRandom _targets;

	_sleeptime = ceil(random 3);
	sleep _sleeptime;

	  _gunname doWatch (getmarkerpos _changetarget); 
  	_gunname action ["useWeapon",_gunname, gunner _gunname,1];
};
