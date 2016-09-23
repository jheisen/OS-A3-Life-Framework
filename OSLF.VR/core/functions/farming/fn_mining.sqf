// Mining

params ["_num"];
ore = "";

_curObj = getModelInfo cursorObject;

switch (_curObj select 0) do {
	case "sharpstone_01.p3d": {
		ore = "30Rnd_65x39_caseless_mag"; // ignore
	};
	default {};
};

if (_curObj IN minedRocks) exitWith { systemChat "Recently mined." };
if (isNil "ore") exitWith { systemChat "Not a rock."};
if (ore == "") exitWith { systemChat "Not a rock."};

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