-- SERVICES
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- CONFIG
local speed = 20
local output = 0.05

-- GUI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Creator = Instance.new("TextLabel")
local DiscordLabel = Instance.new("TextLabel")
local ExclusiveLabel = Instance.new("TextLabel")
local StartButton = Instance.new("TextButton")
local LoadingBarBG = Instance.new("Frame")
local LoadingBarFill = Instance.new("Frame")
local StatusLabel = Instance.new("TextLabel")
local AutoBlockLabel = Instance.new("TextLabel")
local AntiCooldownLabel = Instance.new("TextLabel")
local ConsoleLog = Instance.new("ScrollingFrame")
local ConsoleText = Instance.new("TextLabel")

-- GUI SETUP
ScreenGui.Name = "AutoMoreiraGUI"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 15, 25)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.65, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 380, 0, 340)
MainFrame.Active = true
MainFrame.Draggable = true

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 20)

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 25, 0, 18)
Title.Size = UDim2.new(1, -50, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "Auto Moreira Method"
Title.TextColor3 = Color3.new(1,1,1)
Title.TextSize = 22
Title.TextXAlignment = Enum.TextXAlignment.Left

Creator.Parent = MainFrame
Creator.BackgroundTransparency = 1
Creator.Position = UDim2.new(0, 25, 0, 48)
Creator.Size = UDim2.new(1, -50, 0, 16)
Creator.Font = Enum.Font.Gotham
Creator.Text = "Made By Rusk"
Creator.TextColor3 = Color3.fromRGB(150,150,150)
Creator.TextSize = 12
Creator.TextXAlignment = Enum.TextXAlignment.Left

DiscordLabel.Parent = MainFrame
DiscordLabel.BackgroundTransparency = 1
DiscordLabel.Position = UDim2.new(0, 25, 0, 66)
DiscordLabel.Size = UDim2.new(1, -50, 0, 18)
DiscordLabel.Font = Enum.Font.GothamBold
DiscordLabel.Text = "Discord: discord.gg/9KJ5UJQu"
DiscordLabel.TextColor3 = Color3.fromRGB(100, 200, 255)
DiscordLabel.TextSize = 13
DiscordLabel.TextXAlignment = Enum.TextXAlignment.Left

ExclusiveLabel.Parent = MainFrame
ExclusiveLabel.BackgroundTransparency = 1
ExclusiveLabel.Position = UDim2.new(0, 25, 0, 86)
ExclusiveLabel.Size = UDim2.new(1, -50, 0, 18)
ExclusiveLabel.Font = Enum.Font.GothamBold
ExclusiveLabel.Text = "⚠ Solo funciona con +100M / Exclusivo"
ExclusiveLabel.TextColor3 = Color3.fromRGB(255, 120, 120)
ExclusiveLabel.TextSize = 13
ExclusiveLabel.TextXAlignment = Enum.TextXAlignment.Left

StartButton.Parent = MainFrame
StartButton.BackgroundColor3 = Color3.fromRGB(50, 130, 255)
StartButton.Position = UDim2.new(0, 25, 0, 115)
StartButton.Size = UDim2.new(1, -50, 0, 45)
StartButton.Font = Enum.Font.GothamBold
StartButton.Text = "Start Auto Moreira"
StartButton.TextColor3 = Color3.new(1,1,1)
StartButton.TextSize = 16
Instance.new("UICorner", StartButton).CornerRadius = UDim.new(0, 12)

LoadingBarBG.Parent = MainFrame
LoadingBarBG.BackgroundColor3 = Color3.fromRGB(40, 45, 60)
LoadingBarBG.BorderSizePixel = 0
LoadingBarBG.Position = UDim2.new(0, 25, 0, 170)
LoadingBarBG.Size = UDim2.new(1, -50, 0, 4)
LoadingBarBG.Visible = false
Instance.new("UICorner", LoadingBarBG).CornerRadius = UDim.new(0, 2)

LoadingBarFill.Parent = LoadingBarBG
LoadingBarFill.BackgroundColor3 = Color3.fromRGB(80, 150, 255)
LoadingBarFill.BorderSizePixel = 0
LoadingBarFill.Size = UDim2.new(0, 0, 1, 0)
Instance.new("UICorner", LoadingBarFill).CornerRadius = UDim.new(0, 2)

StatusLabel.Parent = MainFrame
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0, 25, 0, 182)
StatusLabel.Size = UDim2.new(1, -50, 0, 20)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "Ready..."
StatusLabel.TextColor3 = Color3.fromRGB(180,180,180)
StatusLabel.TextSize = 13
StatusLabel.TextXAlignment = Enum.TextXAlignment.Center

AutoBlockLabel.Parent = MainFrame
AutoBlockLabel.BackgroundTransparency = 1
AutoBlockLabel.Position = UDim2.new(0, 25, 0, 205)
AutoBlockLabel.Size = UDim2.new(1, -50, 0, 20)
AutoBlockLabel.Font = Enum.Font.GothamBold
AutoBlockLabel.Text = "Auto Block: ON"
AutoBlockLabel.TextColor3 = Color3.fromRGB(100,255,150)
AutoBlockLabel.TextSize = 14
AutoBlockLabel.TextXAlignment = Enum.TextXAlignment.Left

AntiCooldownLabel.Parent = MainFrame
AntiCooldownLabel.BackgroundTransparency = 1
AntiCooldownLabel.Position = UDim2.new(0, 25, 0, 225)
AntiCooldownLabel.Size = UDim2.new(1, -50, 0, 20)
AntiCooldownLabel.Font = Enum.Font.GothamBold
AntiCooldownLabel.Text = "Anti Cooldown (Soon)"
AntiCooldownLabel.TextColor3 = Color3.fromRGB(200,120,255)
AntiCooldownLabel.TextSize = 14
AntiCooldownLabel.TextXAlignment = Enum.TextXAlignment.Left

ConsoleLog.Parent = MainFrame
ConsoleLog.BackgroundColor3 = Color3.new(0,0,0)
ConsoleLog.BackgroundTransparency = 0.6
ConsoleLog.BorderSizePixel = 0
ConsoleLog.Position = UDim2.new(0, 25, 0, 255)
ConsoleLog.Size = UDim2.new(1, -50, 0, 60)
ConsoleLog.ScrollBarThickness = 0
Instance.new("UICorner", ConsoleLog).CornerRadius = UDim.new(0, 10)

ConsoleText.Parent = ConsoleLog
ConsoleText.BackgroundTransparency = 1
ConsoleText.Position = UDim2.new(0, 8, 0, 5)
ConsoleText.Size = UDim2.new(1, -16, 1, 0)
ConsoleText.Font = Enum.Font.Code
ConsoleText.Text = ""
ConsoleText.TextColor3 = Color3.fromRGB(200,210,220)
ConsoleText.TextSize = 11
ConsoleText.TextWrapped = true
ConsoleText.TextXAlignment = Enum.TextXAlignment.Left
ConsoleText.TextYAlignment = Enum.TextYAlignment.Top
ConsoleText.RichText = true

-- LOGIC
local IsRunning = false
local IsLoading = false

local function AddLog(msg, color)
    local r,g,b = color.R*255, color.G*255, color.B*255
    ConsoleText.Text ..= string.format(
        '<font color="rgb(%d,%d,%d)">%s</font>\n',
        r,g,b,msg
    )
end

-- 🔥 SEGUNDO SCRIPT AQUÍ 🔥
local function RunSecondScript()
    AddLog("Ejecutando segundo script...", Color3.fromRGB(120,180,255))
    task.spawn(function()
        print("SEGUNDO SCRIPT EJECUTADO")
        -- PEGA AQUÍ TU SCRIPT REAL
    end)
end

local function AnimateLoading()
    IsLoading = true
    LoadingBarBG.Visible = true
    LoadingBarFill.Size = UDim2.new(0,0,1,0)

    TweenService:Create(
        LoadingBarFill,
        TweenInfo.new(speed, Enum.EasingStyle.Linear),
        {Size = UDim2.new(1,0,1,0)}
    ):Play()

    task.wait(speed)
    IsLoading = false

    if IsRunning then
        RunSecondScript()
        StatusLabel.Text = "Successful"
        AddLog("Carga completada", Color3.fromRGB(100,255,150))
    end
end

StartButton.MouseButton1Click:Connect(function()
    if IsRunning then return end
    IsRunning = true
    StartButton.Text = "Loading..."
    StatusLabel.Text = "Connecting..."
    AddLog("Iniciando loader...", Color3.fromRGB(120,180,255))
    task.spawn(AnimateLoading)
end)
