player addEventHandler ["fired", {
	_unit = _this select 0;
	_weapon = _this select 1;
	_mag = _this select 5;

	switch (_weapon) do {
		case "OSLF_Pickaxe": {
			[] call h_fnc_mining;
		};
		case "OSLF_Axe": {
			[]  call h_fnc_chopTree;
		};
		default{};
	};
}];