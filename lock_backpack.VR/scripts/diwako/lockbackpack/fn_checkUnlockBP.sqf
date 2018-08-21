params ["_unit"];

if((_unit getVariable ["diwako_lockbackpack_locked",false]) && {isNull (unitBackpack _unit)} ) then {
  _unit setVariable ["diwako_lockbackpack_locked", false, true];
  [{["Backpack lock disabled"] call ace_common_fnc_displayTextStructured;}, []] call CBA_fnc_execNextFrame;
};