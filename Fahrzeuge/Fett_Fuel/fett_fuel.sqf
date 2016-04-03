//Aufrufen mit [[vic1, vic2, ...], 2] execVM "scripts\fett_fuel.sqf";
params ["_affectedVehicles", "_fuelRate"];

[{
    (_this select 0) params ["_affectedVehicles", "_fuelRate"];
    private _v = vehicle player;
    if (_v in _affectedVehicles) then {
        private _fuelDiff = (_v getVariable ["fuel_lastFrame",fuel _v]) - (fuel _v);
        _v setFuel (fuel _v - (_fuelDiff * (_fuelRate - 1)));
        _v setVariable ["fuel_lastFrame",fuel _v];
    };
},0,[_affectedVehicles, _fuelRate]] call CBA_fnc_addPerframeHandler;