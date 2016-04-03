[{
        	private "_air";

	 _air = vehicles;
        	{
                    	if !(alive _x) then {
                               	private ["_posVar", "_name", "_new"];
 
                               	_posVar = _x getVariable ["EX_posVar",[]];
 
                               	if !(_posVar isEqualTo []) then {
                                           	_name = typeOf _x;
                                           	deleteVehicle _x;
                                           	_new = _name createVehicle (_posVar select 0);
                                           	_new setDir (_posVar select 1);
                                           	_new setVariable ["EX_posVar",_posVar];
                               	};
                    	};
        	} forEach _air;
},10,[]] call CBA_fnc_addPerFrameHandler;