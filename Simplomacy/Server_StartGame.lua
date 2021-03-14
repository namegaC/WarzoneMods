require('RelationsMatrix')

function Server_StartGame(game, standing)
	playerGameData = Mod.PlayerGameData;
	publicGameData = Mod.PublicGameData;

	--"Peace" is now passed as a placeholder. Starting relation can later be configured in settings.
	InitialRelationsMatrix = RelationsMatrix(game, "Peace");

	publicGameData.RelationsMatrix = InitialRelationsMatrix;

	Mod.PublicGameData = publicGameData;
	Mod.PlayerGameData = playerGameData;
end