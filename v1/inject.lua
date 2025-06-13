-- Gui to Lua
-- Version: 3.2

-- Instances:

local Decks = Instance.new("ScreenGui")
local Scripts = Instance.new("Folder")
local UI = Instance.new("Folder")
local OpenButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Main = Instance.new("Frame")
local RemoveDoors = Instance.new("TextButton")

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

RemoveDoors.Name = "RemoveDoors"
RemoveDoors.Parent = Main
RemoveDoors.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RemoveDoors.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemoveDoors.BorderSizePixel = 0
RemoveDoors.Position = UDim2.new(0.0562499985, 0, 0.0514506064, 0)
RemoveDoors.Size = UDim2.new(0.456250012, 0, 0.0982658938, 0)
RemoveDoors.Font = Enum.Font.SourceSans
RemoveDoors.Text = "Remove Doors"
RemoveDoors.TextColor3 = Color3.fromRGB(0, 0, 0)
RemoveDoors.TextSize = 14.000

-- Scripts:

local function HEBFWJ_fake_script() -- Scripts.LocalScript 
	local script = Instance.new('LocalScript', Scripts)

	local ScreenGui = script.Parent.Parent
	local MainFrame = ScreenGui.UI.Main
	local OpenButton = ScreenGui.UI.OpenButton
	local DoorsButton = MainFrame.RemoveDoors
	
	OpenButton.MouseButton1Click:Connect(function() 
		if not MainFrame.Visible then
			MainFrame.Visible = true
		else
			MainFrame.Visible = false
		end	
	end)
	
	DoorsButton.MouseButton1Click:Connect(function()
		local folder = workspace:WaitForChild("Doors")
		
		for _, item in ipairs(folder:GetChildren()) do
			if item.IsA("Model") then
				item:Destroy()
			end
		end
	end)
	
	
end
coroutine.wrap(HEBFWJ_fake_script)()
