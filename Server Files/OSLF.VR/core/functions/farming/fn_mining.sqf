/*------------------------------------------------
	Author: Heisen
	File: fn_mining.sqf
	Desc: Mining system.
------------------------------------------------*/

params ["_num"];
ore = "";

_curObj = getModelInfo cursorObject;

switch (_curObj select 0) do {
	case "sharpstone_01.p3d": {
		ore = "OSLF_IronOre"; // ignore
	};
	default {};
};

if (cursorObject IN minedRocks) exitWith { hint "Recently mined." };
if (isNil "ore") exitWith { hint "Not a rock."};
if (ore == "") exitWith { hint "Not a rock."};

_currentXp = player getVariable "miningExp";

thePercent = floor random _currentXp / 1.5;
finalValue = round thePercent;

if (finalValue < 1) exitWith {
	hint "You didn't find any ore.";
};

for "_i" from 1 to finalValue do {
		player addMagazine ore;
};

minedRocks pushback cursorObject;

["miningExp",0.03] call h_fnc_addExperience;