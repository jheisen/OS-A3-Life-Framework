// Add cash to player's wallet

_toAdd = _this select 0;
player setVariable["cash",(player getVariable "cash") + (_toAdd)];