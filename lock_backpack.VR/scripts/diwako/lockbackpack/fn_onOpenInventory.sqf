params ["_unit", "_backpack"];

private _target = objectParent _backpack;

if (isNull _target) exitWith {false};

if (alive _target && {!(_target getVariable ["ace_unconscious",false]) && {_target getVariable ["diwako_lockbackpack_locked",false]}}) exitWith {
  [{
    !isNull (findDisplay 602)
  },
  {
    (findDisplay 602) closeDisplay 0;
    ["Backpack locked"] call ace_common_fnc_displayTextStructured;
  },
  []] call CBA_fnc_waitUntilAndExecute;

  true
};

// return false to open inventory as usual
false