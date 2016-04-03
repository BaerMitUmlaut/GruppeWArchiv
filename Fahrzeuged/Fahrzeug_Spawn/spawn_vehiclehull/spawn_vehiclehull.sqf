vehicleList = ["O_MBT_02_cannon_F","O_MRAP_02_F"]; //Beispielclassnames
 
if (player getVariable ["canSpawn",false]) then {   //Abfrage ob der Spieler spawnen kann
        	player addAction ["Ziel spawnen",{
                    	private ["_pos","_type"];
                    	_pos = screenToWorld [0.5,0.5];
                    	_type = vehicleList select floor random count vehicleList;
//Wählt zufällig ein Fahrzeug aus der Liste aus
 
                    	private "_v";
                    	_v = createVehicle [_type,_pos,[],0,"NONE"];  //spawnt das Fahrzeug
                    	_v setDir random 360;
        	}];
};
 