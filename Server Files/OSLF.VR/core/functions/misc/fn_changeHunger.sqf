// Change value of hunger
_newValue = _this select 0;
_type = _this select 1;
if (_type == "+") then {
	player setVariable["hunger",(player getVariable "hunger") + (_newValue)];
} else {
	if !(_type == "-") exitWith {};
	player setVariable["hunger",(player getVariable "hunger") - (_newValue)];
};

changed = true;
sleep 2;
changed = false;