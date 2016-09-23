// Transfer money from bank balence to wallet

_toWithdraw = ctrlText 251;
_toWith = parseNumber _toWithdraw;

if !(_toWith isEqualType 7) exitWith {
	hint "Not a valid value, try again.";
};

if (_toWith > player getVariable "bank") exitWith {
	hint "You don't have that much cash in your bank account.";
};

player setVariable ["bank",(player getVariable "bank") - (_toWith)];
player setVariable ["cash",(player getVariable "cash") + (_toWith)];