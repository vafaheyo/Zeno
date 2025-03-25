-- Создание простого GUI-меню
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Создаём ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SimpleMenu"
screenGui.Parent = playerGui

-- Создаём основную рамку для меню
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 400) -- Ширина: 300px, Высота: 400px
frame.Position = UDim2.new(0.5, -150, 0.5, -200) -- Центрируем по центру экрана
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Тёмно-серый цвет
frame.BorderSizePixel = 0 -- Убираем границу
frame.Parent = screenGui

-- Создаём заголовок
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50) -- Занимает всю ширину, высота: 50px
title.Position = UDim2.new(0, 0, 0, 0) -- Вверху рамки
title.BackgroundTransparency = 1 -- Прозрачный фон
title.Text = "Меню"
title.TextColor3 = Color3.new(1, 1, 1) -- Белый текст
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24
title.Parent = frame

-- Создаём кнопку (просто для вида, без функционала)
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.8, 0, 0, 40) -- Ширина: 80% от рамки, высота: 40px
button.Position = UDim2.new(0.1, 0, 0.2, 0) -- Отступы: 10% слева, 20% сверху
button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) -- Серый цвет
button.Text = "Кнопка"
button.TextColor3 = Color3.new(1, 1, 1) -- Белый текст
button.Font = Enum.Font.SourceSans
button.TextSize = 18
button.Parent = frame

-- Создаём ещё одну кнопку (тоже без функционала)
local button2 = button:Clone() -- Клонируем первую кнопку
button2.Position = UDim2.new(0.1, 0, 0.4, 0) -- Размещаем ниже первой кнопки
button2.Text = "Другая кнопка"
button2.Parent = frame
