-- ================== SERVICES ==================
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- ================== GREEN SCREEN ==================
local GreenGui = Instance.new("ScreenGui", PlayerGui)
GreenGui.Name = "GreenLoader"
GreenGui.ResetOnSpawn = false

local GreenFrame = Instance.new("Frame", GreenGui)
GreenFrame.Size = UDim2.new(1,0,1,0)
GreenFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 120)
GreenFrame.BorderSizePixel = 0

local LoaderText = Instance.new("TextLabel", GreenFrame)
LoaderText.Size = UDim2.new(1,0,0,60)
LoaderText.Position = UDim2.new(0,0,0.4,0)
LoaderText.BackgroundTransparency = 1
LoaderText.Font = Enum.Font.GothamBold
LoaderText.TextSize = 26
LoaderText.TextColor3 = Color3.fromRGB(0,0,0)
LoaderText.Text = "Initializing Auto Moreira..."

local ReqText = Instance.new("TextLabel", GreenFrame)
ReqText.Size = UDim2.new(1,0,0,50)
ReqText.Position = UDim2.new(0,0,0.48,0)
ReqText.BackgroundTransparency = 1
ReqText.Font = Enum.Font.Gotham
ReqText.TextSize = 18
ReqText.TextColor3 = Color3.fromRGB(0,0,0)
ReqText.Text = "You must have 3 brainrots (50+ value) or exclusive"

local DiscordGreen = Instance.new("TextLabel", GreenFrame)
DiscordGreen.Size = UDim2.new(1,0,0,40)
DiscordGreen.Position = UDim2.new(0,0,0.9,0)
DiscordGreen.BackgroundTransparency = 1
DiscordGreen.Font = Enum.Font.GothamBold
DiscordGreen.TextSize = 18
DiscordGreen.TextColor3 = Color3.fromRGB(0,0,0)
DiscordGreen.Text = "discord.gg/9KJ5UJQu"

for i = 20, 0, -1 do
    LoaderText.Text = "Loading... "..i.."s"
    task.wait(1)
end

GreenGui:Destroy()

-- ================== AUTO MOREIRA GUI ==================
local speed = 20
local output = 0.05

local ScreenGui = Instance.new("ScreenGui", PlayerGui)
ScreenGui.Name = "AutoMoreiraGUI"
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0,380,0,320)
MainFrame.Position = UDim2.new(0.65,0,0.25,0)
MainFrame.BackgroundColor3 = Color3.fromRGB(10,15,25)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0,20)
Instance.new("UIStroke", MainFrame).Color = Color3.fromRGB(40,50,70)

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1,-50,0,32)
Title.Position = UDim2.new(0,25,0,20)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.Text = "Auto Moreira Method"
Title.TextSize = 22
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextXAlignment = Enum.TextXAlignment.Left

local Creator = Instance.new("TextLabel", MainFrame)
Creator.Size = UDim2.new(1,-50,0,18)
Creator.Position = UDim2.new(0,25,0,52)
Creator.BackgroundTransparency = 1
Creator.Font = Enum.Font.Gotham
Creator.Text = "Made By Rusk"
Creator.TextSize = 13
Creator.TextColor3 = Color3.fromRGB(130,140,160)
Creator.TextXAlignment = Enum.TextXAlignment.Left

local StartButton = Instance.new("TextButton", MainFrame)
StartButton.Size = UDim2.new(1,-50,0,45)
StartButton.Position = UDim2.new(0,25,0,85)
StartButton.BackgroundColor3 = Color3.fromRGB(50,130,255)
StartButton.Text = "Start Auto Moreira"
StartButton.Font = Enum.Font.GothamBold
StartButton.TextSize = 16
StartButton.TextColor3 = Color3.fromRGB(255,255,255)
Instance.new("UICorner", StartButton).CornerRadius = UDim.new(0,12)

local StatusLabel = Instance.new("TextLabel", MainFrame)
StatusLabel.Size = UDim2.new(1,-50,0,20)
StatusLabel.Position = UDim2.new(0,25,0,155)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "Ready to start..."
StatusLabel.TextSize = 13
StatusLabel.TextColor3 = Color3.fromRGB(160,170,190)
StatusLabel.TextXAlignment = Enum.TextXAlignment.Center

-- Discord abajo
local DiscordLabel = Instance.new("TextButton", MainFrame)
DiscordLabel.Size = UDim2.new(1,-50,0,18)
DiscordLabel.Position = UDim2.new(0,25,1,-22)
DiscordLabel.BackgroundTransparency = 1
DiscordLabel.Font = Enum.Font.GothamBold
DiscordLabel.TextSize = 13
DiscordLabel.TextColor3 = Color3.fromRGB(90,160,255)
DiscordLabel.Text = "Discord: discord.gg/9KJ5UJQu"
DiscordLabel.TextXAlignment = Enum.TextXAlignment.Center
DiscordLabel.AutoButtonColor = false

DiscordLabel.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://discord.gg/9KJ5UJQu")
        StatusLabel.Text = "Discord copied!"
    end
end)
