// Change value of thirst
_newValue = _this select 0;
_type = _this select 1;
if (_type == "+") then {
	player setVariable["thirst",(player getVariable "thirst") + (_newValue)];
} else {
	if !(_type == "-") exitWith {};
	player setVariable["thirst",(player getVariable "thirst") - (_newValue)];
};