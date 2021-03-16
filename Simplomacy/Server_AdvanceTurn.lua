require('RelationsMatrix')
require('DiplomacyOrder')


function Server_AdvanceTurn_Start (game,addNewOrder)
	playerGameData = Mod.PlayerGameData;
	publicGameData = Mod.PublicGameData;

    --To test Diplomacy card beginning of turn: (verified: works)
    DiplomacyOrder(WL, addNewOrder, 1201687, 2)
end

function Server_AdvanceTurn_Order(game, order, result, skipThisOrder, addNewOrder)

    playerGameData = Mod.PlayerGameData;
	publicGameData = Mod.PublicGameData;
    for _, entry in pairs(publicGameData.RelationsMatrix)do
        -- 1201687 is myself
        -- print(entry[1201687]);
    end

    --For testing purposes, relations can be changed to "Allied" by playing a Spy card.
    if(order.proxyType == 'GameOrderPlayCardSpy') then
        publicGameData.RelationsMatrix = ChangedRelations(order.PlayerID, order.TargetPlayerID, publicGameData.RelationsMatrix, "Allied");
    end

    --For testing purposes, relations can be changed to "Peace" by playing a Gift card.
    if(order.proxyType == 'GameOrderPlayCardGift') then
        publicGameData.RelationsMatrix = ChangedRelations(order.PlayerID, order.GiftTo, publicGameData.RelationsMatrix, "Peace");
    end

    --For testing purposes, relations can be changed to "War" by playing a Sanctions card.
    if(order.proxyType == 'GameOrderPlayCardSanctions') then
        publicGameData.RelationsMatrix = ChangedRelations(order.PlayerID, order.SanctionedPlayerID, publicGameData.RelationsMatrix, "War");
    end


    Mod.PublicGameData = publicGameData;
	Mod.PlayerGameData = playerGameData;


end

function Server_AdvanceTurn_End (game,addNewOrder)

end

