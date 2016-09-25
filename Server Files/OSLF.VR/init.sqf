//temp
execVM "core\functions\misc\randomVars.sqf";

oslfServer_loaded = true;
firstConnect = true;
//

waitUntil {oslfServer_loaded};

if (firstConnect) then {
	[] call h_fnc_firstConnect;
};
[] call h_fnc_survival;

