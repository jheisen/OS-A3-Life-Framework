// Add experience to player for said skill
// Not tested

_skill = _this select 0;
_value = _this select 1;

if !(_value isEqualType 7) then {
	_newValue = parseNumber _value;
	player setVariable [_skill,(player getVariable _skill) + (_newValue)];
} else {
	player setVariable [_skill,(player getVariable _skill) + (_value)];
};
