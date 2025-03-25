-- Скрипт для скрытия никнеймов над головами игроков

local player = game.Players.LocalPlayer
local function hideNametags()
    -- Проходимся по всем игрокам в игре
    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        local character = otherPlayer.Character
        if character then
            -- Ищем BillboardGui внутри персонажа
            local billboardGui = character:FindFirstChild("Head"):FindFirstChild("BillboardGui")
            if billboardGui then
                -- Отключаем BillboardGui
                billboardGui.Enabled = false
            end
        end
    end
end

-- Вызываем функцию при запуске
hideNametags()

-- Отслеживаем появление новых игроков
game.Players.PlayerAdded:Connect(function(newPlayer)
    newPlayer.CharacterAdded:Connect(function(character)
        -- Ждём загрузки персонажа нового игрока
        wait(1) -- Небольшая задержка для загрузки
        local billboardGui = character:FindFirstChild("Head"):FindFirstChild("BillboardGui")
        if billboardGui then
            billboardGui.Enabled = false
        end
    end)
end)
