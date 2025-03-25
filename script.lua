-- Пример: Отображение координат на экране
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Создаём текстовый элемент GUI
local screenGui = Instance.new("ScreenGui")
local textLabel = Instance.new("TextLabel")

screenGui.Parent = player.PlayerGui
textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.new(0, 0, 0)
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextScaled = true
textLabel.Parent = screenGui

while true do
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local position = humanoidRootPart.Position
    
    -- Обновляем текст в GUI
    textLabel.Text = string.format("X: %.1f, Y: %.1f, Z: %.1f", position.X, position.Y, position.Z)
    
    wait(1) -- Обновляем каждую секунду
end
