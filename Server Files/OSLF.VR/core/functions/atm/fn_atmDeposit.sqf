// Transfer money from wallet to bank account

_toDeposit = ctrlText 251;
_toDep = parseNumber _toDeposit;

if !(_toDep isEqualType 7) exitWith {
	hint "Not a valid value, try again.";
};

if (_toDep > player getVariable "cash") exitWith {
	hint "You don't have that much cash.";
};

player setVariable ["bank",(player getVariable "bank") + (_Dep)];
player setVariable ["cash",(player getVariable "cash") - (_Dep)];


