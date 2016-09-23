
/* temp vars */
nsrServer_loaded = true; 
firstConnect = true;
minedRocks = [];
/* */

waitUntil {nsrServer_loaded};
	if (firstConnect) then {
		[] call h_fnc_firstConnect;
	};
