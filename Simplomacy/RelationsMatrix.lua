function RelationsMatrix(game, startRelations)
    local RelationsMatrix = {};
    for _, player1 in pairs(game.ServerGame.Game.PlayingPlayers)do
        local relation = {};
        RelationsMatrix[player1.ID] = relation;
        for _, relation in pairs(RelationsMatrix)do
            for _, player2 in pairs(game.ServerGame.Game.PlayingPlayers)do
                 if (player1.ID ~= player2.ID)then
                    relation[player2.ID] = startRelations;
                 end
            end
        end
    end
    for _, entry in pairs(RelationsMatrix)do
        -- 1201687 is myself
        -- print(entry[1201687]);
    end
    return RelationsMatrix;
end

