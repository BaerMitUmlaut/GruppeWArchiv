params [["_marker","",[""]],["_infantrie_all",[],[[]]],["_list",[],[[]]],["_template_count",[],[[]]]"_side_templates"];

 //INF Assault
    _reinfGroup=count ASS_used_Groups;
    ASS_used_Groups pushBack _reinfGroup;
    
    _rp = selectRandom ASS_RallyPoint_ground;
    _infantrie = selectRandom _infantrie_all;


    [_reinfGroup,_rp,_infantrie,_list,_marker, _side_templates] spawn {
      params ["_reinfGroup","_rp","_infantrie","_list","_marker", "_side_templates"];
      
      _assault = [getpos _rp, _marker, [_infantrie], ["REINFORCEMENT:", [_reinfGroup]]] call FUPS_fnc_spawn;
      
      [_list, [_reinfGroup], _side_templates, true, true] call FUPS_fnc_reinforcement;
    };
   
    ASS_Count_Spawned = ASS_Count_Spawned + (_template_count select _infantrie);

