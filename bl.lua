game.Players.PlayerAdded:Connect(function(player)
    local bannedIds = {1234, 5678, 9012} -- put the banned player IDs in this table
    if table.find(bannedIds, player.UserId) then
        player:Kick("AC | You have been banned from the game.")
    end
end)
