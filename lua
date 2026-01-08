--==============================
-- SERVICIOS
--==============================
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

--==============================
-- CONFIG
--==============================
local LOADING_TIME = 20 -- segundos pantalla verde

--==============================
-- LOADING SCREEN
--==============================
local LoadingGui = Instance.new("ScreenGui")
LoadingGui.Name = "HackerLoading"
LoadingGui.ResetOnSpawn = false
LoadingGui.Parent = PlayerGui

local Background = Instance.new("Frame", LoadingGui)
Background.Size = UDim2.new(1,0,1,0)
Background.BackgroundColor3 = Color3.fromRGB(5,5,5)

local Panel = Instance.new("Frame", Background)
Panel.Size = UDim2.new(0,500,0,320)
Panel.Position = UDim2.new(0.5,-250,0.5,-160)
Panel.BackgroundColor3 = Color3.fromRGB(10,15,10)
Panel.BorderSizePixel = 0

local Stroke = Instance.new("UIStroke", Panel)
Stroke.Color = Color3.fromRGB(0,255,120)
Stroke.Thickness = 2

local Title = Instance.new("TextLabel", Panel)
Title.Size = UDim2.new(1,0,0,40)
Title.BackgroundTransparency = 1
Title.Text = ">> EJECUTANDO SCRIPT <<"
Title.Font = Enum.Font.Code
Title.TextSize = 22
Title.TextColor3 = Color3.fromRGB(0,255,120)

local Req = Instance.new("TextLabel", Panel)
Req.Size = UDim2.new(1,-20,0,50)
Req.Position = UDim2.new(0,10,0,45)
Req.BackgroundTransparency = 1
Req.TextWrapped = true
Req.Font = Enum.Font.Code
Req.TextSize = 13
Req.TextColor3 = Color3.fromRGB(0,200,100)
Req.Text = "Debes tener brainrots arriba de 50 (mínimo 3) o ser EXCLUSIVO"

local Discord = Instance.new("TextLabel", Panel)
Discord.Size = UDim2.new(1,0,0,30)
Discord.Position = UDim2.new(0,0,0,100)
Discord.BackgroundTransparency = 1
Discord.Font = Enum.Font.Code
Discord.TextSize = 14
Discord.TextColor3 = Color3.fromRGB(0,255,120)
Discord.Text = "Discord: discord.gg/9KJ5UJQu"

local BarBG = Instance.new("Frame", Panel)
BarBG.Size = UDim2.new(0.9,0,0,10)
BarBG.Position = UDim2.new(0.05,0,0.6,0)
BarBG.BackgroundColor3 = Color3.fromRGB(30,60,30)
BarBG.BorderSizePixel = 0

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(1,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(0,255,120)
Bar.BorderSizePixel = 0

local TimeText = Instance.new("TextLabel", Panel)
TimeText.Size = UDim2.new(1,0,0,30)
TimeText.Position = UDim2.new(0,0,0.68,0)
TimeText.BackgroundTransparency = 1
TimeText.Font = Enum.Font.Code
TimeText.TextSize = 14
TimeText.TextColor3 = Color3.fromRGB(0,255,120)

--==============================
-- COUNTDOWN
--==============================
for i = LOADING_TIME, 0, -1 do
	TimeText.Text = "TIEMPO RESTANTE: "..i.."s"
	Bar.Size = UDim2.new(i / LOADING_TIME, 0, 1, 0)
	task.wait(1)
end

LoadingGui:Destroy()

--==============================
-- AUTO MOREIRA (SIMULACIÓN VISUAL)
--==============================
local Gui = Instance.new("ScreenGui", PlayerGui)
Gui.Name = "AutoMoreiraGUI"
Gui.ResetOnSpawn = false

local Main = Instance.new("Frame", Gui)
Main.Size = UDim2.new(0,380,0,320)
Main.Position = UDim2.new(0.05,0,0.25,0)
Main.BackgroundColor3 = Color3.fromRGB(10,15,25)
Main.Active = true
Main.Draggable = true

Instance.new("UICorner", Main).CornerRadius = UDim.new(0,20)

local Title2 = Instance.new("TextLabel", Main)
Title2.BackgroundTransparency = 1
Title2.Position = UDim2.new(0,20,0,15)
Title2.Size = UDim2.new(1,-40,0,30)
Title2.Font = Enum.Font.GothamBold
Title2.TextSize = 22
Title2.TextColor3 = Color3.new(1,1,1)
Title2.Text = "Método Auto Moreira"

local Status = Instance.new("TextLabel", Main)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0,20,0,55)
Status.Size = UDim2.new(1,-40,0,25)
Status.Font = Enum.Font.Gotham
Status.TextSize = 14
Status.TextColor3 = Color3.fromRGB(150,255,150)
Status.Text = "Conectando automáticamente..."

local BarBG2 = Instance.new("Frame", Main)
BarBG2.Size = UDim2.new(1,-40,0,6)
BarBG2.Position = UDim2.new(0,20,0,90)
BarBG2.BackgroundColor3 = Color3.fromRGB(40,40,60)

local Bar2 = Instance.new("Frame", BarBG2)
Bar2.Size = UDim2.new(0,0,1,0)
Bar2.BackgroundColor3 = Color3.fromRGB(80,150,255)

TweenService:Create(
	Bar2,
	TweenInfo.new(25, Enum.EasingStyle.Linear),
	{Size = UDim2.new(1,0,1,0)}
):Play()

task.wait(25)
Status.Text = "¡Jugador unido con éxito!"

