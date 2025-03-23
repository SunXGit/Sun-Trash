local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))()
local VenyX = Library.new("Venyx", 5013109572)
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}
local Page = VenyX:addPage("Page", 5012544693)
local Tab1 = Page:addSection("Tab 1")

Tab1:addButton("Dark Dex", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)
Tab1:addButton("Remote Spy", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
end)
Tab1:addButton("Copy CFrame", function()
   setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
end)
Tab1:addButton("Rejoin", function()
   game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)
Tab1:addToggle("Execute", nil, function(Value)
    _G.AutoFarm = Value
end)

spawn(function()
   while task.wait() do
      pcall(function()
         if _G.AutoFarm then
            game:GetService("ReplicatedStorage"):WaitForChild("ChangeAnimation"):InvokeServer("rbxassetid://4733362207",1,true)
            game:GetService("ReplicatedStorage").UseSwordSkill:InvokeServer()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
         end
      end)
   end
end)
