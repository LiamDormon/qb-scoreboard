QBCore = nil
TriggerEvent("QBCore:GetObject", function(obj)
    QBCore = obj
end)

QBCore.Functions.CreateCallback("scoreboard:GetPlayers", function(source, cb)
    local players = {}
    for k, player in pairs(QBCore.Functions.GetPlayers()) do
        local charinfo = QBCore.Functions.GetPlayer(player).PlayerData.charinfo
        players[k] = {
            ["name"] = GetPlayerName(player),
            ["charName"] = ("%s %s"):format(charinfo.firstname, charinfo.lastname),
            ["id"] = player
        }
    end

    cb(players)
end)