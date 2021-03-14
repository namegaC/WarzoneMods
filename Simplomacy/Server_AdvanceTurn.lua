function Server_AdvanceTurn_Start (game,addNewOrder)
	playerGameData = Mod.PlayerGameData;
	publicGameData = Mod.PublicGameData;

    for _, entry in pairs(publicGameData.RelationsMatrix)do
        -- 1201687 is myself
        print(entry[1201687]);
    end
end

function Server_AdvanceTurn_Order(game, order, result, skipThisOrder, addNewOrder)

end

function Server_AdvanceTurn_End (game,addNewOrder)

end

