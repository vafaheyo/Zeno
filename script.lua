-- Скрипт для скрытия никнеймов игроков

local function hideNametags()
    -- Проходимся по всем игрокам на сервере
    for _, player in pairs(game.Players:GetPlayers()) do
        local character = player.Character or player.CharacterAdded:Wait()
        if character then
            -- Ищем BillboardGui внутри головы персонажа
            local head = character:WaitForChild("Head")
            local billboardGui = head:FindFirstChild("BillboardGui")
            if billboardGui then
                -- Отключаем BillboardGui
                billboardGui.Enabled = false
                print("Никнейм игрока " .. player.Name .. " скрыт.")
            end
        end
    end
end

-- Вызываем функцию при запуске
hideNametags()

-- Отслеживаем новых игроков
game.Players.PlayerAdded:Connect(function(newPlayer)
    newPlayer.CharacterAdded:Connect(function(character)
        -- Ждём загрузки персонажа нового игрока
        wait(1) -- Небольшая задержка для загрузки
        local head = character:WaitForChild("Head")
        local billboardGui = head:FindFirstChild("BillboardGui")
        if billboardGui then
            billboardGui.Enabled = false
            print("Никнейм нового игрока " .. newPlayer.Name .. " скрыт.")
        end
    end)
end)
