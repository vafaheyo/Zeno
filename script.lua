local showNametags = true -- Переключатель

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.F9 and not gameProcessed then
        showNametags = not showNametags -- Переключаем состояние
        print("Показ никнеймов: " .. tostring(showNametags))

        -- Обновляем видимость никнеймов
        for _, otherPlayer in pairs(game.Players:GetPlayers()) do
            local character = otherPlayer.Character
            if character then
                local billboardGui = character:FindFirstChild("Head"):FindFirstChild("BillboardGui")
                if billboardGui then
                    billboardGui.Enabled = showNametags
                end
            end
        end
    end
end)
