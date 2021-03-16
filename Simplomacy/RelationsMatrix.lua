--A relations matrix holds the statusses between all players (allied, peace, war).

function RelationsMatrix(game, startRelation)
    local RelationsMatrix = {};
    for _, player1 in pairs(game.ServerGame.Game.PlayingPlayers)do
        local relation = {};
        RelationsMatrix[player1.ID] = relation;
        for _, relation in pairs(RelationsMatrix)do
            for _, player2 in pairs(game.ServerGame.Game.PlayingPlayers)do
                 if (player1.ID ~= player2.ID)then
                    relation[player2.ID] = startRelation;
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

function ChangedRelations(playerSelfID, playerOtherID, relations, newRelation)
    print("Changing relations...");
    relations[playerSelfID][playerOtherID] = newRelation;
    relations[playerOtherID][playerOtherID] = newRelation;
    print("Relations between ".. tostring(playerSelfID) .. " and " ..  tostring(playerOtherID) .. " changed to " .. newRelation);
    return relations;
end


