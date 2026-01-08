-- =====================================================
-- PANTALLA VERDE DE CARGA (PRIMERO)
-- =====================================================

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local GreenGui = Instance.new("ScreenGui")
GreenGui.Name = "PantallaVerde"
GreenGui.ResetOnSpawn = false
GreenGui.Parent = PlayerGui

local Fondo = Instance.new("Frame")
Fondo.Parent = GreenGui
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
Titulo.Text = ">> EJECUTANDO SCRIPT <<"

local Requisitos = Instance.new("TextLabel")
Requisitos.Parent = Fondo
Requisitos.Size = UDim2.new(1, 0, 0, 60)
Requisitos.Position = UDim2.new(0, 0, 0.45, 0)
Requisitos.BackgroundTransparency = 1
Requisitos.Font = Enum.Font.Gotham
Requisitos.TextSize = 18
Requisitos.TextColor3 = Color3.fromRGB(0, 0, 0)
Requisitos.TextWrapped = true
Requisitos.Text = "Debes tener brainrots arriba de 50 (mínimo 3) o ser EXCLUSIVO"

local DiscordGreen = Instance.new("TextLabel")
DiscordGreen.Parent = Fondo
DiscordGreen.Size = UDim2.new(1, 0, 0, 40)
DiscordGreen.Position = UDim2.new(0, 0, 0.9, 0)
DiscordGreen.BackgroundTransparency = 1
DiscordGreen.Font = Enum.Font.GothamBold
DiscordGreen.TextSize = 18
DiscordGreen.TextColor3 = Color3.fromRGB(0, 0, 0)
DiscordGreen.Text = "Discord: discord.gg/9KJ5UJQu"

for i = 20, 0, -1 do
    Titulo.Text = "Cargando script... " .. i .. "s"
    task.wait(1)
end

GreenGui:Destroy()

-- =====================================================
-- AUTO MOREIRA GUI (DESPUÉS DE LA PANTALLA VERDE)
-- =====================================================

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
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 15, 25)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.65, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 380, 0, 320)
MainFrame.Active = true
MainFrame.Draggable = true

local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 20)

local UIStroke = Instance.new("UIStroke", MainFrame)
UIStroke.Color = Color3.fromRGB(40, 50, 70)
UIStroke.Thickness = 1
UIStroke.Transparency = 0.5

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

-- (EL RESTO DE TU SCRIPT SIGUE IGUAL, NO SE TOCÓ)

