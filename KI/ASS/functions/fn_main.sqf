                                                                                                                                                              /*
 * Author: [W] OmniMan & [W] Mezilsa
 * Automates a FUPS-assault on a predefined area
 *
 * Arguments:
 * 0:            <OBJECT> - Assaultet Trigger
 * 1:            <STRING> - Assaultet Marker
 * 2:            <NUMBER> - Maximal active KI
 * 3:            <NUMBER> - Time until armored Units are spawning
 * 4:            <NUMBER> - Time until aerial Units are spawning
 * @optional 5:  <NUMBER> - Chance of spawning an armored unit   DEFAULT: 10%
 * @optional 6:  <NUMBER> - Chance of spawning an aerial unit  DEFAULT: 5%
 * @optional 7:  <NUMBER> - How many enemies can be spawned completly until script ends DEFAULT: 300 Units
 *
 * Example:
 * _wert=[thisTrigger,"Camp_Whiskey",74,3600,1800,20,10,100] spawn ass_fnc_main;
 *
 */

params [["_trigger",ObjNull,[ObjNull]],["_marker","",[""]],["_maxKI",0,[0]],["_timeAPC",0,[0]],["_timeAIR",0,[0]],["_probAPC",0,[10]],["_probAIR",0,[5]],["_tillEnd",0,[300]]];

private _infantrie_all = [];
private _apc_all = [];
private _air_all = [];
private _list = [];
private _template_count = [];
private _apc=0;
private _air=0;
private _infantrie=0;

//Getting template side
FUPS_templates params ["_firstGroup"];
_firstGroup params ["_side_templates"];

//Sorting in FUPS Templates
{ _x params ["", "_t1"];
  _t1 params ["_t2"];
  _t2 params ["_temp"];
  
  if((_temp) isKindOf "Man") then{ 
    _infantrie_all pushBack _forEachIndex;          
  }; 
  if((_temp) isKindOf "Car") then{ 
    _infantrie_all pushBack _forEachIndex;
  };
  if((_temp) isKindOf "Tank") then{
    _apc_all pushBack _forEachIndex;
  };
  if((_temp) isKindOf"Air") then{ 
    _air_all pushBack _forEachIndex;
  };
  
  //Counting KI in a seperate Template
  _ki_count=count _t1;
  _template_count pushback _ki_count;
  
}forEach (FUPS_templates);



[{
  //Initialisierung
  
  params ["_args", "_pfhHandler"];
  _args params ["_maxKI","_marker","_infantrie_all","_trigger","_template_count","_side_templates","_air_all","_timeAIR","_timeAPC","_probAIR","_probAPC","_tillEnd","_apc_all"];
  _list = list _trigger;
  
  //Bedingung für Scriptende
  if((ASS_Count_Spawned>_tillEnd) && {count allPlayers < 0})then {
    [_pfhHandler] call CBA_fnc_removePerFrameHandler;
  };
  //Panzerspawn
  if ((Time > _timeAPC)  AND {(floor random 100)<=_probAPC} AND {(count(allUnits - playableUnits) < _maxKI)}AND {0!=count _apc_all}) then {
    
    _reinfGroup=count ASS_used_Groups;
    ASS_used_Groups pushBack _reinfGroup;
    
    _rp = selectRandom ASS_RallyPoint_ground;
    _apc= selectRandom _apc_all; 
    
    [_reinfGroup,_rp,_apc,_list,_marker,_side_templates] spawn { 
      
      params ["_reinfGroup","_rp","_apc","_list","_marker","_side_templates"];
      
      _assault = [getpos (_rp),_marker,[_apc],["REINFORCEMENT:",[_reinfGroup]]] call FUPS_fnc_spawn;
      
      [_list, [_reinfGroup], _side_templates, true, true] call FUPS_fnc_reinforcement;
    };
    ASS_Count_Spawned = ASS_Count_Spawned + (_template_count select _apc);
    
  };
  
  //Lufteinheiten
  if ((Time>_timeAIR) AND {(floor random 100)<=_probAIR} AND {count(allUnits - playableUnits) < _maxKI} AND {0!=count _air_all}) then {
    
    _reinfGroup=count ASS_used_Groups;
    ASS_used_Groups pushBack _reinfGroup;
    
    _rp = selectRandom ASS_RallyPoint_air;
    _air = selectRandom _air_all;
    
    [_reinfGroup,_rp,_air,_list,_marker,_side_templates] spawn { 
      
      params ["_reinfGroup","_rp","_air","_list","_marker","_side_templates"];
      
      _assault = [getpos _rp, _marker, [_air], ["REINFORCEMENT:", [_reinfGroup]]] call FUPS_fnc_spawn;
      
      [_list, [_reinfGroup], _side_templates, true, true] call FUPS_fnc_reinforcement;
    };
    
    ASS_Count_Spawned = ASS_Count_Spawned + (_template_count select _air);
    
  };
  
  //INFANTRIE
  if ((count(allUnits - playableUnits) < _maxKI)AND {0!=count _infantrie_all}) then {
    
    [_marker,_infantrie_all,_list,_template_count,_side_templates] call ass_fnc_spawn_Infantrie;
  }; 
  
} , 60, [_maxKI,_marker,_infantrie_all,_trigger,_template_count,_side_templates,_air_all,_timeAIR,_timeAPC,_probAIR,_probAPC,_tillEnd,_apc_all] ] call CBA_fnc_addPerFrameHandler;
