
class HeisensFunctions
{

	tag = "h";

	class core
	{
		file = "core";
		class firstConnect{};
	};

	class eventhandlers
	{
		file = "core\eventhandlers";
		class evhFired{};
		class evhHitPart{};
	};

	class farming
	{
		file = "core\functions\farming";
		class mining{};
		class chopTree{};
	};

	class atm
	{
		file = "core\functions\atm";
		class atmDeposit{};
		class atmTransfer{};
		class atmWithdraw{};
	};

	class misc
	{
		file = "core\functions\misc";
		class addExperience{};
		class addCash{};
		class reductCash{};
		class changeHunger{};
		class changeThirst{};
		class survival{};
	};

};