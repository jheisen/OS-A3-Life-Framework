
class HeisensFunctions
{
	
	tag = "h";
	
	class core	
	{
		file = "core";
		class firstConnect{};
	};
	
	class farming 
	{
		file = "core\functions\farming";
		class mining{};
	}
	
	class atm
	{
		file = "core\functions\atm";
		class atmDeposit{};
		class atmTransfer{};
		class atmWithdraw{};
	}
	
	class misc 
	{
		file = "core\functions\misc";
		class addExperience{};
		class addCash{};
		class changeHunger{};
		class changeThirst{};
	}
	
};