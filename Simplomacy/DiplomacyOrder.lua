--Inserts diplomacy orders for alliances and peace.

function DiplomacyOrder(wl, addNewOrder, player1ID, player2ID)
    local cardinstance = wl.NoParameterCardInstance.Create(wl.CardID.Diplomacy);
    addNewOrder(wl.GameOrderReceiveCard.Create(player1ID, {cardinstance}));
    addNewOrder(wl.GameOrderPlayCardDiplomacy.Create(cardinstance.ID, player1ID, player1ID, player2ID));
    -- to do: pass the game's standing and reduce the duration of this card instance to expire directly after this turn.
end



