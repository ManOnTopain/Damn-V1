local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local MainLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ManOnTopain/Damn-V1/main/Damn.lua"))()
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Window = Library.CreateLib("Damn Hub", colors)
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Main")
Section:NewSlider("Speed", "gives u speed", 60, 16, function(speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

Section:NewButton("ForceReset", "force resets u", function()
	game.ReplicatedStorage.Remotes.ResetEvent:FireServer()
end)

Section:NewButton("Add Gloves", "Gives U Cool Gloves ", function()
	game.ReplicatedStorage.Remotes.GlovesAddEvent:FireServer()
end)

Section:NewButton("Left Handed Zombie", "Makes u an left handed zombie ", function()
	game.ReplicatedStorage.Remotes.LeftHandedZombieAddEvent:FireServer()
end)

Section:NewSlider("Gravity", "Change Ur Gravity", 0, 196.2, function(g)
    Workspace.Gravity = g
end)

Section:NewKeybind("ForceReset keybind", "Just like the button but is an keybind instead", Enum.KeyCode.F, function()
	game.ReplicatedStorage.Remotes.ResetEvent:FireServer()
end)

local Tab = Window:NewTab("Windows Stuff")
local Section = Tab:NewSection("Main")


Section:NewKeybind("Toggle Guy Button", "", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)

local Tab = Window:NewTab("Game")
local Section = Tab:NewSection("Link")


Section:NewButton("game Link Clipboard", "sets the game link to ur clipboard", function()
	setClipboard("https://www.roblox.com/games/8287223300/Headcrab-Demonstration-2")
end)
