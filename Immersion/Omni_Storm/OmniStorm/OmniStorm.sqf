/*
 * Author: [W] OmniMan
 * Creates a realistic and Atmospheric Thunder Storm
 *
 * Arguments: /
 *
 * Return Value: /
 *
 *
 * Example:
 * Its all local, so execute this Script in the initPlayerLocal.sqf
 */

//CreepyWind Soundeffect
[{playSound "creepyWind";}, 80, []] call CBA_fnc_addPerFrameHandler;

while {Alive player} do {
//Parameters
	private ["_position","_distance","_direction"];

	_position = [(getPosATL player) select 0,(getPosATL player) select 1,0];
	_distance = 500 + (random 300);
	_direction = (random 360);

//Relative Postion
	private "_relativePosition";

	_relativePosition = [_position, _distance, _direction] call BIS_fnc_relPos;

//define if the Bolt(include the BIS_thunderSound) is striking.
	private ["_isBolting","_bolt"];

	_isBolting = round (random 50);
	if (_isBolting > 50) then {
 	_bolt = "LightningBolt" createvehicleLocal _relativePosition;
	 _bolt setposatl _relativePosition;
 	_bolt setdamage 1;
	};

//create Lightning
	private ["_lightningClass","_lightning"];

	_lightningClass = selectRandom ["lightning1_F","lightning2_F"];
	_lightning = _lightningClass createVehicleLocal _relativePosition;
	_lightning  setdir (random 360);
	_lightning  setpos _relativePosition;

//create light flash effect
	private "_light";

	_light = "#lightpoint" createVehicleLocal _relativePosition;
	_light setpos _relativePosition;
	_light setLightDayLight true;
	_light setLightBrightness 300;
	_light setlightAmbient [0.05, 0.05, 0.2];
	_light setlightColor [1, 1, 2];
	sleep 0.2 + (random 0.2);
	_light setlightBrightness 0;


//second light flash for more realism
	private ["_duration","_time"];

	_duration = random 2;
	for "_i" from 0 to _duration do {
		_time = time + 0.1;
		_light setLightBrightness 100 + (random 100);
		waituntil {time > _time};
		_light setLightBrightness 0;
		sleep random 0.1;
	};


// define if Thunder Sound is played
	private ["_playIt"];

	_playIt = round (random 100);


//Play Random Thunder Sound
	private "_thunder";

	if (_playIt > 70) then {
		_thunder = selectRandom [
					"Thunder1",
					"Thunder2",
					"Thunder3",
					"Thunder4",
		 			"Thunder5",
		 			"Thunder6",
		 			"Thunder7",
		 			"Thunder8",
		 			"Thunder9",
		 			"Thunder10",
		 			"Thunder11",
		 			"Thunder12"
		];
		playSound _thunder;
	};

//cleanup
	deleteVehicle _light;
	deleteVehicle _lightning;
	//sleep until next Thunder is coming down
sleep random 5;
};