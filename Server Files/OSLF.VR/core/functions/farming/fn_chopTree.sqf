/*------------------------------------------------
	Author: Heisen
	File: fn_chopTree.sqf
	Desc: Wood cutting.
------------------------------------------------*/

_trees = ["t_ficus_medium_f.p3d"];

_curObj = getModelInfo cursorObject;

if !(_curObj select 0 IN _trees) exitWith { hint "Not a tree."};
if (player distance cursorObject > 4) exitWith { hint "Not close enough." };
if (getDammage cursorObject > 1) exitWith { hint "Already chopped down." };

systemChat str (getDammage cursorObject);
_current = getDammage cursorObject;

if (_current > 0.9) then {
	player addMagazine "OSLF_WoodLog";
};
cursorObject setDamage (_current + 0.1); 

["loggingExp",0.01] call h_fnc_addExperience;
