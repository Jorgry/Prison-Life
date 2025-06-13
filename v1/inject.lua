-- Gui to Lua
-- Version: 3.2

-- Instances:

local Decks = Instance.new("ScreenGui")
local Scripts = Instance.new("Folder")
local UI = Instance.new("Folder")
local OpenButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Main = Instance.new("Frame")

--Properties:

Decks.Name = "Decks"
Decks.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Decks.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Scripts.Name = "Scripts"
Scripts.Parent = Decks

UI.Name = "UI"
UI.Parent = Decks

OpenButton.Name = "OpenButton"
OpenButton.Parent = UI
OpenButton.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
OpenButton.BackgroundTransparency = 0.400
OpenButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.Position = UDim2.new(0.88403821, 0, 0.114795916, 0)
OpenButton.Size = UDim2.new(0.106412008, 0, 0.0561224483, 0)
OpenButton.Font = Enum.Font.SourceSans
OpenButton.Text = "Open"
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.TextSize = 14.000

UICorner.Parent = OpenButton

Main.Name = "Main"
Main.Parent = UI
Main.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.772169173, 0, 0.191326529, 0)
Main.Size = UDim2.new(0, 160, 0, 173)
Main.Visible = false

-- Scripts:

local function DOZF_fake_script() -- Scripts.LocalScript 
	local script = Instance.new('LocalScript', Scripts)

	local ScreenGui = script.Parent.Parent
	local MainFrame = ScreenGui.UI.Main
	local OpenButton = ScreenGui.UI.OpenButton
	
	OpenButton.MouseButton1Click:Connect(function() 
		if not MainFrame.Visible then
			MainFrame.Visible = true
		else
			MainFrame.Visible = false
		end	
	end)
end
coroutine.wrap(DOZF_fake_script)()
