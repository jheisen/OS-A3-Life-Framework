
player setVariable ["bank",1250];
player setVariable ["cash",nil];

player setVariable ["hunger",100];
player setVariable ["thirst",100];

player setVariable ["miningExp",1.25];
player setVariable ["loggingExp",0];

player setVariable ["currentJob",""];

transactionHistory = [
	// From,To,Type,Money Sent.
	["Goverment",name player,"Wire Transfer",1250]
];