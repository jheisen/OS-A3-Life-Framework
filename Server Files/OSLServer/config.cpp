class CfgPatches
{
	class OSLServer
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
	};
};

class CfgFunctions 
{
	class ExternalS
	{
		class ExtDB3
		{
			file = "OSLServer\ExtDB3";
			class ExtDB3async {};
            class ExtDB3init {};
			class ExtDB3strip {};
			class ExtDB3query {};
		};
	};
};