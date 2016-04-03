params ["_target"];

ACE_player playActionNow "PutDown";
deleteVehicle _target;
ACE_player linkItem "ItemMap";
