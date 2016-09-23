// Mining
// Not completed, not tested

params ["_ore","_num"];

_curObj = getModelInfo cursorObject;

switch (_curObj select 0) do {
	case "cliff_wall_long_f.p3d": {
		_ore = "30Rnd_65x39_caseless_mag";
	};
	default{};
};

_currentXp = player getVariable "miningExp";

if (_currentXp <= 998) then {
	_num = 10;
};
if (_currentXp >= 999 && _currentXp <= 2000) then {
	_num = 15;
};
if (_currentXp >= 2001 && _currentXp <= 3000) then {
	_num = 20;
};
if (_currentXp >= 3001 && _currentXp <= 4000) then {
	_num = 25;
};

thePercent = floor random _num;
newValue = thePercent / 10;
finalValue = round newValue;

if (finalValue < 1) exitWith {
	hint "You didn't find any ore.";
};

for "_i" from 1 to finalValue do {
		player addMagazine _ore;
		["miningExp",(42 * finalValue)] call h_fnc_addExperience;
};

sleep 3;
hint "";