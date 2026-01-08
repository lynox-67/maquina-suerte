local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- adjust speed
local speed = 20 
local output = 0.05

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Creator = Instance.new("TextLabel")
local DiscordLabel = Instance.new("TextLabel")
local WarningLabel = Instance.new("TextLabel")
local StartButton = Instance.new("TextButton")
local LoadingBarBG = Instance.new("Frame")
local LoadingBarFill = Instance.new("Frame")
local StatusLabel = Instance.new("TextLabel")
local AutoBlockLabel = Instance.new("TextLabel")
local AntiCooldownLabel = Instance.new("TextLabel")
local ConsoleLog = Instance.new("ScrollingFrame")
local ConsoleText = Instance.new("TextLabel")

ScreenGui.Name = "AutoMoreiraGUI"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 15, 25)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.65, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 380, 0, 360)
MainFrame.Active = true
MainFrame.Draggable = true

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 20)

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 25, 0, 18)
Title.Size = UDim2.new(1, -50, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "Auto Moreira Method"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22
Title.TextXAlignment = Left

Creator.Parent = MainFrame
Creator.BackgroundTransparency = 1
Creator.Position = UDim2.new(0, 25, 0, 48)
Creator.Size = UDim2.new(1, -50, 0, 18)
Creator.Font = Enum.Font.Gotham
Creator.Text = "Lynox Hub"
Creator.TextColor3 = Color3.fromRGB(130, 140, 160)
Creator.TextSize = 13
Creator.TextXAlignment = Left

DiscordLabel.Parent = MainFrame
DiscordLabel.BackgroundTransparency = 1
DiscordLabel.Position = UDim2.new(0, 25, 0, 66)
DiscordLabel.Size = UDim2.new(1, -50, 0, 18)
DiscordLabel.Font = Enum.Font.Gotham
DiscordLabel.Text = "Discord: discord.gg/9KJ5UJQu"
DiscordLabel.TextColor3 = Color3.fromRGB(100, 170, 255)
DiscordLabel.TextSize = 13
DiscordLabel.TextXAlignment = Left

WarningLabel.Parent = MainFrame
WarningLabel.BackgroundTransparency = 1
WarningLabel.Position = UDim2.new(0, 25, 0, 90)
WarningLabel.Size = UDim2.new(1, -50, 0, 40)
WarningLabel.Font = Enum.Font.GothamBold
WarningLabel.TextWrapped = true
WarningLabel.Text = "NO funciona si no tienes brairots exclusivos y/o más de 100M.\nDebes estar SOLO en el server."
WarningLabel.TextColor3 = Color3.fromRGB(255, 120, 120)
WarningLabel.TextSize = 13
WarningLabel.TextXAlignment = Left

StartButton.Parent = MainFrame
StartButton.BackgroundColor3 = Color3.fromRGB(50, 130, 255)
StartButton.Position = UDim2.new(0, 25, 0, 140)
StartButton.Size = UDim2.new(1, -50, 0, 45)
StartButton.Font = Enum.Font.GothamBold
StartButton.Text = "Start Auto Moreira"
StartButton.TextColor3 = Color3.new(1,1,1)
StartButton.TextSize = 16
StartButton.AutoButtonColor = false
Instance.new("UICorner", StartButton).CornerRadius = UDim.new(0, 12)

LoadingBarBG.Parent = MainFrame
LoadingBarBG.BackgroundColor3 = Color3.fromRGB(40,45,60)
LoadingBarBG.BorderSizePixel = 0
LoadingBarBG.Position = UDim2.new(0,25,0,195)
LoadingBarBG.Size = UDim2.new(1,-50,0,4)
LoadingBarBG.Visible = false
Instance.new("UICorner", LoadingBarBG).CornerRadius = UDim.new(0,2)

LoadingBarFill.Parent = LoadingBarBG
LoadingBarFill.BackgroundColor3 = Color3.fromRGB(80,150,255)
LoadingBarFill.BorderSizePixel = 0
LoadingBarFill.Size = UDim2.new(0,0,1,0)
Instance.new("UICorner", LoadingBarFill).CornerRadius = UDim.new(0,2)

StatusLabel.Parent = MainFrame
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0,25,0,205)
StatusLabel.Size = UDim2.new(1,-50,0,18)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "Ready to start..."
StatusLabel.TextColor3 = Color3.fromRGB(160,170,190)
StatusLabel.TextSize = 13
StatusLabel.TextXAlignment = Center

ConsoleLog.Parent = MainFrame
ConsoleLog.BackgroundColor3 = Color3.new(0,0,0)
ConsoleLog.BackgroundTransparency = 0.6
ConsoleLog.BorderSizePixel = 0
ConsoleLog.Position = UDim2.new(0,25,0,230)
ConsoleLog.Size = UDim2.new(1,-50,0,110)
ConsoleLog.ScrollBarThickness = 0
Instance.new("UICorner", ConsoleLog).CornerRadius = UDim.new(0,10)

ConsoleText.Parent = ConsoleLog
ConsoleText.BackgroundTransparency = 1
ConsoleText.Position = UDim2.new(0,8,0,6)
ConsoleText.Size = UDim2.new(1,-16,1,-12)
ConsoleText.Font = Enum.Font.Code
ConsoleText.TextColor3 = Color3.fromRGB(200,210,220)
ConsoleText.TextSize = 11
ConsoleText.TextWrapped = true
ConsoleText.TextXAlignment = Left
ConsoleText.TextYAlignment = Top
ConsoleText.RichText = true
