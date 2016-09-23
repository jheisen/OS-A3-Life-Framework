// Transfer money to other players bank balence

_toTrans = parsenumber (ctrlText 251);
_selectedPlayer = lbText 252;
_tax = 25; // temp var will recieve set price from mayor

if !(_toTrans isEqualType 7) exitWith {
	hint "Not a valid value, try again.";
};

if !(_toTrans > 99999) exitWith {
	hint "You can only transfer $99,000 at a time.";
};

if (player getVariable "bank" + _toTrans < _tax) exitWith {
	hint "You lack enough money for transactions fees.";
};

{
	if (getPlayerUID _x == _selectedPlayer select 1) then {
		_x setVariable["bank",(_x getVariable "bank") + (_toTrans)];
	};
}forEach allPlayers;

player setVariable["bank",(player getVariable "bank") - (_toTrans)];

// do transaction history here.
