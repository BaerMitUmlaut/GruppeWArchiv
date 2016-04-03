#include "ace_macros.sqf"

_class = [_this,0,"",[""]] call BIS_fnc_param;
if (_class == "") exitWith {};
_class = toUpper _class;
_obj = [_this,1,player,[objNull]] call BIS_fnc_param;
_isJIP = [_this,2,false,[true]] call BIS_fnc_param;

_USHelmets = ["rhsusf_ach_helmet_ucp", "rhsusf_ach_helmet_ESS_ucp", "rhsusf_ach_helmet_headset_ucp", "rhsusf_ach_helmet_headset_ess_ucp", "rhsusf_ach_helmet_ucp", "rhsusf_ach_helmet_ESS_ucp", "rhsusf_ach_helmet_headset_ucp", "rhsusf_ach_helmet_headset_ess_ucp"];
_USHelmet = _USHelmets select floor(random (count _USHelmets - 1));

_ANAHelmets = ["rhsusf_ach_bare", "rhsusf_ach_bare_ess", "rhsusf_ach_bare_headset", "rhsusf_ach_bare_headset_ess", "rhsusf_ach_bare", "rhsusf_ach_bare_ess", "rhsusf_ach_bare_headset", "rhsusf_ach_bare_headset_ess"];
_ANAHelmet = _ANAHelmets select floor(random (count _ANAHelmets - 1));

_Hats = ["rhs_Booniehat_ucp", "rhsusf_patrolcap_ucp", "rhs_Booniehat_ucp", "rhsusf_patrolcap_ucp", "rhs_Booniehat_ucp", "rhsusf_patrolcap_ucp", "rhs_Booniehat_ucp", "rhsusf_patrolcap_ucp"];
_Hat = _Hats select floor(random (count _Hats - 1));

_Patches = ["Badass", "Kill", "Che", "Ducky", "Carroll" ,"Conbar" ,"Embrace" ,"Food" ,"Fuckit" ,"Guns" ,"action" ,"instructor" ,"jsaf" ,"Marston" ,"Meeting" ,"molonlabe" ,"Pinup" ,"senator" ,"knight" ,"tribe" ,"TFAegis" ,"Green" ,"FDNY" ,"Eric" ,"Lam", "Badass", "Kill", "Che", "Ducky", "Carroll" ,"Conbar" ,"Embrace" ,"Food" ,"Fuckit" ,"Guns" ,"action" ,"instructor" ,"jsaf" ,"Marston" ,"Meeting" ,"molonlabe" ,"Pinup" ,"senator" ,"knight" ,"tribe" ,"TFAegis" ,"Green" ,"FDNY" ,"Eric" ,"Lam"];
_Patch = _Patches select floor(random (count _Patches - 1));

#define this _obj
if (_class == "USSQL") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_PDA";
	this addWeapon "ItemWatch";
	this addWeapon "Rangefinder";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 4 do { this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 8 do { this addItemToBackpack "1Rnd_HE_Grenade_shell" };
	this addItemToVest "SmokeShellOrange";
	this addItemToVest "SmokeShellBlue";
	this addItemToVest "SmokeShellPurple";
	this addWeapon "rhs_m4a1_m320";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 3 do { this addItemToBackpack "HandGrenade" };
	for "_i" from 1 to 4 do { this addItemToVest "SmokeShell" };
	for "_i" from 1 to 4 do { this addItemToBackpack "SmokeShellGreen" };
	for "_i" from 1 to 2 do { this addItemToUniform "SmokeShellGreen" };
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShellRed" };
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShellGreen" };
	for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 6 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SMALL_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USXO") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_Tablet";
	this addWeapon "ItemWatch";
	this addWeapon "Rangefinder";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 4 do { this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 8 do { this addItemToBackpack "1Rnd_HE_Grenade_shell" };
	this addItemToVest "SmokeShellOrange";
	this addItemToVest "SmokeShellBlue";
	this addItemToVest "SmokeShellPurple";
	this addWeapon "rhs_m4a1_m320";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 3 do { this addItemToBackpack "HandGrenade" };
	for "_i" from 1 to 4 do { this addItemToVest "SmokeShell" };
	for "_i" from 1 to 4 do { this addItemToBackpack "SmokeShellGreen" };
	for "_i" from 1 to 2 do { this addItemToUniform "SmokeShellGreen" };
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShellRed" };
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShellGreen" };
	for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 6 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SMALL_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USFTL") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_PDA";
	this addWeapon "ItemWatch";
	this addWeapon "Binocular";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 4 do { this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeGreen_Grenade_shell" };
	for "_i" from 1 to 6 do { this addItemToVest "1Rnd_HE_Grenade_shell" };
	this addWeapon "rhs_m4a1_m320";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 4 do { this addItemToBackpack "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 4 do { this addItemToBackpack "1Rnd_HE_Grenade_shell" };
	for "_i" from 1 to 3 do { this addItemToBackpack "HandGrenade" };
	for "_i" from 1 to 4 do { this addItemToBackpack "SmokeShell" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShellRed" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShellGreen" };
	for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 6 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "ANAFTL") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_PDA";
	this addWeapon "ItemWatch";
	this addWeapon "Binocular";
	this addHeadgear _ANAHelmet;
	this addUniform "LOP_U_AA_Fatigue_01";
	this addVest "TFAx_PlateCarrierH_Grn";
	this addBackpack "TFAx_assault_fol";
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 4 do { this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeGreen_Grenade_shell" };
	for "_i" from 1 to 6 do { this addItemToVest "1Rnd_HE_Grenade_shell" };
	this addWeapon "rhs_weap_m16a4_carryhandle_M203";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 4 do { this addItemToBackpack "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 4 do { this addItemToBackpack "1Rnd_HE_Grenade_shell" };
	for "_i" from 1 to 3 do { this addItemToBackpack "HandGrenade" };
	for "_i" from 1 to 4 do { this addItemToVest "SmokeShell" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShellRed" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShellGreen" };
	for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 6 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USAR") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 2 do { this addItemToVest "rhsusf_100Rnd_556x45_soft_pouch" };
	this addItemToUniform "rhsusf_100Rnd_556x45_soft_pouch";
	this addWeapon "rhs_weap_m249_pip";
	this addItemToBackpack "ACE_SpareBarrel";
	for "_i" from 1 to 2 do { this addItemToUniform "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 2 do { this addItemToVest "HandGrenade" };
	for "_i" from 1 to 3 do { this addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "ANAAR") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _ANAHelmet;
	this addUniform "LOP_U_AA_Fatigue_01";
	this addVest "TFAx_PlateCarrierH_Grn";
	this addBackpack "TFAx_assault_fol";
	for "_i" from 1 to 2 do { this addItemToVest "rhsusf_100Rnd_556x45_soft_pouch" };
	this addItemToUniform "rhsusf_100Rnd_556x45_soft_pouch";
	this addWeapon "rhs_weap_m249_pip";
	this addItemToBackpack "ACE_SpareBarrel";
	for "_i" from 1 to 2 do { this addItemToUniform "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 2 do { this addItemToVest "HandGrenade" };
	for "_i" from 1 to 3 do { this addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USGR") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 4 do { this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeGreen_Grenade_shell" };
	for "_i" from 1 to 6 do { this addItemToVest "1Rnd_HE_Grenade_shell" };
	this addWeapon "rhs_m4a1_m320";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 2 do { this addItemToVest "HandGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 6 do { this addItemToBackpack "1Rnd_HE_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "ANAGR") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _ANAHelmet;
	this addUniform "LOP_U_AA_Fatigue_01";
	this addVest "TFAx_PlateCarrierH_Grn";
	this addBackpack "TFAx_assault_fol";
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 4 do { this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeGreen_Grenade_shell" };
	for "_i" from 1 to 6 do { this addItemToVest "1Rnd_HE_Grenade_shell" };
	this addWeapon "rhs_weap_m16a4_carryhandle_M203";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 2 do { this addItemToVest "HandGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 4 do { this addItemToBackpack "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 6 do { this addItemToBackpack "1Rnd_HE_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "ANAAT") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
 
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _ANAHelmet;
	this addUniform "LOP_U_AA_Fatigue_01";
	this addVest "TFAx_PlateCarrierH_Grn";
	this addBackpack "rhs_rpg_empty";
	for "_i" from 1 to 4 do { this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	this addItemToBackpack "rhs_rpg7_PG7VL_mag"; 
	this addWeapon "rhs_weap_m16a4";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	this addWeapon "rhs_weap_rpg7";
	for "_i" from 1 to 4 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 2 do { this addItemToVest "HandGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	this addItemToBackpack "rhs_rpg7_PG7VL_mag";
	this addItemToBackpack "rhs_rpg7_PG7VR_mag";
	this addItemToBackpack "rhs_rpg7_OG7V_mag";
	
	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USCM") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 4 do { this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 3 do { this addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 3 do { this addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 2 do { this addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch" };
	for "_i" from 1 to 2 do { this addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	this addWeapon "rhs_weap_m4a1_grip";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	[this,"NoHarm"] call bis_fnc_setUnitInsignia;

	COMBAT_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 1, true];
	 
};
if (_class == "USDM") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 5 do { this addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag" };
	for "_i" from 1 to 3 do { this addItemToUniform "rhsusf_20Rnd_762x51_m118_special_Mag" };
	this addWeapon "rhs_weap_m14ebrri";
	this addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
	this addPrimaryWeaponItem "bipod_01_F_blk";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "ACE_RangeCard";
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 2 do { this addItemToVest "HandGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USRFL") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	for "_i" from 1 to 4 do { this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 4 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToVest "SmokeShellRed";
	this addItemToVest "SmokeShellGreen";
	this addWeapon "rhs_weap_m4a1_grip";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	[this,_Patch] call bis_fnc_setUnitInsignia;

	VEST_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "UKCOM") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_PDA";
	this addWeapon "ItemWatch";
	this addWeapon "Rangefinder";
	this addHeadgear "TFA_ECH_SAND";
	this addUniform "U_B_CTRG_1";
	this addVest "V_PlateCarrierH_CTRG";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 4 do { this addItemToUniform "30rnd_556_magazine" };
	for "_i" from 1 to 2 do { this addItemToVest "30rnd_556_magazine" };
	this addWeapon "kio_l85a2";
	this addPrimaryWeaponItem "kio_Elcan";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "UKCR") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_PDA";
	this addWeapon "ItemWatch";
	this addHeadgear "TFA_ECH_SAND";
	this addUniform "U_B_CTRG_1";
	this addVest "V_PlateCarrierH_CTRG";
	this addBackpack "B_Kitbag_rgr";
	for "_i" from 1 to 4 do { this addItemToUniform "30rnd_556_magazine" };
	for "_i" from 1 to 2 do { this addItemToVest "30rnd_556_magazine" };
	this addWeapon "kio_l85a2";
	this addPrimaryWeaponItem "kio_Elcan";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	this addItemToBackpack "ToolKit";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "UKTL") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_PDA";
	this addWeapon "ItemWatch";
	this addWeapon "Binocular";
	this addHeadgear "TFA_ECH_SAND";
	this addUniform "U_B_CTRG_1";
	this addVest "V_PlateCarrierH_CTRG";
	this addBackpack "B_Kitbag_rgr";
	for "_i" from 1 to 3 do { this addItemToVest "30rnd_556_magazine" };
	for "_i" from 1 to 4 do { this addItemToUniform "30rnd_556_magazine" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeGreen_Grenade_shell" };
	for "_i" from 1 to 6 do { this addItemToVest "1Rnd_HE_Grenade_shell" };
	this addWeapon "kio_l85a2_ugl";
	this addPrimaryWeaponItem "kio_Elcan";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 4 do { this addItemToBackpack "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 4 do { this addItemToBackpack "1Rnd_HE_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "UKAR") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear "TFA_ECH_SAND";
	this addUniform "U_B_CTRG_1";
	this addVest "V_PlateCarrierH_CTRG";
	this addBackpack "B_Kitbag_rgr";
	for "_i" from 1 to 2 do { this addItemToVest "rhsusf_100Rnd_556x45_soft_pouch" };
	this addItemToUniform "rhsusf_100Rnd_556x45_soft_pouch";
	this addWeapon "rhs_weap_m249_pip";
	for "_i" from 1 to 2 do { this addItemToUniform "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 2 do { this addItemToBackpack "HandGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 3 do { this addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "UKGR") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear "TFA_ECH_SAND";
	this addUniform "U_B_CTRG_1";
	this addVest "V_PlateCarrierH_CTRG";
	this addBackpack "B_Kitbag_rgr";
	for "_i" from 1 to 3 do { this addItemToVest "30rnd_556_magazine" };
	for "_i" from 1 to 4 do { this addItemToUniform "30rnd_556_magazine" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToVest "1Rnd_SmokeGreen_Grenade_shell" };
	for "_i" from 1 to 6 do { this addItemToVest "1Rnd_HE_Grenade_shell" };
	this addWeapon "kio_l85a2_ugl";
	this addPrimaryWeaponItem "kio_Elcan";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 2 do { this addItemToVest "HandGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 4 do { this addItemToBackpack "1Rnd_SmokeRed_Grenade_shell" };
	for "_i" from 1 to 4 do { this addItemToBackpack "1Rnd_HE_Grenade_shell" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "UKCM") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear "TFA_ECH_SAND";
	this addUniform "U_B_CTRG_1";
	this addVest "V_PlateCarrierH_CTRG";
	this addBackpack "B_Kitbag_rgr";
	for "_i" from 1 to 3 do { this addItemToVest "30rnd_556_magazine" };
	for "_i" from 1 to 4 do { this addItemToUniform "30rnd_556_magazine" };
	for "_i" from 1 to 5 do { this addItemToVest "30rnd_556_magazine" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	this addWeapon "kio_l85a2";
	this addPrimaryWeaponItem "kio_Elcan";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 6 do { this addItemToBackpack "30rnd_556_magazine" };
	for "_i" from 1 to 2 do { this addItemToBackpack "20Rnd_762x51_Mag" };
	for "_i" from 1 to 2 do { this addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch" };
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	[this,"NoHarm"] call bis_fnc_setUnitInsignia;

	COMBAT_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 1, true];
	 
};
if (_class == "UKDM") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear "TFA_ECH_SAND";
	this addUniform "U_B_CTRG_1";
	this addVest "V_PlateCarrierH_CTRG";
	this addBackpack "B_Kitbag_rgr";
	for "_i" from 1 to 5 do { this addItemToVest "20Rnd_762x51_Mag" };
	for "_i" from 1 to 3 do { this addItemToUniform "20Rnd_762x51_Mag" };
	this addWeapon "srifle_DMR_03_tan_F";
	this addPrimaryWeaponItem "optic_KHS_tan";
	this addPrimaryWeaponItem "bipod_01_F_snd";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "ACE_RangeCard";
	for "_i" from 1 to 2 do { this addItemToVest "HandGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "UKAT") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear "TFA_ECH_SAND";
	this addUniform "U_B_CTRG_1";
	this addVest "V_PlateCarrierH_CTRG";
	this addBackpack "B_Kitbag_rgr";
	for "_i" from 1 to 3 do { this addItemToVest "30rnd_556_magazine" };
	for "_i" from 1 to 4 do { this addItemToUniform "30rnd_556_magazine" };
	for "_i" from 1 to 5 do { this addItemToVest "30rnd_556_magazine" };
	for "_i" from 1 to 3 do {this addItemToBackpack "CUP_MAAWS_HEAT_M";};
	this addItemToBackpack "CUP_MAAWS_HEDP_M";
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	this addWeapon "kio_l85a2";
	this addPrimaryWeaponItem "kio_Elcan";
	this addWeapon "CUP_launch_MAAWS";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USPIL") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_PDA";
	this addWeapon "ItemWatch";
	this addHeadgear "H_PilotHelmetHeli_B";
	this addUniform "TFA_acu";
	this addVest "V_Rangemaster_belt";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 4 do { this addItemToUniform "16Rnd_9x21_Mag" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "B_IR_Grenade";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SMALL_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USMED") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_PDA";
	this addWeapon "ItemWatch";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 3 do { this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 4 do { this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	this addWeapon "rhs_weap_m4a1_grip";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	this addItemToVest "B_IR_Grenade";
	[this,"Medic"] call bis_fnc_setUnitInsignia;

	MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 2, true];
	 
};
if (_class == "USSTAFF") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemMap";
	this addWeapon "b_EasyTrack_PDA";
	this addWeapon "ItemWatch";
	this addHeadgear _Hat;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 3 do { this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 4 do { this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 3 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	this addItemToVest "B_UavTerminal";
	this addItemToVest "CL_LogiTracker";
	this addWeapon "rhs_weap_m4a1_grip";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	this addItemToVest "B_IR_Grenade";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SMALL_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USMMG") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	this addItemToUniform "130Rnd_338_Mag";
	this addWeapon "MMG_02_black_F";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
	this addPrimaryWeaponItem "bipod_01_F_blk";
	this addItemToBackpack "ACE_SpareBarrel";
	for "_i" from 1 to 2 do { this addItemToUniform "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 2 do { this addItemToVest "HandGrenade" };
	for "_i" from 1 to 3 do { this addItemToBackpack "130Rnd_338_Mag" };
	for "_i" from 1 to 2 do { this addItemToBackpack "SmokeShell" };
	this addItemToBackpack "SmokeShellRed";
	this addItemToBackpack "SmokeShellGreen";
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USAMG") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 4 do { this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 4 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToVest "SmokeShellRed";
	this addItemToVest "SmokeShellGreen";
	this addWeapon "rhs_weap_m4a1_grip";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 4 do { this addItemToBackpack "130Rnd_338_Mag" };
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USSNI") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "b_EasyTrack_PDA";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 4 do { this addItemToVest "CUP_5Rnd_762x51_M24" };
	for "_i" from 1 to 4 do { this addItemToBackpack "CUP_5Rnd_762x51_M24" };
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToVest "SmokeShellRed";
	this addItemToVest "SmokeShellGreen";
	this addWeapon "CUP_srifle_M24_des";
	this addPrimaryWeaponItem "bipod_01_F_snd";
	this addPrimaryWeaponItem "optic_KHS_tan";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	this addItemToBackpack "ACE_Tripod";
	this addItemToVest "ACE_RangeCard";
	for "_i" from 1 to 8 do { this addItemToBackpack "CUP_5Rnd_762x51_M24" };
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USSPO") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "b_EasyTrack_PDA";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 4 do { this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 4 do { this addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToVest "SmokeShellRed";
	this addItemToVest "SmokeShellGreen";
	this addWeapon "rhs_weap_m4a1_grip";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	this addItemToBackpack "ACE_SpottingScope";
	this addItemToVest "ACE_ATragMX";
	this addItemToVest "ACE_Kestrel4500";
	this addItemToVest "ACE_RangeCard";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	for "_i" from 1 to 4 do { this addItemToBackpack "CUP_5Rnd_762x51_M24" };
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};
if (_class == "USCE") exitWith {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	this addWeapon "ItemCompass";
	this addWeapon "ItemWatch";
	this addItemToVest "ACE_microDAGR";
	this addHeadgear _USHelmet;
	this addUniform "TFA_acu";
	this addVest "TFA_PlateCarrierH_ACU";
	this addBackpack "TFA_Kitbag_ACU";
	for "_i" from 1 to 4 do { this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag" };
	for "_i" from 1 to 4 do { this addItemToVest "30Rnd_556x45_Stanag_Tracer_Green" };
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToVest "ACE_DefusalKit";
	this addItemToVest "SmokeShellRed";
	this addItemToVest "SmokeShellGreen";
	this addWeapon "rhs_weap_m4a1_grip";
	this addPrimaryWeaponItem "rhsusf_acc_compm4";
	for "_i" from 1 to 2 do { this addItemToVest "SmokeShell" };
	this addItemToBackpack "MineDetector";
	this addItemToUniform "SmokeShellRed";
	this addItemToUniform "SmokeShellGreen";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do { this addItemToVest "MiniGrenade" };
	for "_i" from 1 to 2 do { this addItemToVest "B_IR_Grenade" };
	[this,_Patch] call bis_fnc_setUnitInsignia;

	SOLDIER_MEDIC_LOADOUT

	this setVariable ["ace_medical_medicClass", 0, true];
	 
};