local PART_NAME = "TeamZone"
local DELAY = 0.1

local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")

local running = true

getgenv().StopLoopGoto = function()
    running = false
end

local function findPartDeep(name)
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj.Name == name and obj:IsA("BasePart") then
            return obj
        end
    end
    return nil
end

task.spawn(function()
    while running do
        local part = findPartDeep(PART_NAME)
        if part and root then
            root.CFrame = part.CFrame + Vector3.new(0, 3, 0)
        end
        task.wait(DELAY)
    end
end)
