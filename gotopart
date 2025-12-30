-- Téléporte le joueur en boucle vers une part

local PART_NAME = "TeamZone" -- change le nom ici
local DELAY = 0.1        -- délai entre chaque TP

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")

local running = true

-- Commande pour arrêter
getgenv().StopLoopGoto = function()
    running = false
end

task.spawn(function()
    while running do
        local part = workspace:FindFirstChild(PART_NAME)
        if part then
            root.CFrame = part.CFrame + Vector3.new(0, 3, 0)
        end
        task.wait(DELAY)
    end
end)
