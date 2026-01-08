local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- velocidad
local speed = 20
local output = 0.05

-- GUI
local ScreenGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Creator = Instance.new("TextLabel")
local DiscordLabel = Instance.new("TextLabel")
local WarningLabel = Instance.new("TextLabel")
local StartButton = Instance.new("TextButton")
local LoadingBarBG = Instance.new("Frame")
local LoadingBarFill = Instance.new("Frame")
local StatusLabel = Instance.new("TextLabel")
local ConsoleLog = Instance.new("ScrollingFrame")
local ConsoleText = Instance.new("TextLabel")

ScreenGui.Name = "LynoxHub"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

-- Fondo oscuro
Background.Parent = ScreenGui
Background.Size = UDim2.new(1,0,1,0)
Background.BackgroundColor3 = Color3.fromRGB(0,0,0)
Background.BackgroundTransparency = 0.35
Background.BorderSizePixel = 0

-- Panel principal
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(10,15,25)
MainFrame.BackgroundTransparency = 0
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.6,0,0.18,0)
MainFrame.Size = UDim2.new(0,460,0,480)
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0,20)

-- Título
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0,25,0,18)
Title.Size = UDim2.new(1,-50,0,32)
Title.Font = Enum.Font.GothamBold
Title.Text = "Auto Moreira Method"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextSize = 22
Title.TextXAlignment = Left

-- Creador
Creator.Parent = MainFrame
Creator.BackgroundTransparency = 1
Creator.Position = UDim2.new(0,25,0,52)
Creator.Size = UDim2.new(1,-50,0,18)
Creator.Font = Enum.Font.Gotham
Creator.Text = "Lynox Hub"
Creator.TextColor3 = Color3.fromRGB(130,140,160)
Creator.TextSize = 13
Creator.TextXAlignment = Left

-- Discord
DiscordLabel.Parent = MainFrame
DiscordLabel.BackgroundTransparency = 1
DiscordLabel.Position = UDim2.new(0,25,0,72)
DiscordLabel.Size = UDim2.new(1,-50,0,18)
DiscordLabel.Font = Enum.Font.Gotham
DiscordLabel.Text = "Discord: https://discord.gg/9KJ5UJQu"
DiscordLabel.TextColor3 = Color3.fromRGB(100,170,255)
DiscordLabel.TextSize = 13
DiscordLabel.TextXAlignment = Left

-- Advertencia
WarningLabel.Parent = MainFrame
WarningLabel.BackgroundTransparency = 1
WarningLabel.Position = UDim2.new(0,25,0,100)
WarningLabel.Size = UDim2.new(1,-50,0,70)
WarningLabel.Font = Enum.Font.GothamBold
WarningLabel.TextWrapped = true
WarningLabel.Text = "⚠ SOLO FUNCIONA con cosas arriba de 100M o EXCLUSIVAS.\nDebes estar SOLO en el servidor."
WarningLabel.TextColor3 = Color3.fromRGB(255,120,120)
WarningLabel.TextSize = 14
WarningLabel.TextXAlignment = Left

-- Botón iniciar
StartButton.Parent = MainFrame
StartButton.BackgroundColor3 = Color3.fromRGB(50,130,255)
StartButton.Position = UDim2.new(0,25,0,175)
StartButton.Size = UDim2.new(1,-50,0,45)
StartButton.Font = Enum.Font.GothamBold
StartButton.Text = "Start Auto Moreira"
StartButton.TextColor3 = Color3.new(1,1,1)
StartButton.TextSize = 16
StartButton.AutoButtonColor = false
Instance.new("UICorner", StartButton).CornerRadius = UDim.new(0,12)

-- Barra de carga
LoadingBarBG.Parent = MainFrame
LoadingBarBG.BackgroundColor3 = Color3.fromRGB(40,45,60)
LoadingBarBG.BorderSizePixel = 0
LoadingBarBG.Position = UDim2.new(0,25,0,235)
LoadingBarBG.Size = UDim2.new(1,-50,0,4)
LoadingBarBG.Visible = false
Instance.new("UICorner", LoadingBarBG).CornerRadius = UDim.new(0,2)

LoadingBarFill.Parent = LoadingBarBG
LoadingBarFill.BackgroundColor3 = Color3.fromRGB(80,150,255)
LoadingBarFill.BorderSizePixel = 0
LoadingBarFill.Size = UDim2.new(0,0,1,0)
Instance.new("UICorner", LoadingBarFill).CornerRadius = UDim.new(0,2)

-- Estado
StatusLabel.Parent = MainFrame
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0,25,0,245)
StatusLabel.Size = UDim2.new(1,-50,0,20)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "Ready to start..."
StatusLabel.TextColor3 = Color3.fromRGB(160,170,190)
StatusLabel.TextSize = 13
StatusLabel.TextXAlignment = Center

-- Consola
ConsoleLog.Parent = MainFrame
ConsoleLog.BackgroundColor3 = Color3.fromRGB(0,0,0)
ConsoleLog.BackgroundTransparency = 0.5
ConsoleLog.BorderSizePixel = 0
ConsoleLog.Position = UDim2.new(0,25,0,275)
ConsoleLog.Size = UDim2.new(1,-50,0,185)
ConsoleLog.CanvasSize = UDim2.new(0,0,0,0)
ConsoleLog.ScrollBarThickness = 4
Instance.new("UICorner", ConsoleLog).CornerRadius = UDim.new(0,10)

ConsoleText.Parent = ConsoleLog
ConsoleText.BackgroundTransparency = 1
ConsoleText.Position = UDim2.new(0,8,0,6)
ConsoleText.Size = UDim2.new(1,-16,1,-12)
ConsoleText.Font = Enum.Font.Code
ConsoleText.Text = "Console ready...\n"
ConsoleText.TextColor3 = Color3.fromRGB(200,210,220)
ConsoleText.TextSize = 11
ConsoleText.TextWrapped = true
ConsoleText.TextXAlignment = Left
ConsoleText.TextYAlignment = Top
ConsoleText.RichText = true
