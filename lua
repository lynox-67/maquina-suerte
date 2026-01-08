-- =====================================
-- PANTALLA VERDE DE CARGA
-- =====================================
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local PantallaVerde = Instance.new("ScreenGui")
PantallaVerde.Name = "PantallaVerde"
PantallaVerde.ResetOnSpawn = false
PantallaVerde.Parent = PlayerGui

local Fondo = Instance.new("Frame")
Fondo.Parent = PantallaVerde
Fondo.Size = UDim2.new(1, 0, 1, 0)
Fondo.BackgroundColor3 = Color3.fromRGB(0, 255, 120)
Fondo.BorderSizePixel = 0

-- TEXTO PRINCIPAL
local Titulo = Instance.new("TextLabel")
Titulo.Parent = Fondo
Titulo.Size = UDim2.new(1, 0, 0, 60)
Titulo.Position = UDim2.new(0, 0, 0.35, 0)
Titulo.BackgroundTransparency = 1
Titulo.Font = Enum.Font.GothamBold
Titulo.TextSize = 28
Titulo.TextColor3 = Color3.fromRGB(0, 0, 0)
Titulo.Text = "EJECUTANDO SCRIPT..."

-- TEXTO INFO
local Info = Instance.new("TextLabel")
Info.Parent = Fondo
Info.Size = UDim2.new(1, 0, 0, 50)
Info.Position = UDim2.new(0, 0, 0.45, 0)
Info.BackgroundTransparency = 1
Info.Font = Enum.Font.Gotham
Info.TextSize = 18
Info.TextColor3 = Color3.fromRGB(0, 0, 0)
Info.TextWrapped = true
Info.Text = "Únete a nuestro Discord para soporte y actualizaciones"

-- DISCORD
local Discord = Instance.new("TextLabel")
Discord.Parent = Fondo
Discord.Size = UDim2.new(1, 0, 0, 40)
Discord.Position = UDim2.new(0, 0, 0.9, 0)
Discord.BackgroundTransparency = 1
Discord.Font = Enum.Font.GothamBold
Discord.TextSize = 20
Discord.TextColor3 = Color3.fromRGB(0, 0, 0)
Discord.Text = "Discord: https://discord.gg/9KJ5UJQu"

-- CONTADOR
for i = 10, 0, -1 do
    Titulo.Text = "Cargando script... " .. i .. "s"
    task.wait(1)
end

PantallaVerde:Destroy()
