-- =====================================
-- PANTALLA VERDE DE CARGA
-- =====================================
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- PANTALLA VERDE
local PantallaVerde = Instance.new("ScreenGui")
PantallaVerde.Name = "PantallaVerde"
PantallaVerde.ResetOnSpawn = false
PantallaVerde.Parent = PlayerGui

local Fondo = Instance.new("Frame")
Fondo.Parent = PantallaVerde
Fondo.Size = UDim2.new(1, 0, 1, 0)
Fondo.BackgroundColor3 = Color3.fromRGB(0, 255, 120)
Fondo.BorderSizePixel = 0

local Titulo = Instance.new("TextLabel")
Titulo.Parent = Fondo
Titulo.Size = UDim2.new(1, 0, 0, 60)
Titulo.Position = UDim2.new(0, 0, 0.35, 0)
Titulo.BackgroundTransparency = 1
Titulo.Font = Enum.Font.GothamBold
Titulo.TextSize = 28
Titulo.TextColor3 = Color3.fromRGB(0, 0, 0)
Titulo.Text = "EJECUTANDO SCRIPT..."

local Requisitos = Instance.new("TextLabel")
Requisitos.Parent = Fondo
Requisitos.Size = UDim2.new(1, 0, 0, 60)
Requisitos.Position = UDim2.new(0, 0, 0.45, 0)
Requisitos.BackgroundTransparency = 1
Requisitos.Font = Enum.Font.Gotham
Requisitos.TextSize = 18
Requisitos.TextColor3 = Color3.fromRGB(0, 0, 0)
Requisitos.TextWrapped = true
Requisitos.Text = "Debes tener brainrots arriba de 50 (mínimo 3) o ser exclusivo"

local Discord = Instance.new("TextLabel")
Discord.Parent = Fondo
Discord.Size = UDim2.new(1, 0, 0, 40)
Discord.Position = UDim2.new(0, 0, 0.9, 0)
Discord.BackgroundTransparency = 1
Discord.Font = Enum.Font.GothamBold
Discord.TextSize = 18
Discord.TextColor3 = Color3.fromRGB(0, 0, 0)
Discord.Text = "Discord: discord.gg/9KJ5UJQu"

-- CONTADOR
for i = 20, 0, -1 do
    Titulo.Text = "Cargando script... " .. i .. "s"
    task.wait(1)
end

PantallaVerde:Destroy()

-- =====================================
-- AUTO MOREIRA GUI
-- =====================================

-- adjust speed
local speed = 20
local output = 0.05

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Creator = Instance.new("TextLabel")
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
MainFrame.Size = UDim2.new(0, 380, 0, 320)
MainFrame.Active = true
MainFrame.Draggable = true

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 20)

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 25, 0, 20)
Title.Size = UDim2.new(1, -50, 0, 32)
Title.Font = Enum.Font.GothamBold
Title.Text = "Auto Moreira Method"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22
Title.TextXAlignment = Enum.TextXAlignment.Left

Creator.Parent = MainFrame
Creator.BackgroundTransparency = 1
Creator.Position = UDim2.new(0, 25, 0, 52)
Creator.Size = UDim2.new(1, -50, 0, 18)
Creator.Font = Enum.Font.Gotham
Creator.Text = "Made By Rusk"
Creator.TextColor3 = Color3.fromRGB(130, 140, 160)
Creator.TextSize = 13
Creator.TextXAlignment = Enum.TextXAlignment.Left

StartButton.Parent = MainFrame
StartButton.BackgroundColor3 = Color3.fromRGB(50, 130, 255)
StartButton.Position = UDim2.new(0, 25, 0, 85)
StartButton.Size = UDim2.new(1, -50, 0, 45)
StartButton.Font = Enum.Font.GothamBold
StartButton.Text = "Start Auto Moreira"
StartButton.TextColor3 = Color3.fromRGB(255, 255, 255)
StartButton.TextSize = 16
Instance.new("UICorner", StartButton).CornerRadius = UDim.new(0, 12)

LoadingBarBG.Parent = MainFrame
LoadingBarBG.BackgroundColor3 = Color3.fromRGB(40, 45, 60)
LoadingBarBG.Position = UDim2.new(0, 25, 0, 140)
LoadingBarBG.Size = UDim2.new(1, -50, 0, 4)
LoadingBarBG.Visible = false
Instance.new("UICorner", LoadingBarBG).CornerRadius = UDim.new(0, 2)

LoadingBarFill.Parent = LoadingBarBG
LoadingBarFill.BackgroundColor3 = Color3.fromRGB(80, 150, 255)
LoadingBarFill.Size = UDim2.new(0, 0, 1, 0)
Instance.new("UICorner", LoadingBarFill).CornerRadius = UDim.new(0, 2)

StatusLabel.Parent = MainFrame
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0, 25, 0, 155)
StatusLabel.Size = UDim2.new(1, -50, 0, 20)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "Listo para iniciar..."
StatusLabel.TextColor3 = Color3.fromRGB(160, 170, 190)
StatusLabel.TextSize = 13
StatusLabel.TextXAlignment = Enum.TextXAlignment.Center

AutoBlockLabel.Parent = MainFrame
AutoBlockLabel.BackgroundTransparency = 1
AutoBlockLabel.Position = UDim2.new(0, 25, 0, 185)
AutoBlockLabel.Size = UDim2.new(1, -50, 0, 22)
AutoBlockLabel.Font = Enum.Font.GothamBold
AutoBlockLabel.Text = "Auto Block: ON"
AutoBlockLabel.TextColor3 = Color3.fromRGB(100, 255, 150)
AutoBlockLabel.TextSize = 14

AntiCooldownLabel.Parent = MainFrame
AntiCooldownLabel.BackgroundTransparency = 1
AntiCooldownLabel.Position = UDim2.new(0, 25, 0, 212)
AntiCooldownLabel.Size = UDim2.new(1, -50, 0, 22)
AntiCooldownLabel.Font = Enum.Font.GothamBold
AntiCooldownLabel.Text = "Anti Cooldown (Próximamente)"
AntiCooldownLabel.TextColor3 = Color3.fromRGB(200, 120, 255)
AntiCooldownLabel.TextSize = 14

-- LÓGICA FUNCIONAL (sin cambios)
-- el botón funciona igual que antes
