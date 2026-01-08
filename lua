-- ===== PANTALLA VERDE DE CARGA =====
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

-- TEXTO DE REQUISITOS
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

-- DISCORD
local Discord = Instance.new("TextLabel")
Discord.Parent = Fondo
Discord.Size = UDim2.new(1, 0, 0, 40)
Discord.Position = UDim2.new(0, 0, 0.9, 0)
Discord.BackgroundTransparency = 1
Discord.Font = Enum.Font.GothamBold
Discord.TextSize = 18
Discord.TextColor3 = Color3.fromRGB(0, 0, 0)
Discord.Text = "Discord: discord.gg/9KJ5UJQu"

-- CONTADOR 20 → 0
for i = 20, 0, -1 do
    Titulo.Text = "Cargando script... " .. i .. "s"
    task.wait(1)
end

-- QUITAR PANTALLA
PantallaVerde:Destroy()
