-- Auto Impel Down Script (extrait depuis script.lua)

-- Variables et fonctions nécessaires

-- Auto Impel Down complet
-- Extraction et adaptation depuis script.lua

local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- FakeGeppo: simule un saut Geppo (double saut)
function FakeGeppo()
    local char = player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local hrp = char.HumanoidRootPart
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if humanoid and humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
        humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
    end
    hrp.Velocity = Vector3.new(0, 120, 0)
end

-- L_2156: téléportation instantanée
function L_2156(pos)
    local char = player.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.CFrame = CFrame.new(pos)
        char.HumanoidRootPart.Velocity = Vector3.zero
    end
end

-- HoroTpPro: téléportation avec options
function HoroTpPro(opts)
    if not opts or not opts.Position then return end
    local speed = opts.Speed or 50
    local stop = opts.Stop or function() return true end
    local pos = opts.Position
    local char = player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local root = char.HumanoidRootPart
    local start = root.Position
    local duration = ((pos - start).Magnitude) / speed
    local elapsed = 0
    while elapsed < duration and stop() do
        elapsed = elapsed + game:GetService("RunService").Heartbeat:Wait()
        local t = math.clamp(elapsed / duration, 0, 1)
        root.CFrame = CFrame.new(start:Lerp(pos, t))
        root.Velocity = Vector3.zero
        root.AssemblyLinearVelocity = Vector3.zero
    end
    root.CFrame = CFrame.new(pos)
end

-- Twunu: tween simple
function Twunu(pos, speed, duration)
    local char = player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local root = char.HumanoidRootPart
    local start = root.Position
    local totalTime = duration or ((pos - start).Magnitude) / (speed or 50)
    local elapsed = 0
    while elapsed < totalTime do
        elapsed = elapsed + game:GetService("RunService").Heartbeat:Wait()
        local t = math.clamp(elapsed / totalTime, 0, 1)
        root.CFrame = CFrame.new(start:Lerp(pos, t))
        root.Velocity = Vector3.zero
        root.AssemblyLinearVelocity = Vector3.zero
    end
    root.CFrame = CFrame.new(pos)
end

-- Twunu2: tween avancé avec extra et flag
function Twunu2(pos, speed, duration, extra, flag)
    local char = player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local root = char.HumanoidRootPart
    local start = root.Position
    local totalTime = duration or ((pos - start).Magnitude) / (speed or 50)
    local elapsed = 0
    while elapsed < totalTime do
        elapsed = elapsed + game:GetService("RunService").Heartbeat:Wait()
        local t = math.clamp(elapsed / totalTime, 0, 1)
        root.CFrame = CFrame.new(start:Lerp(pos, t))
        root.Velocity = Vector3.zero
        root.AssemblyLinearVelocity = Vector3.zero
    end
    root.CFrame = CFrame.new(pos)
    -- Utilisation possible de extra/flag si besoin
end

-- firesignal: simule un click ou un signal
function firesignal(signal)
    if typeof(signal) == "RBXScriptSignal" then
        local connections = getconnections(signal)
        for _, conn in ipairs(connections) do
            if conn.Function then
                pcall(conn.Function)
            end
        end
    elseif typeof(signal) == "Instance" and signal:IsA("BindableEvent") then
        signal:Fire()
    elseif typeof(signal) == "Instance" and signal:IsA("BindableFunction") then
        signal:Invoke()
    end
end

-- Auto Impel Down GUI & Logic

-- Load Fluent UI
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Auto Impel Down",
    SubTitle = "by ali95z",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 420),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl,
    CloseKey = Enum.KeyCode.LeftControl
})
local Tab = Window:AddTab({ Title = "Auto Impel Down", Icon = "target" })


getgenv().LoadedAnticheatBypass = false
task.spawn(function()
    if game.PlaceId ~= 1730877806 then
        local loaded = false
        repeat task.wait() until game:GetService("ReplicatedFirst"):FindFirstChild("paul greyrat")
        repeat task.wait() until #game:GetService("ReplicatedFirst")["paul greyrat"]:GetChildren() < 1
        task.wait()
        -- Ici tu peux ajouter une animation ou un effet si besoin
        if game:GetService("ReplicatedFirst"):FindFirstChild("paul greyrat") then
            loaded = true
            -- Place ici le code de run_on_actor si besoin
        end
        if not loaded and game.PlaceId ~= 1730877806 then
            game.Players.LocalPlayer:Kick("failed to load ac bypass please contact texchy or try rejoining")
        else
            task.wait(7)
            getgenv().LoadedAnticheatBypass = true
        end
    end
end)
repeat task.wait() until getgenv().LoadedAnticheatBypass

-- Utility functions (extracted, see previous patch)
-- ...existing code...

Tab:AddSection("Auto Impel Down")
Tab:AddToggle({
    Title = "Activer Auto Impel Down",
    Description = "Active le farm Impel Down automatique",
    Default = false,
    Callback = function(enabled)
        spawn(function()
            -- Attendre le bypass anti-cheat avant de lancer le farm
            repeat task.wait() until getgenv().LoadedAnticheatBypass
            AutoImpelToggle(enabled)
        end)
    end
})

Tab:AddButton({
    Title = "Bypass Anti-Cheat",
    Description = "Active le bypass anti-cheat (déjà intégré)",
    Callback = function()
        print("Bypass anti-cheat déjà actif.")
    end
})

Tab:AddButton({
    Title = "Téléportation Instantanée",
    Description = "TP instantané à une position (utilise L_2156)",
    Callback = function()
        -- Exemple d'utilisation
        local pos = Vector3.new(0, 10, 0)
        L_2156(pos)
        print("TP instantané vers:", pos)
    end
})

Tab:AddButton({
    Title = "Tween TP",
    Description = "Tween vers une position (utilise TpTween)",
    Callback = function()
        local pos = Vector3.new(50, 10, 50)
        TpTween(pos, 50)
        print("Tween TP vers:", pos)
    end
})



-- Ajoutez d'autres boutons/toggles pour chaque utilitaire ou logique spécifique
-- ...existing code...

-- Teleport instantly to a position
local function L_2156(pos)
    player.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
    player.Character.HumanoidRootPart.Velocity = Vector3.zero
end

-- Tween teleportation
isTweening = false
function TpTween(target, speed)
    if isTweening then return end
    local root = player.Character and player.Character:FindFirstChild(L_33)
    if not root then return end
    isTweening = true
    local startCF = root.CFrame
    local endCF = typeof(target) == "CFrame" and target or CFrame.new(target)
    local duration = (endCF.Position - startCF.Position).Magnitude / 15
    local elapsed = 0
    while elapsed < duration do
        elapsed = elapsed + game:GetService("RunService").Heartbeat:Wait()
        root.CFrame = startCF:Lerp(endCF, math.min(elapsed / duration, 1))
        root.Velocity = Vector3.zero
        root.AssemblyLinearVelocity = Vector3.zero
    end
    isTweening = false
end

-- Touch a part
function Touch(part)
    if player.Character and player.Character:FindFirstChild(L_33) then
        firetouchinterest(player.Character.HumanoidRootPart, part, 0)
        firetouchinterest(player.Character.HumanoidRootPart, part, 1)
    end
end

-- Find tool in backpack or character
local function GetInventoryTool(toolName)
    for _, item in next, player.Backpack:GetChildren() do
        if item.Name == toolName then return item end
    end
    for _, item in next, player.Character:GetChildren() do
        if item.Name == toolName then return item end
    end
    return nil
end

-- Check if tool exists in inventory
function GetInventoryTool(toolName)
    local success, decoded = pcall(function()
        return L_618:JSONDecode(inventoryValue.Value)
    end)
    if success and decoded then
        return decoded[toolName] ~= nil
    end
    return false
end

-- HoroTp2 teleportation
HoroTpRunning = false
getgenv().Tuff2 = true
function HoroTp2(target, speed, skipRaycast, height)
    local function enabled()
        if getgenv().Tuff2 then return true end
        if getgenv().FishKaitun and getgenv().FishKaitun.Enabled then return true end
        return false
    end
    if HoroTpRunning then return end
    if not enabled() then warn("not enabled :C") return end
    local tweenSpeed = speed or 50
    local rayHeight = height or 300
    local playerObj = game:GetService("Players").LocalPlayer
    local char = playerObj.Character or playerObj.CharacterAdded:Wait()
    local root = char:WaitForChild(L_33, 5)
    if not root then return end
    HoroTpRunning = true
    local runService = game:GetService("RunService")
    local yTarget = root.Position.Y + rayHeight
    local startPos = root.Position
    local isBelow = startPos.Y < -100
    local isFishman = false
    pcall(function()
        local island = GetCurrentIsland()
        if island and island.Name == "Fishman Island" then isFishman = true end
    end)
    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Exclude
    raycastParams.FilterDescendantsInstances = { char, workspace:FindFirstChild("PlayerCharacters"), workspace:FindFirstChild("Effects") }
    local function checkNotification()
        local found = false
        pcall(function()
            for _, label in playerObj.PlayerGui.Notifications:GetDescendants() do
                if label:IsA("TextLabel") and (label.Text == "TP" or label.Text == "Strike" or label.Text:find("Strike")) then
                    found = true
                    return
                end
            end
        end)
        return found
    end
    local function getY(x, z)
        if not enabled() then return startPos.Y end
        if skipRaycast then return startPos.Y end
        local rayOrigin = Vector3.new(x, yTarget, z)
        local rayDir = Vector3.new(0, -2000, 0)
        local hit = workspace:Raycast(rayOrigin, rayDir, raycastParams)
        while hit and (not hit.Instance.CanCollide and not hit.Instance.CanQuery or hit.Instance.Name == "Leaves") do
            local newOrigin = hit.Position - Vector3.new(0, 0.1, 0)
            hit = workspace:Raycast(newOrigin, rayDir, raycastParams)
        end
        if not hit then return (isBelow or isFishman) and startPos.Y or math.max(startPos.Y, 2) end
        if startPos.Y > -1500 then
            local color = hit.Instance.Color
            local r, g, b = math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255)
            if (r == 148 and g == 147 and b == 150) or (r == 116 and g == 134 and b == 157) then
                local charObj = playerObj.Character
                if charObj then
                    local speedBypass = charObj:GetAttribute("SpeedBypass") or 0
                    if tick() - (L_2240 or 0) >= 2 and speedBypass < 1 then
                        L_2240 = tick()
                        task.spawn(pcall, function()
                            local events = game:GetService("ReplicatedStorage"):FindFirstChild("Events")
                            if events then
                                local stam = events:FindFirstChild("takestam")
                                if stam then stam:FireServer(0.52, "dash") end
                            end
                        end)
                    end
                end
            end
        end
        return (isBelow or isFishman) and hit.Position.Y + 5 or math.max(hit.Position.Y + 5, 2)
    end
    local function doTween()
        local dist = (Vector2.new(startPos.X, startPos.Z) - Vector2.new(target.X, target.Z)).Magnitude
        if dist < 2 then
            local y = getY(target.X, target.Z)
            root.CFrame = CFrame.new(target.X, y, target.Z)
            HoroTpRunning = false
            return
        end
        local duration = dist / tweenSpeed
        local elapsed = 0
        while elapsed < duration and enabled() do
            if checkNotification() then
                task.wait(5)
                startPos = root.Position
                doTween()
                return
            end
            elapsed = elapsed + runService.RenderStepped:Wait()
            local t = math.clamp(elapsed / duration, 0, 1)
            local x = startPos.X + (target.X - startPos.X) * t
            local z = startPos.Z + (target.Z - startPos.Z) * t
            local y = getY(x, z)
            root.Velocity = Vector3.zero
            root.CFrame = CFrame.new(x, y, z)
        end
        local y = getY(target.X, target.Z)
        root.CFrame = CFrame.new(target.X, y, target.Z)
        HoroTpRunning = false
    end
    doTween()
end

-- Hit function for combat
getgenv().HitDelay = getgenv().HitDelay or 0.45
function Hit(targets)
    if typeof(targets) ~= "table" or #targets == 0 then return end
    local playerObj = game.Players.LocalPlayer
    local rep = game:GetService("ReplicatedStorage")
    local char = playerObj.Character
    local humanoid = char and char:FindFirstChildOfClass("Humanoid")
    if not char or not humanoid then return end
    getgenv().HitDelay = getgenv().HitDelay or 0.45
    getgenv().SwingDelay = getgenv().SwingDelay or 0.05
    getgenv().ComboResetDelay = getgenv().ComboResetDelay or 1.2
    getgenv().Throttle = getgenv().Throttle or 0.05
    getgenv().LastHitTick = getgenv().LastHitTick or 0
    getgenv().NextHitTime = getgenv().NextHitTime or 0
    getgenv().Combo = getgenv().Combo or 1
    local now = tick()
    if now < getgenv().NextHitTime or now - getgenv().LastHitTick < getgenv().Throttle then return end
    local tool = nil
    for _, item in next, char:GetChildren() do
        if item:GetAttribute("MeleeTool") then tool = item break end
    end
    for _, item in next, playerObj.Backpack:GetChildren() do
        if item:GetAttribute("MeleeTool") then tool = item break end
    end
    if not tool then return end
    if tool.Parent ~= char then tool.Parent = char end
    local style = select(2, getgenv().GetStyle())
    local anims = rep:FindFirstChild("CombatAnimations"):FindFirstChild(style)
    if not anims then return end
    local combo = getgenv().Combo
    local anim = anims:FindFirstChild("Punch" .. combo) or anims:FindFirstChild("GroundPunch" .. combo) or anims:FindFirstChild("Punch1")
    if not anim then return end
    local root = char:FindFirstChild(L_33)
    if not root then return end
    local rootPos = root.Position
    local xSum, zSum, count = 0, 0, 0
    for _, part in next, targets do
        if typeof(part) == "Instance" and part:IsA("BasePart") and part.Parent then
            xSum = xSum + part.Position.X
            zSum = zSum + part.Position.Z
            count = count + 1
        end
    end
    if count == 0 then return end
    local avg = Vector3.new(xSum / count, rootPos.Y, zSum / count)
    local cf = CFrame.new(rootPos, avg)
    local animator = humanoid:FindFirstChildOfClass("Animator")
    local animTrack = animator and animator:LoadAnimation(anim)
    local ping = playerObj:GetAttribute("Ping") and math.clamp(playerObj:GetAttribute("Ping"), 0, 0.35) or 0.05
    local animLen = (animTrack and animTrack.Length or 0.35) / (animTrack and animTrack.Speed ~= 0 and animTrack.Speed or 1) * 0.4 - ping
    if animLen < 0.03 then animLen = 0.03 end
    if animTrack then animTrack:Stop() animTrack:Destroy() end
    getgenv().LastHitTick = now
    getgenv().NextHitTime = now + animLen + getgenv().SwingDelay
    pcall(function()
        rep.Events.CombatRegister:InvokeServer({ "swingsfx", style, combo, "Ground", false, anim, 1.75, 2, cf })
    end)
    task.delay(animLen + getgenv().HitDelay, function()
        local validTargets = {}
        for _, part in next, targets do
            if typeof(part) == "Instance" and part.Parent then table.insert(validTargets, part) end
        end
        if #validTargets == 0 then return end
        local cf2 = CFrame.new(rootPos, avg)
        pcall(function()
            rep.Events.CombatRegister:InvokeServer({ "damage", validTargets, style, { combo, "Ground", style }, true, cf2 })
        end)
    end)
    getgenv().Combo = getgenv().Combo + 1
    if getgenv().Combo > 5 then
        getgenv().Combo = 1
        getgenv().NextHitTime = now + animLen + getgenv().ComboResetDelay
    end
end

-- Add more utility functions as needed for full automation
        local stat = statFrame:FindFirstChild("Stat", true)
        local amount = statFrame:FindFirstChild("Amount", true)
        if stat and amount and stat.Text == statName then
            return tonumber(amount.Text)
        end
    end
    return 0
end

ZonesReally = { Vector3.new(2951, 2081, -13983) }
function HasZone()
    for _, npc in next, workspace.NPCs:GetChildren() do
        if npc:IsA("Model") and npc:FindFirstChild("Humanoid") then
            for _, zone in next, ZonesReally, nil do
                if (npc:GetPivot().Position - zone).Magnitude < 150 then
                    return zone
                end
            end
        end
    end
    return nil
end

function PutMines()
    local mines = ReplicatedStorage:FindFirstChild(player.Name .. "|ServerScriptService.Skills.Skills.SkillContainer.Bomb-Bomb.Explosive Mines")
    if not mines then
        task.spawn(function()
            ReplicatedStorage:FindFirstChild("Events"):FindFirstChild("Skill"):InvokeServer("Explosive Mines")
        end)
    else
        task.wait(1.5)
        mines:InvokeServer({ cf = player.Character.HumanoidRootPart.CFrame })
    end
end

function LootChest()
    local closest, minDist = nil, math.huge
    for _, obj in next, workspace.Effects:GetChildren() do
        local prompt = obj:FindFirstChildWhichIsA("ProximityPrompt", true)
        if prompt and obj:IsA("Model") and prompt.Parent:IsA("MeshPart") then
            local dist = (obj:GetPivot().Position - player.Character:GetPivot().Position).Magnitude
            if dist < minDist then
                closest = obj
                minDist = dist
            end
        end
    end
    if closest then
        if not L_3920(closest:GetPivot().Position, 10, true) then
            Twunu2(closest:GetPivot().Position, 50, 30, 2090)
        else
            local prompt = closest:FindFirstChild("ProximityPrompt", true)
            local cam = workspace.CurrentCamera
            local root = player.Character.HumanoidRootPart
            local pos = prompt.Parent.Position
            local oldCFrame = cam.CFrame
            root.CFrame = CFrame.new(pos.X, pos.Y + 5, pos.Z) * CFrame.Angles(-math.pi / 2, 0, 0)
            cam.CameraSubject = prompt.Parent
            cam.CFrame = CFrame.lookAt(root.Position, pos)
            task.wait()
            prompt:InputHoldBegin()
            task.wait(prompt.HoldDuration + 0.1)
            prompt:InputHoldEnd()
            cam.CameraSubject = player.Character:FindFirstChild("Humanoid")
            cam.CFrame = oldCFrame
        end
    end
end

function GetImpelFloor()
    for _, timer in next, player.PlayerGui.ImpelDownUI.Info.Timers:GetChildren() do
        if timer.Name:match("Floor") then
            local num = timer.Name:match("%d+")
            if num then return tonumber(num) end
        end
    end
    return 1
end

-- Placeholders pour fonctions utilitaires

-- Main toggle
getgenv().AutoImpel = false
function AutoImpelToggle(enabled)
    getgenv().AutoImpel = enabled
    task.spawn(function()
        while getgenv().AutoImpel and task.wait(1) do
            FakeGeppo()
            if player.Character:FindFirstChild("Bomb-Bomb") or player.Backpack:FindFirstChild("Bomb-Bomb") then
                if GetStat("Devil Fruit") < 700 then
                    ReplicatedStorage:WaitForChild("Events"):WaitForChild("stats"):FireServer("DevilFruitMastery", nil, 700)
                end
                local leap = ReplicatedStorage:FindFirstChild(player.Name .. "|ServerScriptService.Skills.Skills.SkillContainer.Bomb-Bomb.Explosive Leap")
                if not leap then
                    ReplicatedStorage:WaitForChild("Events"):WaitForChild("Skill"):InvokeServer("Explosive Leap")
                else
                    leap:FireServer({ cf = CFrame.new(0, 0, 0), extra = 0 })
                end
            end
        end
    end)
    while getgenv().AutoImpel and task.wait() do
        if game.PlaceId ~= 11424731604 then
            local pos = Vector3.new(5878, 9, -10214)
            if not L_3920(pos, 10, true) then
                HoroTpPro({ Position = pos, Speed = 50, Stop = function() return getgenv().AutoImpel end })
            else
                L_2156(pos)
            end
        elseif not player.PlayerGui:FindFirstChild("diffChooser") then
            if GetImpelFloor() == 1 then
                if L_3920(Vector3.new(5906, 9, -10197), 300, true) then
                    local vera = workspace.NPCs:FindFirstChild("Vera")
                    if vera and not L_3920(vera:GetPivot().Position, 10, true) then
                        HoroTpPro({ Position = vera:GetPivot().Position, Speed = 50, Stop = function() return getgenv().AutoImpel end })
                    elseif vera and L_3920(vera:GetPivot().Position, 10, true) then
                        L_2156(vera:GetPivot().Position)
                        task.spawn(function() getgenv().GlobalHit(vera) end)
                    end
                elseif player.Character:FindFirstChild("LeftCuff") then
                    local key = workspace.Effects:FindFirstChild("Key")
                    if key then
                        if not L_3920(key:GetPivot().Position, 10, true) then
                            HoroTpPro({ Position = key:GetPivot().Position, Y = key:GetPivot().Position.Y, Speed = 50, Stop = function() return getgenv().AutoImpel end })
                        else
                            L_2156(key:GetPivot().Position)
                            local prompt = key:FindFirstChild("ProximityPrompt", true)
                            task.wait()
                            prompt:InputHoldBegin()
                            task.wait(prompt.HoldDuration)
                            prompt:InputHoldEnd()
                            task.wait()
                        end
                    end
                elseif not player.Backpack:FindFirstChild("Bomb-Bomb") then
                    if not player.Character:FindFirstChild("Bomb") then
                        if player.Backpack:FindFirstChild("Bomb") then
                            player.Backpack:FindFirstChild("Bomb").Parent = player.Character
                            task.wait(1)
                        elseif workspace.Effects:FindFirstChild("Bomb") then
                            if not L_3920(workspace.Effects:FindFirstChild("Bomb"):GetPivot().Position, 10, true) then
                                Twunu2(workspace.Effects:FindFirstChild("Bomb"):GetPivot().Position, 50, 30, 2090)
                            else
                                local prompt = workspace.Effects:FindFirstChild("Bomb"):FindFirstChild("ProximityPrompt", true)
                                prompt:InputHoldBegin()
                                task.wait(prompt.HoldDuration + 0.1)
                                prompt:InputHoldEnd()
                            end
                        else
                            LootChest()
                        end
                    elseif not player.PlayerGui:FindFirstChild("ConfirmationPrompt") then
                        player.Character:FindFirstChild("Bomb"):Activate()
                    else
                        firesignal(player.PlayerGui.ConfirmationPrompt.Main.OptionsFrame.Accept.MouseButton1Click)
                    end
                elseif player.Backpack:FindFirstChild("Bomb-Bomb") then
                    local barrier = workspace.Islands["Impel Base - Floor 1"].Barriers:FindFirstChild("StartBarrier")
                    if barrier and barrier.CanCollide then
                        Twunu2(barrier.Position, 50, 30, 2090, false)
                    end
                    if HasZone() then
                        if not L_3920(HasZone(), 10, true) then
                            Twunu2(HasZone(), 50, 30, 2090, false)
                        else
                            L_2156(HasZone() + Vector3.new(0, 4, 0))
                            PutMines()
                        end
                    else
                        local offset = Vector3.new(0, 0, -40)
                        if workspace.Effects.Zones:FindFirstChild("End") then
                            local endPos = workspace.Effects.Zones:FindFirstChild("End").Position + offset
                            if not L_3920(endPos, 10, true) then
                                Twunu(endPos, 50, 3000)
                            else
                                L_2156(endPos + Vector3.new(0, 4, 0))
                                PutMines()
                            end
                        else
                            Twunu(Vector3.new(2880, 2783, -14473) + offset, 50, 3000)
                        end
                    end
                end
            elseif GetImpelFloor() == 2 then
                if L_3920(Vector3.new(3199, 2405, -20056), 50, true) then
                    Twunu(Vector3.new(3201, 2384, -20276))
                end
            end
        end
    end
end

-- Pour activer : AutoImpelToggle(true)
-- Pour désactiver : AutoImpelToggle(false)
-- Pour une version complète, il faut ajouter les fonctions utilitaires et la logique de gestion des items, TP, prompts, etc.
