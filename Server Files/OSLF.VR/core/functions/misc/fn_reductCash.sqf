// reduct cash to player's wallet

_toReduct = _this select 0;
player setVariable["cash",(player getVariable "cash") - (_toReduct)];