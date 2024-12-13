local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local click = 0

RunService.Heartbeat:Connect(function()
    local totem
    if Lighting.ClockTime >= 18 or Lighting.ClockTime < 7 then
        totem = game.Players.LocalPlayer.Backpack:FindFirstChild("Aurora Totem")
    else
        totem = game.Players.LocalPlayer.Backpack:FindFirstChild("Sundial Totem")
    end

    if totem then
        click = click - 2
        if click < 2 then
            if not game.Players.LocalPlayer.Character:FindFirstChild(totem.Name) then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(totem)
            end
            game:GetService('VirtualUser'):CaptureController()
            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
            click = click + 1
        end
    end
end)
