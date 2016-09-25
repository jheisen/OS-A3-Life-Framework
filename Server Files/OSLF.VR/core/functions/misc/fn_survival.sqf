while {true} do {
	sleep 500;
	player setVariable ["hunger",(player getVariable "hunger") - (1)];
	sleep 100;
	player setVariable ["thirst",(player getVariable "thirst") - (1)];
};
while {true} do {
	waitUntil {changed = true};
	if (player getVariable "hunger" > 100) then {
		player setVariable["hunger",100];
	};
	if (player getVariable "thirst" > 100) then {
		player setVariable["thirst",100];
	};
	if (player getVariable "hunger" < 1) then {
		player setVariable["hunger",1];
	};
	if (player getVariable "thirst" < 1) then {
		player setVariable["thirst",1];
	};
};