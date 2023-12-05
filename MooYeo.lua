local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MYENO_X", "DarkTheme")

local Discord = Window:NewTab("Discord")
local Discordss = Tab:NewSection("DIscord")
Discordss:NewLabel("https://discord.gg/3jFj98yF")

local Tab = Window:NewTab("others")
local Section = Tab:NewSection("Main")
Section:NewButton("infinite-yield", "ButtonInfo", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Section:NewToggle("super-Human", "Go fast", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        print("Turn On")
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        print("Turn off")
    end
end)
Section:NewSlider("Walkspeed", "Slider get fast", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("JumpPower", "Slider get Jumppower", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
