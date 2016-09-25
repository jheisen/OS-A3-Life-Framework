while {true} do {
	sleep 250;
	player setVariable ["hunger",(player getVariable "hunger") - (1)];
	sleep 50;
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