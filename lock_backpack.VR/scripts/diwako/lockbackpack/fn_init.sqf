private _action = ["diwako_lockbackpack_lock","Lock backpack","",{
	ace_player setVariable ["diwako_lockbackpack_locked", true, true];
	[{["Backpack locked"] call ace_common_fnc_displayTextStructured;}, []] call CBA_fnc_execNextFrame;
},{!isNull (unitBackpack ace_player) && {!(ace_player getVariable ["diwako_lockbackpack_locked",false])}}] call ace_interact_menu_fnc_createAction;

[typeOf ace_player, 1, ["ACE_SelfActions","ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["diwako_lockbackpack_unlock","Unlock backpack","",{
	ace_player setVariable ["diwako_lockbackpack_locked", false, true];
	[{["Backpack unlocked"] call ace_common_fnc_displayTextStructured;}, []] call CBA_fnc_execNextFrame;
},{!isNull (unitBackpack ace_player) && {ace_player getVariable ["diwako_lockbackpack_locked",false]}}] call ace_interact_menu_fnc_createAction;

[typeOf ace_player, 1, ["ACE_SelfActions","ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToClass;


["unit", diwako_lockbackpack_fnc_checkUnlockBP] call CBA_fnc_addPlayerEventHandler;
["loadout", diwako_lockbackpack_fnc_checkUnlockBP] call CBA_fnc_addPlayerEventHandler;