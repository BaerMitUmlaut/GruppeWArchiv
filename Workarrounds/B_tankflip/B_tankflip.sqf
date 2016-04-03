private "_actFlip";
    _actFlip = ["flip_tank", "Panzer umdrehen", "", {
        hint "Achtung! Panzer wird in 5 Sekunden umgedreht.";
        [{
            _this setVectorUp [0,0,1];
            _this setPosATL [(getPosATL _this) select 0, (getPosATL _this) select 1, 0];
        }, _target, 5] call ace_common_fnc_waitAndExecute;
    }, {(vectorUp _target) vectorDotProduct (surfaceNormal position _target) < 0.8}] call ace_interact_menu_fnc_createAction;
    
    
    
["BWA3_Leopard2A6M_Fleck", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;
 ["BWA3_Leopard2A6M_Tropen", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;
 ["B_MBT_01_cannon_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;	
 ["B_APC_Tracked_01_AA_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;
 ["B_MBT_01_arty_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;
 ["B_MBT_01_mlrs_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;
 ["B_MBT_01_cannon_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;	

 ["O_APC_Tracked_02_cannon_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;
 ["O_APC_Tracked_02_AA_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;
 ["O_MBT_02_cannon_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;
 ["O_MBT_02_arty_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;

["I_MBT_03_cannon_F", 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;
