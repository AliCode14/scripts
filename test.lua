--Decompiled with the Synapse X Decompiler.

if L_35 and getgenv().Loaded then
    if L_508(7715) ~= 37 then
        while true do
        end;
    end;
    warn("script already loaded");
    return ;
end;
getgenv().Loaded = true;
repeat
    if L_506(3972) ~= 12156 then
        while true do
        end;
    end;
    task.wait();
until game:IsLoaded();
adoniscries = function()
    pcall(function()
        for L_556, L_557 in ipairs(game:GetDescendants()) do
            if L_557.Name:lower():match("adonis") or L_557.Name == "__FUNCTION" or L_557.Name:match("ClientMover") then
                L_557:Destroy();
            end;
        end;
        return ;
    end);
    pcall(function()
        for L_558, L_559 in ipairs(getnilinstances()) do
            if L_559:IsA("RemoteEvent") or L_559:IsA("RemoteFunction") or L_559.Name:match("ClientMover") or L_559.Name == "__FUNCTION" then
                if L_508(7972) ~= 564 then
                    while true do
                    end;
                end;
                L_559:Destroy();
            end;
        end;
        return ;
    end);
    pcall(function()
        if L_503 + 413 ~= 1766 then
            while true do
            end;
        end;
        local L_560 = nil;
        L_560 = hookfunction(Instance.new("RemoteEvent").FireServer, (INTERPRETER_PROXY[1][34][5](function(L_561, ...)
            if L_506(7511) == 27263 then
                local L_562 = { ... };
                if typeof(L_562[1]) == "table" and L_562[1].Mode == "Get" then
                    return ;
                end;
                return L_560(L_561, ...);
            end;
            while true do
            end;
        end)));
        return ;
    end);
    return true;
end;
adoniscries();
local L_616 = function()
    local L_563 = game:GetService("TweenService");
    local L_564 = game:GetService("Lighting");
    if L_503 + 396 ~= 1749 then
        while true do
        end;
    end;
    local L_565 = game:GetService("RunService");
    local L_566 = game:GetService("Debris");
    local L_567 = game:GetService("CoreGui");
    local L_568 = 5;
    local L_569 = "FERAL";
    local L_570 = 55;
    if L_503 - 252 ~= 1101 then
        while true do
        end;
    end;
    local L_571 = Color3.fromRGB(255, 182, 193);
    local L_572 = Color3.fromRGB(160, 210, 255);
    local L_573 = Color3.fromRGB(255, 255, 255);
    if L_502 + 301 ~= 2745 then
        while true do
        end;
    end;
    local L_574 = Instance.new("ScreenGui");
    L_574.Name = tostring(math.random(100000, 999999));
    L_574.IgnoreGuiInset = true;
    L_574.ResetOnSpawn = false;
    pcall(function()
        if L_507(8998) >= 3248 and L_507(8998) <= 3248 then
            L_574.Parent = L_567;
            return ;
        end;
        while true do
        end;
    end);
    local L_575 = Instance.new("BlurEffect");
    L_575.Name = tostring(math.random());
    L_575.Size = 0;
    L_575.Parent = L_564;
    local L_576 = Instance.new("ColorCorrectionEffect");
    L_576.Name = tostring(math.random());
    L_576.Saturation = 0;
    L_576.TintColor = Color3.fromRGB(255, 255, 255);
    L_576.Parent = L_564;
    local L_577 = Instance.new(L_32);
    L_577.Name = tostring(math.random());
    L_577.Size = UDim2.new(1, 0, 1, 0);
    L_577.BackgroundColor3 = Color3.fromRGB(255, 245, 250);
    L_577.BackgroundTransparency = 1;
    L_577.ZIndex = 0;
    L_577.Parent = L_574;
    if L_502 - 471 ~= 1973 then
        while true do
        end;
    end;
    local L_578 = Instance.new(L_32);
    L_578.Name = tostring(math.random());
    L_578.Size = UDim2.new(0, #L_569 * L_570, 0, 100);
    L_578.Position = UDim2.new(0.5, 0, 0.5, -30);
    L_578.AnchorPoint = Vector2.new(0.5, 0.5);
    L_578.BackgroundTransparency = 1;
    L_578.Parent = L_574;
    local L_579 = Instance.new(L_32);
    L_579.Name = tostring(math.random());
    L_579.Size = UDim2.new(1, 0, 1, 0);
    L_579.BackgroundTransparency = 1;
    L_579.Parent = L_574;
    local L_591 = function(L_580, L_581, L_582)
        local L_583 = Instance.new(L_32);
        L_583.Name = tostring(math.random());
        L_583.Size = UDim2.new(0, 60, 0, 80);
        if L_502 - 2421 ~= 23 then
            while true do
            end;
        end;
        local L_584 = -(L_582 * L_570 / 2) + L_570 / 2 + (L_581 - 1) * L_570;
        L_583.Position = UDim2.new(0.5, L_584, 0.5, 50);
        L_583.AnchorPoint = Vector2.new(0.5, 0.5);
        L_583.BackgroundTransparency = 1;
        L_583.Parent = L_578;
        local L_585 = Enum.Font.FredokaOne;
        if L_502 + 2027 ~= 4471 then
            while true do
            end;
        end;
        local L_586 = 64;
        local L_587 = Instance.new("TextLabel");
        L_587.Name = tostring(math.random());
        L_587.Text = L_580;
        L_587.Font = L_585;
        L_587.TextSize = L_586;
        L_587.TextColor3 = Color3.fromRGB(180, 140, 200);
        L_587.BackgroundTransparency = 1;
        L_587.Size = UDim2.new(1, 0, 1, 0);
        L_587.Position = UDim2.new(0, 3, 0, 3);
        L_587.TextTransparency = 1;
        L_587.ZIndex = 1;
        L_587.Parent = L_583;
        if L_502 + 2250 ~= 4694 then
            while true do
            end;
        end;
        local L_588 = Instance.new("TextLabel");
        L_588.Name = tostring(math.random());
        L_588.Text = L_580;
        L_588.Font = L_585;
        L_588.TextSize = L_586;
        L_588.TextColor3 = L_573;
        L_588.BackgroundTransparency = 1;
        L_588.Size = UDim2.new(1, 0, 1, 0);
        L_588.Position = UDim2.new(0, 0, 0, 0);
        L_588.TextTransparency = 1;
        L_588.ZIndex = 2;
        L_588.Parent = L_583;
        local L_589 = Instance.new("UIStroke");
        L_589.Name = tostring(math.random());
        L_589.Thickness = 3;
        L_589.Color = L_571;
        L_589.Transparency = 1;
        L_589.Parent = L_588;
        local L_590 = Instance.new("UIGradient");
        L_590.Name = tostring(math.random());
        L_590.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, L_571), ColorSequenceKeypoint.new(1, L_572) });
        L_590.Rotation = 45;
        L_590.Parent = L_589;
        return { H_1 = L_583, S_1 = L_587, M_1 = L_588, ST_1 = L_589 };
    end;
    local L_595 = function()
        local L_592 = Instance.new("ImageLabel");
        L_592.Name = tostring(math.random());
        local L_593 = math.random(15, 25);
        L_592.Size = UDim2.new(0, L_593, 0, L_593);
        L_592.Position = UDim2.new(math.random(20, 80) / 100, 0, 1.1, 0);
        L_592.BackgroundTransparency = 1;
        L_592.Image = "rbxassetid://243097862";
        L_592.ImageColor3 = math.random() > 0.5 and L_571 or L_572;
        L_592.ImageTransparency = 0.3;
        L_592.Parent = L_579;
        local L_594 = math.random(3, 5);
        L_563:Create(L_592, TweenInfo.new(L_594, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Position = UDim2.new(L_592.Position.X.Scale, math.random(-50, 50), -0.1, 0), ImageTransparency = 1, Rotation = math.random(-30, 30) }):Play();
        L_566:AddItem(L_592, L_594);
        return ;
    end;
    task.spawn(function()
        if L_506(8481) <= 29073 and L_506(8481) <= 29073 then
            local L_596 = Instance.new(L_32);
            L_596.Name = tostring(math.random());
            L_596.Size = UDim2.new(0, 220, 0, 6);
            L_596.Position = UDim2.new(0.5, 0, 0.5, 60);
            L_596.AnchorPoint = Vector2.new(0.5, 0.5);
            L_596.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
            L_596.BackgroundTransparency = 1;
            L_596.BorderSizePixel = 0;
            L_596.Parent = L_574;
            local L_597 = Instance.new("UICorner");
            L_597.Name = tostring(math.random());
            L_597.CornerRadius = UDim.new(1, 0);
            L_597.Parent = L_596;
            local L_598 = Instance.new(L_32);
            L_598.Name = tostring(math.random());
            L_598.Size = UDim2.new(0, 0, 1, 0);
            L_598.BackgroundColor3 = L_571;
            L_598.BorderSizePixel = 0;
            L_598.Parent = L_596;
            local L_599 = Instance.new("UICorner");
            L_599.Name = tostring(math.random());
            L_599.CornerRadius = UDim.new(1, 0);
            L_599.Parent = L_598;
            local L_600 = Instance.new("UIGradient");
            L_600.Name = tostring(math.random());
            L_600.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, L_571), ColorSequenceKeypoint.new(1, L_572) });
            L_600.Parent = L_598;
            if L_503 - 623 ~= 730 then
                while true do
                end;
            end;
            local L_601 = Instance.new("TextLabel");
            L_601.Name = tostring(math.random());
            L_601.Text = "initializing...";
            L_601.Font = Enum.Font.GothamMedium;
            L_601.TextSize = 14;
            L_601.TextColor3 = Color3.fromRGB(255, 255, 255);
            L_601.TextTransparency = 1;
            L_601.Size = UDim2.new(0, 200, 0, 20);
            L_601.Position = UDim2.new(0.5, 0, 0.5, 80);
            L_601.AnchorPoint = Vector2.new(0.5, 0.5);
            L_601.BackgroundTransparency = 1;
            L_601.Parent = L_574;
            local L_602 = Instance.new("UIStroke");
            L_602.Name = tostring(math.random());
            L_602.Thickness = 1;
            L_602.Color = Color3.fromRGB(200, 150, 180);
            L_602.Transparency = 1;
            L_602.Parent = L_601;
            L_563:Create(L_575, TweenInfo.new(1.5), { Size = 24 }):Play();
            L_563:Create(L_577, TweenInfo.new(1.5), { BackgroundTransparency = 0.8 }):Play();
            local L_603 = {};
            for L_604 = 1, #L_569, 1 do
                local L_605 = string.sub(L_569, L_604, L_604);
                table.insert(L_603, L_591(L_605, L_604, #L_569));
            end;
            for L_606, L_607 in ipairs(L_603) do
                task.wait(0.1);
                L_563:Create(L_607.M_1, TweenInfo.new(1), { TextTransparency = 0 }):Play();
                L_563:Create(L_607.S_1, TweenInfo.new(1), { TextTransparency = 0.5 }):Play();
                L_563:Create(L_607.ST_1, TweenInfo.new(1), { Transparency = 0 }):Play();
                L_563:Create(L_607.H_1, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Position = UDim2.new(L_607.H_1.Position.X.Scale, L_607.H_1.Position.X.Offset, 0.5, 0) }):Play();
            end;
            task.wait(0.5);
            L_563:Create(L_596, TweenInfo.new(1), { BackgroundTransparency = 0.7 }):Play();
            L_563:Create(L_601, TweenInfo.new(1), { TextTransparency = 0 }):Play();
            L_563:Create(L_602, TweenInfo.new(1), { Transparency = 0.5 }):Play();
            L_563:Create(L_598, TweenInfo.new(L_568, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { Size = UDim2.new(1, 0, 1, 0) }):Play();
            local L_612 = L_565.RenderStepped:Connect(function()
                if math.random() > 0.92 then
                    L_595();
                end;
                local L_608 = os.clock();
                for L_609, L_610 in ipairs(L_603) do
                    local L_611 = math.sin(L_608 * 3 + L_609 * 0.5) * 6;
                    L_610.H_1.Position = UDim2.new(L_610.H_1.Position.X.Scale, L_610.H_1.Position.X.Offset, 0.5, L_611);
                end;
                return ;
            end);
            task.wait(L_568 * 0.3);
            L_601.Text = "bypassing...";
            task.wait(L_568 * 0.4);
            L_601.Text = "loading assets...";
            task.wait(L_568 * 0.2);
            L_601.Text = "success! <3";
            task.wait(0.5);
            L_612:Disconnect();
            local L_613 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In);
            for L_614, L_615 in ipairs(L_603) do
                L_563:Create(L_615.H_1, L_613, { Position = UDim2.new(L_615.H_1.Position.X.Scale, L_615.H_1.Position.X.Offset, 0.5, -100) }):Play();
                L_563:Create(L_615.M_1, L_613, { TextTransparency = 1 }):Play();
                L_563:Create(L_615.S_1, L_613, { TextTransparency = 1 }):Play();
                L_563:Create(L_615.ST_1, L_613, { Transparency = 1 }):Play();
                task.wait(0.05);
            end;
            L_563:Create(L_596, L_613, { BackgroundTransparency = 1 }):Play();
            L_563:Create(L_598, L_613, { BackgroundTransparency = 1 }):Play();
            L_563:Create(L_601, L_613, { TextTransparency = 1 }):Play();
            L_563:Create(L_602, L_613, { Transparency = 1 }):Play();
            L_563:Create(L_575, TweenInfo.new(1.5), { Size = 0 }):Play();
            L_563:Create(L_577, TweenInfo.new(1.5), { BackgroundTransparency = 1 }):Play();
            task.wait(1.5);
            L_574:Destroy();
            L_575:Destroy();
            L_576:Destroy();
            return ;
        end;
        while true do
        end;
    end);
    return ;
end;
getgenv().LoadedAnticheatBypass = false;
task.spawn(pcall, function()
    if L_507(8313) == 688 then
        if game.PlaceId ~= 1730877806 then
            if not (L_508(1682) <= 8) or not (L_508(1682) <= 8) then
                while true do
                end;
            end;
            local L_617 = nil;
            repeat
                task.wait();
            until game:GetService("ReplicatedFirst"):FindFirstChild("paul greyrat");
            repeat
                task.wait();
            until #game:GetService("ReplicatedFirst")["paul greyrat"]:GetChildren() < 1;
            task.wait();
            L_616();
            if game:GetService("ReplicatedFirst"):FindFirstChild("paul greyrat") then
                if L_506(3240) ~= 11520 then
                    while true do
                    end;
                end;
                L_617 = true;
                run_on_actor(game:GetService("ReplicatedFirst")["paul greyrat"], "\t\t\t\t\t\tlocal bypassed = true\n\t\t\t\t\t\tlocal Context = game:GetService('ScriptContext')\n\t\t\t\t\t\tfor i,v in next, getconnections(Context.Error) do \n\t\t\t\t\t\t\tif v.Function and debug.getinfo(v.Function).nups > 1 then \n\t\t\t\t\t\t\t\thookfunction(v.Function,function() end)\n\t\t\t\t\t\t\t\tbypassed = false\n\t\t\t\t\t\t\tend\n\t\t\t\t\t\tend\n\t\t\t\t\t\tif bypassed and game.PlaceId ~= 1730877806 then\n\t\t\t\t\t\t\tgame.Players.LocalPlayer:Kick('bypass failed')\n\t\t\t\t\t\tend\n\t\t\t\t\t");
            end;
            if not L_617 and game.PlaceId ~= 1730877806 then
                game.Players.LocalPlayer:Kick("failed to load ac bypass please contact texchy or try rejoining");
            else
                task.wait(7);
                getgenv().LoadedAnticheatBypass = true;
            end;
        end;
        return ;
    end;
    while true do
    end;
end);
if L_35 and game.PlaceId ~= 1730877806 then
    repeat
        task.wait();
    until getgenv().LoadedAnticheatBypass;
end;
loadstring("\t\tfunction LPH_NO_UPVALUES(f) return f end;\n\t\t")();
loadstring("\t\tfunction LPH_JIT(f) return f end;\n\t\t")();
getgenv().script_key = script_key;
local L_618 = game:GetService("HttpService");
local L_619 = {};
local L_620 = {};
local L_621 = {};
local L_622 = { Toggles = {}, Sliders = {}, Dropdowns = {}, Keybinds = {}, Boxes = {} };
local L_626 = function(L_623, L_624, L_625)
    if L_507(6015) == 6640 then
        return tostring(L_623) .. "||" .. tostring(L_624) .. "||" .. tostring(L_625);
    end;
    while true do
    end;
end;
RequirementsTracker = {
    UserHas = {},
    Presets = {
        Geppo = function()
            return RequirementsTracker.UserHas.Geppo or false;
        end
    },
    ActiveConnections = {}
};
RequirementsTracker.Update = function(L_627, L_628, L_629)
    L_627.UserHas[L_628] = L_629;
    return ;
end;
RequirementsTracker.Check = function(L_630, L_631)
    if L_630.Presets[L_631] then
        return L_630.Presets[L_631]();
    end;
    return false;
end;
RequirementsTracker.AddPreset = function(L_632, L_633, L_634)
    L_632.Presets[L_633] = L_634;
    return ;
end;
GetUi = function()
    if getgenv().Tvk and game.CoreGui:FindFirstChild("Feral GUI") then
        for L_635, L_636 in ipairs(game.CoreGui:GetChildren()) do
            if L_636.Name == "Feral GUI" then
                L_636:Destroy();
            end;
        end;
    end;
    getgenv().Tvk = true;
    getgenv().Chon = true;
    local L_637 = { ["Border Color"] = Color3.fromRGB(131, 181, 255), ["Click Effect Color"] = Color3.fromRGB(230, 230, 230), ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230), ["Logo Image"] = "rbxassetid://6248942117", ["Search Icon Color"] = Color3.fromRGB(255, 255, 255), ["Search Icon Highlight Color"] = Color3.fromRGB(131, 181, 255), ["GUI Text Color"] = Color3.fromRGB(230, 230, 230), [L_34] = Color3.fromRGB(230, 230, 230), ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178), ["Title Text Color"] = Color3.fromRGB(131, 181, 255), ["Background 1 Color"] = Color3.fromRGB(43, 43, 43), ["Background 1 Transparency"] = 0, ["Background 2 Color"] = Color3.fromRGB(90, 90, 90), ["Background 3 Color"] = Color3.fromRGB(53, 53, 53), ["Background Image"] = "", ["Page Selected Color"] = Color3.fromRGB(131, 181, 255), ["Section Text Color"] = Color3.fromRGB(131, 181, 255), ["Section Underline Color"] = Color3.fromRGB(131, 181, 255), ["Toggle Border Color"] = Color3.fromRGB(131, 181, 255), ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230), ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185), ["Button Color"] = Color3.fromRGB(131, 181, 255), ["Label Color"] = Color3.fromRGB(101, 152, 220), ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230), ["Dropdown Selected Color"] = Color3.fromRGB(131, 181, 255), ["Textbox Highlight Color"] = Color3.fromRGB(131, 181, 255), ["Box Highlight Color"] = Color3.fromRGB(131, 181, 255), ["Slider Line Color"] = Color3.fromRGB(75, 75, 75), ["Slider Highlight Color"] = Color3.fromRGB(59, 82, 115), ["Tween Animation 1 Speed"] = 0.25, ["Tween Animation 2 Speed"] = 0.5, ["Tween Animation 3 Speed"] = 0.1 };
    local L_638 = { ["Border Color"] = Color3.fromRGB(40, 40, 40), ["Click Effect Color"] = Color3.fromRGB(60, 60, 60), ["Setting Icon Color"] = Color3.fromRGB(200, 200, 200), ["Logo Image"] = "rbxassetid://9327507243", ["Search Icon Color"] = Color3.fromRGB(200, 200, 200), ["Search Icon Highlight Color"] = Color3.fromRGB(90, 160, 255), ["GUI Text Color"] = Color3.fromRGB(220, 220, 220), [L_34] = Color3.fromRGB(220, 220, 220), ["Placeholder Text Color"] = Color3.fromRGB(150, 150, 150), ["Title Text Color"] = Color3.fromRGB(90, 160, 255), ["Background Main Color"] = Color3.fromRGB(20, 20, 20), ["Background 1 Color"] = Color3.fromRGB(30, 30, 30), ["Background 1 Transparency"] = 0, ["Background 2 Color"] = Color3.fromRGB(45, 45, 45), ["Background 3 Color"] = Color3.fromRGB(25, 25, 25), ["Background Image"] = "", ["Page Selected Color"] = Color3.fromRGB(90, 160, 255), ["Section Text Color"] = Color3.fromRGB(90, 160, 255), ["Section Underline Color"] = Color3.fromRGB(90, 160, 255), ["Toggle Border Color"] = Color3.fromRGB(90, 160, 255), ["Toggle Checked Color"] = Color3.fromRGB(220, 220, 220), ["Toggle Desc Color"] = Color3.fromRGB(180, 180, 180), ["Button Color"] = Color3.fromRGB(90, 160, 255), ["Label Color"] = Color3.fromRGB(90, 160, 255), ["Dropdown Icon Color"] = Color3.fromRGB(200, 200, 200), ["Dropdown Selected Color"] = Color3.fromRGB(90, 160, 255), ["Textbox Highlight Color"] = Color3.fromRGB(90, 160, 255), ["Box Highlight Color"] = Color3.fromRGB(90, 160, 255), ["Slider Line Color"] = Color3.fromRGB(60, 60, 60), ["Slider Highlight Color"] = Color3.fromRGB(70, 130, 200), ["Tween Animation 1 Speed"] = 0.25, ["Tween Animation 2 Speed"] = 0.5, ["Tween Animation 3 Speed"] = 0.1 };
    local L_639 = {};
    for L_640, L_641 in pairs(L_638) do
        if not (L_506(9057) >= 28761) or not (L_506(9057) >= 28761) then
            while true do
            end;
        end;
        L_639[L_640] = {};
    end;
    if L_502 + 2287 ~= 4731 then
        while true do
        end;
    end;
    local L_642 = {};
    for L_643, L_644 in pairs(L_638) do
        L_642[L_643] = { Color = L_644, Rainbow = false, Breathing = { Toggle = false, Color1 = Color3.new(), Color2 = Color3.new() } };
    end;
    local L_646 = function(L_645)
        return { math.floor(L_645.r * 255), math.floor(L_645.g * 255), math.floor(L_645.b * 255), "Dit" };
    end;
    CorrectTable = function(L_647)
        local L_648 = {};
        for L_649, L_650 in pairs(L_647) do
            if L_507(4755) ~= 2880 then
                while true do
                end;
            end;
            if typeof(L_650) == "Color3" then
                L_648[L_649] = L_646(L_650);
            elseif type(L_650) == "table" then
                L_648[L_649] = CorrectTable(L_650);
            else
                L_648[L_649] = L_650;
            end;
        end;
        return L_648;
    end;
    DCorrectTable = function(L_651)
        local L_652 = {};
        for L_653, L_654 in pairs(L_651) do
            if type(L_654) == "table" and L_654[4] == "Dit" then
                L_652[L_653] = Color3.fromRGB(unpack(L_654));
            elseif type(L_654) == "table" then
                L_652[L_653] = DCorrectTable(L_654);
            else
                L_652[L_653] = L_654;
            end;
        end;
        return L_652;
    end;
    local L_655 = game:GetService("HttpService");
    local L_656 = "!CustomUI.json";
    SaveCustomUISettings = function()
        local L_657 = game:GetService("HttpService");
        if not isfolder("Feral") then
            makefolder("Feral");
        end;
        writefile("Feral/" .. L_656, L_657:JSONEncode(CorrectTable(L_642)));
        return ;
    end;
    ReadCustomUISetting = function()
        local L_662, L_663 = pcall(function()
            local L_658 = game:GetService("HttpService");
            if not isfolder("Feral") then
                makefolder("Feral");
            end;
            if L_502 + 489 ~= 2933 then
                while true do
                end;
            end;
            local L_659 = L_658:JSONDecode(readfile("Feral/" .. L_656));
            for L_660, L_661 in pairs(L_659) do
                if not (function()
                    if L_661.Color == nil then
                        return ;
                    end;
                    if L_661.Rainbow == nil then
                        return ;
                    end;
                    if L_661.Breathing == nil then
                        return ;
                    end;
                    if L_661.Breathing.Color1 == nil then
                        return ;
                    end;
                    if L_661.Breathing.Color2 == nil then
                        return ;
                    end;
                    return true;
                end)() then
                    SaveCustomUISettings();
                    return ReadCustomUISetting();
                end;
            end;
            return L_659;
        end);
        if L_662 then
            return L_663;
        end;
        if L_508(1761) ~= 332 then
            while true do
            end;
        end;
        SaveCustomUISettings();
        return ReadCustomUISetting();
    end;
    local L_664 = {};
    if L_503 + 1249 ~= 2602 then
        while true do
        end;
    end;
    local L_665 = "Feral/Configs";
    if L_502 - 683 ~= 1761 then
        while true do
        end;
    end;
    local L_666 = function()
        if not isfolder("Feral") then
            makefolder("Feral");
        end;
        if L_36 and not isfolder(L_665) then
            makefolder(L_665);
        end;
        return ;
    end;
    L_664.List = function()
        L_666();
        local L_667 = listfiles(L_665);
        local L_668 = {};
        for L_669, L_670 in ipairs(L_667) do
            local L_671 = L_670:match(".+[/\\](.+)%.json$");
            if L_671 then
                table.insert(L_668, L_671);
            end;
        end;
        return L_668;
    end;
    L_664.Save = function(L_672)
        if not L_672 or L_672 == "" then
            return false, "No config name";
        end;
        L_666();
        local L_673 = { Toggles = {}, Sliders = {}, Dropdowns = {}, Keybinds = {}, Boxes = {}, UITheme = CorrectTable(L_642) };
        for L_674, L_675 in pairs(L_622.Toggles) do
            local L_676, L_677 = pcall(L_675.Get);
            if L_676 then
                if L_508(3904) ~= 130 then
                    while true do
                    end;
                end;
                L_673.Toggles[L_674] = L_677;
            end;
        end;
        for L_678, L_679 in pairs(L_622.Sliders) do
            local L_680, L_681 = pcall(L_679.Get);
            if L_680 then
                L_673.Sliders[L_678] = L_681;
            end;
        end;
        for L_682, L_683 in pairs(L_622.Dropdowns) do
            if L_507(6966) ~= 9216 then
                while true do
                end;
            end;
            local L_684, L_685 = pcall(L_683.Get);
            if L_684 then
                L_673.Dropdowns[L_682] = L_685;
            end;
        end;
        for L_686, L_687 in pairs(L_622.Keybinds) do
            local L_688, L_689 = pcall(L_687.Get);
            if L_36 and L_688 then
                L_673.Keybinds[L_686] = L_689;
            end;
        end;
        for L_690, L_691 in pairs(L_622.Boxes) do
            if L_503 + 704 ~= 2057 then
                while true do
                end;
            end;
            local L_692, L_693 = pcall(L_691.Get);
            if L_692 then
                L_673.Boxes[L_690] = L_693;
            end;
        end;
        if L_503 - 448 ~= 905 then
            while true do
            end;
        end;
        local L_694, L_695 = pcall(function()
            writefile(L_665 .. "/" .. L_672 .. ".json", game.HttpService:JSONEncode(L_673));
            return ;
        end);
        return L_694, L_695;
    end;
    L_664.Load = function(L_696)
        if not L_696 or L_696 == "" then
            if L_508(3995) ~= 85 then
                while true do
                end;
            end;
            return false, "No config name";
        end;
        L_666();
        if L_502 + 1775 ~= 4219 then
            while true do
            end;
        end;
        local L_697 = L_665 .. "/" .. L_696 .. ".json";
        if L_36 and not isfile(L_697) then
            return false, "Config not found";
        end;
        local L_698 = readfile(L_697);
        local L_699, L_700 = pcall(function()
            return game.HttpService:JSONDecode(L_698);
        end);
        if L_35 and (not L_699 or type(L_700) ~= "table") then
            return false, "Invalid config data";
        end;
        local L_709 = function(L_701, L_702, L_703)
            if not L_703 then
                return ;
            end;
            for L_704, L_705 in pairs(L_703) do
                local L_706 = L_702 and L_702[L_704];
                if L_706 and L_706.Set then
                    if not (L_508(3356) >= 234) or not (L_508(3356) >= 234) then
                        while true do
                        end;
                    end;
                    task.spawn(function()
                        local L_707, L_708 = pcall(L_706.Set, L_705);
                        if not L_707 then
                            warn("[Config]", L_701, "Set failed for id:", L_704, L_708);
                        end;
                        return ;
                    end);
                end;
            end;
            return ;
        end;
        if L_700.UITheme then
            task.spawn(function()
                local L_715, L_716 = pcall(function()
                    if L_506(8065) == 26545 then
                        local L_710 = DCorrectTable(L_700.UITheme);
                        for L_711, L_712 in pairs(L_710) do
                            if type(L_712) == "table" and L_712.Color then
                                task.spawn(function()
                                    if L_508(1412) >= 170 and L_508(1412) >= 170 then
                                        local L_713, L_714 = pcall(function()
                                            if L_508(6911) == 66 then
                                                getgenv().UIColor[L_711] = L_712.Color;
                                                return ;
                                            end;
                                            while true do
                                            end;
                                        end);
                                        if not L_713 then
                                            warn("[Config] UITheme apply failed for key:", L_711, L_714);
                                        end;
                                        return ;
                                    end;
                                    while true do
                                    end;
                                end);
                            end;
                        end;
                        return ;
                    end;
                    while true do
                    end;
                end);
                if not L_715 then
                    if not (L_507(4768) <= 2768) or not (L_507(4768) <= 2768) then
                        while true do
                        end;
                    end;
                    warn("[Config] UITheme decoding failed:", L_716);
                end;
                return ;
            end);
        end;
        task.spawn(function()
            L_709("Toggle", L_622.Toggles, L_700.Toggles);
            return ;
        end);
        task.spawn(function()
            L_709("Slider", L_622.Sliders, L_700.Sliders);
            return ;
        end);
        task.spawn(function()
            L_709("Dropdown", L_622.Dropdowns, L_700.Dropdowns);
            return ;
        end);
        task.spawn(function()
            L_709("Keybind", L_622.Keybinds, L_700.Keybinds);
            return ;
        end);
        task.spawn(function()
            L_709("Box", L_622.Boxes, L_700.Boxes);
            return ;
        end);
        return true;
    end;
    L_664.Delete = function(L_717)
        if not L_717 or L_717 == "" then
            if L_507(6121) == 6496 then
                return false, "No config name";
            end;
            while true do
            end;
        end;
        L_666();
        local L_718 = L_665 .. "/" .. L_717 .. ".json";
        if L_36 and not isfile(L_718) then
            return false, "Config not found";
        end;
        local L_719, L_720 = pcall(function()
            delfile(L_718);
            return ;
        end);
        return L_719, L_720;
    end;
    getgenv().FeralConfig = L_664;
    if not getgenv().Chon then
        if not (L_506(2773) <= 11269) or not (L_506(2773) >= 11269) then
            while true do
            end;
        end;
        L_642 = DCorrectTable(ReadCustomUISetting());
        for L_721, L_722 in pairs(L_642) do
            L_638[L_721] = L_722.Color;
        end;
    end;
    if not getgenv().ractvkretarddumb then
        if L_507(9937) ~= 1312 then
            while true do
            end;
        end;
        spawn(function()
            while wait(1) do
                SaveCustomUISettings();
            end;
            return ;
        end);
        getgenv().ractvkretarddumb = true;
    end;
    local L_729 = setmetatable({}, {
        __newindex = function(L_723, L_724, L_725)
            if L_724 == nil then
                warn("[Feral UI] UIColor __newindex got nil key, ignoring.");
                return ;
            end;
            rawset(L_638, L_724, L_725);
            local L_726 = L_639[L_724];
            if L_726 then
                for L_727, L_728 in pairs(L_726) do
                    pcall(L_728);
                end;
            end;
            if not L_642[L_724] then
                if L_508(8915) ~= 148 then
                    while true do
                    end;
                end;
                L_642[L_724] = { Color = L_725, Rainbow = false, Breathing = { Toggle = false, Color1 = Color3.new(), Color2 = Color3.new() } };
            else
                L_642[L_724].Color = L_725;
            end;
            return ;
        end,
        __index = L_638
    });
    getgenv().UIColor = L_729;
    local L_730 = {};
    local L_731 = {};
    local L_732 = {};
    local L_733 = game:GetService("TweenService");
    local L_734 = game:GetService("UserInputService");
    L_732.ButtonEffect = function()
        return ;
    end;
    L_732.GetIMG = function(L_735)
        local L_736 = "SynAsset [";
        local L_737 = "";
        if string.find(L_735, "rbxassetid://") then
            if L_506(4833) ~= 14529 then
                while true do
                end;
            end;
            L_737 = L_735;
        else
            pcall(function()
                if L_508(7591) == 39 then
                    if L_735 and type(L_735) == "string" and tostring(game:HttpGet(L_735)):find("PNG") then
                        for L_738 = 1, 5, 1 do
                            L_736 = tostring(L_736 .. string.char(math.random(65, 122)));
                        end;
                        L_736 = L_736 .. "].png";
                        writefile(L_736, game:HttpGet(L_735));
                        spawn(function()
                            wait(5);
                            delfile(L_736);
                            return ;
                        end);
                        L_737 = getsynasset(L_736);
                    end;
                    return ;
                end;
                while true do
                end;
            end);
        end;
        return L_737;
    end;
    L_732.Gui = Instance.new("ScreenGui");
    L_732.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
    L_732.Gui.Name = "Feral GUI";
    getgenv().ReadyForGuiLoaded = false;
    spawn(function()
        L_732.Gui.Enabled = false;
        repeat
            wait();
        until getgenv().ReadyForGuiLoaded;
        L_732.Gui.Enabled = true;
        return ;
    end);
    L_732.NotiGui = Instance.new("ScreenGui");
    L_732.NotiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
    L_732.NotiGui.Name = "Feral Notification";
    local L_739 = Instance.new(L_32);
    local L_740 = Instance.new("UIListLayout");
    L_739.Name = "NotiContainer";
    L_739.Parent = L_732.NotiGui;
    L_739.AnchorPoint = Vector2.new(1, 1);
    L_739.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
    L_739.BackgroundTransparency = 1;
    L_739.Position = UDim2.new(1, -5, 1, -5);
    L_739.Size = UDim2.new(0, 350, 1, -10);
    L_740.Name = "NotiList";
    L_740.Parent = L_739;
    L_740.SortOrder = Enum.SortOrder.LayoutOrder;
    L_740.VerticalAlignment = Enum.VerticalAlignment.Bottom;
    L_740.Padding = UDim.new(0, 5);
    wait();
    getgenv().GUI = L_732.Gui;
    SetUpTranslate = function()
        if L_506(6683) <= 25499 and L_506(6683) <= 25499 then
            local L_741 = "vi";
            local L_742 = isfile("googlev.txt") and readfile("googlev.txt") or "";
            local L_743 = request or syn.request;
            local L_745 = function(L_744)
                return function(...)
                    return L_744("[INLINE TRANSLATOR]", ...);
                end;
            end;
            if L_508(3837) == 59 then
                googleConsent = function(L_746)
                    local L_747 = {};
                    for L_748, L_749 in L_746:gmatch("<input type=\"hidden\" name=\".-\" value=\".-\">") do
                        local L_750, L_751 = L_748:match("<input type=\"hidden\" name=\"(.-)\" value=\"(.-)\">");
                        L_747[L_750] = L_751;
                    end;
                    L_742 = L_747.v;
                    writefile("googlev.txt", L_747.v);
                    return ;
                end;
                local L_757 = function(L_752, L_753, L_754)
                    local L_755 = L_753 or "GET";
                    local L_756 = L_743({ Url = L_752, Method = L_755, Headers = { cookie = "CONSENT=YES+" .. L_742 }, Body = L_754 });
                    if L_756.Body:match("https://consent.google.com/s") then
                        googleConsent(L_756.Body);
                        L_756 = L_743({ Url = L_752, Method = "GET", Headers = { cookie = "CONSENT=YES+" .. L_742 } });
                    end;
                    return L_756;
                end;
                getgenv().languages = { auto = "Automatic", ["zh-cn"] = "Chinese Simplified", ["zh-tw"] = "Chinese Traditional", en = "English", fr = "French", de = "German", el = "Greek", hu = "Hungarian", id = "Indonesian", it = "Italian", ja = "Japanese", ko = "Korean", mg = "Malagasy", pl = "Polish", pt = "Portuguese", ru = "Russian", es = "Spanish", tr = "Turkish", vi = "Vietnamese" };
                local L_758 = {};
                for L_759, L_760 in pairs(languages) do
                    table.insert(L_758, L_759);
                end;
                SetRandomLang = function()
                    L_741 = L_758[math.random(1, #L_758)];
                    return ;
                end;
                find = function(L_761)
                    if L_506(7464) <= 25752 and L_506(7464) <= 25752 then
                        for L_762, L_763 in pairs(languages) do
                            if L_762 == L_761 or L_763 == L_761 then
                                if L_506(8732) == 28556 then
                                    return L_762;
                                end;
                                while true do
                                end;
                            end;
                        end;
                        return ;
                    end;
                    while true do
                    end;
                end;
                isSupported = function(L_764)
                    return find(L_764) and true or false;
                end;
                local L_766 = function(L_765)
                    return (find(L_765));
                end;
                stringifyQuery = function(L_767)
                    local L_768 = "";
                    for L_769, L_770 in pairs(L_767) do
                        if type(L_770) == "table" then
                            for L_771, L_772 in pairs(L_770) do
                                L_768 = L_768 .. ("&%s=%s"):format(game.HttpService:UrlEncode(L_769), game.HttpService:UrlEncode(L_772));
                            end;
                        else
                            L_768 = L_768 .. ("&%s=%s"):format(game.HttpService:UrlEncode(L_769), game.HttpService:UrlEncode(L_770));
                        end;
                    end;
                    return (L_768:sub(2));
                end;
                local L_773 = math.random(1000, 9999);
                local L_774 = "MkEWBc";
                local L_775 = "https://translate.google.com/_/TranslateWebserverUi/data/batchexecute";
                local L_776 = nil;
                local L_777 = nil;
                jsonE = function(L_778)
                    return L_618:JSONEncode(L_778);
                end;
                jsonD = function(L_779)
                    return L_618:JSONDecode(L_779);
                end;
                local L_792 = function(L_780, L_781, L_782)
                    L_773 = L_773 + 10000;
                    local L_783 = L_782 and L_766(L_782) or "auto";
                    local L_784 = L_781 and L_766(L_781) or "en";
                    local L_785 = { { { L_774, jsonE({ { L_780, L_783, L_784, true }, { nil } }), nil, "generic" } } };
                    local L_786 = L_775 .. "?" .. stringifyQuery({ rpcids = L_774, ["f.sid"] = L_776, bl = L_777, hl = "en", _reqid = L_773 - 10000, rt = "c" });
                    local L_787 = stringifyQuery({ ["f.req"] = jsonE(L_785) });
                    local L_788 = L_757(L_786, "POST", L_787);
                    local L_789 = jsonD(L_788.Body:match("%[.-%]\n"));
                    local L_790 = jsonD(L_789[1][3]);
                    local L_791 = { text = "", from = { language = "", text = "" }, raw = "", raw = L_790, text = L_790[2][1][1][6][1][1] };
                    L_791.from.language = L_790[3];
                    L_791.from.text = L_790[2][5][1];
                    return L_791;
                end;
                translateFrom = function(L_793)
                    local L_794 = L_792(L_793, L_741);
                    local L_795 = nil;
                    if L_794.from.language ~= L_741 then
                        L_795 = L_794.text;
                    end;
                    return { L_795, L_794.from.language };
                end;
                Translate = function(L_796)
                    local L_797, L_798 = pcall(function()
                        return translateFrom(L_796)[1];
                    end);
                    if L_797 then
                        return L_798;
                    end;
                    return ;
                end;
                return ;
            end;
            while true do
            end;
        end;
        while true do
        end;
    end;
    getgenv().TranslateCache = {};
    if not isfolder("Feral") then
        makefolder("Feral");
    end;
    local L_799, L_800 = pcall(function()
        return game.HttpService:JSONDecode(readfile("Feral/!UIText.json"));
    end);
    SaveFile = function()
        pcall(function()
            writefile("Feral/!UIText.json", game.HttpService:JSONEncode(getgenv().TranslateCache));
            return ;
        end);
        return ;
    end;
    isnumber = function()
        return ;
    end;
    local L_801 = false;
    if L_799 and L_800 then
        getgenv().TranslateCache = L_800;
    end;
    spawn(function()
        local L_802 = tick();
        while wait(2) do
            if tick() - L_802 > 30 then
                if L_801 then
                    SaveFile();
                    L_801 = false;
                end;
            else
                SaveFile();
            end;
        end;
        return ;
    end);
    L_732.Gui.Parent = game:GetService("CoreGui");
    L_732.NotiGui.Parent = game:GetService("CoreGui");
    L_732.Getcolor = function(L_803)
        return { math.floor(L_803.r * 255), math.floor(L_803.g * 255), math.floor(L_803.b * 255) };
    end;
    L_731.CreateNoti = function(L_804)
        getgenv().TitleNameNoti = L_804.Title or "";
        local L_805 = L_804.Desc;
        local L_806 = L_804.ShowTime or 10;
        local L_807 = Instance.new(L_32);
        local L_808 = Instance.new(L_32);
        local L_809 = Instance.new("UICorner");
        local L_810 = Instance.new(L_32);
        local L_811 = Instance.new("ImageLabel");
        local L_812 = Instance.new("UICorner");
        local L_813 = Instance.new("TextLabel");
        local L_814 = Instance.new(L_32);
        local L_815 = Instance.new("ImageLabel");
        local L_816 = Instance.new("TextButton");
        local L_817 = Instance.new("TextLabel");
        L_807.Name = "NotiFrame";
        L_807.Parent = L_739;
        L_807.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_807.BackgroundTransparency = 1;
        L_807.ClipsDescendants = true;
        L_807.Position = UDim2.new(0, 0, 0, 0);
        L_807.Size = UDim2.new(1, 0, 0, 0);
        L_807.AutomaticSize = Enum.AutomaticSize.Y;
        L_808.Name = "Noticontainer";
        L_808.Parent = L_807;
        L_808.Position = UDim2.new(1, 0, 0, 0);
        L_808.Size = UDim2.new(1, 0, 1, 6);
        L_808.AutomaticSize = Enum.AutomaticSize.Y;
        L_808.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
        table.insert(L_639["Background 3 Color"], function()
            L_808.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
            return ;
        end);
        L_809.CornerRadius = UDim.new(0, 4);
        L_809.Parent = L_808;
        L_810.Name = "Topnoti";
        L_810.Parent = L_808;
        L_810.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_810.BackgroundTransparency = 1;
        L_810.Position = UDim2.new(0, 0, 0, 5);
        L_810.Size = UDim2.new(1, 0, 0, 25);
        L_811.Name = "Ruafimg";
        L_811.Parent = L_810;
        L_811.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_811.BackgroundTransparency = 1;
        L_811.Position = UDim2.new(0, 10, 0, 0);
        L_811.Size = UDim2.new(0, 25, 0, 25);
        L_811.Image = getgenv().UIColor["Logo Image"];
        table.insert(L_639["Logo Image"], function()
            L_811.Image = L_732.GetIMG(getgenv().UIColor["Logo Image"]);
            return ;
        end);
        L_812.CornerRadius = UDim.new(1, 0);
        L_812.Name = "RuafimgCorner";
        L_812.Parent = L_811;
        L_813.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Feral</font> " .. getgenv().TitleNameNoti;
        table.insert(L_639["Title Text Color"], function()
            L_813.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Feral</font> " .. getgenv().TitleNameNoti;
            return ;
        end);
        L_813.Name = "TextLabelNoti";
        L_813.Parent = L_810;
        L_813.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_813.BackgroundTransparency = 1;
        L_813.Position = UDim2.new(0, 40, 0, 0);
        L_813.Size = UDim2.new(1, -40, 1, 0);
        L_813.Font = Enum.Font.GothamBold;
        L_813.TextSize = 14;
        L_813.TextWrapped = true;
        L_813.TextXAlignment = Enum.TextXAlignment.Left;
        L_813.RichText = true;
        L_813.TextColor3 = getgenv().UIColor["GUI Text Color"];
        table.insert(L_639["GUI Text Color"], function()
            L_813.TextColor3 = getgenv().UIColor["GUI Text Color"];
            return ;
        end);
        L_814.Name = "CloseContainer";
        L_814.Parent = L_810;
        L_814.AnchorPoint = Vector2.new(1, 0.5);
        L_814.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_814.BackgroundTransparency = 1;
        L_814.Position = UDim2.new(1, -4, 0.5, 0);
        L_814.Size = UDim2.new(0, 22, 0, 22);
        L_815.Name = "CloseImage";
        L_815.Parent = L_814;
        L_815.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_815.BackgroundTransparency = 1;
        L_815.Size = UDim2.new(1, 0, 1, 0);
        L_815.Image = "rbxassetid://3926305904";
        L_815.ImageRectOffset = Vector2.new(284, 4);
        L_815.ImageRectSize = Vector2.new(24, 24);
        L_815.ImageColor3 = getgenv().UIColor["Search Icon Color"];
        table.insert(L_639["Search Icon Color"], function()
            L_815.ImageColor3 = getgenv().UIColor["Search Icon Color"];
            return ;
        end);
        L_816.Parent = L_814;
        L_816.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_816.BackgroundTransparency = 1;
        L_816.Size = UDim2.new(1, 0, 1, 0);
        L_816.Font = Enum.Font.SourceSans;
        L_816.Text = "";
        L_816.TextColor3 = Color3.fromRGB(0, 0, 0);
        L_816.TextSize = 14;
        if L_805 then
            L_817.Name = "TextColor";
            L_817.Parent = L_808;
            L_817.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_817.BackgroundTransparency = 1;
            L_817.Position = UDim2.new(0, 10, 0, 35);
            L_817.Size = UDim2.new(1, -15, 0, 0);
            L_817.Font = Enum.Font.GothamBold;
            L_817.Text = L_805;
            L_817.TextSize = 14;
            L_817.TextXAlignment = Enum.TextXAlignment.Left;
            L_817.RichText = true;
            L_817.TextColor3 = getgenv().UIColor[L_34];
            L_817.AutomaticSize = Enum.AutomaticSize.Y;
            L_817.TextWrapped = true;
            table.insert(L_639[L_34], function()
                L_817.TextColor3 = getgenv().UIColor[L_34];
                return ;
            end);
        end;
        local L_818 = function()
            L_733:Create(L_808, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Position = UDim2.new(1, 0, 0, 0) }):Play();
            wait(0.25);
            L_807:Destroy();
            return ;
        end;
        L_733:Create(L_808, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Position = UDim2.new(0, 0, 0, 0) }):Play();
        L_816.MouseEnter:Connect(function()
            L_733:Create(L_815, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"] }):Play();
            return ;
        end);
        L_816.MouseLeave:Connect(function()
            L_733:Create(L_815, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { ImageColor3 = getgenv().UIColor["Search Icon Color"] }):Play();
            return ;
        end);
        L_816.MouseButton1Click:Connect(function()
            spawn(function()
                L_732.ButtonEffect();
                return ;
            end);
            wait(0.25);
            L_818();
            return ;
        end);
        spawn(function()
            wait(L_806);
            L_818();
            return ;
        end);
        return ;
    end;
    L_731.CreateMain = function(L_819)
        local L_820 = tostring(L_819.Title) or "Feral";
        getgenv().MainDesc = L_819.Desc or "";
        local L_821 = false;
        cac = false;
        local L_832 = function(L_822, L_823)
            local L_824 = nil;
            local L_825 = nil;
            local L_826 = nil;
            local L_827 = nil;
            L_822.InputBegan:Connect(function(L_828)
                if L_828.UserInputType == Enum.UserInputType.MouseButton1 or L_828.UserInputType == Enum.UserInputType.Touch then
                    L_824 = true;
                    L_826 = L_828.Position;
                    L_827 = L_823.Position;
                    L_828.Changed:Connect(function()
                        if L_828.UserInputState == Enum.UserInputState.End then
                            L_824 = false;
                        end;
                        return ;
                    end);
                end;
                return ;
            end);
            L_822.InputChanged:Connect(function(L_829)
                if L_829.UserInputType == Enum.UserInputType.MouseMovement or L_829.UserInputType == Enum.UserInputType.Touch then
                    L_825 = L_829;
                end;
                return ;
            end);
            L_734.InputChanged:Connect(function(L_830)
                if L_830 == L_825 and L_824 then
                    local L_831 = L_830.Position - L_826;
                    if not L_821 and cac then
                        L_733:Create(L_823, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = UDim2.new(L_827.X.Scale, L_827.X.Offset + L_831.X, L_827.Y.Scale, L_827.Y.Offset + L_831.Y) }):Play();
                    elseif not L_821 and not cac then
                        L_823.Position = UDim2.new(L_827.X.Scale, L_827.X.Offset + L_831.X, L_827.Y.Scale, L_827.Y.Offset + L_831.Y);
                    end;
                end;
                return ;
            end);
            return ;
        end;
        local L_833 = Instance.new(L_32);
        local L_834 = Instance.new("ImageLabel");
        local L_835 = Instance.new("UICorner");
        local L_836 = Instance.new(L_32);
        local L_837 = Instance.new("ImageLabel");
        local L_838 = Instance.new("TextLabel");
        local L_839 = Instance.new(L_32);
        local L_840 = Instance.new("UICorner");
        local L_841 = Instance.new("ScrollingFrame");
        local L_842 = Instance.new("UIListLayout");
        local L_843 = Instance.new("TextLabel");
        local L_844 = Instance.new(L_32);
        local L_845 = Instance.new("UIPageLayout");
        local L_846 = Instance.new(L_32);
        local L_847 = Instance.new("TextButton");
        local L_848 = Instance.new("ImageLabel");
        local L_849 = Instance.new(L_32);
        local L_850 = Instance.new(L_32);
        local L_851 = Instance.new(L_32);
        local L_852 = Instance.new("UIPageLayout");
        L_833.Name = "Main";
        L_833.Parent = L_732.Gui;
        L_833.BackgroundColor3 = Color3.fromRGB(42, 42, 42);
        L_833.BackgroundTransparency = 1;
        L_833.Position = UDim2.new(0.5, 0, 0.5, 0);
        L_833.AnchorPoint = Vector2.new(0.5, 0.5);
        L_833.Size = UDim2.new(0, 629, 0, 359);
        L_832(L_833, L_833);
        L_834.Name = "maingui";
        L_834.Parent = L_833;
        L_834.AnchorPoint = Vector2.new(0.5, 0.5);
        L_834.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_834.BackgroundTransparency = 1;
        L_834.Position = UDim2.new(0.5, 0, 0.5, 0);
        L_834.Selectable = true;
        L_834.Size = UDim2.new(1, 30, 1, 30);
        L_834.Image = "rbxassetid://8068653048";
        L_834.ScaleType = Enum.ScaleType.Slice;
        L_834.SliceCenter = Rect.new(15, 15, 175, 175);
        L_834.SliceScale = 1.3;
        L_834.ImageColor3 = getgenv().UIColor["Border Color"];
        table.insert(L_639["Border Color"], function()
            L_834.ImageColor3 = getgenv().UIColor["Border Color"];
            return ;
        end);
        L_732.ReloadMain = function(L_853)
            L_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
            L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Feral</font> " .. getgenv().MainDesc;
            table.insert(L_639["Title Text Color"], function()
                L_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
                L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Feral</font> " .. getgenv().MainDesc;
                return ;
            end);
            local L_854 = nil;
            if L_853 ~= "" and (type(L_853) == "string" and string.find(L_853:lower(), ".webm") and pcall(function()
                writefile("seahub.webm", syn.request({ Url = L_853 }).Body);
                return ;
            end)) then
                wait(0.25);
                local L_855 = isfile("seahub.webm");
                wait(0.25);
                if L_855 then
                    L_854 = Instance.new("VideoFrame");
                    L_854.Name = "MainContainer";
                    L_854.Parent = L_833;
                    L_854.BackgroundColor3 = getgenv().UIColor["Background Main Color"];
                    L_854.Size = UDim2.new(1, 0, 1, 0);
                    L_854.Video = getsynasset("seahub.webm");
                    L_854.Looped = true;
                    L_854:Play();
                    wait(0.5);
                    delfile("seahub.webm");
                end;
            else
                L_854 = Instance.new("ImageLabel");
                L_854.Name = "MainContainer";
                L_854.Parent = L_833;
                L_854.BackgroundColor3 = getgenv().UIColor["Background Main Color"];
                L_854.Size = UDim2.new(1, 0, 1, 0);
                L_854.Image = L_732.GetIMG(L_853);
            end;
            MainCorner_ = Instance.new("UICorner");
            MainCorner_.CornerRadius = UDim.new(0, 4);
            MainCorner_.Name = "MainCorner";
            MainCorner_.Parent = L_854;
            for L_856, L_857 in next, L_833:GetChildren() do
                if L_857.Name == "MainContainer" then
                    for L_858, L_859 in next, L_857:GetChildren() do
                        L_859.Parent = L_854;
                    end;
                    wait();
                    L_857:Destroy();
                    break;
                end;
            end;
            table.insert(L_639["Background 3 Color"], function()
                L_854.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                return ;
            end);
            return ;
        end;
        L_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
        L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Feral</font> " .. getgenv().MainDesc;
        table.insert(L_639["Title Text Color"], function()
            L_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
            L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Feral</font> " .. getgenv().MainDesc;
            return ;
        end);
        local L_860 = nil;
        local L_861 = getgenv().UIColor["Background Image"];
        if L_861 ~= "" and (type(L_861) == "string" and string.find(L_861:lower(), ".webm") and pcall(function()
            writefile("seahub.webm", syn.request({ Url = L_861 }).Body);
            return ;
        end)) then
            wait(0.25);
            local L_862 = isfile("seahub.webm");
            wait(0.25);
            if L_862 then
                L_860 = Instance.new("VideoFrame");
                L_860.Name = "MainContainer";
                L_860.Parent = L_833;
                L_860.BackgroundColor3 = getgenv().UIColor["Background Main Color"];
                L_860.Size = UDim2.new(1, 0, 1, 0);
                L_860.Video = getsynasset("seahub.webm");
                L_860.Looped = true;
                L_860:Play();
                wait(0.5);
                delfile("seahub.webm");
            end;
        else
            L_860 = Instance.new("ImageLabel");
            L_860.Name = "MainContainer";
            L_860.Parent = L_833;
            L_860.BackgroundColor3 = getgenv().UIColor["Background Main Color"];
            L_860.Size = UDim2.new(1, 0, 1, 0);
            L_860.Image = L_732.GetIMG(L_861);
        end;
        table.insert(L_639["Background 3 Color"], function()
            L_860.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
            return ;
        end);
        getgenv().ReadyForGuiLoaded = true;
        L_835.CornerRadius = UDim.new(0, 4);
        L_835.Name = "MainCorner";
        L_835.Parent = L_860;
        L_849.Name = "Concacontainer";
        L_849.Parent = L_860;
        L_849.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_849.BackgroundTransparency = 1;
        L_849.ClipsDescendants = true;
        L_849.Position = UDim2.new(0, 0, 0, 30);
        L_849.Size = UDim2.new(1, 0, 1, -30);
        L_850.Name = "Concacmain";
        L_850.Parent = L_849;
        L_850.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_850.BackgroundTransparency = 1;
        L_850.Selectable = true;
        L_850.Size = UDim2.new(1, 0, 1, 0);
        L_851.Name = "Background1";
        L_851.Parent = L_849;
        L_851.LayoutOrder = 1;
        L_851.Selectable = true;
        L_851.Size = UDim2.new(1, 0, 1, 0);
        L_851.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
        table.insert(L_639["Background 1 Transparency"], function()
            L_851.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
            return ;
        end);
        L_851.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
        table.insert(L_639["Background 1 Color"], function()
            L_851.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
            return ;
        end);
        L_852.Name = "Concacpage";
        L_852.Parent = L_849;
        L_852.SortOrder = Enum.SortOrder.LayoutOrder;
        L_852.EasingDirection = Enum.EasingDirection.InOut;
        L_852.EasingStyle = Enum.EasingStyle.Quad;
        L_852.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"];
        table.insert(L_639["Tween Animation 1 Speed"], function()
            L_852.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"];
            return ;
        end);
        L_836.Name = "TopMain";
        L_836.Parent = L_860;
        L_836.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_836.BackgroundTransparency = 1;
        L_836.Size = UDim2.new(1, 0, 0, 25);
        L_837.Name = "Ruafimg";
        L_837.Parent = L_836;
        L_837.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_837.BackgroundTransparency = 1;
        L_837.Position = UDim2.new(0, 5, 0, 0);
        L_837.Size = UDim2.new(0, 25, 0, 25);
        L_837.Image = getgenv().UIColor["Logo Image"];
        table.insert(L_639["Logo Image"], function()
            L_837.Image = getgenv().UIColor["Logo Image"];
            return ;
        end);
        L_838.Name = "TextLabelMain";
        L_838.Parent = L_836;
        L_838.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_838.BackgroundTransparency = 1;
        L_838.Position = UDim2.new(0, 35, 0, 0);
        L_838.Size = UDim2.new(1, -35, 1, 0);
        L_838.Font = Enum.Font.GothamBold;
        L_838.RichText = true;
        L_838.TextSize = 16;
        L_838.TextWrapped = true;
        L_838.TextXAlignment = Enum.TextXAlignment.Left;
        L_838.TextColor3 = getgenv().UIColor["GUI Text Color"];
        table.insert(L_639["GUI Text Color"], function()
            L_838.TextColor3 = getgenv().UIColor["GUI Text Color"];
            return ;
        end);
        L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Feral</font> " .. getgenv().MainDesc;
        table.insert(L_639["Title Text Color"], function()
            L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Feral</font> " .. getgenv().MainDesc;
            return ;
        end);
        L_846.Name = "SettionMain";
        L_846.Parent = L_836;
        L_846.AnchorPoint = Vector2.new(1, 0);
        L_846.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_846.BackgroundTransparency = 1;
        L_846.Position = UDim2.new(1, 0, 0, 0);
        L_846.Size = UDim2.new(0, 30, 0, 30);
        L_847.Name = "SettionButton";
        L_847.Parent = L_846;
        L_847.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_847.BackgroundTransparency = 1;
        L_847.BorderColor3 = Color3.fromRGB(27, 42, 53);
        L_847.Size = UDim2.new(1, 0, 1, 0);
        L_847.Font = Enum.Font.SourceSans;
        L_847.Text = "";
        L_847.TextColor3 = Color3.fromRGB(0, 0, 0);
        L_847.TextSize = 14;
        L_847.Visible = true;
        L_848.Name = "SettingIcon";
        L_848.Parent = L_846;
        L_848.AnchorPoint = Vector2.new(0.5, 0.5);
        L_848.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_848.BackgroundTransparency = 1;
        L_848.Position = UDim2.new(0.5, 0, 0.5, 0);
        L_848.Size = UDim2.new(1, -10, 1, -10);
        L_848.Image = "rbxassetid://7397332215";
        L_848.Visible = true;
        L_848.ImageColor3 = getgenv().UIColor["Setting Icon Color"];
        table.insert(L_639["Setting Icon Color"], function()
            L_848.ImageColor3 = getgenv().UIColor["Setting Icon Color"];
            return ;
        end);
        L_839.Name = "Background1";
        L_839.Parent = L_850;
        L_839.Position = UDim2.new(0, 5, 0, 0);
        L_839.Size = UDim2.new(0, 180, 0, 325);
        L_839.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
        table.insert(L_639["Background 1 Transparency"], function()
            L_839.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
            return ;
        end);
        L_839.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
        table.insert(L_639["Background 1 Color"], function()
            L_839.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
            return ;
        end);
        local L_863 = Instance.new("UIStroke");
        L_863.Color = getgenv().UIColor["Border Color"];
        L_863.Thickness = 1.5;
        L_863.Transparency = 0.5;
        L_863.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
        L_863.Parent = L_839;
        table.insert(L_639["Border Color"], function()
            L_863.Color = getgenv().UIColor["Border Color"];
            return ;
        end);
        local L_864 = Instance.new("ImageLabel");
        L_864.Name = "Glow";
        L_864.Parent = L_839;
        L_864.AnchorPoint = Vector2.new(0.5, 0.5);
        L_864.BackgroundTransparency = 1;
        L_864.Position = UDim2.new(0.5, 0, 0.5, 0);
        L_864.Size = UDim2.new(1, 20, 1, 20);
        L_864.ZIndex = -1;
        L_864.Image = "rbxassetid://8068653048";
        L_864.ImageColor3 = getgenv().UIColor["Border Color"];
        L_864.ImageTransparency = 0.8;
        L_864.ScaleType = Enum.ScaleType.Slice;
        L_864.SliceCenter = Rect.new(15, 15, 175, 175);
        table.insert(L_639["Border Color"], function()
            L_864.ImageColor3 = getgenv().UIColor["Border Color"];
            return ;
        end);
        L_840.CornerRadius = UDim.new(0, 4);
        L_840.Parent = L_839;
        L_841.Name = "ControlList";
        L_841.Parent = L_839;
        L_841.Active = true;
        L_841.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_841.BackgroundTransparency = 1;
        L_841.BorderColor3 = Color3.fromRGB(27, 42, 53);
        L_841.BorderSizePixel = 0;
        L_841.Position = UDim2.new(0, 0, 0, 30);
        L_841.Size = UDim2.new(1, -5, 1, -30);
        L_841.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
        L_841.CanvasSize = UDim2.new(0, 0, 0, 0);
        L_841.ScrollBarThickness = 5;
        L_841.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
        L_842.Parent = L_841;
        L_842.SortOrder = Enum.SortOrder.LayoutOrder;
        L_842.Padding = UDim.new(0, 5);
        L_842.SortOrder = Enum.SortOrder.LayoutOrder;
        L_842.Padding = UDim.new(0, 5);
        L_843.Name = "GUITextColor";
        L_843.Parent = L_839;
        L_843.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_843.BackgroundTransparency = 1;
        L_843.Position = UDim2.new(0, 5, 0, 0);
        L_843.Size = UDim2.new(1, 0, 0, 25);
        L_843.Font = Enum.Font.GothamBold;
        L_843.Text = L_820;
        L_843.TextSize = 14;
        L_843.TextXAlignment = Enum.TextXAlignment.Left;
        L_843.TextColor3 = getgenv().UIColor["GUI Text Color"];
        table.insert(L_639["GUI Text Color"], function()
            L_843.TextColor3 = getgenv().UIColor["GUI Text Color"];
            return ;
        end);
        L_844.Name = "MainPage";
        L_844.Parent = L_850;
        L_844.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_844.BackgroundTransparency = 1;
        L_844.ClipsDescendants = true;
        L_844.Position = UDim2.new(0, 190, 0, 0);
        L_844.Size = UDim2.new(0, 435, 0, 325);
        L_845.Name = "UIPage";
        L_845.Parent = L_844;
        L_845.FillDirection = Enum.FillDirection.Vertical;
        L_845.SortOrder = Enum.SortOrder.LayoutOrder;
        L_845.EasingDirection = Enum.EasingDirection.InOut;
        L_845.EasingStyle = Enum.EasingStyle.Quart;
        L_845.Padding = UDim.new(0, 10);
        L_845.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"];
        L_845.ScrollWheelInputEnabled = false;
        table.insert(L_639["Tween Animation 1 Speed"], function()
            L_845.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"];
            return ;
        end);
        L_842:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            L_841.CanvasSize = UDim2.new(0, 0, 0, L_842.AbsoluteContentSize.Y + 5);
            return ;
        end);
        local L_865 = false;
        L_847.MouseButton1Click:Connect(function()
            L_732.ButtonEffect();
            return ;
        end);
        L_847.MouseButton1Click:Connect(function()
            L_865 = not L_865;
            local L_866 = L_865 and L_851 or L_850;
            local L_867 = L_865 and 180 or 0;
            L_852:JumpTo(L_866);
            game.TweenService:Create(L_848, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Rotation = L_867 }):Play();
            return ;
        end);
        local L_868 = Instance.new("ScrollingFrame");
        local L_869 = Instance.new("UIListLayout");
        L_868.Name = "CustomList";
        L_868.Parent = L_851;
        L_868.Active = true;
        L_868.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_868.BackgroundTransparency = 1;
        L_868.BorderColor3 = Color3.fromRGB(27, 42, 53);
        L_868.BorderSizePixel = 0;
        L_868.Position = UDim2.new(0, 5, 0, 30);
        L_868.Size = UDim2.new(1, -10, 1, -30);
        L_868.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
        L_868.ScrollBarThickness = 5;
        L_868.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
        L_869.Name = "CustomListLayout";
        L_869.Parent = L_868;
        L_869.SortOrder = Enum.SortOrder.LayoutOrder;
        L_869.Padding = UDim.new(0, 5);
        L_869:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            L_868.CanvasSize = UDim2.new(0, 0, 0, L_869.AbsoluteContentSize.Y + 5);
            return ;
        end);
        local L_870 = Instance.new("TextLabel");
        L_870.Name = "GUITextColor";
        L_870.Parent = L_851;
        L_870.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_870.BackgroundTransparency = 1;
        L_870.Position = UDim2.new(0, 15, 0, 0);
        L_870.Size = UDim2.new(1, -15, 0, 25);
        L_870.Font = Enum.Font.GothamBold;
        L_870.Text = "";
        L_870.TextSize = 16;
        L_870.TextXAlignment = Enum.TextXAlignment.Left;
        L_870.TextColor3 = getgenv().UIColor["GUI Text Color"];
        table.insert(L_639["GUI Text Color"], function()
            L_870.TextColor3 = getgenv().UIColor["GUI Text Color"];
            return ;
        end);
        local L_871 = Instance.new(L_32);
        local L_872 = Instance.new("UICorner");
        local L_873 = Instance.new(L_32);
        local L_874 = Instance.new("ImageLabel");
        local L_875 = Instance.new("TextButton");
        local L_876 = Instance.new("TextBox");
        L_871.Name = "Background2";
        L_871.Parent = L_851;
        L_871.AnchorPoint = Vector2.new(1, 0);
        L_871.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
        L_871.ClipsDescendants = true;
        L_871.Position = UDim2.new(1, -5, 0, 5);
        L_871.Size = UDim2.new(0, 20, 0, 20);
        L_871.ClipsDescendants = true;
        table.insert(L_639["Background 2 Color"], function()
            L_871.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
            return ;
        end);
        L_872.CornerRadius = UDim.new(0, 2);
        L_872.Name = "PageSearchCorner";
        L_872.Parent = L_871;
        L_873.Name = "SearchFrame";
        L_873.Parent = L_871;
        L_873.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_873.BackgroundTransparency = 1;
        L_873.Size = UDim2.new(0, 20, 0, 20);
        L_874.Name = "SearchIcon";
        L_874.Parent = L_873;
        L_874.AnchorPoint = Vector2.new(0.5, 0.5);
        L_874.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_874.BackgroundTransparency = 1;
        L_874.Position = UDim2.new(0.5, 0, 0.5, 0);
        L_874.Size = UDim2.new(0, 16, 0, 16);
        L_874.Image = "rbxassetid://8154282545";
        L_874.ImageColor3 = getgenv().UIColor["Search Icon Color"];
        table.insert(L_639["Search Icon Color"], function()
            L_874.ImageColor3 = getgenv().UIColor["Search Icon Color"];
            return ;
        end);
        L_875.Name = "active";
        L_875.Parent = L_873;
        L_875.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_875.BackgroundTransparency = 1;
        L_875.Size = UDim2.new(1, 0, 1, 0);
        L_875.Font = Enum.Font.SourceSans;
        L_875.Text = "";
        L_875.TextColor3 = Color3.fromRGB(0, 0, 0);
        L_875.TextSize = 14;
        L_876.Name = "TextColorPlaceholder";
        L_876.Parent = L_871;
        L_876.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_876.BackgroundTransparency = 1;
        L_876.Position = UDim2.new(0, 30, 0, 0);
        L_876.Size = UDim2.new(1, -30, 1, 0);
        L_876.Font = Enum.Font.GothamBold;
        L_876.Text = "";
        L_876.TextSize = 14;
        L_876.TextXAlignment = Enum.TextXAlignment.Left;
        L_876.PlaceholderText = "Search Section name";
        L_876.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
        L_876.TextColor3 = getgenv().UIColor[L_34];
        table.insert(L_639["Placeholder Text Color"], function()
            L_876.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
            return ;
        end);
        table.insert(L_639[L_34], function()
            L_876.TextColor3 = getgenv().UIColor[L_34];
            return ;
        end);
        local L_877 = false;
        L_875.MouseEnter:Connect(function()
            L_733:Create(L_874, TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]), { ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"] }):Play();
            return ;
        end);
        L_875.MouseLeave:Connect(function()
            L_733:Create(L_874, TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]), { ImageColor3 = getgenv().UIColor["Search Icon Color"] }):Play();
            return ;
        end);
        L_875.MouseButton1Click:Connect(function()
            L_732.ButtonEffect();
            return ;
        end);
        L_876.Focused:Connect(function()
            L_732.ButtonEffect();
            return ;
        end);
        L_875.MouseButton1Click:Connect(function()
            L_877 = not L_877;
            local L_878 = L_877 and UDim2.new(0, 175, 0, 20) or UDim2.new(0, 20, 0, 20);
            game.TweenService:Create(L_871, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = L_878 }):Play();
            return ;
        end);
        local L_881 = function()
            for L_879, L_880 in next, L_868:GetChildren() do
                if not L_880:IsA("UIListLayout") then
                    L_880.Visible = false;
                end;
            end;
            return ;
        end;
        local L_884 = function()
            for L_882, L_883 in pairs(L_868:GetChildren()) do
                if not L_883:IsA("UIListLayout") and string.find(string.lower(L_883.Name), string.lower(L_876.Text)) then
                    L_883.Visible = true;
                end;
            end;
            return ;
        end;
        L_876:GetPropertyChangedSignal("Text"):Connect(function()
            L_881();
            L_884();
            return ;
        end);
        L_731.CreateCustomColor = function(L_885)
            L_870.Text = L_885 or "Custom GUI";
            return {
                CreateSection = function(L_886)
                    local L_887 = Instance.new(L_32);
                    local L_888 = Instance.new("UICorner");
                    local L_889 = Instance.new(L_32);
                    local L_890 = Instance.new("TextLabel");
                    local L_891 = Instance.new(L_32);
                    local L_892 = Instance.new("UIGradient");
                    local L_893 = Instance.new("UIListLayout");
                    if L_886 then
                    end;
                    L_887.Name = L_886 .. "Section";
                    L_887.Parent = L_868;
                    L_887.Size = UDim2.new(1, 0, 0, 285);
                    L_887.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                    table.insert(L_639["Background 3 Color"], function()
                        L_887.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                        return ;
                    end);
                    L_887.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                    table.insert(L_639["Background 1 Transparency"], function()
                        L_887.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                        return ;
                    end);
                    L_888.CornerRadius = UDim.new(0, 4);
                    L_888.Parent = L_887;
                    L_889.Name = "Topsec";
                    L_889.Parent = L_887;
                    L_889.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                    L_889.BackgroundTransparency = 1;
                    L_889.Size = UDim2.new(1, 0, 0, 27);
                    L_890.Name = "Sectiontitle";
                    L_890.Parent = L_889;
                    L_890.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                    L_890.BackgroundTransparency = 1;
                    L_890.Size = UDim2.new(1, 0, 1, 0);
                    L_890.Font = Enum.Font.GothamBold;
                    L_890.Text = L_886;
                    L_890.TextSize = 14;
                    L_890.TextColor3 = getgenv().UIColor["Section Text Color"];
                    table.insert(L_639["Section Text Color"], function()
                        L_890.TextColor3 = getgenv().UIColor["Section Text Color"];
                        return ;
                    end);
                    L_891.Name = "Linesec";
                    L_891.Parent = L_889;
                    L_891.AnchorPoint = Vector2.new(0.5, 1);
                    L_891.BorderSizePixel = 0;
                    L_891.Position = UDim2.new(0.5, 0, 1, -2);
                    L_891.Size = UDim2.new(1, -10, 0, 2);
                    L_891.BackgroundColor3 = getgenv().UIColor["Section Underline Color"];
                    table.insert(L_639["Section Underline Color"], function()
                        L_891.BackgroundColor3 = getgenv().UIColor["Section Underline Color"];
                        return ;
                    end);
                    L_892.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(0.51, 0.02), NumberSequenceKeypoint.new(1, 1) });
                    L_892.Parent = L_891;
                    L_893.Name = "SectionList";
                    L_893.Parent = L_887;
                    L_893.SortOrder = Enum.SortOrder.LayoutOrder;
                    L_893.Padding = UDim.new(0, 5);
                    L_893:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                        L_887.Size = UDim2.new(1, 0, 0, L_893.AbsoluteContentSize.Y + 5);
                        return ;
                    end);
                    return {
                        CreateColorPicker = function(L_894)
                            local L_900 = setmetatable({}, {
                                __index = function(L_895, L_896)
                                    if L_896 == "Cungroi" then
                                        return L_642[L_894.Type].Rainbow;
                                    end;
                                    return ;
                                end,
                                __newindex = function(L_897, L_898, L_899)
                                    if L_898 == "Cungroi" then
                                        L_642[L_894.Type].Rainbow = L_899;
                                    end;
                                    return ;
                                end
                            });
                            local L_901 = L_894.Title or "Color Picker";
                            if not L_642[L_894.Type].Color then
                                local L_902 = Color3.fromRGB(255, 255, 255);
                            end;
                            local L_903 = L_894.Type;
                            local L_904 = Instance.new(L_32);
                            local L_905 = Instance.new("UICorner");
                            local L_906 = Instance.new(L_32);
                            local L_907 = Instance.new("UICorner");
                            local L_908 = Instance.new("TextLabel");
                            local L_909 = Instance.new(L_32);
                            local L_910 = Instance.new("UICorner");
                            local L_911 = Instance.new("TextButton");
                            local L_912 = Instance.new(L_32);
                            local L_913 = Instance.new("UIGradient");
                            local L_914 = Instance.new(L_32);
                            local L_915 = Instance.new("UICorner");
                            local L_916 = Instance.new(L_32);
                            local L_917 = Instance.new(L_32);
                            local L_918 = Instance.new("TextLabel");
                            local L_919 = Instance.new("TextBox");
                            local L_920 = Instance.new(L_32);
                            local L_921 = Instance.new("TextLabel");
                            local L_922 = Instance.new("TextBox");
                            local L_923 = Instance.new(L_32);
                            local L_924 = Instance.new("TextLabel");
                            local L_925 = Instance.new("TextBox");
                            local L_926 = Instance.new("UIListLayout");
                            local L_927 = Instance.new(L_32);
                            local L_928 = Instance.new("TextLabel");
                            local L_929 = Instance.new("TextBox");
                            local L_930 = Instance.new(L_32);
                            local L_931 = Instance.new("UIGradient");
                            local L_932 = Instance.new(L_32);
                            local L_933 = Instance.new(L_32);
                            local L_934 = Instance.new("TextLabel");
                            local L_935 = Instance.new("ImageLabel");
                            local L_936 = Instance.new("ImageLabel");
                            local L_937 = Instance.new("TextButton");
                            local L_938 = Instance.new("ImageLabel");
                            local L_939 = Instance.new(L_32);
                            local L_940 = Instance.new("UICorner");
                            local L_941 = Instance.new(L_32);
                            local L_942 = Instance.new(L_32);
                            local L_943 = Instance.new("TextLabel");
                            local L_944 = Instance.new("ImageLabel");
                            local L_945 = Instance.new("ImageLabel");
                            local L_946 = Instance.new("TextButton");
                            local L_947 = Instance.new(L_32);
                            local L_948 = Instance.new("UIListLayout");
                            local L_949 = Instance.new(L_32);
                            local L_950 = Instance.new("UICorner");
                            local L_951 = Instance.new("TextButton");
                            local L_952 = Instance.new(L_32);
                            local L_953 = Instance.new("UICorner");
                            local L_954 = Instance.new("TextButton");
                            L_904.Name = "ColorPick";
                            L_904.Parent = L_887;
                            L_904.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            L_904.BackgroundTransparency = 1;
                            L_904.ClipsDescendants = true;
                            L_904.Position = UDim2.new(0, 0, 0.112280704, 0);
                            L_904.Size = UDim2.new(1, 0, 0, 35);
                            L_905.CornerRadius = UDim.new(0, 4);
                            L_905.Name = "ColorPickCorner";
                            L_905.Parent = L_904;
                            L_906.Name = "Background1";
                            L_906.Parent = L_904;
                            L_906.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_906.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            L_906.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_906.Size = UDim2.new(1, -10, 1, 0);
                            table.insert(L_639["Background 1 Color"], function()
                                L_906.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            L_906.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_906.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_907.CornerRadius = UDim.new(0, 4);
                            L_907.Name = "ColorpickBGCorner";
                            L_907.Parent = L_906;
                            L_908.Name = "TextColor";
                            L_908.Parent = L_906;
                            L_908.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_908.BackgroundTransparency = 1;
                            L_908.Position = UDim2.new(0, 10, 0, 0);
                            L_908.Size = UDim2.new(1, -10, 0, 35);
                            L_908.Font = Enum.Font.GothamBlack;
                            L_908.Text = L_901;
                            L_908.TextSize = 14;
                            L_908.TextXAlignment = Enum.TextXAlignment.Left;
                            L_908.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_908.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_909.Name = "ColorVal";
                            L_909.Parent = L_904;
                            L_909.AnchorPoint = Vector2.new(1, 0);
                            L_909.BackgroundColor3 = L_642[L_903].Color;
                            L_909.Position = UDim2.new(1, -10, 0, 5);
                            L_909.Size = UDim2.new(0, 150, 0, 25);
                            L_910.CornerRadius = UDim.new(0, 4);
                            L_910.Name = "ColorValCorner";
                            L_910.Parent = L_909;
                            L_911.Name = "ColorValButton";
                            L_911.Parent = L_909;
                            L_911.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_911.BackgroundTransparency = 1;
                            L_911.Size = UDim2.new(1, 0, 1, 0);
                            L_911.Font = Enum.Font.SourceSans;
                            L_911.Text = "";
                            L_911.TextColor3 = Color3.fromRGB(0, 0, 0);
                            L_911.TextSize = 14;
                            L_912.Name = "Hue";
                            L_912.Parent = L_904;
                            L_912.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_912.BorderSizePixel = 0;
                            L_912.Position = UDim2.new(0, 460, 0, 40);
                            L_912.Size = UDim2.new(0, 25, 0, 200);
                            L_913.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(235, 7, 255)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 9, 189)), ColorSequenceKeypoint.new(0.49, Color3.fromRGB(0, 193, 196)), ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 247, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) });
                            L_913.Rotation = 90;
                            L_913.Name = "HueGra";
                            L_913.Parent = L_912;
                            L_914.Parent = L_912;
                            L_914.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_914.Position = UDim2.new(0, 0, 1, 0);
                            L_914.Size = UDim2.new(1, 0, 0, 2);
                            L_915.CornerRadius = UDim.new(0, 4);
                            L_915.Parent = L_912;
                            L_916.Name = "Concac";
                            L_916.Parent = L_904;
                            L_916.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_916.BackgroundTransparency = 1;
                            L_916.Position = UDim2.new(0, 495, 0, 40);
                            L_916.Size = UDim2.new(0, 115, 0, 100);
                            L_917.Name = "RFrame";
                            L_917.Parent = L_916;
                            L_917.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_917.BackgroundTransparency = 1;
                            L_917.Size = UDim2.new(1, 0, 0, 25);
                            L_917.LayoutOrder = 0;
                            L_918.Name = "RText";
                            L_918.Parent = L_917;
                            L_918.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_918.BackgroundTransparency = 1;
                            L_918.Size = UDim2.new(0, 25, 0, 25);
                            L_918.Font = Enum.Font.GothamBold;
                            L_918.Text = "R:";
                            L_918.TextColor3 = Color3.fromRGB(115, 115, 115);
                            L_918.TextSize = 14;
                            L_918.TextXAlignment = Enum.TextXAlignment.Left;
                            L_919.Name = "RBox";
                            L_919.Parent = L_917;
                            L_919.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_919.BackgroundTransparency = 1;
                            L_919.Position = UDim2.new(0, 25, 0, 0);
                            L_919.Size = UDim2.new(1, -25, 1, 0);
                            L_919.ClearTextOnFocus = false;
                            L_919.Font = Enum.Font.GothamBold;
                            L_919.Text = "255";
                            L_919.TextColor3 = Color3.fromRGB(255, 255, 255);
                            L_919.TextSize = 14;
                            L_919.TextXAlignment = Enum.TextXAlignment.Left;
                            L_920.Name = "GFrame";
                            L_920.Parent = L_916;
                            L_920.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_920.BackgroundTransparency = 1;
                            L_920.Size = UDim2.new(1, 0, 0, 25);
                            L_920.LayoutOrder = 1;
                            L_921.Name = "GText";
                            L_921.Parent = L_920;
                            L_921.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_921.BackgroundTransparency = 1;
                            L_921.Size = UDim2.new(0, 25, 0, 25);
                            L_921.Font = Enum.Font.GothamBold;
                            L_921.Text = "G:";
                            L_921.TextColor3 = Color3.fromRGB(115, 115, 115);
                            L_921.TextSize = 14;
                            L_921.TextXAlignment = Enum.TextXAlignment.Left;
                            L_922.Name = "GBox";
                            L_922.Parent = L_920;
                            L_922.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_922.BackgroundTransparency = 1;
                            L_922.Position = UDim2.new(0, 25, 0, 0);
                            L_922.Size = UDim2.new(1, -25, 1, 0);
                            L_922.ClearTextOnFocus = false;
                            L_922.Font = Enum.Font.GothamBold;
                            L_922.Text = "255";
                            L_922.TextColor3 = Color3.fromRGB(255, 255, 255);
                            L_922.TextSize = 14;
                            L_922.TextXAlignment = Enum.TextXAlignment.Left;
                            L_923.Name = "BFrame";
                            L_923.Parent = L_916;
                            L_923.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_923.BackgroundTransparency = 1;
                            L_923.Size = UDim2.new(1, 0, 0, 25);
                            L_923.LayoutOrder = 2;
                            L_924.Name = "BText";
                            L_924.Parent = L_923;
                            L_924.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_924.BackgroundTransparency = 1;
                            L_924.Size = UDim2.new(0, 25, 0, 25);
                            L_924.Font = Enum.Font.GothamBold;
                            L_924.Text = "B:";
                            L_924.TextColor3 = Color3.fromRGB(115, 115, 115);
                            L_924.TextSize = 14;
                            L_924.TextXAlignment = Enum.TextXAlignment.Left;
                            L_925.Name = "BBox";
                            L_925.Parent = L_923;
                            L_925.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_925.BackgroundTransparency = 1;
                            L_925.Position = UDim2.new(0, 25, 0, 0);
                            L_925.Size = UDim2.new(1, -25, 1, 0);
                            L_925.ClearTextOnFocus = false;
                            L_925.Font = Enum.Font.GothamBold;
                            L_925.Text = "255";
                            L_925.TextColor3 = Color3.fromRGB(255, 255, 255);
                            L_925.TextSize = 14;
                            L_925.TextXAlignment = Enum.TextXAlignment.Left;
                            L_926.Parent = L_916;
                            L_926.SortOrder = Enum.SortOrder.LayoutOrder;
                            L_927.Name = "HexFrame";
                            L_927.Parent = L_916;
                            L_927.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_927.BackgroundTransparency = 1;
                            L_927.Size = UDim2.new(1, 0, 0, 25);
                            L_927.LayoutOrder = 3;
                            L_928.Name = "HexText";
                            L_928.Parent = L_927;
                            L_928.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_928.BackgroundTransparency = 1;
                            L_928.Size = UDim2.new(0, 25, 0, 25);
                            L_928.Font = Enum.Font.GothamBold;
                            L_928.Text = "#";
                            L_928.TextColor3 = Color3.fromRGB(115, 115, 115);
                            L_928.TextSize = 14;
                            L_928.TextXAlignment = Enum.TextXAlignment.Left;
                            L_929.Name = "HexBox";
                            L_929.Parent = L_927;
                            L_929.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_929.BackgroundTransparency = 1;
                            L_929.Position = UDim2.new(0, 25, 0, 0);
                            L_929.Size = UDim2.new(1, -25, 1, 0);
                            L_929.ClearTextOnFocus = false;
                            L_929.Font = Enum.Font.GothamBold;
                            L_929.Text = "FFFFFF";
                            L_929.TextColor3 = Color3.fromRGB(255, 255, 255);
                            L_929.TextSize = 14;
                            L_929.TextXAlignment = Enum.TextXAlignment.Left;
                            L_930.Name = "Linesec";
                            L_930.Parent = L_916;
                            L_930.AnchorPoint = Vector2.new(0.5, 1);
                            L_930.BorderSizePixel = 0;
                            L_930.Position = UDim2.new(0.5, 0, 1, -2);
                            L_930.Size = UDim2.new(1, -10, 0, 2);
                            L_930.LayoutOrder = 4;
                            L_930.BackgroundColor3 = getgenv().UIColor["Section Underline Color"];
                            table.insert(L_639["Section Underline Color"], function()
                                L_930.BackgroundColor3 = getgenv().UIColor["Section Underline Color"];
                                return ;
                            end);
                            L_931.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.3, 0.25), NumberSequenceKeypoint.new(0.7, 0.25), NumberSequenceKeypoint.new(1, 1) });
                            L_931.Parent = L_930;
                            L_932.Name = "CungroiF";
                            L_932.Parent = L_904;
                            L_932.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_932.BackgroundTransparency = 1;
                            L_932.Position = UDim2.new(0, 495, 0, 145);
                            L_932.Size = UDim2.new(0, 115, 0, 25);
                            L_933.Name = "CungroiFF";
                            L_933.Parent = L_932;
                            L_933.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_933.BackgroundTransparency = 1;
                            L_933.Size = UDim2.new(1, 0, 0, 25);
                            L_933.LayoutOrder = 4;
                            L_934.Name = "TextColor";
                            L_934.Parent = L_933;
                            L_934.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_934.BackgroundTransparency = 1;
                            L_934.Size = UDim2.new(0, 85, 0, 25);
                            L_934.Font = Enum.Font.GothamBold;
                            L_934.Text = "Rainbow";
                            L_934.TextSize = 14;
                            L_934.TextXAlignment = Enum.TextXAlignment.Left;
                            L_934.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_934.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_935.Name = "Setting_checkbox";
                            L_935.Parent = L_933;
                            L_935.AnchorPoint = Vector2.new(1, 0.5);
                            L_935.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_935.BackgroundTransparency = 1;
                            L_935.Position = UDim2.new(1, -5, 0.5, 0);
                            L_935.Size = UDim2.new(0, 25, 0, 25);
                            L_935.Image = "rbxassetid://4552505888";
                            L_935.ImageColor3 = getgenv().UIColor["Toggle Border Color"];
                            table.insert(L_639["Toggle Border Color"], function()
                                L_935.ImageColor3 = getgenv().UIColor["Toggle Border Color"];
                                return ;
                            end);
                            L_936.Name = "Setting_check";
                            L_936.Parent = L_935;
                            L_936.AnchorPoint = Vector2.new(0, 1);
                            L_936.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_936.BackgroundTransparency = 1;
                            L_936.Position = UDim2.new(0, 0, 1, 0);
                            L_936.Image = "rbxassetid://4555411759";
                            L_936.ImageColor3 = getgenv().UIColor["Toggle Checked Color"];
                            table.insert(L_639["Toggle Checked Color"], function()
                                L_936.ImageColor3 = getgenv().UIColor["Toggle Checked Color"];
                                return ;
                            end);
                            L_937.Name = "Cungroitog";
                            L_937.Parent = L_933;
                            L_937.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_937.BackgroundTransparency = 1;
                            L_937.Size = UDim2.new(1, 0, 1, 0);
                            L_937.Font = Enum.Font.SourceSans;
                            L_937.Text = "";
                            L_937.TextColor3 = Color3.fromRGB(0, 0, 0);
                            L_937.TextSize = 14;
                            L_938.Name = "Color";
                            L_938.Parent = L_904;
                            L_938.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
                            L_938.BorderSizePixel = 0;
                            L_938.Position = UDim2.new(0, 10, 0, 40);
                            L_938.Size = UDim2.new(0, 440, 0, 200);
                            L_938.Image = "rbxassetid://4155801252";
                            L_939.Name = "SelectorColor";
                            L_939.Parent = L_938;
                            L_939.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_939.BackgroundColor3 = Color3.fromRGB(203, 203, 203);
                            L_939.BorderColor3 = Color3.fromRGB(70, 70, 70);
                            L_939.Position = UDim2.new(1, 0, 0, 0);
                            L_939.Size = UDim2.new(0, 4, 0, 4);
                            L_940.CornerRadius = UDim.new(0, 4);
                            L_940.Parent = L_938;
                            L_941.Name = "HoithoF";
                            L_941.Parent = L_904;
                            L_941.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_941.BackgroundTransparency = 1;
                            L_941.Position = UDim2.new(0, 495, 0, 175);
                            L_941.Size = UDim2.new(0, 115, 0, 25);
                            L_941.LayoutOrder = 5;
                            L_942.Name = "HoithoF";
                            L_942.Parent = L_941;
                            L_942.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_942.BackgroundTransparency = 1;
                            L_942.Size = UDim2.new(1, 0, 1, 25);
                            L_943.Name = "TextColor";
                            L_943.Parent = L_942;
                            L_943.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_943.BackgroundTransparency = 1;
                            L_943.Size = UDim2.new(0, 85, 0, 25);
                            L_943.Font = Enum.Font.GothamBold;
                            L_943.Text = "Breathing";
                            L_943.TextSize = 14;
                            L_943.TextXAlignment = Enum.TextXAlignment.Left;
                            L_943.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_943.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_944.Name = "setting_checkbox";
                            L_944.Parent = L_942;
                            L_944.AnchorPoint = Vector2.new(1, 0);
                            L_944.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_944.BackgroundTransparency = 1;
                            L_944.Position = UDim2.new(1, -5, 0, 0);
                            L_944.Size = UDim2.new(0, 25, 0, 25);
                            L_944.Image = "rbxassetid://4552505888";
                            L_944.ImageColor3 = Color3.fromRGB(131, 181, 255);
                            L_944.ImageColor3 = getgenv().UIColor["Toggle Border Color"];
                            table.insert(L_639["Toggle Border Color"], function()
                                L_944.ImageColor3 = getgenv().UIColor["Toggle Border Color"];
                                return ;
                            end);
                            L_945.Name = "setting_check";
                            L_945.Parent = L_944;
                            L_945.AnchorPoint = Vector2.new(0, 1);
                            L_945.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_945.BackgroundTransparency = 1;
                            L_945.Position = UDim2.new(0, 0, 1, 0);
                            L_945.Image = "rbxassetid://4555411759";
                            L_945.ImageColor3 = getgenv().UIColor["Toggle Checked Color"];
                            table.insert(L_639["Toggle Checked Color"], function()
                                L_945.ImageColor3 = getgenv().UIColor["Toggle Checked Color"];
                                return ;
                            end);
                            L_946.Name = "Hoithoitog";
                            L_946.Parent = L_942;
                            L_946.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_946.BackgroundTransparency = 1;
                            L_946.Size = UDim2.new(1, 0, 0, 25);
                            L_946.Font = Enum.Font.SourceSans;
                            L_946.Text = "";
                            L_946.TextColor3 = Color3.fromRGB(0, 0, 0);
                            L_946.TextSize = 14;
                            L_947.Parent = L_942;
                            L_947.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_947.BackgroundTransparency = 1;
                            L_947.Position = UDim2.new(0, 0, 0, 30);
                            L_947.Size = UDim2.new(1, 0, 0, 25);
                            L_948.Parent = L_947;
                            L_948.FillDirection = Enum.FillDirection.Horizontal;
                            L_948.SortOrder = Enum.SortOrder.LayoutOrder;
                            L_948.Padding = UDim.new(0, 5);
                            L_949.Name = "Cor1";
                            L_949.Parent = L_947;
                            L_949.BackgroundColor3 = L_642[L_903].Breathing.Color1;
                            L_949.Selectable = true;
                            L_949.Size = UDim2.new(0, 25, 0, 25);
                            L_950.CornerRadius = UDim.new(1, 0);
                            L_950.Parent = L_949;
                            L_951.Name = "BCor1";
                            L_951.Parent = L_949;
                            L_951.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_951.BackgroundTransparency = 1;
                            L_951.Size = UDim2.new(1, 0, 1, 0);
                            L_951.Font = Enum.Font.SourceSans;
                            L_951.Text = "";
                            L_951.TextColor3 = Color3.fromRGB(0, 0, 0);
                            L_951.TextSize = 14;
                            L_952.Name = "Cor2";
                            L_952.Parent = L_947;
                            L_952.BackgroundColor3 = L_642[L_903].Breathing.Color2;
                            L_952.Selectable = true;
                            L_952.Size = UDim2.new(0, 25, 0, 25);
                            L_953.CornerRadius = UDim.new(1, 0);
                            L_953.Parent = L_952;
                            L_954.Name = "BCor2";
                            L_954.Parent = L_952;
                            L_954.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_954.BackgroundTransparency = 1;
                            L_954.Size = UDim2.new(1, 0, 1, 0);
                            L_954.Font = Enum.Font.SourceSans;
                            L_954.Text = "";
                            L_954.TextColor3 = Color3.fromRGB(0, 0, 0);
                            L_954.TextSize = 14;
                            local L_955 = false;
                            L_911.MouseButton1Click:Connect(function()
                                L_955 = not L_955;
                                local L_956 = L_955 and UDim2.new(1, 0, 0, 255) or UDim2.new(1, 0, 0, 35);
                                L_733:Create(L_904, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Size = L_956 }):Play();
                                return ;
                            end);
                            L_911.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            local L_957 = game:GetService("UserInputService");
                            local L_958 = game:GetService("RunService");
                            local L_959 = game.Players.LocalPlayer:GetMouse();
                            local L_960 = nil;
                            local L_961 = nil;
                            local L_962 = true;
                            local L_963 = 0;
                            local L_964 = function(...)
                                if L_962 then
                                    return wait(...);
                                end;
                                wait();
                                return false;
                            end;
                            local L_966 = function(L_965)
                                return { math.floor(L_965.r * 255), math.floor(L_965.g * 255), math.floor(L_965.b * 255) };
                            end;
                            local L_969 = function(L_967)
                                local L_968 = L_967:gsub("#", ""):upper():gsub("0X", "");
                                return Color3.fromRGB(tonumber(L_968:sub(1, 2), 16), tonumber(L_968:sub(3, 4), 16), tonumber(L_968:sub(5, 6), 16));
                            end;
                            local L_974 = function(L_970)
                                local L_971 = string.format("%X", math.floor(L_970.R * 255));
                                local L_972 = string.format("%X", math.floor(L_970.G * 255));
                                local L_973 = string.format("%X", math.floor(L_970.B * 255));
                                if #L_971 < 2 then
                                    L_971 = "0" .. L_971;
                                end;
                                if #L_972 < 2 then
                                    L_972 = "0" .. L_972;
                                end;
                                if #L_973 < 2 then
                                    L_973 = "0" .. L_973;
                                end;
                                return string.format("%s%s%s", L_971, L_972, L_973);
                            end;
                            local L_975 = 1;
                            local L_976 = 1;
                            local L_977 = 1;
                            local L_980 = function(L_978, L_979)
                                if L_979 < L_978 then
                                    return L_978, L_979;
                                end;
                                return L_979, L_978;
                            end;
                            local L_988 = function(L_981, L_982)
                                if L_981 + L_982 > 255 then
                                    local L_983, L_984 = L_980(L_981, L_982);
                                    local L_985 = 255 - L_983;
                                    local L_986, L_987 = L_980(L_985, L_984);
                                    return L_986 - L_987;
                                end;
                                return L_981 + L_982;
                            end;
                            CongColor = function(L_989, L_990)
                                local L_991 = math.sqrt;
                                local L_992 = { R = 255 - L_991(((255 - L_989.R) ^ 2 + (255 - L_990.R) ^ 2) / 2), G = 255 - L_991(((255 - L_989.G) ^ 2 + (255 - L_990.G) ^ 2) / 2), B = 255 - L_991(((255 - L_989.B) ^ 2 + (255 - L_990.B) ^ 2) / 2) };
                                return Color3.new(L_992.R, L_992.G, L_992.B);
                            end;
                            local L_1005 = function(L_993)
                                local L_994 = L_993 or Color3.fromHSV(L_975, L_976, L_977);
                                if L_993 then
                                    local L_995, L_996, L_997 = Color3.toHSV(L_993);
                                    L_975 = L_995;
                                    L_976 = L_996;
                                    L_977 = L_997;
                                end;
                                L_929.Text = L_974(L_994);
                                L_938.BackgroundColor3 = Color3.fromHSV(L_975, 1, 1);
                                local L_998, L_999, L_1000 = Color3.toHSV(L_994);
                                L_939.Position = UDim2.fromScale(L_999, 1 - L_1000);
                                local L_1001 = 1 - select(1, Color3.toHSV(L_994));
                                if math.abs(L_914.Position.Y.Scale - L_1001) > 0.0001 then
                                    L_914.Position = UDim2.fromScale(0, L_1001);
                                end;
                                local L_1002, L_1003, L_1004 = table.unpack(L_966(L_994));
                                L_919.Text = L_1002;
                                L_922.Text = L_1003;
                                L_925.Text = L_1004;
                                L_909.BackgroundColor3 = L_994;
                                getgenv().UIColor[L_903] = L_994;
                                return ;
                            end;
                            L_1005(L_642[L_903].Color);
                            local L_1008 = function(L_1006)
                                if L_960 then
                                    L_960 = L_960:Disconnect() and nil or nil;
                                end;
                                if L_961 then
                                    L_961 = L_961:Disconnect() and nil or nil;
                                end;
                                if L_1006 then
                                    pcall(function()
                                        local L_1007 = 0.00392156862745098;
                                        while L_964() and L_900.Cungroi do
                                            L_963 = L_1007 + L_963;
                                            if L_963 > 1 then
                                                L_963 = 0;
                                            end;
                                            L_975 = L_963;
                                            L_1005(Color3.fromHSV(L_963, 1, 1));
                                        end;
                                        return ;
                                    end);
                                end;
                                return ;
                            end;
                            local L_1009 = L_900.Cungroi and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0);
                            local L_1010 = L_900.Cungroi and UDim2.new(0.5, 0, 0.5, 0) or UDim2.new(0, 0, 1, 0);
                            local L_1011 = L_900.Cungroi and Vector2.new(0.5, 0.5) or Vector2.new(0, 1);
                            L_936.Size = L_1009;
                            L_936.Position = L_1010;
                            L_936.AnchorPoint = L_1011;
                            spawn(function()
                                L_1008(L_900.Cungroi);
                                return ;
                            end);
                            L_937.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            L_937.MouseButton1Click:Connect(function()
                                L_900.Cungroi = not L_900.Cungroi;
                                L_1009 = L_900.Cungroi and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0);
                                L_1010 = L_900.Cungroi and UDim2.new(0.5, 0, 0.5, 0) or UDim2.new(0, 0, 1, 0);
                                L_1011 = L_900.Cungroi and Vector2.new(0.5, 0.5) or Vector2.new(0, 1);
                                game.TweenService:Create(L_936, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Size = L_1009, Position = L_1010, AnchorPoint = L_1011 }):Play();
                                L_1008(L_900.Cungroi);
                                return ;
                            end);
                            L_929.FocusLost:Connect(function()
                                if #L_929.Text > 5 then
                                    local L_1012, L_1013 = pcall(L_969, L_929.Text);
                                    L_1005(L_1012 and L_1013);
                                end;
                                return ;
                            end);
                            L_919.FocusLost:Connect(function()
                                if tonumber(L_919.Text) > 255 then
                                    L_919.Text = 255;
                                elseif tonumber(L_919.Text) < 0 then
                                    L_919.Text = 0;
                                end;
                                local L_1014, L_1015 = pcall(Color3.fromRGB, tonumber(L_919.Text), tonumber(L_925.Text), tonumber(L_922.Text));
                                L_1005(L_1014 and L_1015);
                                return ;
                            end);
                            L_922.FocusLost:Connect(function()
                                if tonumber(L_922.Text) > 255 then
                                    L_922.Text = 255;
                                elseif tonumber(L_922.Text) < 0 then
                                    L_922.Text = 0;
                                end;
                                local L_1016, L_1017 = pcall(Color3.fromRGB, tonumber(L_919.Text), tonumber(L_925.Text), tonumber(L_922.Text));
                                L_1005(L_1016 and L_1017);
                                return ;
                            end);
                            L_925.FocusLost:Connect(function()
                                if tonumber(L_925.Text) > 255 then
                                    L_925.Text = 255;
                                elseif tonumber(L_925.Text) < 0 then
                                    L_925.Text = 0;
                                end;
                                local L_1018, L_1019 = pcall(Color3.fromRGB, tonumber(L_919.Text), tonumber(L_925.Text), tonumber(L_922.Text));
                                L_1005(L_1018 and L_1019);
                                return ;
                            end);
                            L_975 = 1 - math.clamp(L_912.Frame.AbsolutePosition.Y - L_912.AbsolutePosition.Y, 0, L_912.AbsoluteSize.Y) / L_912.AbsoluteSize.Y;
                            L_976 = math.clamp(L_938.SelectorColor.AbsolutePosition.X - L_938.AbsolutePosition.X, 0, L_938.AbsoluteSize.X) / L_938.AbsoluteSize.X;
                            L_977 = 1 - math.clamp(L_938.SelectorColor.AbsolutePosition.Y - L_938.AbsolutePosition.Y, 0, L_938.AbsoluteSize.Y) / L_938.AbsoluteSize.Y;
                            L_938.InputBegan:Connect(function(L_1020)
                                if L_1020.UserInputType == Enum.UserInputType.MouseButton1 then
                                    if L_960 then
                                        L_960:Disconnect();
                                    end;
                                    L_821 = true;
                                    L_960 = L_958.RenderStepped:Connect(function()
                                        local L_1021 = math.clamp(L_959.X - L_938.AbsolutePosition.X, 0, L_938.AbsoluteSize.X) / L_938.AbsoluteSize.X;
                                        local L_1022 = math.clamp(L_959.Y - L_938.AbsolutePosition.Y, 0, L_938.AbsoluteSize.Y) / L_938.AbsoluteSize.Y;
                                        L_939.Position = UDim2.fromScale(L_1021, L_1022);
                                        L_976 = L_1021;
                                        L_977 = 1 - L_1022;
                                        L_1005();
                                        return ;
                                    end);
                                end;
                                return ;
                            end);
                            L_938.InputEnded:Connect(function(L_1023)
                                if L_1023.UserInputType == Enum.UserInputType.MouseButton1 and L_960 then
                                    L_821 = false;
                                    L_960:Disconnect();
                                end;
                                return ;
                            end);
                            L_912.InputBegan:Connect(function(L_1024)
                                if L_1024.UserInputType == Enum.UserInputType.MouseButton1 then
                                    if L_961 then
                                        L_961:Disconnect();
                                    end;
                                    L_821 = true;
                                    L_961 = L_958.RenderStepped:Connect(function()
                                        local L_1025 = math.clamp(L_959.Y - L_912.AbsolutePosition.Y, 0, L_912.AbsoluteSize.Y) / L_912.AbsoluteSize.Y;
                                        L_912.Frame.Position = UDim2.fromScale(0, L_1025);
                                        L_975 = 1 - L_1025;
                                        L_1005();
                                        return ;
                                    end);
                                end;
                                return ;
                            end);
                            L_912.InputEnded:Connect(function(L_1026)
                                if L_1026.UserInputType == Enum.UserInputType.MouseButton1 and L_961 then
                                    L_821 = false;
                                    L_961:Disconnect();
                                end;
                                return ;
                            end);
                            L_951.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            L_954.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            L_951.MouseButton1Click:Connect(function()
                                L_949.BackgroundColor3 = L_909.BackgroundColor3;
                                L_642[L_903].Breathing.Color1 = L_909.BackgroundColor3;
                                return ;
                            end);
                            L_954.MouseButton1Click:Connect(function()
                                L_952.BackgroundColor3 = L_909.BackgroundColor3;
                                L_642[L_903].Breathing.Color2 = L_909.BackgroundColor3;
                                return ;
                            end);
                            L_946.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            spawn(function()
                                while wait() do
                                    if L_642[L_903].Breathing.Toggle then
                                        L_1005(L_909.BackgroundColor3);
                                    end;
                                end;
                                return ;
                            end);
                            local L_1036 = function()
                                local L_1027 = L_952.BackgroundColor3;
                                local L_1028 = L_949.BackgroundColor3;
                                local L_1029 = L_642[L_903].Breathing.Toggle and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0);
                                local L_1030 = L_642[L_903].Breathing.Toggle and UDim2.new(0.5, 0, 0.5, 0) or UDim2.new(0, 0, 1, 0);
                                local L_1031 = L_642[L_903].Breathing.Toggle and Vector2.new(0.5, 0.5) or Vector2.new(0, 1);
                                game.TweenService:Create(L_945, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Size = L_1029, Position = L_1030, AnchorPoint = L_1031 }):Play();
                                if L_642[L_903].Breathing.Toggle then
                                    local L_1032 = game.TweenService:Create(L_909, TweenInfo.new(2), { BackgroundColor3 = L_1028 });
                                    local L_1033 = game.TweenService:Create(L_938, TweenInfo.new(2), { BackgroundColor3 = L_1028 });
                                    L_1032:Play();
                                    L_1033:Play();
                                    L_1032.Completed:Connect(function()
                                        if L_642[L_903].Breathing.Toggle then
                                            local L_1034 = game.TweenService:Create(L_909, TweenInfo.new(2), { BackgroundColor3 = L_1027 });
                                            local L_1035 = game.TweenService:Create(L_938, TweenInfo.new(2), { BackgroundColor3 = L_1027 });
                                            L_1034:Play();
                                            L_1035:Play();
                                            if L_642[L_903].Breathing.Toggle then
                                                L_1034.Completed:Connect(function()
                                                    L_1032:Play();
                                                    L_1033:Play();
                                                    return ;
                                                end);
                                            end;
                                        end;
                                        return ;
                                    end);
                                end;
                                return ;
                            end;
                            spawn(function()
                                L_1036();
                                return ;
                            end);
                            L_946.MouseButton1Click:Connect(function()
                                L_642[L_903].Breathing.Toggle = not L_642[L_903].Breathing.Toggle;
                                L_1036();
                                return ;
                            end);
                            return ;
                        end,
                        CreateBox = function(L_1037)
                            local L_1038 = tostring(L_1037.Title) or "";
                            local L_1039 = tostring(L_1037.Placeholder) or "";
                            local L_1040 = L_1037.Type;
                            local L_1041 = L_1040 and getgenv().UIColor[L_1040] or "";
                            local L_1042 = Instance.new(L_32);
                            local L_1043 = Instance.new("UICorner");
                            local L_1044 = Instance.new(L_32);
                            local L_1045 = Instance.new("UICorner");
                            local L_1046 = Instance.new("TextLabel");
                            local L_1047 = Instance.new(L_32);
                            local L_1048 = Instance.new("UICorner");
                            local L_1049 = Instance.new("TextBox");
                            local L_1050 = Instance.new(L_32);
                            L_1042.Name = "BoxFrame";
                            L_1042.Parent = L_887;
                            L_1042.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            L_1042.BackgroundTransparency = 1;
                            L_1042.Position = UDim2.new(0, 0, 0.208333328, 0);
                            L_1042.Size = UDim2.new(1, 0, 0, 60);
                            L_1043.CornerRadius = UDim.new(0, 4);
                            L_1043.Name = "BoxCorner";
                            L_1043.Parent = L_1042;
                            L_1044.Name = "Background1";
                            L_1044.Parent = L_1042;
                            L_1044.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1044.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1044.Size = UDim2.new(1, -10, 1, 0);
                            L_1044.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(L_639["Background 1 Color"], function()
                                L_1044.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            L_1044.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1044.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1045.CornerRadius = UDim.new(0, 4);
                            L_1045.Name = "ButtonCorner";
                            L_1045.Parent = L_1044;
                            L_1046.Name = "TextColor";
                            L_1046.Parent = L_1044;
                            L_1046.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_1046.BackgroundTransparency = 1;
                            L_1046.Position = UDim2.new(0, 10, 0, 0);
                            L_1046.Size = UDim2.new(1, -10, 0.5, 0);
                            L_1046.Font = Enum.Font.GothamBlack;
                            L_1046.Text = L_1038;
                            L_1046.TextSize = 14;
                            L_1046.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1046.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1046.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1047.Name = "Background2";
                            L_1047.Parent = L_1044;
                            L_1047.AnchorPoint = Vector2.new(1, 0.5);
                            L_1047.ClipsDescendants = true;
                            L_1047.Position = UDim2.new(1, -5, 0, 40);
                            L_1047.Size = UDim2.new(1, -10, 0, 25);
                            L_1047.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(L_639["Background 2 Color"], function()
                                L_1047.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            L_1048.CornerRadius = UDim.new(0, 4);
                            L_1048.Name = "ButtonCorner";
                            L_1048.Parent = L_1047;
                            L_1049.Name = "TextColorPlaceholder";
                            L_1049.Parent = L_1047;
                            L_1049.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            L_1049.BackgroundTransparency = 1;
                            L_1049.Position = UDim2.new(0, 5, 0, 0);
                            L_1049.Size = UDim2.new(1, -5, 1, 0);
                            L_1049.Font = Enum.Font.GothamBold;
                            L_1049.PlaceholderText = L_1039;
                            L_1049.Text = "";
                            L_1049.TextSize = 14;
                            L_1049.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1049.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                            L_1049.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639["Placeholder Text Color"], function()
                                L_1049.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                return ;
                            end);
                            table.insert(L_639[L_34], function()
                                L_1049.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1050.Name = "Setting_Lineeeee";
                            L_1050.Parent = L_1047;
                            L_1050.BackgroundTransparency = 1;
                            L_1050.Position = UDim2.new(0, 0, 1, -2);
                            L_1050.Size = UDim2.new(1, 0, 0, 6);
                            L_1050.BackgroundColor3 = getgenv().UIColor["Textbox Highlight Color"];
                            table.insert(L_639["Textbox Highlight Color"], function()
                                L_1050.BackgroundColor3 = getgenv().UIColor["Textbox Highlight Color"];
                                return ;
                            end);
                            L_1049.Focused:Connect(function()
                                L_733:Create(L_1050, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundTransparency = 0 }):Play();
                                return ;
                            end);
                            L_1049.Focused:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            L_1049.FocusLost:Connect(function()
                                L_733:Create(L_1050, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundTransparency = 1 }):Play();
                                local L_1051 = L_1049.Text;
                                if L_1051 ~= "" and L_1040 then
                                    getgenv().UIColor[L_1040] = L_1051;
                                    if L_1040 == "Background Image" then
                                        L_732.ReloadMain(L_1051);
                                    end;
                                end;
                                return ;
                            end);
                            local L_1052 = {};
                            if L_1040 and L_1041 ~= "" then
                                L_1049.Text = tostring(L_1041);
                            end;
                            L_1052.SetValue = function(L_1053)
                                local L_1054 = tostring(L_1053 or "");
                                L_1049.Text = L_1054;
                                if L_1040 then
                                    getgenv().UIColor[L_1040] = L_1054;
                                    if L_1040 == "Background Image" then
                                        L_732.ReloadMain(L_1054);
                                    end;
                                end;
                                return ;
                            end;
                            return L_1052;
                        end,
                        CreateSlider = function(L_1055)
                            local L_1056 = tostring(L_1055.Title) or "";
                            local L_1057 = tonumber(L_1055.Min) or 0;
                            local L_1058 = tonumber(L_1055.Max) or 100;
                            local L_1059 = L_1055.Precise or false;
                            local L_1060 = getgenv().UIColor[L_1055.Type] or 0;
                            local L_1062 = function(L_1061)
                                getgenv().UIColor[L_1055.Type] = L_1061;
                                return ;
                            end;
                            local L_1063 = 600;
                            local L_1064 = Instance.new(L_32);
                            local L_1065 = Instance.new("UICorner");
                            local L_1066 = Instance.new(L_32);
                            local L_1067 = Instance.new("UICorner");
                            local L_1068 = Instance.new("TextLabel");
                            local L_1069 = Instance.new(L_32);
                            local L_1070 = Instance.new("TextButton");
                            local L_1071 = Instance.new("UICorner");
                            local L_1072 = Instance.new(L_32);
                            local L_1073 = Instance.new("UICorner");
                            local L_1074 = Instance.new(L_32);
                            local L_1075 = Instance.new("UICorner");
                            local L_1076 = Instance.new("TextBox");
                            L_1064.Name = L_1056 .. "buda";
                            L_1064.Parent = L_887;
                            L_1064.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            L_1064.BackgroundTransparency = 1;
                            L_1064.Position = UDim2.new(0, 0, 0.208333328, 0);
                            L_1064.Size = UDim2.new(1, 0, 0, 50);
                            L_1065.CornerRadius = UDim.new(0, 4);
                            L_1065.Name = "SliderCorner";
                            L_1065.Parent = L_1064;
                            L_1066.Name = "Background1";
                            L_1066.Parent = L_1064;
                            L_1066.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1066.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1066.Size = UDim2.new(1, -10, 1, 0);
                            L_1066.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(L_639["Background 1 Color"], function()
                                L_1066.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            L_1066.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1066.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1067.CornerRadius = UDim.new(0, 4);
                            L_1067.Name = "SliderBGCorner";
                            L_1067.Parent = L_1066;
                            L_1068.Name = "TextColor";
                            L_1068.Parent = L_1066;
                            L_1068.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1068.BackgroundTransparency = 1;
                            L_1068.Position = UDim2.new(0, 10, 0, 0);
                            L_1068.Size = UDim2.new(1, -10, 0, 25);
                            L_1068.Font = Enum.Font.GothamBlack;
                            L_1068.Text = L_1056;
                            L_1068.TextSize = 14;
                            L_1068.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1068.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1068.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1069.Name = "SliderBar";
                            L_1069.Parent = L_1064;
                            L_1069.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1069.Position = UDim2.new(0.5, 0, 0.5, 14);
                            L_1069.Size = UDim2.new(0, 600, 0, 6);
                            L_1069.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(L_639["Background 2 Color"], function()
                                L_1069.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            L_1070.Name = "SliderButton ";
                            L_1070.Parent = L_1069;
                            L_1070.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1070.BackgroundTransparency = 1;
                            L_1070.Size = UDim2.new(1, 0, 1, 0);
                            L_1070.Font = Enum.Font.GothamBold;
                            L_1070.Text = "";
                            L_1070.TextColor3 = Color3.fromRGB(230, 230, 230);
                            L_1070.TextSize = 14;
                            L_1071.CornerRadius = UDim.new(1, 0);
                            L_1071.Name = "SliderBarCorner";
                            L_1071.Parent = L_1069;
                            L_1072.Name = "Bar";
                            L_1072.BorderSizePixel = 0;
                            L_1072.Parent = L_1069;
                            L_1072.Size = UDim2.new(0, 0, 1, 0);
                            L_1072.BackgroundColor3 = getgenv().UIColor["Slider Line Color"];
                            table.insert(L_639["Slider Line Color"], function()
                                L_1072.BackgroundColor3 = getgenv().UIColor["Slider Line Color"];
                                return ;
                            end);
                            L_1073.CornerRadius = UDim.new(1, 0);
                            L_1073.Name = "BarCorner";
                            L_1073.Parent = L_1072;
                            L_1074.Name = "Background2";
                            L_1074.Parent = L_1064;
                            L_1074.AnchorPoint = Vector2.new(1, 0);
                            L_1074.Position = UDim2.new(1, -10, 0, 5);
                            L_1074.Size = UDim2.new(0, 150, 0, 25);
                            L_1074.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(L_639["Background 2 Color"], function()
                                L_1074.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            L_1075.CornerRadius = UDim.new(0, 4);
                            L_1075.Name = "Sliderbox";
                            L_1075.Parent = L_1074;
                            L_1076.Name = "TextColor";
                            L_1076.Parent = L_1074;
                            L_1076.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1076.BackgroundTransparency = 1;
                            L_1076.Size = UDim2.new(1, 0, 1, 0);
                            L_1076.Font = Enum.Font.GothamBold;
                            L_1076.Text = "";
                            L_1076.TextSize = 14;
                            L_1076.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1076.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1070.MouseEnter:Connect(function()
                                L_733:Create(L_1072, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"] }):Play();
                                return ;
                            end);
                            L_1070.MouseLeave:Connect(function()
                                L_733:Create(L_1072, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundColor3 = getgenv().UIColor["Slider Line Color"] }):Play();
                                return ;
                            end);
                            local L_1077 = game.Players.LocalPlayer:GetMouse();
                            if L_1060 then
                                if L_1060 <= L_1057 then
                                    L_1060 = L_1057;
                                elseif L_1058 <= L_1060 then
                                    L_1060 = L_1058;
                                end;
                                L_1072.Size = UDim2.new(1 - (L_1058 - L_1060) / (L_1058 - L_1057), 0, 0, 6);
                                L_1076.Text = L_1060;
                                L_1062(L_1060);
                            end;
                            L_1070.MouseButton1Down:Connect(function()
                                local L_1078 = L_1059 and tonumber(string.format("%.1f", (tonumber(L_1058) - tonumber(L_1057)) / L_1063 * L_1072.AbsoluteSize.X + tonumber(L_1057))) or math.floor((tonumber(L_1058) - tonumber(L_1057)) / L_1063 * L_1072.AbsoluteSize.X + tonumber(L_1057));
                                pcall(function()
                                    L_1062(L_1078);
                                    L_1076.Text = L_1078;
                                    return ;
                                end);
                                L_1072.Size = UDim2.new(0, math.clamp(L_1077.X - L_1072.AbsolutePosition.X, 0, L_1063), 0, 6);
                                moveconnection = L_1077.Move:Connect(function()
                                    local L_1079 = L_1059 and tonumber(string.format("%.1f", (tonumber(L_1058) - tonumber(L_1057)) / L_1063 * L_1072.AbsoluteSize.X + tonumber(L_1057))) or math.floor((tonumber(L_1058) - tonumber(L_1057)) / L_1063 * L_1072.AbsoluteSize.X + tonumber(L_1057));
                                    pcall(function()
                                        L_1062(L_1079);
                                        L_1076.Text = L_1079;
                                        return ;
                                    end);
                                    L_1072.Size = UDim2.new(0, math.clamp(L_1077.X - L_1072.AbsolutePosition.X, 0, L_1063), 0, 6);
                                    return ;
                                end);
                                releaseconnection = L_734.InputEnded:Connect(function(L_1080)
                                    if L_1080.UserInputType == Enum.UserInputType.MouseButton1 then
                                        local L_1081 = L_1059 and tonumber(string.format("%.1f", (tonumber(L_1058) - tonumber(L_1057)) / L_1063 * L_1072.AbsoluteSize.X + tonumber(L_1057))) or math.floor((tonumber(L_1058) - tonumber(L_1057)) / L_1063 * L_1072.AbsoluteSize.X + tonumber(L_1057));
                                        pcall(function()
                                            L_1062(L_1081);
                                            L_1076.Text = L_1081;
                                            return ;
                                        end);
                                        L_1072.Size = UDim2.new(0, math.clamp(L_1077.X - L_1072.AbsolutePosition.X, 0, L_1063), 0, 6);
                                        moveconnection:Disconnect();
                                        releaseconnection:Disconnect();
                                    end;
                                    return ;
                                end);
                                return ;
                            end);
                            local L_1083 = function(L_1082)
                                if tonumber(L_1082) <= L_1057 then
                                    L_1072.Size = UDim2.new(0, 0 * L_1063, 0, 6);
                                    L_1076.Text = L_1057;
                                    L_1062(tonumber(L_1057));
                                elseif tonumber(L_1082) <= L_1058 then
                                    L_1072.Size = UDim2.new(0, L_1058 / L_1058 * L_1063, 0, 6);
                                    L_1076.Text = L_1058;
                                    L_1062(tonumber(L_1058));
                                else
                                    L_1072.Size = UDim2.new(1 - (L_1058 - L_1082) / (L_1058 - L_1057), 0, 0, 6);
                                    L_1062(tonumber(L_1082));
                                end;
                                return ;
                            end;
                            L_1076.FocusLost:Connect(function()
                                L_1083(L_1076.Text);
                                return ;
                            end);
                            return {
                                SetValue = function(L_1084)
                                    L_1083(L_1084);
                                    return ;
                                end
                            };
                        end
                    };
                end
            };
        end;
        local L_1085 = L_731.CreateCustomColor();
        local L_1086 = L_1085.CreateSection("Main");
        L_1086.CreateColorPicker({ Title = "Border Color", Type = "Border Color" });
        L_1086.CreateColorPicker({ Title = "Click Effect Color", Type = "Click Effect Color" });
        L_1086.CreateColorPicker({ Title = "Setting Icon Color", Type = "Setting Icon Color" });
        L_1086.CreateBox({ Title = "Logo Image", Placeholder = "URL Here (PNG only), Recommended 128x128", Type = "Logo Image" });
        local L_1087 = L_1085.CreateSection("Search");
        L_1087.CreateColorPicker({ Title = "Search Icon Color", Type = "Search Icon Color" });
        L_1087.CreateColorPicker({ Title = "Search Icon Highlight Color", Type = "Search Icon Highlight Color" });
        local L_1088 = L_1085.CreateSection("Text");
        L_1088.CreateColorPicker({ Title = "GUI Text Color", Type = "GUI Text Color" });
        L_1088.CreateColorPicker({ Title = L_34, Type = L_34 });
        L_1088.CreateColorPicker({ Title = "Placeholder Text Color", Type = "Placeholder Text Color" });
        L_1088.CreateColorPicker({ Title = "Title Text Color", Type = "Title Text Color" });
        local L_1089 = L_1085.CreateSection("Background");
        L_1089.CreateColorPicker({ Title = "Background 1 Color", Type = "Background 1 Color" });
        L_1089.CreateSlider({ Title = "Background 1 Transparency", Type = "Background 1 Transparency", Min = 0, Max = 1, Default = 0, Precise = true });
        L_1089.CreateColorPicker({ Title = "Background 2 Color", Type = "Background 2 Color" });
        L_1089.CreateColorPicker({ Title = "Background 3 Color", Type = "Background 3 Color" });
        L_1089.CreateBox({ Title = "Background Image", Placeholder = "URL Here (WEBM / PNG only), Recommended 1280x720", Type = "Background Image" });
        L_1085.CreateSection("Page").CreateColorPicker({ Title = "Page Selected Color", Type = "Page Selected Color" });
        local L_1090 = L_1085.CreateSection("Section");
        L_1090.CreateColorPicker({ Title = "Section Text Color", Type = "Section Text Color" });
        L_1090.CreateColorPicker({ Title = "Section Underline Color", Type = "Section Underline Color" });
        local L_1091 = L_1085.CreateSection("Toggle");
        L_1091.CreateColorPicker({ Title = "Toggle Border Color", Type = "Toggle Border Color" });
        L_1091.CreateColorPicker({ Title = "Toggle Checked Color", Type = "Toggle Checked Color" });
        L_1091.CreateColorPicker({ Title = "Toggle Desc Color", Type = "Toggle Desc Color" });
        L_1085.CreateSection("Button").CreateColorPicker({ Title = "Button Color", Type = "Button Color" });
        L_1085.CreateSection("Label").CreateColorPicker({ Title = "Label Color", Type = "Label Color" });
        local L_1092 = L_1085.CreateSection("Dropdown");
        L_1092.CreateColorPicker({ Title = "Dropdown Icon Color", Type = "Dropdown Icon Color" });
        L_1092.CreateColorPicker({ Title = "Dropdown Selected Color", Type = "Dropdown Selected Color" });
        L_1085.CreateSection("Textbox").CreateColorPicker({ Title = "Textbox Highlight Color", Type = "Textbox Highlight Color" });
        L_1085.CreateSection("Box").CreateColorPicker({ Title = "Box Highlight Color", Type = "Box Highlight Color" });
        local L_1093 = L_1085.CreateSection("Slider");
        L_1093.CreateColorPicker({ Title = "Slider Line Color", Type = "Slider Line Color" });
        L_1093.CreateColorPicker({ Title = "Slider Highlight Color", Type = "Slider Highlight Color" });
        local L_1094 = L_1085.CreateSection("Animation");
        L_1094.CreateSlider({ Title = "Tween Animation 1 Speed", Type = "Tween Animation 1 Speed", Min = 0, Max = 0.75, Default = 0.25, Precise = true });
        L_1094.CreateSlider({ Title = "Tween Animation 2 Speed", Type = "Tween Animation 2 Speed", Min = 0, Max = 1, Default = 0.5, Precise = true });
        L_1094.CreateSlider({ Title = "Tween Animation 3 Speed", Type = "Tween Animation 3 Speed", Min = 0, Max = 0.5, Default = 0.1, Precise = true });
        local L_1095 = {};
        local L_1096 = -1;
        local L_1097 = -1;
        local L_1098 = 1;
        L_1095.CreatePage = function(L_1099)
            local L_1100 = tostring(L_1099.Page_Name);
            local L_1101 = L_1100;
            local L_1102 = tostring(L_1099.Page_Title);
            L_1097 = L_1097 + 1;
            L_1096 = L_1096 + 1;
            local L_1103 = Instance.new(L_32);
            local L_1104 = Instance.new(L_32);
            local L_1105 = Instance.new("UICorner");
            local L_1106 = Instance.new(L_32);
            local L_1107 = Instance.new(L_32);
            local L_1108 = Instance.new("UICorner");
            local L_1109 = Instance.new(L_32);
            local L_1110 = Instance.new("TextLabel");
            local L_1111 = Instance.new("TextButton");
            L_1103.Name = L_1100 .. "_Control";
            L_1103.Parent = L_841;
            L_1103.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_1103.BackgroundTransparency = 1;
            L_1103.Size = UDim2.new(1, -10, 0, 25);
            L_1103.LayoutOrder = L_1096;
            L_1104.Parent = L_1103;
            L_1104.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_1104.BackgroundTransparency = 1;
            L_1104.Position = UDim2.new(0, 5, 0, 0);
            L_1104.Size = UDim2.new(1, -5, 1, 0);
            L_1105.CornerRadius = UDim.new(0, 4);
            L_1105.Name = "TabNameCorner";
            L_1105.Parent = L_1104;
            L_1106.Name = "Line";
            L_1106.Parent = L_1104;
            L_1106.AnchorPoint = Vector2.new(0, 0.5);
            L_1106.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_1106.BackgroundTransparency = 1;
            L_1106.Position = UDim2.new(0, 0, 0.5, 0);
            L_1106.Size = UDim2.new(0, 14, 1, 0);
            L_1107.Name = "PageInLine";
            L_1107.Parent = L_1106;
            L_1107.AnchorPoint = Vector2.new(0.5, 0.5);
            L_1107.BorderSizePixel = 0;
            L_1107.Position = UDim2.new(0.5, 0, 0.5, 0);
            L_1107.Size = UDim2.new(1, -10, 0, 0);
            L_1107.BackgroundColor3 = getgenv().UIColor["Page Selected Color"];
            table.insert(L_639["Page Selected Color"], function()
                L_1107.BackgroundColor3 = getgenv().UIColor["Page Selected Color"];
                return ;
            end);
            L_1108.Name = "LineCorner";
            L_1108.Parent = L_1107;
            L_1109.Name = "TabTitleContainer";
            L_1109.Parent = L_1104;
            L_1109.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_1109.BackgroundTransparency = 1;
            L_1109.Position = UDim2.new(0, 15, 0, 0);
            L_1109.Size = UDim2.new(1, -15, 1, 0);
            L_1110.Name = "GUITextColor";
            L_1110.Parent = L_1109;
            L_1110.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_1110.BackgroundTransparency = 1;
            L_1110.Size = UDim2.new(1, 0, 1, 0);
            L_1110.Font = Enum.Font.GothamBold;
            L_1110.Text = L_1100;
            L_1110.TextColor3 = Color3.fromRGB(230, 230, 230);
            L_1110.TextSize = 14;
            L_1110.TextXAlignment = Enum.TextXAlignment.Left;
            L_1110.TextColor3 = getgenv().UIColor["GUI Text Color"];
            table.insert(L_639["GUI Text Color"], function()
                L_1110.TextColor3 = getgenv().UIColor["GUI Text Color"];
                return ;
            end);
            L_1111.Name = "PageButton";
            L_1111.Parent = L_1103;
            L_1111.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_1111.BackgroundTransparency = 1;
            L_1111.Size = UDim2.new(1, 0, 1, 0);
            L_1111.Font = Enum.Font.SourceSans;
            L_1111.Text = "";
            L_1111.TextColor3 = Color3.fromRGB(0, 0, 0);
            L_1111.TextSize = 14;
            local L_1112 = Instance.new(L_32);
            local L_1113 = Instance.new("UICorner");
            local L_1114 = Instance.new("TextLabel");
            local L_1115 = Instance.new("ScrollingFrame");
            local L_1116 = Instance.new("UIListLayout");
            local L_1117 = L_1098;
            L_1098 = L_1098 + 1;
            L_1112.Name = "Page" .. L_1117;
            L_1112.Parent = L_844;
            L_1112.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
            L_1112.Position = UDim2.new(0, 190, 0, 30);
            L_1112.Size = UDim2.new(0, 435, 0, 325);
            L_1112.LayoutOrder = L_1097;
            table.insert(L_639["Background 1 Color"], function()
                L_1112.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                return ;
            end);
            L_1112.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
            table.insert(L_639["Background 1 Transparency"], function()
                L_1112.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                return ;
            end);
            L_1113.CornerRadius = UDim.new(0, 4);
            L_1113.Parent = L_1112;
            L_1114.Name = "GUITextColor";
            L_1114.Parent = L_1112;
            L_1114.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_1114.BackgroundTransparency = 1;
            L_1114.Position = UDim2.new(0, 5, 0, 0);
            L_1114.Size = UDim2.new(1, 0, 0, 25);
            L_1114.Font = Enum.Font.GothamBold;
            L_1114.Text = L_1102;
            L_1114.TextSize = 16;
            L_1114.TextXAlignment = Enum.TextXAlignment.Left;
            L_1114.TextColor3 = getgenv().UIColor["GUI Text Color"];
            table.insert(L_639["GUI Text Color"], function()
                L_1114.TextColor3 = getgenv().UIColor["GUI Text Color"];
                return ;
            end);
            L_1115.Name = "PageList";
            L_1115.Parent = L_1112;
            L_1115.Active = true;
            L_1115.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_1115.BackgroundTransparency = 1;
            L_1115.BorderColor3 = Color3.fromRGB(27, 42, 53);
            L_1115.BorderSizePixel = 0;
            L_1115.Position = UDim2.new(0, 5, 0, 30);
            L_1115.Size = UDim2.new(1, -10, 1, -30);
            L_1115.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
            L_1115.ScrollBarThickness = 5;
            L_1115.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
            L_1116.Name = "Pagelistlayout";
            L_1116.Parent = L_1115;
            L_1116.SortOrder = Enum.SortOrder.LayoutOrder;
            L_1116.Padding = UDim.new(0, 5);
            L_1116:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                L_1115.CanvasSize = UDim2.new(0, 0, 0, L_1116.AbsoluteContentSize.Y + 5);
                return ;
            end);
            local L_1118 = Instance.new(L_32);
            local L_1119 = Instance.new("UICorner");
            local L_1120 = Instance.new(L_32);
            local L_1121 = Instance.new("ImageLabel");
            local L_1122 = Instance.new("TextButton");
            local L_1123 = Instance.new("TextBox");
            L_1118.Name = "Background2";
            L_1118.Parent = L_1112;
            L_1118.AnchorPoint = Vector2.new(1, 0);
            L_1118.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
            L_1118.Position = UDim2.new(1, -5, 0, 5);
            L_1118.Size = UDim2.new(0, 20, 0, 20);
            L_1118.ClipsDescendants = true;
            table.insert(L_639["Background 2 Color"], function()
                L_1118.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                return ;
            end);
            L_1119.CornerRadius = UDim.new(0, 2);
            L_1119.Name = "PageSearchCorner";
            L_1119.Parent = L_1118;
            L_1120.Name = "SearchFrame";
            L_1120.Parent = L_1118;
            L_1120.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
            L_1120.BackgroundTransparency = 1;
            L_1120.Size = UDim2.new(0, 20, 0, 20);
            L_1121.Name = "SearchIcon";
            L_1121.Parent = L_1120;
            L_1121.AnchorPoint = Vector2.new(0.5, 0.5);
            L_1121.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
            L_1121.BackgroundTransparency = 1;
            L_1121.Position = UDim2.new(0.5, 0, 0.5, 0);
            L_1121.Size = UDim2.new(0, 16, 0, 16);
            L_1121.Image = "rbxassetid://8154282545";
            L_1121.ImageColor3 = getgenv().UIColor["Search Icon Color"];
            table.insert(L_639["Search Icon Color"], function()
                L_1121.ImageColor3 = getgenv().UIColor["Search Icon Color"];
                return ;
            end);
            L_1122.Name = "active";
            L_1122.Parent = L_1120;
            L_1122.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
            L_1122.BackgroundTransparency = 1;
            L_1122.Size = UDim2.new(1, 0, 1, 0);
            L_1122.Font = Enum.Font.SourceSans;
            L_1122.Text = "";
            L_1122.TextColor3 = Color3.fromRGB(0, 0, 0);
            L_1122.TextSize = 14;
            L_1123.Name = "TextColorPlaceholder";
            L_1123.Parent = L_1118;
            L_1123.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
            L_1123.BackgroundTransparency = 1;
            L_1123.Position = UDim2.new(0, 30, 0, 0);
            L_1123.Size = UDim2.new(1, -30, 1, 0);
            L_1123.Font = Enum.Font.GothamBold;
            L_1123.Text = "";
            L_1123.TextSize = 14;
            L_1123.TextXAlignment = Enum.TextXAlignment.Left;
            L_1123.PlaceholderText = "Search Section name";
            L_1123.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
            L_1123.TextColor3 = getgenv().UIColor[L_34];
            table.insert(L_639["Placeholder Text Color"], function()
                L_1123.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                return ;
            end);
            table.insert(L_639[L_34], function()
                L_1123.TextColor3 = getgenv().UIColor[L_34];
                return ;
            end);
            local L_1124 = false;
            L_1122.MouseEnter:Connect(function()
                L_733:Create(L_1121, TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]), { ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"] }):Play();
                return ;
            end);
            L_1122.MouseLeave:Connect(function()
                L_733:Create(L_1121, TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]), { ImageColor3 = getgenv().UIColor["Search Icon Color"] }):Play();
                return ;
            end);
            L_1122.MouseButton1Click:Connect(function()
                L_732.ButtonEffect();
                return ;
            end);
            L_1123.Focused:Connect(function()
                L_732.ButtonEffect();
                return ;
            end);
            L_1122.MouseButton1Click:Connect(function()
                L_1124 = not L_1124;
                local L_1125 = L_1124 and UDim2.new(0, 175, 0, 20) or UDim2.new(0, 20, 0, 20);
                game.TweenService:Create(L_1118, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = L_1125 }):Play();
                return ;
            end);
            local L_1128 = function()
                for L_1126, L_1127 in next, L_1115:GetChildren() do
                    if not L_1127:IsA("UIListLayout") then
                        L_1127.Visible = false;
                    end;
                end;
                return ;
            end;
            local L_1131 = function()
                for L_1129, L_1130 in pairs(L_1115:GetChildren()) do
                    if not L_1130:IsA("UIListLayout") and string.find(string.lower(L_1130.Name), string.lower(L_1123.Text)) then
                        L_1130.Visible = true;
                    end;
                end;
                return ;
            end;
            L_1123:GetPropertyChangedSignal("Text"):Connect(function()
                L_1128();
                L_1131();
                return ;
            end);
            for L_1132, L_1133 in pairs(L_841:GetChildren()) do
                if not L_1133:IsA("UIListLayout") and L_1132 == 2 then
                    L_1133.Frame.Line.PageInLine.Size = UDim2.new(1, -10, 1, -10);
                    oldlay = L_1133.LayoutOrder;
                    oldobj = L_1133;
                end;
            end;
            L_1111.MouseButton1Click:Connect(function()
                L_732.ButtonEffect();
                if tostring(L_845.CurrentPage) == L_1112.Name then
                    return ;
                end;
                local L_1134 = getgenv().UIColor["Tween Animation 1 Speed"] or 0.25;
                local L_1135 = TweenInfo.new(L_1134, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
                for L_1136, L_1137 in ipairs(L_841:GetChildren()) do
                    if L_1137:IsA(L_32) and L_1137:FindFirstChild(L_32) then
                        local L_1138 = L_1137.Frame:FindFirstChild("Line");
                        if L_1138 and L_1138:FindFirstChild("PageInLine") then
                            local L_1139 = L_1138.PageInLine;
                            L_733:Create(L_1139, L_1135, { Size = UDim2.new(1, -10, 0, 0), Position = UDim2.new(0.5, 0, 1, 0), AnchorPoint = Vector2.new(0.5, 1) }):Play();
                        end;
                    end;
                end;
                L_733:Create(L_1107, L_1135, { Size = UDim2.new(1, -10, 1, -10), Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5) }):Play();
                for L_1140, L_1141 in ipairs(L_844:GetChildren()) do
                    if L_1141:IsA(L_32) then
                        L_1141.Visible = L_1141 == L_1112;
                    end;
                end;
                local L_1142 = L_1112:FindFirstChild("PageList");
                if L_1142 and L_1142:IsA("ScrollingFrame") then
                    L_1142.CanvasPosition = Vector2.new(0, 0);
                end;
                L_845:JumpTo(L_1112);
                return ;
            end);
            return {
                CreateSection = function(L_1143, L_1144)
                    local L_1145 = tostring(L_1143);
                    local L_1146 = true;
                    if L_1144 ~= nil then
                        L_1146 = game.PlaceId == 11424731604;
                    end;
                    if not L_1146 then
                        return {
                            CreateToggle = function()
                                return {
                                    SetStage = function()
                                        return ;
                                    end,
                                    SetKeybind = function()
                                        return ;
                                    end,
                                    GetKeybind = function()
                                        return nil;
                                    end
                                };
                            end,
                            CreateButton = function()
                                return ;
                            end,
                            CreateLabel = function()
                                return {
                                    SetText = function()
                                        return ;
                                    end,
                                    SetColor = function()
                                        return ;
                                    end
                                };
                            end,
                            CreateDropdown = function()
                                return {
                                    ClearText = function()
                                        return ;
                                    end,
                                    GetNewList = function()
                                        return ;
                                    end,
                                    rf = function()
                                        return ;
                                    end
                                };
                            end,
                            CreateBind = function()
                                return ;
                            end,
                            CreateBox = function()
                                return {
                                    SetValue = function()
                                        return ;
                                    end
                                };
                            end,
                            CreateSlider = function()
                                return {
                                    SetValue = function()
                                        return ;
                                    end
                                };
                            end
                        };
                    end;
                    local L_1147 = Instance.new(L_32);
                    local L_1148 = Instance.new("UICorner");
                    local L_1149 = Instance.new(L_32);
                    local L_1150 = Instance.new("TextLabel");
                    local L_1151 = Instance.new(L_32);
                    local L_1152 = Instance.new("UIGradient");
                    local L_1153 = Instance.new("UIListLayout");
                    L_1147.Name = L_1143 .. "_Dot";
                    L_1147.Parent = L_1115;
                    L_1147.Size = UDim2.new(0, 415, 0, 100);
                    L_1147.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                    table.insert(L_639["Background 3 Color"], function()
                        L_1147.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                        return ;
                    end);
                    L_1147.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                    table.insert(L_639["Background 1 Transparency"], function()
                        L_1147.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                        return ;
                    end);
                    L_1148.CornerRadius = UDim.new(0, 4);
                    L_1148.Parent = L_1147;
                    L_1149.Name = "Topsec";
                    L_1149.Parent = L_1147;
                    L_1149.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                    L_1149.BackgroundTransparency = 1;
                    L_1149.Size = UDim2.new(0, 415, 0, 30);
                    L_1150.Name = "Sectiontitle";
                    L_1150.Parent = L_1149;
                    L_1150.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                    L_1150.BackgroundTransparency = 1;
                    L_1150.Size = UDim2.new(1, 0, 1, 0);
                    L_1150.Font = Enum.Font.GothamBold;
                    L_1150.Text = L_1143;
                    L_1150.TextSize = 14;
                    L_1150.TextColor3 = getgenv().UIColor["Section Text Color"];
                    table.insert(L_639["Section Text Color"], function()
                        L_1150.TextColor3 = getgenv().UIColor["Section Text Color"];
                        return ;
                    end);
                    L_1151.Name = "Linesec";
                    L_1151.Parent = L_1149;
                    L_1151.AnchorPoint = Vector2.new(0.5, 1);
                    L_1151.BorderSizePixel = 0;
                    L_1151.Position = UDim2.new(0.5, 0, 1, -2);
                    L_1151.Size = UDim2.new(1, -10, 0, 2);
                    L_1151.BackgroundColor3 = getgenv().UIColor["Section Underline Color"];
                    table.insert(L_639["Section Underline Color"], function()
                        L_1151.BackgroundColor3 = getgenv().UIColor["Section Underline Color"];
                        return ;
                    end);
                    L_1152.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(0.51, 0.02), NumberSequenceKeypoint.new(1, 1) });
                    L_1152.Parent = L_1151;
                    L_1153.Name = "SectionList";
                    L_1153.Parent = L_1147;
                    L_1153.SortOrder = Enum.SortOrder.LayoutOrder;
                    L_1153.Padding = UDim.new(0, 5);
                    L_1153:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                        L_1147.Size = UDim2.new(1, -5, 0, L_1153.AbsoluteContentSize.Y + 5);
                        return ;
                    end);
                    return {
                        CreateToggle = function(L_1154, L_1155)
                            local L_1156 = tostring(L_1154.Title);
                            local L_1157 = L_1154.Desc;
                            local L_1158 = L_1154.Default;
                            local L_1159 = L_1154.Keybind or false;
                            local L_1160 = L_1154.DefaultKey or nil;
                            local L_1161 = L_1154.Textbox or false;
                            local L_1162 = L_1154.TextboxPlaceholder or "Enter value...";
                            local L_1163 = L_1154.TextboxDefault or "";
                            local L_1164 = L_1154.TextboxCallback or function()
                                return ;
                            end;
                            local L_1165 = L_1154.Requirements ~= nil;
                            local L_1166 = L_1154.Requirements or {};
                            local L_1167 = L_1154.RequirementUpdateInterval or 1;
                            local L_1168 = L_1155 or function()
                                return ;
                            end;
                            local L_1169 = Instance.new(L_32);
                            local L_1170 = Instance.new(L_32);
                            local L_1171 = Instance.new("ImageLabel");
                            local L_1172 = Instance.new("ImageLabel");
                            local L_1173 = Instance.new("TextLabel");
                            local L_1174 = Instance.new("TextLabel");
                            local L_1175 = Instance.new(L_32);
                            local L_1176 = Instance.new("UICorner");
                            local L_1177 = Instance.new("TextButton");
                            local L_1178 = Instance.new("UIListLayout");
                            local L_1179 = Instance.new(L_32);
                            local L_1180 = Instance.new("TextButton");
                            local L_1181 = Instance.new("UICorner");
                            local L_1182 = Instance.new("UIStroke");
                            local L_1183 = Instance.new(L_32);
                            local L_1184 = Instance.new("TextBox");
                            local L_1185 = Instance.new("UICorner");
                            local L_1186 = Instance.new("UIStroke");
                            local L_1187 = Instance.new(L_32);
                            local L_1188 = Instance.new(L_32);
                            local L_1189 = Instance.new("UIListLayout");
                            local L_1190 = {};
                            L_1169.Name = "ToggleFrame";
                            L_1169.Parent = L_1147;
                            L_1169.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1169.BackgroundTransparency = 1;
                            L_1169.Position = UDim2.new(0, 0, 0.300000012, 0);
                            L_1169.Size = UDim2.new(1, 0, 0, 0);
                            L_1169.AutomaticSize = Enum.AutomaticSize.Y;
                            L_1170.Name = "TogFrame1";
                            L_1170.Parent = L_1169;
                            L_1170.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1170.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1170.BackgroundTransparency = 1;
                            L_1170.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1170.Size = UDim2.new(1, -10, 0, 0);
                            L_1170.AutomaticSize = Enum.AutomaticSize.Y;
                            L_1171.Name = "checkbox";
                            L_1171.Parent = L_1170;
                            L_1171.AnchorPoint = Vector2.new(1, 0.5);
                            L_1171.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1171.BackgroundTransparency = 1;
                            L_1171.Position = UDim2.new(1, -5, 0.5, 3);
                            L_1171.Size = UDim2.new(0, 25, 0, 25);
                            L_1171.Image = "rbxassetid://4552505888";
                            L_1171.ImageColor3 = getgenv().UIColor["Toggle Border Color"];
                            L_1171.ZIndex = 3;
                            table.insert(L_639["Toggle Border Color"], function()
                                L_1171.ImageColor3 = getgenv().UIColor["Toggle Border Color"];
                                return ;
                            end);
                            L_1172.Name = "check";
                            L_1172.Parent = L_1171;
                            L_1172.AnchorPoint = Vector2.new(0, 1);
                            L_1172.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1172.BackgroundTransparency = 1;
                            L_1172.Position = UDim2.new(0, 0, 1, 0);
                            L_1172.Image = "rbxassetid://4555411759";
                            L_1172.ImageColor3 = getgenv().UIColor["Toggle Checked Color"];
                            L_1172.ZIndex = 3;
                            table.insert(L_639["Toggle Checked Color"], function()
                                L_1172.ImageColor3 = getgenv().UIColor["Toggle Checked Color"];
                                return ;
                            end);
                            if L_1159 then
                                L_1179.Name = "KeybindFrame";
                                L_1179.Parent = L_1170;
                                L_1179.AnchorPoint = Vector2.new(1, 0.5);
                                L_1179.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                L_1179.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                L_1179.Position = UDim2.new(1, -35, 0.5, 3);
                                L_1179.Size = UDim2.new(0, 45, 0, 20);
                                L_1179.ZIndex = 2;
                                table.insert(L_639["Background 1 Color"], function()
                                    L_1179.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                    return ;
                                end);
                                table.insert(L_639["Background 1 Transparency"], function()
                                    L_1179.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                    return ;
                                end);
                                L_1181.CornerRadius = UDim.new(0, 4);
                                L_1181.Parent = L_1179;
                                L_1182.Name = "KeybindBorder";
                                L_1182.Parent = L_1179;
                                L_1182.Color = getgenv().UIColor["Toggle Border Color"];
                                L_1182.Thickness = 1;
                                L_1182.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                                table.insert(L_639["Toggle Border Color"], function()
                                    L_1182.Color = getgenv().UIColor["Toggle Border Color"];
                                    return ;
                                end);
                                L_1180.Name = "KeybindButton";
                                L_1180.Parent = L_1179;
                                L_1180.BackgroundTransparency = 1;
                                L_1180.Size = UDim2.new(1, 0, 1, 0);
                                L_1180.Font = Enum.Font.GothamBold;
                                L_1180.Text = L_1160 or "...";
                                L_1180.TextColor3 = getgenv().UIColor[L_34];
                                L_1180.TextSize = 10;
                                L_1180.TextWrapped = true;
                                L_1180.ZIndex = 2;
                                table.insert(L_639[L_34], function()
                                    L_1180.TextColor3 = getgenv().UIColor[L_34];
                                    return ;
                                end);
                            end;
                            if L_1161 then
                                L_1183.Name = "TextboxFrame";
                                L_1183.Parent = L_1170;
                                L_1183.AnchorPoint = Vector2.new(1, 0.5);
                                L_1183.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                L_1183.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                L_1183.Position = UDim2.new(1, L_1159 and -85 or -35, 0.5, 3);
                                L_1183.Size = UDim2.new(0, 60, 0, 20);
                                L_1183.ZIndex = 2;
                                table.insert(L_639["Background 1 Color"], function()
                                    L_1183.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                    return ;
                                end);
                                table.insert(L_639["Background 1 Transparency"], function()
                                    L_1183.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                    return ;
                                end);
                                L_1185.CornerRadius = UDim.new(0, 4);
                                L_1185.Parent = L_1183;
                                L_1186.Name = "TextboxBorder";
                                L_1186.Parent = L_1183;
                                L_1186.Color = getgenv().UIColor["Toggle Border Color"];
                                L_1186.Thickness = 1;
                                L_1186.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                                table.insert(L_639["Toggle Border Color"], function()
                                    L_1186.Color = getgenv().UIColor["Toggle Border Color"];
                                    return ;
                                end);
                                L_1184.Name = "TextboxInput";
                                L_1184.Parent = L_1183;
                                L_1184.BackgroundTransparency = 1;
                                L_1184.Position = UDim2.new(0, 6, 0, 0);
                                L_1184.Size = UDim2.new(1, -12, 1, 0);
                                L_1184.Font = Enum.Font.Gotham;
                                L_1184.PlaceholderText = L_1162;
                                L_1184.Text = L_1163;
                                L_1184.TextColor3 = getgenv().UIColor[L_34];
                                L_1184.PlaceholderColor3 = getgenv().UIColor["Toggle Desc Color"];
                                L_1184.TextSize = 12;
                                L_1184.TextXAlignment = Enum.TextXAlignment.Left;
                                L_1184.ClearTextOnFocus = false;
                                L_1184.ZIndex = 2;
                                table.insert(L_639[L_34], function()
                                    L_1184.TextColor3 = getgenv().UIColor[L_34];
                                    return ;
                                end);
                                table.insert(L_639["Toggle Desc Color"], function()
                                    L_1184.PlaceholderColor3 = getgenv().UIColor["Toggle Desc Color"];
                                    return ;
                                end);
                                L_1184.FocusLost:Connect(function(L_1191)
                                    if L_1191 then
                                        L_1164(L_1184.Text);
                                    end;
                                    return ;
                                end);
                            end;
                            local L_1192 = 5;
                            if L_1157 then
                                L_1192 = 0;
                                L_1173.Name = "ToggleDesc";
                                L_1173.Parent = L_1170;
                                L_1173.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                                L_1173.BackgroundTransparency = 1;
                                L_1173.Position = UDim2.new(0, 15, 0, 20);
                                L_1173.Size = UDim2.new(1, (L_1159 and -90 or -50) - (L_1161 and 70 or 0), 0, 0);
                                L_1173.Font = Enum.Font.GothamBlack;
                                L_1173.Text = L_1157;
                                L_1173.TextSize = 13;
                                L_1173.TextWrapped = true;
                                L_1173.TextXAlignment = Enum.TextXAlignment.Left;
                                L_1173.RichText = true;
                                L_1173.AutomaticSize = Enum.AutomaticSize.Y;
                                L_1173.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                table.insert(L_639["Toggle Desc Color"], function()
                                    L_1173.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                    return ;
                                end);
                            else
                                L_1173.Text = "";
                            end;
                            L_1174.Name = "TextColor";
                            L_1174.Parent = L_1170;
                            L_1174.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1174.BackgroundTransparency = 1;
                            L_1174.Position = UDim2.new(0, 10, 0, L_1192);
                            L_1174.Size = UDim2.new(1, -10, 0, 20);
                            L_1174.Font = Enum.Font.GothamBlack;
                            L_1174.Text = L_1156;
                            L_1174.TextSize = 14;
                            L_1174.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1174.TextYAlignment = Enum.TextYAlignment.Center;
                            L_1174.RichText = true;
                            L_1174.AutomaticSize = Enum.AutomaticSize.Y;
                            L_1174.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1174.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1175.Name = "Background1";
                            L_1175.Parent = L_1170;
                            L_1175.Size = UDim2.new(1, 0, 1, 6);
                            L_1175.ZIndex = 0;
                            L_1175.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(L_639["Background 1 Color"], function()
                                L_1175.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            L_1175.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1175.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1176.CornerRadius = UDim.new(0, 4);
                            L_1176.Name = "ToggleCorner";
                            L_1176.Parent = L_1175;
                            L_1177.Name = "ToggleButton";
                            L_1177.Parent = L_1170;
                            L_1177.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1177.BackgroundTransparency = 1;
                            L_1177.Size = UDim2.new(1, 0, 1, 6);
                            L_1177.Font = Enum.Font.SourceSans;
                            L_1177.Text = "";
                            L_1177.TextColor3 = Color3.fromRGB(0, 0, 0);
                            L_1177.TextSize = 14;
                            L_1178.Name = "ToggleList";
                            L_1178.Parent = L_1169;
                            L_1178.HorizontalAlignment = Enum.HorizontalAlignment.Center;
                            L_1178.SortOrder = Enum.SortOrder.LayoutOrder;
                            L_1178.VerticalAlignment = Enum.VerticalAlignment.Center;
                            L_1178.Padding = UDim.new(0, 0);
                            local L_1193 = true;
                            local L_1194 = nil;
                            if L_1165 and #L_1166 > 0 then
                                L_1176.CornerRadius = UDim.new(0, 4);
                                L_1187.Name = "RequirementsContainer";
                                L_1187.Parent = L_1170;
                                L_1187.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                L_1187.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                L_1187.Size = UDim2.new(1, 0, 0, 0);
                                L_1187.AutomaticSize = Enum.AutomaticSize.Y;
                                L_1187.Position = UDim2.new(0, 0, 1, 4);
                                L_1187.ZIndex = 0;
                                table.insert(L_639["Background 1 Color"], function()
                                    L_1187.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                    return ;
                                end);
                                table.insert(L_639["Background 1 Transparency"], function()
                                    L_1187.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                    return ;
                                end);
                                local L_1195 = Instance.new("UICorner");
                                L_1195.CornerRadius = UDim.new(0, 4);
                                L_1195.Parent = L_1187;
                                L_1188.Name = "RequirementsInner";
                                L_1188.Parent = L_1187;
                                L_1188.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
                                L_1188.BackgroundTransparency = 0.85;
                                L_1188.Size = UDim2.new(1, -12, 0, 0);
                                L_1188.AutomaticSize = Enum.AutomaticSize.Y;
                                L_1188.Position = UDim2.new(0, 6, 0, 6);
                                L_1188.ZIndex = 1;
                                local L_1196 = Instance.new("UICorner");
                                L_1196.CornerRadius = UDim.new(0, 3);
                                L_1196.Parent = L_1188;
                                local L_1197 = Instance.new("UIPadding");
                                L_1197.PaddingTop = UDim.new(0, 6);
                                L_1197.PaddingBottom = UDim.new(0, 6);
                                L_1197.PaddingLeft = UDim.new(0, 8);
                                L_1197.PaddingRight = UDim.new(0, 8);
                                L_1197.Parent = L_1188;
                                local L_1198 = Instance.new("UIPadding");
                                L_1198.PaddingBottom = UDim.new(0, 6);
                                L_1198.Parent = L_1187;
                                L_1189.Name = "RequirementsLayout";
                                L_1189.Parent = L_1188;
                                L_1189.FillDirection = Enum.FillDirection.Vertical;
                                L_1189.HorizontalAlignment = Enum.HorizontalAlignment.Left;
                                L_1189.SortOrder = Enum.SortOrder.LayoutOrder;
                                L_1189.Padding = UDim.new(0, 4);
                                for L_1199, L_1200 in ipairs(L_1166) do
                                    local L_1201 = Instance.new(L_32);
                                    L_1201.Name = "Req_" .. L_1200;
                                    L_1201.Parent = L_1188;
                                    L_1201.BackgroundTransparency = 1;
                                    L_1201.Size = UDim2.new(1, 0, 0, 16);
                                    L_1201.LayoutOrder = L_1199;
                                    local L_1202 = Instance.new("ImageLabel");
                                    L_1202.Name = "Icon";
                                    L_1202.Parent = L_1201;
                                    L_1202.BackgroundTransparency = 1;
                                    L_1202.Size = UDim2.new(0, 14, 0, 14);
                                    L_1202.Position = UDim2.new(0, 0, 0.5, 0);
                                    L_1202.AnchorPoint = Vector2.new(0, 0.5);
                                    L_1202.Image = "rbxassetid://7072725342";
                                    L_1202.ImageColor3 = Color3.fromRGB(255, 85, 85);
                                    L_1202.ZIndex = 2;
                                    local L_1203 = Instance.new("TextLabel");
                                    L_1203.Name = "Text";
                                    L_1203.Parent = L_1201;
                                    L_1203.BackgroundTransparency = 1;
                                    L_1203.Size = UDim2.new(1, -22, 1, 0);
                                    L_1203.Position = UDim2.new(0, 20, 0, 0);
                                    L_1203.Font = Enum.Font.Gotham;
                                    L_1203.Text = L_1200;
                                    L_1203.TextSize = 11;
                                    L_1203.TextXAlignment = Enum.TextXAlignment.Left;
                                    L_1203.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                    L_1203.ZIndex = 2;
                                    table.insert(L_639["Toggle Desc Color"], function()
                                        L_1203.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                        return ;
                                    end);
                                    L_1190[L_1200] = { Frame = L_1201, Icon = L_1202, Text = L_1203, Met = false };
                                end;
                                local L_1208 = function()
                                    local L_1204 = true;
                                    for L_1205, L_1206 in pairs(L_1190) do
                                        local L_1207 = RequirementsTracker:Check(L_1205);
                                        L_1206.Met = L_1207;
                                        if L_1207 then
                                            L_1206.Icon.Image = "rbxassetid://7072706620";
                                            L_1206.Icon.ImageColor3 = Color3.fromRGB(85, 255, 127);
                                        else
                                            L_1206.Icon.Image = "rbxassetid://7072725342";
                                            L_1206.Icon.ImageColor3 = Color3.fromRGB(255, 85, 85);
                                            L_1204 = false;
                                        end;
                                    end;
                                    L_1193 = L_1204;
                                    if not L_1204 then
                                        L_1171.ImageTransparency = 0.5;
                                        L_1172.ImageTransparency = 0.5;
                                    else
                                        L_1171.ImageTransparency = 0;
                                        L_1172.ImageTransparency = 0;
                                    end;
                                    return ;
                                end;
                                L_1208();
                                L_1194 = task.spawn(function()
                                    while true do
                                        task.wait(L_1167);
                                        if not L_1169 or not L_1169.Parent then
                                            break;
                                        end;
                                        L_1208();
                                    end;
                                    return ;
                                end);
                            end;
                            local L_1209 = L_1160;
                            local L_1210 = false;
                            local L_1215 = function(L_1211)
                                if L_1165 and (#L_1166 > 0 and L_1211 and not L_1193) then
                                    return ;
                                end;
                                local L_1212 = L_1211 and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0);
                                local L_1213 = L_1211 and UDim2.new(0.5, 0, 0.5, 0) or UDim2.new(0, 0, 1, 0);
                                local L_1214 = L_1211 and Vector2.new(0.5, 0.5) or Vector2.new(0, 1);
                                game.TweenService:Create(L_1172, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Size = L_1212, Position = L_1213, AnchorPoint = L_1214 }):Play();
                                L_1168(L_1211);
                                return ;
                            end;
                            if L_1168 then
                                L_1215(L_1158);
                            end;
                            L_1177.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            L_1177.MouseButton1Down:Connect(function()
                                if L_1165 and (#L_1166 > 0 and not L_1158 and not L_1193) then
                                    return ;
                                end;
                                L_1158 = not L_1158;
                                L_1215(L_1158);
                                return ;
                            end);
                            if L_1159 then
                                local L_1216 = game:GetService("UserInputService");
                                L_1180.MouseButton1Click:Connect(function()
                                    if not L_1210 then
                                        L_1210 = true;
                                        L_1180.Text = "...";
                                        local L_1217 = nil;
                                        L_1217 = L_1216.InputBegan:Connect(function(L_1218, L_1219)
                                            if not L_1219 and L_1218.UserInputType == Enum.UserInputType.Keyboard then
                                                local L_1220 = L_1218.KeyCode.Name;
                                                L_1209 = L_1220;
                                                L_1180.Text = L_1220;
                                                L_1210 = false;
                                                L_1217:Disconnect();
                                            end;
                                            return ;
                                        end);
                                    end;
                                    return ;
                                end);
                                L_1216.InputBegan:Connect(function(L_1221, L_1222)
                                    if not L_1222 and (not L_1210 and L_1221.UserInputType == Enum.UserInputType.Keyboard and L_1209 and L_1221.KeyCode.Name == L_1209) then
                                        if L_1165 and #L_1166 > 0 and not L_1158 and not L_1193 then
                                            return ;
                                        end;
                                        L_1158 = not L_1158;
                                        L_1215(L_1158);
                                    end;
                                    return ;
                                end);
                            end;
                            local L_1229 = {
                                SetStage = function(L_1223)
                                    L_1215(L_1223);
                                    return ;
                                end,
                                SetKeybind = function(L_1224)
                                    if L_1159 then
                                        L_1209 = L_1224;
                                        L_1180.Text = L_1224 or "NONE";
                                    end;
                                    return ;
                                end,
                                GetKeybind = function()
                                    return L_1209;
                                end,
                                SetTextboxValue = function(L_1225)
                                    if L_1161 then
                                        L_1184.Text = L_1225;
                                    end;
                                    return ;
                                end,
                                GetTextboxValue = function()
                                    if L_1161 then
                                        return L_1184.Text;
                                    end;
                                    return nil;
                                end,
                                AreRequirementsMet = function()
                                    return L_1193;
                                end,
                                GetRequirements = function()
                                    local L_1226 = {};
                                    for L_1227, L_1228 in pairs(L_1190) do
                                        L_1226[L_1227] = L_1228.Met;
                                    end;
                                    return L_1226;
                                end,
                                Destroy = function()
                                    if L_1194 then
                                        task.cancel(L_1194);
                                    end;
                                    L_1169:Destroy();
                                    return ;
                                end
                            };
                            local L_1230 = L_626(L_1101, L_1145, L_1156);
                            L_622.Toggles[L_1230] = {
                                Get = function()
                                    return L_1158;
                                end,
                                Set = function(L_1231)
                                    local L_1232 = not not L_1231;
                                    if L_1158 == L_1232 then
                                        return ;
                                    end;
                                    if L_1165 and #L_1166 > 0 and L_1232 and not L_1193 then
                                        return ;
                                    end;
                                    L_1158 = L_1232;
                                    L_1215(L_1158);
                                    return ;
                                end
                            };
                            return L_1229;
                        end,
                        CreateAccountTable = function(L_1233, L_1234)
                            local L_1235 = tostring(L_1233.Title) or "Account Manager";
                            local L_1236 = L_1233.Default or {};
                            local L_1237 = L_1234 or function()
                                return ;
                            end;
                            local L_1238 = L_1233.EnableConfigBinding ~= false;
                            local L_1239 = L_1233.OnAccountSelect;
                            local L_1240 = L_626(L_1101, L_1145, L_1235);
                            local L_1241 = {};
                            if type(L_1236) == "table" then
                                for L_1242, L_1243 in pairs(L_1236) do
                                    if type(L_1243) == "table" then
                                        table.insert(L_1241, { username = L_1242, link = L_1243.link or "", config = L_1243.config or "" });
                                    else
                                        table.insert(L_1241, { username = L_1242, link = L_1243, config = "" });
                                    end;
                                end;
                            end;
                            local L_1244 = game:GetService("TweenService");
                            local L_1245 = getgenv().UIColor["Tween Animation 2 Speed"];
                            local L_1246 = Instance.new(L_32);
                            local L_1247 = Instance.new("UICorner");
                            L_1246.Name = L_1235 .. "_Wrapper";
                            L_1246.Parent = L_1147;
                            L_1246.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            L_1246.BackgroundTransparency = 1;
                            L_1246.Position = UDim2.new(0, 0, 0, 0);
                            L_1246.Size = UDim2.new(1, 0, 0, 280);
                            L_1246.ClipsDescendants = true;
                            local L_1248 = Instance.new(L_32);
                            local L_1249 = Instance.new("UICorner");
                            L_1248.Name = "Background1";
                            L_1248.Parent = L_1246;
                            L_1248.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1248.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1248.Size = UDim2.new(1, -10, 1, 0);
                            L_1248.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            L_1248.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Color"], function()
                                L_1248.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1248.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1249.CornerRadius = UDim.new(0, 4);
                            L_1249.Parent = L_1248;
                            local L_1250 = Instance.new("TextLabel");
                            local L_1251 = Instance.new("TextButton");
                            L_1250.Name = "Title";
                            L_1250.Parent = L_1248;
                            L_1250.BackgroundTransparency = 1;
                            L_1250.Position = UDim2.new(0, 10, 0, 5);
                            L_1250.Size = UDim2.new(1, -40, 0, 25);
                            L_1250.Font = Enum.Font.GothamBlack;
                            L_1250.Text = L_1235;
                            L_1250.TextSize = 14;
                            L_1250.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1250.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1250.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1251.Name = "Minimize";
                            L_1251.Parent = L_1248;
                            L_1251.BackgroundTransparency = 1;
                            L_1251.Position = UDim2.new(1, -30, 0, 5);
                            L_1251.Size = UDim2.new(0, 25, 0, 25);
                            L_1251.Font = Enum.Font.GothamBold;
                            L_1251.Text = "-";
                            L_1251.TextSize = 18;
                            L_1251.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1251.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            local L_1252 = Instance.new(L_32);
                            local L_1253 = Instance.new("UICorner");
                            L_1252.Name = "ContentArea";
                            L_1252.Parent = L_1248;
                            L_1252.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                            L_1252.Position = UDim2.new(0, 5, 0, 35);
                            L_1252.Size = UDim2.new(1, -10, 1, -40);
                            table.insert(L_639["Background 3 Color"], function()
                                L_1252.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                                return ;
                            end);
                            L_1253.CornerRadius = UDim.new(0, 4);
                            L_1253.Parent = L_1252;
                            local L_1254 = Instance.new("ScrollingFrame");
                            local L_1255 = Instance.new("UIListLayout");
                            L_1254.Name = "List";
                            L_1254.Parent = L_1252;
                            L_1254.Active = true;
                            L_1254.BackgroundTransparency = 1;
                            L_1254.BorderSizePixel = 0;
                            L_1254.Position = UDim2.new(0, 5, 0, 5);
                            L_1254.Size = UDim2.new(1, -10, 1, -80);
                            L_1254.ScrollBarThickness = 2;
                            L_1254.CanvasSize = UDim2.new(0, 0, 0, 0);
                            L_1254.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
                            L_1254.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
                            L_1255.Parent = L_1254;
                            L_1255.SortOrder = Enum.SortOrder.LayoutOrder;
                            L_1255.Padding = UDim.new(0, 4);
                            L_1255:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                                L_1254.CanvasSize = UDim2.new(0, 0, 0, L_1255.AbsoluteContentSize.Y + 5);
                                return ;
                            end);
                            local L_1256 = Instance.new(L_32);
                            L_1256.Parent = L_1252;
                            L_1256.BackgroundTransparency = 1;
                            L_1256.AnchorPoint = Vector2.new(0, 1);
                            L_1256.Position = UDim2.new(0, 5, 1, -5);
                            L_1256.Size = UDim2.new(1, -10, 0, 65);
                            local L_1265 = function(L_1257, L_1258, L_1259, L_1260)
                                local L_1261 = Instance.new(L_32);
                                local L_1262 = Instance.new("UICorner");
                                local L_1263 = Instance.new("TextBox");
                                local L_1264 = Instance.new(L_32);
                                L_1261.Name = L_1257 .. L_32;
                                L_1261.Parent = L_1256;
                                L_1261.BackgroundColor3 = getgenv().UIColor["Background Main Color"];
                                L_1261.Position = L_1259;
                                L_1261.Size = L_1260;
                                table.insert(L_639["Background Main Color"], function()
                                    L_1261.BackgroundColor3 = getgenv().UIColor["Background Main Color"];
                                    return ;
                                end);
                                L_1262.CornerRadius = UDim.new(0, 4);
                                L_1262.Parent = L_1261;
                                L_1263.Parent = L_1261;
                                L_1263.BackgroundTransparency = 1;
                                L_1263.Size = UDim2.new(1, -10, 1, 0);
                                L_1263.Position = UDim2.new(0, 5, 0, 0);
                                L_1263.Font = Enum.Font.GothamBold;
                                L_1263.Text = "";
                                L_1263.PlaceholderText = L_1258;
                                L_1263.TextSize = 12;
                                L_1263.TextXAlignment = Enum.TextXAlignment.Left;
                                L_1263.TextColor3 = getgenv().UIColor[L_34];
                                L_1263.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                table.insert(L_639[L_34], function()
                                    L_1263.TextColor3 = getgenv().UIColor[L_34];
                                    return ;
                                end);
                                table.insert(L_639["Placeholder Text Color"], function()
                                    L_1263.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                    return ;
                                end);
                                L_1264.Parent = L_1261;
                                L_1264.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"];
                                L_1264.BackgroundTransparency = 1;
                                L_1264.Position = UDim2.new(0, 0, 1, -2);
                                L_1264.Size = UDim2.new(1, 0, 0, 2);
                                table.insert(L_639["Box Highlight Color"], function()
                                    L_1264.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"];
                                    return ;
                                end);
                                L_1263.Focused:Connect(function()
                                    L_732.ButtonEffect();
                                    L_1244:Create(L_1264, TweenInfo.new(0.3), { BackgroundTransparency = 0 }):Play();
                                    return ;
                                end);
                                L_1263.FocusLost:Connect(function()
                                    L_1244:Create(L_1264, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play();
                                    return ;
                                end);
                                return L_1263;
                            end;
                            local L_1266 = L_1265("User", "Username", UDim2.new(0, 0, 0, 0), UDim2.new(0.35, 0, 0, 30));
                            local L_1267 = L_1265("Link", "PS Code", UDim2.new(0.35, 5, 0, 0), UDim2.new(0.65, -45, 0, 30));
                            local L_1268 = L_1265("Config", "Config Name (optional)", UDim2.new(0, 0, 0, 35), UDim2.new(1, -45, 0, 30));
                            local L_1269 = Instance.new("TextButton");
                            local L_1270 = Instance.new("UICorner");
                            L_1269.Name = "AddBtn";
                            L_1269.Parent = L_1256;
                            L_1269.AnchorPoint = Vector2.new(1, 0);
                            L_1269.Position = UDim2.new(1, 0, 0, 0);
                            L_1269.Size = UDim2.new(0, 35, 0, 65);
                            L_1269.BackgroundColor3 = getgenv().UIColor["Button Color"];
                            L_1269.Text = "+";
                            L_1269.Font = Enum.Font.GothamBold;
                            L_1269.TextSize = 18;
                            L_1269.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639["Button Color"], function()
                                L_1269.BackgroundColor3 = getgenv().UIColor["Button Color"];
                                return ;
                            end);
                            table.insert(L_639[L_34], function()
                                L_1269.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1270.CornerRadius = UDim.new(0, 4);
                            L_1270.Parent = L_1269;
                            L_1269.MouseEnter:Connect(function()
                                L_1244:Create(L_1269, TweenInfo.new(0.2), { BackgroundTransparency = 0.2 }):Play();
                                return ;
                            end);
                            L_1269.MouseLeave:Connect(function()
                                L_1244:Create(L_1269, TweenInfo.new(0.2), { BackgroundTransparency = 0 }):Play();
                                return ;
                            end);
                            local L_1291 = function(L_1271, L_1272, L_1273, L_1274)
                                local L_1275 = Instance.new(L_32);
                                local L_1276 = Instance.new("UICorner");
                                local L_1277 = Instance.new("TextLabel");
                                local L_1278 = Instance.new("TextLabel");
                                local L_1279 = Instance.new("TextLabel");
                                local L_1280 = Instance.new("TextButton");
                                local L_1281 = Instance.new("UICorner");
                                local L_1282 = Instance.new("TextButton");
                                local L_1283 = Instance.new("UICorner");
                                L_1275.Name = L_1271;
                                L_1275.Parent = L_1254;
                                L_1275.LayoutOrder = L_1274;
                                L_1275.Size = UDim2.new(1, 0, 0, 50);
                                L_1275.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                table.insert(L_639["Background 1 Color"], function()
                                    L_1275.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                    return ;
                                end);
                                L_1276.CornerRadius = UDim.new(0, 4);
                                L_1276.Parent = L_1275;
                                L_1277.Parent = L_1275;
                                L_1277.BackgroundTransparency = 1;
                                L_1277.Position = UDim2.new(0, 8, 0, 4);
                                L_1277.Size = UDim2.new(1, -80, 0, 16);
                                L_1277.Font = Enum.Font.GothamBold;
                                L_1277.Text = L_1271;
                                L_1277.TextSize = 13;
                                L_1277.TextXAlignment = Enum.TextXAlignment.Left;
                                L_1277.TextColor3 = getgenv().UIColor[L_34];
                                table.insert(L_639[L_34], function()
                                    L_1277.TextColor3 = getgenv().UIColor[L_34];
                                    return ;
                                end);
                                L_1278.Parent = L_1275;
                                L_1278.BackgroundTransparency = 1;
                                L_1278.Position = UDim2.new(0, 8, 0, 20);
                                L_1278.Size = UDim2.new(0.5, -10, 0, 14);
                                L_1278.Font = Enum.Font.Gotham;
                                L_1278.Text = L_1272 and L_1272 ~= "" and "PS: " .. L_1272 or "No PS Code";
                                L_1278.TextSize = 10;
                                L_1278.TextXAlignment = Enum.TextXAlignment.Left;
                                L_1278.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                table.insert(L_639["Toggle Desc Color"], function()
                                    L_1278.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                    return ;
                                end);
                                L_1279.Parent = L_1275;
                                L_1279.BackgroundTransparency = 1;
                                L_1279.Position = UDim2.new(0, 8, 0, 34);
                                L_1279.Size = UDim2.new(0.6, -10, 0, 14);
                                L_1279.Font = Enum.Font.Gotham;
                                L_1279.Text = L_1273 and L_1273 ~= "" and "Config: " .. L_1273 or "No Config";
                                L_1279.TextSize = 10;
                                L_1279.TextXAlignment = Enum.TextXAlignment.Left;
                                L_1279.TextColor3 = L_1273 and L_1273 ~= "" and Color3.fromRGB(100, 200, 100) or getgenv().UIColor["Toggle Desc Color"];
                                if L_1238 and (L_1273 and L_1273 ~= "") then
                                    L_1282.Parent = L_1275;
                                    L_1282.AnchorPoint = Vector2.new(1, 0.5);
                                    L_1282.Position = UDim2.new(1, -40, 0.5, 0);
                                    L_1282.Size = UDim2.new(0, 30, 0, 30);
                                    L_1282.BackgroundColor3 = Color3.fromRGB(60, 140, 60);
                                    L_1282.Text = "+";
                                    L_1282.Font = Enum.Font.GothamBold;
                                    L_1282.TextSize = 16;
                                    L_1282.TextColor3 = Color3.fromRGB(255, 255, 255);
                                    L_1283.CornerRadius = UDim.new(0, 4);
                                    L_1283.Parent = L_1282;
                                    L_1282.MouseEnter:Connect(function()
                                        L_1244:Create(L_1282, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(80, 180, 80) }):Play();
                                        return ;
                                    end);
                                    L_1282.MouseLeave:Connect(function()
                                        L_1244:Create(L_1282, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(60, 140, 60) }):Play();
                                        return ;
                                    end);
                                    L_1282.MouseButton1Click:Connect(function()
                                        L_732.ButtonEffect();
                                        if getgenv().FeralConfig and getgenv().FeralConfig.Load then
                                            local L_1284, L_1285 = getgenv().FeralConfig.Load(L_1273);
                                            if L_1284 then
                                                if L_731 and L_731.CreateNoti then
                                                    L_731.CreateNoti({ Title = "Config", Desc = "Loaded \"" .. L_1273 .. "\" for " .. L_1271, ShowTime = 4 });
                                                end;
                                            elseif L_731 and L_731.CreateNoti then
                                                L_731.CreateNoti({ Title = "Config", Desc = "Failed to load: " .. tostring(L_1285), ShowTime = 4 });
                                            end;
                                        end;
                                        if L_1239 then
                                            L_1239(L_1271, L_1272, L_1273);
                                        end;
                                        return ;
                                    end);
                                end;
                                L_1280.Parent = L_1275;
                                L_1280.AnchorPoint = Vector2.new(1, 0.5);
                                L_1280.Position = UDim2.new(1, -5, 0.5, 0);
                                L_1280.Size = UDim2.new(0, 30, 0, 30);
                                L_1280.BackgroundColor3 = Color3.fromRGB(200, 60, 60);
                                L_1280.Text = "X";
                                L_1280.Font = Enum.Font.GothamBold;
                                L_1280.TextSize = 14;
                                L_1280.TextColor3 = Color3.fromRGB(255, 255, 255);
                                L_1281.CornerRadius = UDim.new(0, 4);
                                L_1281.Parent = L_1280;
                                L_1280.MouseEnter:Connect(function()
                                    L_1244:Create(L_1280, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(230, 80, 80) }):Play();
                                    return ;
                                end);
                                L_1280.MouseLeave:Connect(function()
                                    L_1244:Create(L_1280, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(200, 60, 60) }):Play();
                                    return ;
                                end);
                                L_1280.MouseButton1Click:Connect(function()
                                    L_732.ButtonEffect();
                                    L_1275:Destroy();
                                    for L_1286, L_1287 in ipairs(L_1241) do
                                        if L_1287.username == L_1271 then
                                            table.remove(L_1241, L_1286);
                                            break;
                                        end;
                                    end;
                                    local L_1288 = {};
                                    for L_1289, L_1290 in ipairs(L_1241) do
                                        L_1288[L_1290.username] = { link = L_1290.link, config = L_1290.config };
                                    end;
                                    L_1237(L_1288);
                                    return ;
                                end);
                                return ;
                            end;
                            local L_1298 = function()
                                for L_1292, L_1293 in pairs(L_1254:GetChildren()) do
                                    if L_1293:IsA(L_32) then
                                        L_1293:Destroy();
                                    end;
                                end;
                                table.sort(L_1241, function(L_1294, L_1295)
                                    return L_1294.username:lower() < L_1295.username:lower();
                                end);
                                for L_1296, L_1297 in ipairs(L_1241) do
                                    L_1291(L_1297.username, L_1297.link, L_1297.config, L_1296);
                                end;
                                return ;
                            end;
                            L_1269.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                local L_1299 = L_1266.Text;
                                local L_1300 = L_1267.Text;
                                local L_1301 = L_1268.Text;
                                if L_1299:gsub(" ", "") ~= "" then
                                    for L_1302, L_1303 in ipairs(L_1241) do
                                        if L_1303.username == L_1299 then
                                            return ;
                                        end;
                                    end;
                                    table.insert(L_1241, { username = L_1299, link = L_1300, config = L_1301 });
                                    L_1298();
                                    L_1266.Text = "";
                                    L_1267.Text = "";
                                    L_1268.Text = "";
                                    local L_1304 = {};
                                    for L_1305, L_1306 in ipairs(L_1241) do
                                        L_1304[L_1306.username] = { link = L_1306.link, config = L_1306.config };
                                    end;
                                    L_1237(L_1304);
                                end;
                                return ;
                            end);
                            local L_1307 = false;
                            local L_1308 = UDim2.new(1, 0, 0, 280);
                            local L_1309 = UDim2.new(1, 0, 0, 35);
                            L_1251.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                L_1307 = not L_1307;
                                L_1251.Text = L_1307 and "+" or "-";
                                local L_1310 = L_1307 and L_1309 or L_1308;
                                L_1244:Create(L_1246, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = L_1310 }):Play();
                                if L_1307 then
                                    L_1252.Visible = false;
                                else
                                    L_1252.Visible = true;
                                end;
                                return ;
                            end);
                            L_1251.MouseEnter:Connect(function()
                                L_1244:Create(L_1251, TweenInfo.new(0.2), { TextColor3 = getgenv().UIColor["Button Color"] }):Play();
                                return ;
                            end);
                            L_1251.MouseLeave:Connect(function()
                                L_1244:Create(L_1251, TweenInfo.new(0.2), { TextColor3 = getgenv().UIColor[L_34] }):Play();
                                return ;
                            end);
                            L_1298();
                            if L_1238 then
                                task.spawn(function()
                                    task.wait(0.5);
                                    local L_1311 = game:GetService("Players").LocalPlayer;
                                    if L_1311 then
                                        for L_1312, L_1313 in ipairs(L_1241) do
                                            if L_1313.username == L_1311.Name and L_1313.config and L_1313.config ~= "" then
                                                if getgenv().FeralConfig and getgenv().FeralConfig.Load then
                                                    local L_1314, L_1315 = getgenv().FeralConfig.Load(L_1313.config);
                                                    if L_1314 and L_731 and L_731.CreateNoti then
                                                        L_731.CreateNoti({ Title = "Config", Desc = "Auto-loaded \"" .. L_1313.config .. "\" for " .. L_1313.username, ShowTime = 4 });
                                                    end;
                                                end;
                                                return ;
                                            end;
                                        end;
                                    end;
                                    return ;
                                end);
                            end;
                            L_622.Toggles[L_1240] = {
                                Get = function()
                                    local L_1316 = {};
                                    for L_1317, L_1318 in ipairs(L_1241) do
                                        L_1316[L_1318.username] = { link = L_1318.link, config = L_1318.config };
                                    end;
                                    return L_1316;
                                end,
                                Set = function(L_1319)
                                    if type(L_1319) == "table" then
                                        L_1241 = {};
                                        for L_1320, L_1321 in pairs(L_1319) do
                                            if type(L_1321) == "table" then
                                                table.insert(L_1241, { username = L_1320, link = L_1321.link or "", config = L_1321.config or "" });
                                            else
                                                table.insert(L_1241, { username = L_1320, link = L_1321, config = "" });
                                            end;
                                        end;
                                        L_1298();
                                    end;
                                    return ;
                                end
                            };
                            return {
                                Add = function(L_1322, L_1323, L_1324)
                                    table.insert(L_1241, { username = L_1322, link = L_1323, config = L_1324 or "" });
                                    L_1298();
                                    return ;
                                end,
                                Get = function()
                                    return L_1241;
                                end,
                                GetAccountConfig = function(L_1325)
                                    for L_1326, L_1327 in ipairs(L_1241) do
                                        if L_1327.username == L_1325 then
                                            return L_1327.config;
                                        end;
                                    end;
                                    return nil;
                                end,
                                LoadConfigForCurrentPlayer = function()
                                    local L_1328 = game:GetService("Players").LocalPlayer;
                                    if L_1328 then
                                        for L_1329, L_1330 in ipairs(L_1241) do
                                            if L_1330.username == L_1328.Name and L_1330.config and L_1330.config ~= "" and getgenv().FeralConfig and getgenv().FeralConfig.Load then
                                                return getgenv().FeralConfig.Load(L_1330.config);
                                            end;
                                        end;
                                    end;
                                    return false, "No config found for current player";
                                end
                            };
                        end,
                        CreateButton = function(L_1331, L_1332)
                            local L_1333 = L_1331.Title;
                            local L_1334 = L_1332 or function()
                                return ;
                            end;
                            local L_1335 = Instance.new(L_32);
                            local L_1336 = Instance.new(L_32);
                            local L_1337 = Instance.new("UICorner");
                            local L_1338 = Instance.new("TextLabel");
                            local L_1339 = Instance.new("TextButton");
                            L_1335.Name = L_1333 .. "dot";
                            L_1335.Parent = L_1147;
                            L_1335.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1335.BackgroundTransparency = 1;
                            L_1335.Position = UDim2.new(0, 0, 0.300000012, 0);
                            L_1335.Size = UDim2.new(1, 0, 0, 25);
                            L_1336.Name = "ButtonBG";
                            L_1336.Parent = L_1335;
                            L_1336.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1336.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1336.Size = UDim2.new(1, -10, 1, 0);
                            L_1336.BackgroundColor3 = getgenv().UIColor["Button Color"];
                            table.insert(L_639["Button Color"], function()
                                L_1336.BackgroundColor3 = getgenv().UIColor["Button Color"];
                                return ;
                            end);
                            L_1336.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1336.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1337.CornerRadius = UDim.new(0, 4);
                            L_1337.Name = "ButtonCorner";
                            L_1337.Parent = L_1336;
                            L_1338.Name = "TextColor";
                            L_1338.Parent = L_1336;
                            L_1338.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1338.BackgroundTransparency = 1;
                            L_1338.Position = UDim2.new(0, 10, 0, 0);
                            L_1338.Size = UDim2.new(1, -10, 1, 0);
                            L_1338.Font = Enum.Font.GothamBlack;
                            L_1338.Text = L_1333;
                            L_1338.TextSize = 14;
                            L_1338.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1338.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1338.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1339.Name = "Button";
                            L_1339.Parent = L_1336;
                            L_1339.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1339.BackgroundTransparency = 1;
                            L_1339.Size = UDim2.new(1, 0, 1, 0);
                            L_1339.Font = Enum.Font.SourceSans;
                            L_1339.Text = "";
                            L_1339.TextColor3 = Color3.fromRGB(0, 0, 0);
                            L_1339.TextSize = 14;
                            L_1339.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            L_1339.MouseButton1Down:Connect(function()
                                L_1334();
                                return ;
                            end);
                            return ;
                        end,
                        CreateLabel = function(L_1340)
                            local L_1341 = tostring(L_1340.Title);
                            local L_1342 = Instance.new(L_32);
                            local L_1343 = Instance.new(L_32);
                            local L_1344 = Instance.new("UICorner");
                            local L_1345 = Instance.new("TextLabel");
                            L_1342.Name = "LabelFrame";
                            L_1342.Parent = L_1147;
                            L_1342.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1342.BackgroundTransparency = 1;
                            L_1342.Position = UDim2.new(0, 0, 0, 0);
                            L_1342.Size = UDim2.new(1, 0, 0, 0);
                            L_1342.AutomaticSize = Enum.AutomaticSize.Y;
                            L_1343.Name = "LabelBG";
                            L_1343.Parent = L_1342;
                            L_1343.AnchorPoint = Vector2.new(0.5, 0);
                            L_1343.Position = UDim2.new(0.5, 0, 0, 0);
                            L_1343.Size = UDim2.new(1, -10, 0, -10);
                            L_1343.BackgroundColor3 = getgenv().UIColor["Label Color"];
                            L_1343.AutomaticSize = Enum.AutomaticSize.Y;
                            table.insert(L_639["Label Color"], function()
                                L_1343.BackgroundColor3 = getgenv().UIColor["Label Color"];
                                return ;
                            end);
                            L_1343.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1343.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1344.CornerRadius = UDim.new(0, 4);
                            L_1344.Name = "LabelCorner";
                            L_1344.Parent = L_1343;
                            L_1345.Name = "TextColor";
                            L_1345.Parent = L_1343;
                            L_1345.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1345.BackgroundTransparency = 1;
                            L_1345.Position = UDim2.new(0, 10, 0, 3);
                            L_1345.Size = UDim2.new(1, -20, 1, 0);
                            L_1345.Font = Enum.Font.GothamBlack;
                            L_1345.Text = L_1341;
                            L_1345.TextSize = 14;
                            L_1345.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1345.AutomaticSize = Enum.AutomaticSize.Y;
                            L_1345.TextWrapped = true;
                            L_1345.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1345.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            return {
                                SetText = function(L_1346)
                                    L_1345.Text = L_1346;
                                    return ;
                                end,
                                SetColor = function(L_1347)
                                    L_1345.TextColor3 = L_1347;
                                    return ;
                                end
                            };
                        end,
                        CreateDropdown = function(L_1348, L_1349)
                            local L_1350 = tostring(L_1348.Title);
                            local L_1351 = L_1348.List or {};
                            local L_1352 = L_1348.Search or false;
                            local L_1353 = L_1348.Selected or false;
                            local L_1354 = L_1348.Default;
                            local L_1355 = L_1349 or function()
                                return ;
                            end;
                            local L_1360 = function(L_1356)
                                if type(L_1356) ~= "table" then
                                    return false;
                                end;
                                local L_1357 = 0;
                                for L_1358, L_1359 in pairs(L_1356) do
                                    if type(L_1358) ~= "number" then
                                        return false;
                                    end;
                                    L_1357 = L_1357 + 1;
                                end;
                                return L_1357 == #L_1356;
                            end;
                            local L_1361 = Instance.new(L_32);
                            local L_1362 = Instance.new(L_32);
                            local L_1363 = Instance.new("UICorner");
                            local L_1364 = Instance.new(L_32);
                            local L_1365 = Instance.new("UICorner");
                            local L_1366 = Instance.new("ImageLabel");
                            local L_1367 = Instance.new("TextButton");
                            local L_1368 = Instance.new(L_32);
                            local L_1369 = Instance.new("ScrollingFrame");
                            local L_1370 = Instance.new(L_32);
                            local L_1371 = Instance.new("UIListLayout");
                            local L_1372;
                            if L_1352 then
                                L_1372 = Instance.new("TextBox");
                                L_1367.Visible = false;
                            else
                                L_1372 = Instance.new("TextLabel");
                            end;
                            L_1361.Name = L_1350 .. "DropdownFrame";
                            L_1361.Parent = L_1147;
                            L_1361.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1361.BackgroundTransparency = 1;
                            L_1361.Position = UDim2.new(0, 0, 0.473684222, 0);
                            L_1361.Size = UDim2.new(1, 0, 0, 25);
                            L_1362.Name = "Background1";
                            L_1362.Parent = L_1361;
                            L_1362.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1362.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1362.Size = UDim2.new(1, -10, 1, 0);
                            L_1362.ClipsDescendants = true;
                            L_1362.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(L_639["Background 1 Color"], function()
                                L_1362.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            L_1362.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1362.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1363.CornerRadius = UDim.new(0, 4);
                            L_1363.Name = "Dropdowncorner";
                            L_1363.Parent = L_1362;
                            L_1364.Name = "Background2";
                            L_1364.Parent = L_1362;
                            L_1364.Size = UDim2.new(1, 0, 0, 25);
                            L_1364.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(L_639["Background 2 Color"], function()
                                L_1364.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            L_1364.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1364.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1365.CornerRadius = UDim.new(0, 4);
                            L_1365.Parent = L_1364;
                            L_1372.Name = "TextColorPlaceholder";
                            L_1372.Parent = L_1364;
                            L_1372.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1372.BackgroundTransparency = 1;
                            L_1372.Position = UDim2.new(0, 10, 0, 0);
                            L_1372.Size = UDim2.new(1, -40, 1, 0);
                            L_1372.Font = Enum.Font.GothamBlack;
                            L_1372.Text = "";
                            L_1372.TextSize = 14;
                            L_1372.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1372.ClipsDescendants = true;
                            L_1372.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1372.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            if L_1352 then
                                L_1372.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                table.insert(L_639["Placeholder Text Color"], function()
                                    L_1372.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                    return ;
                                end);
                            end;
                            L_1366.Name = "ImgDrop";
                            L_1366.Parent = L_1364;
                            L_1366.AnchorPoint = Vector2.new(1, 0.5);
                            L_1366.BackgroundTransparency = 1;
                            L_1366.Position = UDim2.new(1, -6, 0.5, 0);
                            L_1366.Size = UDim2.new(0, 15, 0, 15);
                            L_1366.Image = "rbxassetid://6954383209";
                            L_1366.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"];
                            table.insert(L_639["Dropdown Icon Color"], function()
                                L_1366.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"];
                                return ;
                            end);
                            L_1367.Name = "DropdownButton";
                            L_1367.Parent = L_1364;
                            L_1367.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1367.BackgroundTransparency = 1;
                            L_1367.Size = UDim2.new(1, 0, 1, 0);
                            L_1367.Font = Enum.Font.GothamBold;
                            L_1367.Text = "";
                            L_1367.TextColor3 = Color3.fromRGB(230, 230, 230);
                            L_1367.TextSize = 14;
                            L_1368.Name = "Dropdownlisttt";
                            L_1368.Parent = L_1362;
                            L_1368.BackgroundTransparency = 1;
                            L_1368.BorderSizePixel = 0;
                            L_1368.Position = UDim2.new(0, 0, 0, 25);
                            L_1368.Size = UDim2.new(1, 0, 0, 25);
                            L_1369.Name = "DropdownScroll";
                            L_1369.Parent = L_1368;
                            L_1369.Active = true;
                            L_1369.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1369.BackgroundTransparency = 1;
                            L_1369.BorderSizePixel = 0;
                            L_1369.Size = UDim2.new(1, 0, 1, 0);
                            L_1369.ScrollBarThickness = 5;
                            L_1370.Name = "ScrollContainer";
                            L_1370.Parent = L_1369;
                            L_1370.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1370.BackgroundTransparency = 1;
                            L_1370.Position = UDim2.new(0, 5, 0, 5);
                            L_1370.Size = UDim2.new(1, -15, 1, -5);
                            L_1371.Name = "ScrollContainerList";
                            L_1371.Parent = L_1370;
                            L_1371.SortOrder = Enum.SortOrder.LayoutOrder;
                            L_1371:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                                L_1369.CanvasSize = UDim2.new(0, 0, 0, 10 + L_1371.AbsoluteContentSize.Y + 5);
                                return ;
                            end);
                            local L_1373 = false;
                            local L_1374 = {};
                            local L_1375 = {};
                            local L_1376 = L_1351;
                            local L_1377 = nil;
                            if L_1353 then
                                if L_1360(L_1376) then
                                    local L_1378 = {};
                                    for L_1379, L_1380 in ipairs(L_1376) do
                                        L_1378[L_1380] = false;
                                    end;
                                    L_1376 = L_1378;
                                else
                                    for L_1381, L_1382 in pairs(L_1376) do
                                        L_1376[L_1381] = not not L_1382;
                                    end;
                                end;
                            end;
                            local L_1383;
                            L_1383 = function()
                                for L_1384, L_1385 in ipairs(L_1370:GetChildren()) do
                                    if L_1385:IsA(L_32) then
                                        L_1385:Destroy();
                                    end;
                                end;
                                L_1375 = {};
                                if not L_1353 then
                                    for L_1386, L_1387 in ipairs(L_1376) do
                                        local L_1388 = tostring(L_1387);
                                        local L_1389 = L_1388:lower();
                                        table.insert(L_1375, L_1389);
                                        local L_1390 = Instance.new(L_32);
                                        local L_1391 = Instance.new("UICorner");
                                        local L_1392 = Instance.new(L_32);
                                        local L_1393 = Instance.new(L_32);
                                        local L_1394 = Instance.new("UICorner");
                                        local L_1395 = Instance.new(L_32);
                                        local L_1396 = Instance.new("TextButton");
                                        L_1390.Name = L_1389;
                                        L_1390.Parent = L_1370;
                                        L_1390.BackgroundTransparency = 1;
                                        L_1390.Size = UDim2.new(1, 0, 0, 25);
                                        L_1391.CornerRadius = UDim.new(0, 4);
                                        L_1391.Parent = L_1390;
                                        L_1392.Name = "Line";
                                        L_1392.Parent = L_1390;
                                        L_1392.AnchorPoint = Vector2.new(0, 0.5);
                                        L_1392.BackgroundTransparency = 1;
                                        L_1392.Position = UDim2.new(0, 0, 0.5, 0);
                                        L_1392.Size = UDim2.new(0, 14, 1, 0);
                                        L_1393.Name = "InLine";
                                        L_1393.Parent = L_1392;
                                        L_1393.AnchorPoint = Vector2.new(0.5, 0.5);
                                        L_1393.BorderSizePixel = 0;
                                        L_1393.Position = UDim2.new(0.5, 0, 0.5, 0);
                                        L_1393.Size = UDim2.new(1, -10, 1, -10);
                                        L_1393.BackgroundTransparency = L_1377 == L_1388 and 0 or 1;
                                        L_1393.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"];
                                        table.insert(L_639["Dropdown Selected Color"], function()
                                            L_1393.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"];
                                            return ;
                                        end);
                                        L_1394.CornerRadius = UDim.new(0, 4);
                                        L_1394.Parent = L_1393;
                                        L_1395.Name = "Dropvalcontainer";
                                        L_1395.Parent = L_1390;
                                        L_1395.BackgroundTransparency = 1;
                                        L_1395.Position = UDim2.new(0, 15, 0, 0);
                                        L_1395.Size = UDim2.new(1, -15, 1, 0);
                                        L_1396.Name = "TextColor";
                                        L_1396.Parent = L_1395;
                                        L_1396.BackgroundTransparency = 1;
                                        L_1396.Size = UDim2.new(1, 0, 1, 0);
                                        L_1396.Font = Enum.Font.GothamBold;
                                        L_1396.Text = L_1388;
                                        L_1396.TextSize = 14;
                                        L_1396.TextXAlignment = Enum.TextXAlignment.Left;
                                        L_1396.TextColor3 = getgenv().UIColor[L_34];
                                        table.insert(L_639[L_34], function()
                                            L_1396.TextColor3 = getgenv().UIColor[L_34];
                                            return ;
                                        end);
                                        L_1396.MouseButton1Click:Connect(function()
                                            L_732.ButtonEffect();
                                            L_1377 = L_1388;
                                            if L_1352 then
                                                L_1372.PlaceholderText = L_1350 .. ": " .. L_1388;
                                            else
                                                L_1372.Text = L_1350 .. ": " .. L_1388;
                                            end;
                                            L_1383();
                                            pcall(L_1355, L_1388);
                                            return ;
                                        end);
                                    end;
                                else
                                    for L_1397, L_1398 in pairs(L_1376) do
                                        local L_1399 = tostring(L_1397);
                                        local L_1400 = L_1399:lower();
                                        table.insert(L_1375, L_1400);
                                        local L_1401 = Instance.new(L_32);
                                        local L_1402 = Instance.new("UICorner");
                                        local L_1403 = Instance.new(L_32);
                                        local L_1404 = Instance.new(L_32);
                                        local L_1405 = Instance.new("UICorner");
                                        local L_1406 = Instance.new(L_32);
                                        local L_1407 = Instance.new("TextButton");
                                        L_1401.Name = L_1400;
                                        L_1401.Parent = L_1370;
                                        L_1401.BackgroundTransparency = 1;
                                        L_1401.Size = UDim2.new(1, 0, 0, 25);
                                        L_1402.CornerRadius = UDim.new(0, 4);
                                        L_1402.Parent = L_1401;
                                        L_1403.Name = "Line";
                                        L_1403.Parent = L_1401;
                                        L_1403.AnchorPoint = Vector2.new(0, 0.5);
                                        L_1403.BackgroundTransparency = 1;
                                        L_1403.Position = UDim2.new(0, 0, 0.5, 0);
                                        L_1403.Size = UDim2.new(0, 14, 1, 0);
                                        L_1404.Name = "InLine";
                                        L_1404.Parent = L_1403;
                                        L_1404.AnchorPoint = Vector2.new(0.5, 0.5);
                                        L_1404.BorderSizePixel = 0;
                                        L_1404.Position = UDim2.new(0.5, 0, 0.5, 0);
                                        L_1404.Size = UDim2.new(1, -10, 1, -10);
                                        L_1404.BackgroundTransparency = L_1398 and 0 or 1;
                                        L_1404.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"];
                                        table.insert(L_639["Dropdown Selected Color"], function()
                                            L_1404.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"];
                                            return ;
                                        end);
                                        L_1405.CornerRadius = UDim.new(0, 4);
                                        L_1405.Parent = L_1404;
                                        L_1406.Name = "Dropvalcontainer";
                                        L_1406.Parent = L_1401;
                                        L_1406.BackgroundTransparency = 1;
                                        L_1406.Position = UDim2.new(0, 15, 0, 0);
                                        L_1406.Size = UDim2.new(1, -15, 1, 0);
                                        L_1407.Name = "TextColor";
                                        L_1407.Parent = L_1406;
                                        L_1407.BackgroundTransparency = 1;
                                        L_1407.Size = UDim2.new(1, 0, 1, 0);
                                        L_1407.Font = Enum.Font.GothamBold;
                                        L_1407.Text = L_1399;
                                        L_1407.TextSize = 14;
                                        L_1407.TextXAlignment = Enum.TextXAlignment.Left;
                                        L_1407.TextColor3 = getgenv().UIColor[L_34];
                                        table.insert(L_639[L_34], function()
                                            L_1407.TextColor3 = getgenv().UIColor[L_34];
                                            return ;
                                        end);
                                        L_1407.MouseButton1Click:Connect(function()
                                            L_732.ButtonEffect();
                                            L_1376[L_1397] = not L_1376[L_1397];
                                            L_1404.BackgroundTransparency = L_1376[L_1397] and 0 or 1;
                                            pcall(L_1355, L_1397, L_1376[L_1397]);
                                            return ;
                                        end);
                                    end;
                                end;
                                return ;
                            end;
                            if not L_1353 then
                                if L_1354 ~= nil then
                                    local L_1408 = tostring(L_1354);
                                    L_1377 = L_1408;
                                    if L_1352 then
                                        L_1372.PlaceholderText = L_1350 .. ": " .. L_1408;
                                    else
                                        L_1372.Text = L_1350 .. ": " .. L_1408;
                                    end;
                                    pcall(L_1355, L_1408);
                                elseif L_1352 then
                                    L_1372.PlaceholderText = L_1350 .. ": ";
                                else
                                    L_1372.Text = L_1350 .. ": ";
                                end;
                            else
                                if type(L_1354) == "table" then
                                    if L_1360(L_1354) then
                                        for L_1409, L_1410 in ipairs(L_1354) do
                                            if L_1376[L_1410] ~= nil then
                                                L_1376[L_1410] = true;
                                                pcall(L_1355, L_1410, true);
                                            end;
                                        end;
                                    else
                                        for L_1411, L_1412 in pairs(L_1354) do
                                            if L_1376[L_1411] ~= nil then
                                                L_1376[L_1411] = not not L_1412;
                                                pcall(L_1355, L_1411, L_1376[L_1411]);
                                            end;
                                        end;
                                    end;
                                end;
                                L_1372.Text = L_1350 .. ": ";
                            end;
                            L_1383();
                            if L_1352 then
                                L_1372.Changed:Connect(function()
                                    local L_1413 = L_1372.Text:lower();
                                    for L_1414, L_1415 in ipairs(L_1370:GetChildren()) do
                                        if L_1415:IsA(L_32) then
                                            L_1415.Visible = L_1413 == "" or L_1415.Name:find(L_1413, 1, true);
                                        end;
                                    end;
                                    return ;
                                end);
                            end;
                            local L_1419 = function()
                                L_1373 = not L_1373;
                                local L_1416 = L_1373 and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0);
                                local L_1417 = L_1373 and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25);
                                local L_1418 = L_1373 and 90 or 0;
                                L_733:Create(L_1368, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = L_1416 }):Play();
                                L_733:Create(L_1361, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = L_1417 }):Play();
                                L_733:Create(L_1366, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Rotation = L_1418 }):Play();
                                return ;
                            end;
                            L_1367.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                L_1419();
                                return ;
                            end);
                            if L_1352 then
                                L_1372.Focused:Connect(function()
                                    L_732.ButtonEffect();
                                    L_1419();
                                    return ;
                                end);
                            end;
                            local L_1430 = {
                                rf = L_1383,
                                ClearText = function(L_1420)
                                    if not L_1353 then
                                        if L_1352 then
                                            L_1372.PlaceholderText = L_1350 .. ": ";
                                        else
                                            L_1372.Text = L_1350 .. ": ";
                                        end;
                                        L_1377 = nil;
                                    else
                                        L_1372.Text = L_1350 .. ": ";
                                        for L_1421, L_1422 in pairs(L_1376) do
                                            L_1376[L_1421] = false;
                                        end;
                                        L_1383();
                                    end;
                                    return ;
                                end,
                                GetNewList = function(L_1423, L_1424)
                                    L_1373 = false;
                                    L_733:Create(L_1368, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = UDim2.new(1, 0, 0, 0) }):Play();
                                    L_733:Create(L_1361, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = UDim2.new(1, 0, 0, 25) }):Play();
                                    L_733:Create(L_1366, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Rotation = 0 }):Play();
                                    if L_1353 then
                                        if L_1360(L_1424) then
                                            local L_1425 = {};
                                            for L_1426, L_1427 in ipairs(L_1424) do
                                                L_1425[L_1427] = false;
                                            end;
                                            L_1376 = L_1425;
                                        else
                                            for L_1428, L_1429 in pairs(L_1424) do
                                                L_1424[L_1428] = false;
                                            end;
                                            L_1376 = L_1424;
                                        end;
                                    else
                                        L_1376 = L_1424 or {};
                                    end;
                                    L_1377 = nil;
                                    L_1383();
                                    return ;
                                end
                            };
                            local L_1431 = L_626(L_1101, L_1145, L_1350);
                            if not L_1353 then
                                L_622.Dropdowns[L_1431] = {
                                    Get = function()
                                        return L_1377;
                                    end,
                                    Set = function(L_1432)
                                        if not L_1432 then
                                            return ;
                                        end;
                                        local L_1433 = tostring(L_1432);
                                        local L_1434 = false;
                                        for L_1435, L_1436 in ipairs(L_1376) do
                                            if tostring(L_1436) == L_1433 then
                                                L_1434 = true;
                                                break;
                                            end;
                                        end;
                                        if not L_1434 then
                                            return ;
                                        end;
                                        L_1377 = L_1433;
                                        if L_1352 then
                                            L_1372.PlaceholderText = L_1350 .. ": " .. L_1433;
                                        else
                                            L_1372.Text = L_1350 .. ": " .. L_1433;
                                        end;
                                        L_1383();
                                        pcall(L_1355, L_1433);
                                        return ;
                                    end
                                };
                            else
                                L_622.Dropdowns[L_1431] = {
                                    Get = function()
                                        local L_1437 = {};
                                        for L_1438, L_1439 in pairs(L_1376) do
                                            L_1437[L_1438] = not not L_1439;
                                        end;
                                        return L_1437;
                                    end,
                                    Set = function(L_1440)
                                        if type(L_1440) ~= "table" then
                                            return ;
                                        end;
                                        for L_1441, L_1442 in pairs(L_1440) do
                                            if L_1376[L_1441] ~= nil then
                                                L_1376[L_1441] = not not L_1442;
                                            end;
                                        end;
                                        L_1383();
                                        for L_1443, L_1444 in pairs(L_1376) do
                                            pcall(L_1355, L_1443, L_1444);
                                        end;
                                        return ;
                                    end
                                };
                            end;
                            return L_1430;
                        end,
                        CreateBind = function(L_1445, L_1446)
                            local L_1447 = tostring(L_1445.Title) or "";
                            local L_1448 = L_1445.Key;
                            local L_1449 = L_1445.Default or L_1445.Key;
                            local L_1450 = tostring(L_1449):match("UserInputType") and "UserInputType" or "KeyCode";
                            local L_1451 = L_1446 or function()
                                return ;
                            end;
                            local L_1452 = tostring(L_1448):gsub("Enum.UserInputType.", "");
                            local L_1453 = tostring(L_1452):gsub("Enum.KeyCode.", "");
                            local L_1454 = Instance.new(L_32);
                            local L_1455 = Instance.new("UICorner");
                            local L_1456 = Instance.new(L_32);
                            local L_1457 = Instance.new("UICorner");
                            local L_1458 = Instance.new("TextLabel");
                            local L_1459 = Instance.new("TextButton");
                            local L_1460 = Instance.new(L_32);
                            local L_1461 = Instance.new("UICorner");
                            local L_1462 = Instance.new("TextButton");
                            L_1454.Name = L_1447 .. "bguvl";
                            L_1454.Parent = L_1147;
                            L_1454.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            L_1454.BackgroundTransparency = 1;
                            L_1454.Position = UDim2.new(0, 0, 0.208333328, 0);
                            L_1454.Size = UDim2.new(1, 0, 0, 35);
                            L_1455.CornerRadius = UDim.new(0, 4);
                            L_1455.Name = "BindCorner";
                            L_1455.Parent = L_1454;
                            L_1456.Name = "Background1";
                            L_1456.Parent = L_1454;
                            L_1456.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1456.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1456.Size = UDim2.new(1, -10, 1, 0);
                            L_1456.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(L_639["Background 1 Color"], function()
                                L_1456.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            L_1456.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1456.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1457.CornerRadius = UDim.new(0, 4);
                            L_1457.Name = "ButtonCorner";
                            L_1457.Parent = L_1456;
                            L_1458.Name = "TextColor";
                            L_1458.Parent = L_1456;
                            L_1458.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1458.BackgroundTransparency = 1;
                            L_1458.Position = UDim2.new(0, 10, 0, 0);
                            L_1458.Size = UDim2.new(1, -10, 1, 0);
                            L_1458.Font = Enum.Font.GothamBlack;
                            L_1458.Text = L_1447;
                            L_1458.TextSize = 14;
                            L_1458.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1458.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1458.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1460.Name = "Background2";
                            L_1460.Parent = L_1456;
                            L_1460.AnchorPoint = Vector2.new(1, 0.5);
                            L_1460.Position = UDim2.new(1, -5, 0.5, 0);
                            L_1460.Size = UDim2.new(0, 150, 0, 25);
                            L_1460.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(L_639["Background 2 Color"], function()
                                L_1460.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            L_1461.CornerRadius = UDim.new(0, 4);
                            L_1461.Name = "ButtonCorner";
                            L_1461.Parent = L_1460;
                            L_1462.Name = "Bindkey";
                            L_1462.Parent = L_1460;
                            L_1462.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1462.BackgroundTransparency = 1;
                            L_1462.Size = UDim2.new(1, 0, 1, 0);
                            L_1462.Font = Enum.Font.GothamBold;
                            L_1462.Text = tostring(L_1449):gsub("Enum.KeyCode.", "");
                            L_1462.TextSize = 14;
                            L_1462.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1462.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            local L_1463 = { [Enum.UserInputType.MouseButton1] = "Mouse1", [Enum.UserInputType.MouseButton2] = "Mouse2", [Enum.UserInputType.MouseButton3] = "Mouse3" };
                            L_1462.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            L_1462.MouseButton1Click:Connect(function()
                                local L_1464 = nil;
                                L_1462.Text = "...";
                                L_1464 = game:GetService("UserInputService").InputBegan:Connect(function(L_1465)
                                    if L_1463[L_1465.UserInputType] then
                                        L_1462.Text = L_1463[L_1465.UserInputType];
                                        spawn(function()
                                            wait(0.1);
                                            L_1449 = L_1465.UserInputType;
                                            L_1450 = "UserInputType";
                                            return ;
                                        end);
                                    elseif L_1465.KeyCode ~= Enum.KeyCode.Unknown then
                                        L_1462.Text = tostring(L_1465.KeyCode):gsub("Enum.KeyCode.", "");
                                        spawn(function()
                                            wait(0.1);
                                            L_1449 = L_1465.KeyCode;
                                            L_1450 = "KeyCode";
                                            return ;
                                        end);
                                    end;
                                    L_1464:Disconnect();
                                    return ;
                                end);
                                return ;
                            end);
                            game:GetService("UserInputService").InputBegan:Connect(function(L_1466)
                                if L_1449 == L_1466.UserInputType or L_1449 == L_1466.KeyCode then
                                    L_1451(L_1449);
                                end;
                                return ;
                            end);
                            return ;
                        end,
                        CreateBox = function(L_1467, L_1468)
                            local L_1469 = tostring(L_1467.Title) or "";
                            local L_1470 = tostring(L_1467.Placeholder) or "";
                            local L_1471 = L_1467.Default or false;
                            local L_1472 = L_1467.Number or false;
                            local L_1473 = L_1468 or function()
                                return ;
                            end;
                            local L_1474 = Instance.new(L_32);
                            local L_1475 = Instance.new("UICorner");
                            local L_1476 = Instance.new(L_32);
                            local L_1477 = Instance.new("UICorner");
                            local L_1478 = Instance.new("TextLabel");
                            local L_1479 = Instance.new(L_32);
                            local L_1480 = Instance.new("UICorner");
                            local L_1481 = Instance.new("TextBox");
                            local L_1482 = Instance.new(L_32);
                            local L_1483 = Instance.new("UICorner");
                            L_1474.Name = "BoxFrame";
                            L_1474.Parent = L_1147;
                            L_1474.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            L_1474.BackgroundTransparency = 1;
                            L_1474.Position = UDim2.new(0, 0, 0.208333328, 0);
                            L_1474.Size = UDim2.new(1, 0, 0, 60);
                            L_1475.CornerRadius = UDim.new(0, 4);
                            L_1475.Name = "BoxCorner";
                            L_1475.Parent = L_1474;
                            L_1476.Name = "Background1";
                            L_1476.Parent = L_1474;
                            L_1476.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1476.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1476.Size = UDim2.new(1, -10, 1, 0);
                            L_1476.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(L_639["Background 1 Color"], function()
                                L_1476.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            L_1476.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1476.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1477.CornerRadius = UDim.new(0, 4);
                            L_1477.Name = "ButtonCorner";
                            L_1477.Parent = L_1476;
                            L_1478.Name = "TextColor";
                            L_1478.Parent = L_1476;
                            L_1478.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1478.BackgroundTransparency = 1;
                            L_1478.Position = UDim2.new(0, 10, 0, 0);
                            L_1478.Size = UDim2.new(1, -10, 0.5, 0);
                            L_1478.Font = Enum.Font.GothamBlack;
                            L_1478.Text = L_1469;
                            L_1478.TextSize = 14;
                            L_1478.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1478.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1478.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1479.Name = "Background2";
                            L_1479.Parent = L_1476;
                            L_1479.AnchorPoint = Vector2.new(1, 0.5);
                            L_1479.ClipsDescendants = true;
                            L_1479.Position = UDim2.new(1, -5, 0, 40);
                            L_1479.Size = UDim2.new(1, -10, 0, 25);
                            L_1479.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(L_639["Background 2 Color"], function()
                                L_1479.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            L_1480.CornerRadius = UDim.new(0, 4);
                            L_1480.Name = "ButtonCorner";
                            L_1480.Parent = L_1479;
                            L_1481.Name = "TextColorPlaceholder";
                            L_1481.Parent = L_1479;
                            L_1481.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1481.BackgroundTransparency = 1;
                            L_1481.Position = UDim2.new(0, 5, 0, 0);
                            L_1481.Size = UDim2.new(1, -5, 1, 0);
                            L_1481.Font = Enum.Font.GothamBold;
                            L_1481.PlaceholderText = L_1470;
                            L_1481.Text = "";
                            L_1481.TextSize = 14;
                            L_1481.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1481.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                            L_1481.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639["Placeholder Text Color"], function()
                                L_1481.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                return ;
                            end);
                            table.insert(L_639[L_34], function()
                                L_1481.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1482.Name = "TextNSBoxLineeeee";
                            L_1482.Parent = L_1479;
                            L_1482.BackgroundTransparency = 1;
                            L_1482.Position = UDim2.new(0, 0, 1, -2);
                            L_1482.Size = UDim2.new(1, 0, 0, 6);
                            L_1482.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"];
                            table.insert(L_639["Box Highlight Color"], function()
                                L_1482.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"];
                                return ;
                            end);
                            L_1483.CornerRadius = UDim.new(1, 0);
                            L_1483.Parent = L_1482;
                            L_1481.Focused:Connect(function()
                                L_733:Create(L_1482, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundTransparency = 0 }):Play();
                                return ;
                            end);
                            L_1481.Focused:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            if L_1472 then
                                L_1481:GetPropertyChangedSignal("Text"):Connect(function()
                                    if not tonumber(L_1481.Text) then
                                        L_1481.PlaceholderText = L_1470;
                                        L_1481.Text = "";
                                    end;
                                    return ;
                                end);
                            end;
                            L_1481.FocusLost:Connect(function()
                                L_733:Create(L_1482, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundTransparency = 1 }):Play();
                                if L_1481.Text ~= "" then
                                    L_1473(L_1481.Text);
                                end;
                                return ;
                            end);
                            local L_1484 = {};
                            if L_1471 then
                                L_1481.Text = L_1471;
                                L_1473(L_1471);
                            end;
                            L_1484.SetValue = function(L_1485)
                                L_1481.Text = L_1485;
                                L_1473(L_1485);
                                return ;
                            end;
                            local L_1486 = L_626(L_1101, L_1145, L_1469);
                            L_622.Boxes[L_1486] = {
                                Get = function()
                                    return L_1481.Text;
                                end,
                                Set = function(L_1487)
                                    L_1481.Text = tostring(L_1487 or "");
                                    if L_1481.Text ~= "" then
                                        L_1473(L_1481.Text);
                                    end;
                                    return ;
                                end
                            };
                            return L_1484;
                        end,
                        CreateSlider = function(L_1488, L_1489)
                            local L_1490 = tostring(L_1488.Title) or "";
                            local L_1491 = tonumber(L_1488.Min) or 0;
                            local L_1492 = tonumber(L_1488.Max) or 100;
                            local L_1493 = L_1488.Precise or false;
                            local L_1494 = tonumber(L_1488.Default) or 0;
                            local L_1495 = 400;
                            local L_1496 = game:GetService("UserInputService");
                            local L_1497 = L_733 or game:GetService("TweenService");
                            local L_1498 = game.Players.LocalPlayer:GetMouse();
                            local L_1499 = typeof(L_1489) == "function" and L_1489 or function()
                                return ;
                            end;
                            local L_1501 = function(L_1500)
                                task.spawn(L_1499, L_1500);
                                return ;
                            end;
                            local L_1502 = Instance.new(L_32);
                            local L_1503 = Instance.new("UICorner");
                            local L_1504 = Instance.new(L_32);
                            local L_1505 = Instance.new("UICorner");
                            local L_1506 = Instance.new("TextLabel");
                            local L_1507 = Instance.new(L_32);
                            local L_1508 = Instance.new("TextButton");
                            local L_1509 = Instance.new("UICorner");
                            local L_1510 = Instance.new(L_32);
                            local L_1511 = Instance.new("UICorner");
                            local L_1512 = Instance.new(L_32);
                            local L_1513 = Instance.new("UICorner");
                            local L_1514 = Instance.new("TextBox");
                            L_1502.Name = L_1490 .. "buda";
                            L_1502.Parent = L_1147;
                            L_1502.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            L_1502.BackgroundTransparency = 1;
                            L_1502.Position = UDim2.new(0, 0, 0.208333328, 0);
                            L_1502.Size = UDim2.new(1, 0, 0, 50);
                            L_1503.CornerRadius = UDim.new(0, 4);
                            L_1503.Name = "SliderCorner";
                            L_1503.Parent = L_1502;
                            L_1504.Name = "Background1";
                            L_1504.Parent = L_1502;
                            L_1504.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1504.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1504.Size = UDim2.new(1, -10, 1, 0);
                            L_1504.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(L_639["Background 1 Color"], function()
                                L_1504.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            L_1504.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1504.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1505.CornerRadius = UDim.new(0, 4);
                            L_1505.Name = "SliderBGCorner";
                            L_1505.Parent = L_1504;
                            L_1506.Name = "TextColor";
                            L_1506.Parent = L_1504;
                            L_1506.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1506.BackgroundTransparency = 1;
                            L_1506.Position = UDim2.new(0, 10, 0, 0);
                            L_1506.Size = UDim2.new(1, -10, 0, 25);
                            L_1506.Font = Enum.Font.GothamBlack;
                            L_1506.Text = L_1490;
                            L_1506.TextSize = 14;
                            L_1506.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1506.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1506.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1507.Name = "SliderBar";
                            L_1507.Parent = L_1502;
                            L_1507.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1507.Position = UDim2.new(0.5, 0, 0.5, 14);
                            L_1507.Size = UDim2.new(0, 400, 0, 6);
                            L_1507.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(L_639["Background 2 Color"], function()
                                L_1507.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            L_1508.Name = "SliderButton";
                            L_1508.Parent = L_1507;
                            L_1508.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1508.BackgroundTransparency = 1;
                            L_1508.Size = UDim2.new(1, 0, 1, 0);
                            L_1508.Font = Enum.Font.GothamBold;
                            L_1508.Text = "";
                            L_1508.TextColor3 = Color3.fromRGB(230, 230, 230);
                            L_1508.TextSize = 14;
                            L_1509.CornerRadius = UDim.new(1, 0);
                            L_1509.Name = "SliderBarCorner";
                            L_1509.Parent = L_1507;
                            L_1510.Name = "Bar";
                            L_1510.BorderSizePixel = 0;
                            L_1510.Parent = L_1507;
                            L_1510.Size = UDim2.new(0, 0, 1, 0);
                            L_1510.BackgroundColor3 = getgenv().UIColor["Slider Line Color"];
                            table.insert(L_639["Slider Line Color"], function()
                                L_1510.BackgroundColor3 = getgenv().UIColor["Slider Line Color"];
                                return ;
                            end);
                            L_1511.CornerRadius = UDim.new(1, 0);
                            L_1511.Name = "BarCorner";
                            L_1511.Parent = L_1510;
                            L_1512.Name = "Background2";
                            L_1512.Parent = L_1502;
                            L_1512.AnchorPoint = Vector2.new(1, 0);
                            L_1512.Position = UDim2.new(1, -10, 0, 5);
                            L_1512.Size = UDim2.new(0, 150, 0, 25);
                            L_1512.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(L_639["Background 2 Color"], function()
                                L_1512.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            L_1513.CornerRadius = UDim.new(0, 4);
                            L_1513.Name = "Sliderbox";
                            L_1513.Parent = L_1512;
                            L_1514.Name = "TextColor";
                            L_1514.Parent = L_1512;
                            L_1514.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1514.BackgroundTransparency = 1;
                            L_1514.Size = UDim2.new(1, 0, 1, 0);
                            L_1514.Font = Enum.Font.GothamBold;
                            L_1514.Text = "";
                            L_1514.TextSize = 14;
                            L_1514.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1514.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1508.MouseEnter:Connect(function()
                                L_1497:Create(L_1510, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"] }):Play();
                                return ;
                            end);
                            L_1508.MouseLeave:Connect(function()
                                L_1497:Create(L_1510, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundColor3 = getgenv().UIColor["Slider Line Color"] }):Play();
                                return ;
                            end);
                            if L_1494 then
                                if L_1494 <= L_1491 then
                                    L_1494 = L_1491;
                                elseif L_1492 <= L_1494 then
                                    L_1494 = L_1492;
                                end;
                                L_1510.Size = UDim2.new(1 - (L_1492 - L_1494) / (L_1492 - L_1491), 0, 0, 6);
                                L_1514.Text = L_1494;
                                L_1501(L_1494);
                            end;
                            local L_1515 = nil;
                            local L_1516 = nil;
                            L_1508.MouseButton1Down:Connect(function()
                                local L_1517 = L_1493 and tonumber(string.format("%.1f", (L_1492 - L_1491) / L_1495 * L_1510.AbsoluteSize.X + L_1491)) or math.floor((L_1492 - L_1491) / L_1495 * L_1510.AbsoluteSize.X + L_1491);
                                L_1514.Text = L_1517;
                                L_1501(L_1517);
                                L_1510.Size = UDim2.new(0, math.clamp(L_1498.X - L_1510.AbsolutePosition.X, 0, L_1495), 0, 6);
                                L_1515 = L_1498.Move:Connect(function()
                                    local L_1518 = L_1493 and tonumber(string.format("%.1f", (L_1492 - L_1491) / L_1495 * L_1510.AbsoluteSize.X + L_1491)) or math.floor((L_1492 - L_1491) / L_1495 * L_1510.AbsoluteSize.X + L_1491);
                                    L_1514.Text = L_1518;
                                    L_1501(L_1518);
                                    L_1510.Size = UDim2.new(0, math.clamp(L_1498.X - L_1510.AbsolutePosition.X, 0, L_1495), 0, 6);
                                    return ;
                                end);
                                L_1516 = L_1496.InputEnded:Connect(function(L_1519)
                                    if L_1519.UserInputType == Enum.UserInputType.MouseButton1 then
                                        local L_1520 = L_1493 and tonumber(string.format("%.1f", (L_1492 - L_1491) / L_1495 * L_1510.AbsoluteSize.X + L_1491)) or math.floor((L_1492 - L_1491) / L_1495 * L_1510.AbsoluteSize.X + L_1491);
                                        L_1514.Text = L_1520;
                                        L_1501(L_1520);
                                        L_1510.Size = UDim2.new(0, math.clamp(L_1498.X - L_1510.AbsolutePosition.X, 0, L_1495), 0, 6);
                                        if L_1515 then
                                            L_1515:Disconnect();
                                        end;
                                        if L_1516 then
                                            L_1516:Disconnect();
                                        end;
                                    end;
                                    return ;
                                end);
                                return ;
                            end);
                            local L_1523 = function(L_1521)
                                local L_1522 = tonumber(L_1521);
                                if not L_1522 then
                                    return ;
                                end;
                                if L_1522 <= L_1491 then
                                    L_1510.Size = UDim2.new(0, 0 * L_1495, 0, 6);
                                    L_1514.Text = L_1491;
                                    L_1501(L_1491);
                                elseif L_1492 <= L_1522 then
                                    L_1510.Size = UDim2.new(0, L_1492 / L_1492 * L_1495, 0, 6);
                                    L_1514.Text = L_1492;
                                    L_1501(L_1492);
                                else
                                    L_1510.Size = UDim2.new(1 - (L_1492 - L_1522) / (L_1492 - L_1491), 0, 0, 6);
                                    L_1514.Text = L_1522;
                                    L_1501(L_1522);
                                end;
                                return ;
                            end;
                            L_1514.FocusLost:Connect(function()
                                L_1523(L_1514.Text);
                                return ;
                            end);
                            local L_1525 = {
                                SetValue = function(L_1524)
                                    L_1523(L_1524);
                                    return ;
                                end
                            };
                            local L_1526 = L_626(L_1101, L_1145, L_1490);
                            L_622.Sliders[L_1526] = {
                                Get = function()
                                    return tonumber(L_1514.Text) or L_1491;
                                end,
                                Set = function(L_1527)
                                    L_1523(tonumber(L_1527) or L_1491);
                                    return ;
                                end
                            };
                            return L_1525;
                        end,
                        CreateKeybind = function(L_1528, L_1529)
                            local L_1530 = tostring(L_1528.Title) or "Keybind";
                            local L_1531 = L_1528.Default or Enum.KeyCode.E;
                            local L_1532 = tostring(L_1531):match("UserInputType") and "UserInputType" or "KeyCode";
                            local L_1533 = L_1529 or function()
                                return ;
                            end;
                            local L_1534 = Instance.new(L_32);
                            local L_1535 = Instance.new("UICorner");
                            local L_1536 = Instance.new(L_32);
                            local L_1537 = Instance.new("UICorner");
                            local L_1538 = Instance.new("TextLabel");
                            local L_1539 = Instance.new(L_32);
                            local L_1540 = Instance.new("UICorner");
                            local L_1541 = Instance.new("TextButton");
                            L_1534.Name = L_1530 .. "KeybindFrame";
                            L_1534.Parent = L_1147;
                            L_1534.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            L_1534.BackgroundTransparency = 1;
                            L_1534.Position = UDim2.new(0, 0, 0.208333328, 0);
                            L_1534.Size = UDim2.new(1, 0, 0, 35);
                            L_1535.CornerRadius = UDim.new(0, 4);
                            L_1535.Name = "KeybindCorner";
                            L_1535.Parent = L_1534;
                            L_1536.Name = "Background1";
                            L_1536.Parent = L_1534;
                            L_1536.AnchorPoint = Vector2.new(0.5, 0.5);
                            L_1536.Position = UDim2.new(0.5, 0, 0.5, 0);
                            L_1536.Size = UDim2.new(1, -10, 1, 0);
                            L_1536.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(L_639["Background 1 Color"], function()
                                L_1536.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return ;
                            end);
                            L_1536.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                L_1536.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            L_1537.CornerRadius = UDim.new(0, 4);
                            L_1537.Name = "KeybindBGCorner";
                            L_1537.Parent = L_1536;
                            L_1538.Name = "TextColor";
                            L_1538.Parent = L_1536;
                            L_1538.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1538.BackgroundTransparency = 1;
                            L_1538.Position = UDim2.new(0, 10, 0, 0);
                            L_1538.Size = UDim2.new(1, -10, 1, 0);
                            L_1538.Font = Enum.Font.GothamBlack;
                            L_1538.Text = L_1530;
                            L_1538.TextSize = 14;
                            L_1538.TextXAlignment = Enum.TextXAlignment.Left;
                            L_1538.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1538.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            L_1539.Name = "Background2";
                            L_1539.Parent = L_1536;
                            L_1539.AnchorPoint = Vector2.new(1, 0.5);
                            L_1539.Position = UDim2.new(1, -5, 0.5, 0);
                            L_1539.Size = UDim2.new(0, 150, 0, 25);
                            L_1539.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(L_639["Background 2 Color"], function()
                                L_1539.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            L_1540.CornerRadius = UDim.new(0, 4);
                            L_1540.Name = "KeybindButtonCorner";
                            L_1540.Parent = L_1539;
                            L_1541.Name = "KeybindButton";
                            L_1541.Parent = L_1539;
                            L_1541.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            L_1541.BackgroundTransparency = 1;
                            L_1541.Size = UDim2.new(1, 0, 1, 0);
                            L_1541.Font = Enum.Font.GothamBold;
                            L_1541.Text = tostring(L_1531):gsub("Enum.KeyCode.", ""):gsub("Enum.UserInputType.", "");
                            L_1541.TextSize = 14;
                            L_1541.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                L_1541.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            local L_1542 = { [Enum.UserInputType.MouseButton1] = "Mouse1", [Enum.UserInputType.MouseButton2] = "Mouse2", [Enum.UserInputType.MouseButton3] = "Mouse3" };
                            L_1541.MouseButton1Click:Connect(function()
                                L_732.ButtonEffect();
                                return ;
                            end);
                            L_1541.MouseButton1Click:Connect(function()
                                local L_1543 = nil;
                                L_1541.Text = "...";
                                L_1543 = game:GetService("UserInputService").InputBegan:Connect(function(L_1544)
                                    if L_1542[L_1544.UserInputType] then
                                        L_1541.Text = L_1542[L_1544.UserInputType];
                                        spawn(function()
                                            wait(0.1);
                                            L_1531 = L_1544.UserInputType;
                                            L_1532 = "UserInputType";
                                            return ;
                                        end);
                                    elseif L_1544.KeyCode ~= Enum.KeyCode.Unknown then
                                        L_1541.Text = tostring(L_1544.KeyCode):gsub("Enum.KeyCode.", "");
                                        spawn(function()
                                            wait(0.1);
                                            L_1531 = L_1544.KeyCode;
                                            L_1532 = "KeyCode";
                                            return ;
                                        end);
                                    end;
                                    L_1543:Disconnect();
                                    return ;
                                end);
                                return ;
                            end);
                            game:GetService("UserInputService").InputBegan:Connect(function(L_1545)
                                if L_1531 == L_1545.UserInputType or L_1531 == L_1545.KeyCode then
                                    L_1533(L_1531);
                                end;
                                return ;
                            end);
                            local L_1547 = {
                                SetKey = function(L_1546)
                                    L_1531 = L_1546;
                                    L_1541.Text = tostring(L_1546):gsub("Enum.KeyCode.", ""):gsub("Enum.UserInputType.", "");
                                    return ;
                                end,
                                GetKey = function()
                                    return L_1531;
                                end
                            };
                            local L_1548 = L_626(L_1101, L_1145, L_1530);
                            L_622.Keybinds[L_1548] = {
                                Get = function()
                                    return tostring(L_1531);
                                end,
                                Set = function(L_1549)
                                    if not L_1549 then
                                        return ;
                                    end;
                                    local L_1550 = tostring(L_1549);
                                    for L_1551, L_1552 in ipairs(Enum.KeyCode:GetEnumItems()) do
                                        if L_1552.Name == L_1550 or "Enum.KeyCode." .. L_1552.Name == L_1550 then
                                            L_1531 = L_1552;
                                            L_1541.Text = L_1552.Name;
                                            return ;
                                        end;
                                    end;
                                    for L_1553, L_1554 in ipairs(Enum.UserInputType:GetEnumItems()) do
                                        if L_1554.Name == L_1550 or "Enum.UserInputType." .. L_1554.Name == L_1550 then
                                            L_1531 = L_1554;
                                            L_1541.Text = L_1554.Name;
                                            return ;
                                        end;
                                    end;
                                    return ;
                                end
                            };
                            return L_1547;
                        end
                    };
                end
            };
        end;
        return L_1095;
    end;
    return L_731;
end;
Standalone = function()
    Library = GetUi();
    local L_1555 = Library.CreateMain({ Title = "Grand Piece Online", Desc = "" });
    local L_1556 = L_1555.CreatePage({ Page_Name = "Main", Page_Title = "Main Tab" });
    local L_1557 = L_1555.CreatePage({ Page_Name = "Config", Page_Title = "Config Tab" });
    local L_1558 = L_1557.CreateSection("Config");
    local L_1559 = L_1557.CreateSection("Other");
    local L_1560 = L_1556.CreateSection("Private Server");
    L_620 = Library;
    getgenv().Sea = "First Sea";
    getgenv().PsCode = "";
    getgenv().Queued = false;
    getgenv().Sea = "First Sea";
    getgenv().Queued = false;
    L_618 = game:GetService("HttpService");
    Players = game:GetService("Players");
    LocalPlayer = Players.LocalPlayer;
    Folder = "Feral";
    FilePath = Folder .. "/PSAccounts.json";
    if not isfolder(Folder) then
        makefolder(Folder);
    end;
    getPlayerPsCode = function()
        if not isfile(FilePath) then
            return "";
        end;
        local L_1561, L_1562 = pcall(function()
            return L_618:JSONDecode(readfile(FilePath));
        end);
        if not L_1561 or type(L_1562) ~= "table" then
            return "";
        end;
        local L_1563 = (L_1562.accounts or {})[LocalPlayer.Name];
        if not L_1563 then
            return "";
        end;
        if type(L_1563) == "string" then
            return L_1563;
        end;
        if type(L_1563) == "table" then
            return L_1563.link or L_1563.code or L_1563.Code or L_1563.ps or L_1563.PsCode or "";
        end;
        return "";
    end;
    savedAccounts = {};
    if isfile(FilePath) then
        local L_1564, L_1565 = pcall(function()
            return L_618:JSONDecode(readfile(FilePath));
        end);
        if L_1564 and type(L_1565) == "table" then
            savedAccounts = L_1565.accounts or {};
        end;
    end;
    script_key = script_key or "";
    local L_1566 = string.format("\t\t\tgetgenv().Loaded=false\n\t\t\ttask.wait(30)\n\t\t\tscript_key = '%s'\n\t\t\tloadstring(game:HttpGet(\"https://api.luarmor.net/files/v3/loaders/3dbb9943ee4a2c8986099c40d714d81e.lua\"))()\n\t\t", script_key);
    local L_1567 = string.format("\t\t\tgetgenv().Loaded=false\n\t\t\ttask.wait(10)\n\t\t\tscript_key = '%s'\n\t\t\tloadstring(game:HttpGet(\"https://api.luarmor.net/files/v3/loaders/3dbb9943ee4a2c8986099c40d714d81e.lua\"))()\n\t\t", script_key);
    L_1560.CreateToggle({ Title = "Auto Join PS", Desc = "Enable whether to auto join ps or not", Default = false }, function(L_1568)
        getgenv().AutoJoin = L_1568;
        if not L_1568 then
            return ;
        end;
        local L_1569, L_1570;
        repeat
            task.wait();
            L_1569 = getPlayerPsCode();
            L_1570 = L_1569 ~= nil and L_1569 ~= "" and L_1569 or getgenv().PsCode or "";
        until L_1570 and L_1570 ~= "" or not getgenv().AutoJoin;
        warn("PLAYER CODE: " .. L_1569);
        warn("Real Code: " .. L_1570);
        local L_1571 = nil;
        pcall(function()
            L_1571 = player.PlayerGui.Settings.Main.Code.Text;
            return ;
        end);
        if game.PlaceId ~= 1730877806 then
            repeat
                task.wait();
                pcall(function()
                    L_1571 = player.PlayerGui.Settings.Main.Code.Text;
                    return ;
                end);
            until L_1571 and L_1571 ~= "";
        end;
        if game.PlaceId ~= 1730877806 and L_1571 ~= L_1570 then
            warn("Incorrect PlaceId Moving To Menu Chat Tuff");
            if not getgenv().Queued then
                queue_on_teleport(L_1567);
                getgenv().Queued = true;
                task.wait(1);
            end;
            task.wait(5);
            game:GetService("TeleportService"):Teleport(1730877806, game.Players.LocalPlayer);
            L_620.CreateNoti({ Title = "Going To Menu", Desc = "yeah going to menu chat..", ShowTime = 3 });
            return ;
        end;
        if L_1571 == L_1570 then
            warn("We matched code so gg");
            return ;
        end;
        while getgenv().AutoJoin and task.wait(1) do
            task.spawn(pcall, function()
                L_1569 = getPlayerPsCode();
                L_1570 = L_1569 ~= nil and L_1569 ~= "" and L_1569 or getgenv().PsCode or "";
                warn("PLAYER CODE: " .. L_1569);
                warn("Real Code: " .. L_1570);
                return ;
            end);
            task.spawn(function()
                if not getgenv().Queued then
                    queue_on_teleport(L_1566);
                    getgenv().Queued = true;
                    task.wait(1);
                end;
                return ;
            end);
            local L_1572, L_1573 = pcall(function()
                task.spawn(pcall, function()
                    if not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("chooseType") and not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ConfirmationPrompt") then
                        warn("trying to invoke " .. L_1570);
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("reserved"):InvokeServer(L_1570);
                        warn("invoked");
                    end;
                    return ;
                end);
                pcall(function()
                    warn("choosetype part");
                    if game:GetService("Players").LocalPlayer.PlayerGui.chooseType.Frame.RemoteEvent then
                        warn("invoked choosetype");
                        game:GetService("Players").LocalPlayer.PlayerGui.chooseType.Frame.RemoteEvent:FireServer(true);
                    end;
                    return ;
                end);
                pcall(function()
                    warn("confirmation thing");
                    if game:GetService("Players").LocalPlayer.PlayerGui.ConfirmationPrompt then
                        warn("invoked confirmation");
                        game:GetService("Players").LocalPlayer.PlayerGui.ConfirmationPrompt.RemoteEvent:FireServer(getgenv().Sea);
                    end;
                    return ;
                end);
                return ;
            end);
            if not L_1572 and L_1573 then
                warn("something errored chat" .. L_1573);
            end;
        end;
        return ;
    end);
    getgenv().autorejoin = false;
    L_1560.CreateToggle({ Title = "Auto Rejoin", Desc = "Auto Rejoins When Kicked", Default = false }, function(L_1574)
        getgenv().autorejoin = L_1574;
        return ;
    end);
    game:GetService("GuiService").ErrorMessageChanged:Connect(function()
        if getgenv().autorejoin then
            local L_1575 = tostring(getgenv().PsCode or "");
            local L_1576 = tostring(getgenv().script_key or "");
            local L_1577 = string.format("repeat task.wait() until game:IsLoaded()\ntask.wait(30)\ngetgenv().PsCode = \"%s\"\ngetgenv().script_key = \"%s\"\ngetgenv().quu = true\nloadstring(game:HttpGet(\"https://api.luarmor.net/files/v3/loaders/3dbb9943ee4a2c8986099c40d714d81e.lua\"))()\nprint(\"loaded\")", L_1575, L_1576);
            queue_on_teleport(L_1577);
            game:GetService("TeleportService"):Teleport(1730877806, game.Players.LocalPlayer);
        end;
        return ;
    end);
    local L_1578 = "Feral/Configs";
    local L_1579 = L_1578 .. "/autoload.txt";
    local L_1580 = L_1578 .. "/autoload_config.txt";
    local L_1581 = function()
        if not isfolder("Feral") then
            makefolder("Feral");
        end;
        if not isfolder(L_1578) then
            makefolder(L_1578);
        end;
        return ;
    end;
    local L_1585 = function()
        local L_1582, L_1583 = pcall(function()
            if isfile(L_1579) then
                return readfile(L_1579);
            end;
            return ;
        end);
        if L_1582 and type(L_1583) == "string" then
            local L_1584 = L_1583:lower();
            return L_1584 == "true" or L_1584 == "1" or L_1584 == "yes";
        end;
        return false;
    end;
    local L_1587 = function(L_1586)
        L_1581();
        writefile(L_1579, L_1586 and "true" or "false");
        return ;
    end;
    local L_1590 = function()
        local L_1588, L_1589 = pcall(function()
            if isfile(L_1580) then
                return readfile(L_1580);
            end;
            return ;
        end);
        if L_1588 and (type(L_1589) == "string" and L_1589 ~= "") then
            return L_1589;
        end;
        return "default";
    end;
    local L_1592 = function(L_1591)
        L_1581();
        writefile(L_1580, L_1591 ~= "" and L_1591 or "default");
        return ;
    end;
    local L_1593 = L_1585();
    local L_1594 = L_1590();
    local L_1595 = L_1594 ~= "" and L_1594 or "default";
    local L_1597 = L_1558.CreateToggle({ Title = "Auto-Load Config", Desc = "If enabled, on execute auto-loads selected config", Default = L_1593 }, function(L_1596)
        L_1593 = L_1596 and true or false;
        L_1587(L_1593);
        if L_1594 ~= "" and L_1594 then
        end;
        return ;
    end);
    local L_1599 = L_1558.CreateBox({ Title = "Config Name", Placeholder = "Enter config name", Default = L_1595 }, function(L_1598)
        if L_1598 ~= "" then
            L_1595 = L_1598;
        end;
        return ;
    end);
    local L_1600 = nil;
    local L_1605 = function()
        local L_1601 = {};
        local L_1602, L_1603 = pcall(function()
            return getgenv().FeralConfig and getgenv().FeralConfig.List() or {};
        end);
        if L_1602 and typeof(L_1603) == "table" then
            L_1601 = L_1603;
        end;
        if L_1600 then
            L_1600:GetNewList(L_1601);
        else
            L_1600 = L_1558.CreateDropdown({ Title = "Existing Configs", List = L_1601, Search = false, Selected = false, Default = "" }, function(L_1604)
                if L_1604 and L_1604 ~= "" then
                    L_1595 = L_1604;
                    L_1599.SetValue(L_1604);
                end;
                return ;
            end);
        end;
        return ;
    end;
    L_1605();
    L_1558.CreateButton({ Title = "Save Config" }, function()
        local L_1606 = L_1595 ~= "" and L_1595 or "default";
        local L_1607, L_1608 = getgenv().FeralConfig.Save(L_1606);
        if L_1607 then
            L_1594 = L_1606;
            L_1592(L_1606);
            L_620.CreateNoti({ Title = "Config", Desc = "Saved as \"" .. L_1606 .. "\"", ShowTime = 5 });
            L_1605();
        else
            L_620.CreateNoti({ Title = "Config", Desc = "Save failed: " .. tostring(L_1608), ShowTime = 5 });
        end;
        return ;
    end);
    L_1558.CreateButton({ Title = "Load Config" }, function()
        local L_1609 = L_1595 ~= "" and L_1595 or "default";
        local L_1610, L_1611 = getgenv().FeralConfig.Load(L_1609);
        if L_1610 then
            L_1594 = L_1609;
            L_1592(L_1609);
            L_620.CreateNoti({ Title = "Config", Desc = "Loaded \"" .. L_1609 .. "\"", ShowTime = 5 });
        else
            L_620.CreateNoti({ Title = "Config", Desc = "Load failed: " .. tostring(L_1611), ShowTime = 5 });
        end;
        return ;
    end);
    L_1558.CreateButton({ Title = "Delete Config" }, function()
        local L_1612 = L_1595;
        if not L_1612 or L_1612 == "" then
            L_620.CreateNoti({ Title = "Config", Desc = "No config name selected.", ShowTime = 5 });
            return ;
        end;
        local L_1613, L_1614 = getgenv().FeralConfig.Delete(L_1612);
        if L_1613 then
            L_620.CreateNoti({ Title = "Config", Desc = "Deleted \"" .. L_1612 .. "\"", ShowTime = 5 });
            L_1595 = "default";
            L_1599.SetValue(L_1595);
            if L_1594 == L_1612 then
                L_1594 = "default";
                L_1592(L_1594);
            end;
            L_1605();
        else
            L_620.CreateNoti({ Title = "Config", Desc = "Delete failed: " .. tostring(L_1614), ShowTime = 5 });
        end;
        return ;
    end);
    L_1558.CreateButton({ Title = "Refresh Config List" }, function()
        L_1605();
        L_620.CreateNoti({ Title = "Config", Desc = "Config list refreshed.", ShowTime = 3 });
        return ;
    end);
    L_1560.CreateBox({ Title = "Private Server Code", Placeholder = "", Default = "", Number = false }, function(L_1615)
        getgenv().PsCode = L_1615;
        return ;
    end);
    L_1560.CreateDropdown({ Title = "Teleport Sea", List = { "First Sea", "Second Sea" }, Default = "First Sea", Search = false, Selected = false }, function(L_1616, L_1617)
        getgenv().Sea = L_1616;
        return ;
    end);
    local L_1620 = L_1559.CreateKeybind({ Title = "Toggle UI", Default = Enum.KeyCode.RightShift }, function(L_1618)
        local L_1619 = game.CoreGui:FindFirstChild("Feral GUI");
        if L_1619 then
            L_1619.Enabled = not L_1619.Enabled;
        end;
        return ;
    end);
    L_1559.CreateAccountTable({
        Title = "Account Table [PS]",
        Default = savedAccounts,
        EnableConfigBinding = true,
        OnAccountSelect = function(L_1621, L_1622, L_1623)
            return ;
        end
    }, function(L_1624)
        writefile(FilePath, L_618:JSONEncode({ accounts = L_1624 }));
        return ;
    end);
    task.spawn(function()
        task.wait(0.5);
        local L_1625 = game:GetService("Players").LocalPlayer;
        local L_1626 = game:GetService("HttpService");
        local L_1627 = false;
        if isfile(FilePath) then
            local L_1628, L_1629 = pcall(function()
                return L_1626:JSONDecode(readfile(FilePath));
            end);
            if L_1628 and type(L_1629) == "table" then
                local L_1630 = (L_1629.accounts or {})[L_1625.Name];
                if L_1630 then
                    local L_1631 = nil;
                    if type(L_1630) == "table" and L_1630.config and L_1630.config ~= "" then
                        L_1631 = L_1630.config;
                    end;
                    if L_1631 then
                        local L_1632, L_1633 = getgenv().FeralConfig.Load(L_1631);
                        if L_1632 then
                            Library.CreateNoti({ Title = "Config", Desc = "Auto-loaded account config \"" .. L_1631 .. "\" for " .. L_1625.Name, ShowTime = 4 });
                            L_1627 = true;
                        else
                            Library.CreateNoti({ Title = "Config", Desc = "Account config load failed: " .. tostring(L_1633), ShowTime = 4 });
                        end;
                    end;
                end;
            end;
        end;
        if not L_1627 then
            if not L_1593 then
                return ;
            end;
            if not L_1585() then
                return ;
            end;
            local L_1634 = L_1590();
            local L_1635, L_1636 = getgenv().FeralConfig.Load(L_1634);
            if L_1635 then
                Library.CreateNoti({ Title = "Config", Desc = "Auto-loaded \"" .. L_1634 .. "\"", ShowTime = 4 });
            else
                Library.CreateNoti({ Title = "Config", Desc = "Auto-load failed: " .. tostring(L_1636), ShowTime = 4 });
            end;
        end;
        return ;
    end);
    return ;
end;
if game.PlaceId == 1730877806 then
    Standalone();
    return ;
end;
Library = GetUi();
Islands = { ["Town of Beginnings"] = CFrame.new(-528, 5, -3423), ["Shell's Town"] = CFrame.new(-1299, 4, -5052), Sandora = CFrame.new(-1545, 4, -3353), ["Orange Town"] = CFrame.new(-4448, 5, -6638), ["Restaurant Baratie"] = CFrame.new(-2964, 6, -6672), ["Logue Town"] = CFrame.new(-6589, 7, -7643), ["Roca Island"] = CFrame.new(1564, 154, -6598), ["Shark Park"] = CFrame.new(-1572, 11, -10082), ["Reverse Mountain"] = CFrame.new(-8030, 17, -8785), ["Sphinx Island"] = CFrame.new(-4006, 41, -9138), ["World Scroll"] = CFrame.new(-7350.17431640625, 4.758918762207031, -14949.48828125), ["Mysterious Cliff"] = CFrame.new(83, 413, -8286), ["Kori Island"] = CFrame.new(-4267, 169, -2974), ["A rock"] = CFrame.new(2539, 5, -8363), ["Coco Island"] = CFrame.new(-3096, 96, -11762), ["Fishman Cave"] = CFrame.new(1838, 4, -12173), ["Fishman Island"] = CFrame.new(7996, -2154, -17075), ["Marine Fort F-1"] = CFrame.new(393, 18, -4467), ["Marine Base G-1"] = CFrame.new(-5979, 57, -11496), Spooksville = CFrame.new(-7427, 26, -793), Colosseum = CFrame.new(-2020, 7, -7675), ["Land of the Sky"] = CFrame.new(3449, 1438, -9094), ["Island Of Zou"] = CFrame.new(-3070, 9, -5258), Transylvania = CFrame.new(-9619, 29, -1875), Hell = CFrame.new(18944, 8122, -12501) };
IslandNames = {};
for L_1637, L_1638 in next, Islands, nil do
    table.insert(IslandNames, L_1637);
end;
Players = game:GetService("Players");
ReplicatedStorage = game:GetService("ReplicatedStorage");
Workspace = game:GetService("Workspace");
RunService = game:GetService("RunService");
TweenService = game:GetService("TweenService");
UserInputService = game:GetService("UserInputService");
MarketplaceService = game:GetService("MarketplaceService");
ScriptContext = game:GetService("ScriptContext");
player = Players.LocalPlayer;
character = player.Character;
Character = player.Character;
player.CharacterAdded:Connect(function()
    repeat
        task.wait();
    until player.Character:FindFirstChild("Humanoid");
    local L_1639;
    Character, L_1639 = player.Character, player.Character;
    character = L_1639;
    return ;
end);
task.spawn(pcall, function()
    Camera = Workspace.CurrentCamera;
    statsFolder = ReplicatedStorage:FindFirstChild("Stats" .. player.Name);
    inventoryValue = statsFolder:FindFirstChild("Inventory"):FindFirstChild("Inventory");
    VirtualInputManager = cloneref(Instance.new("VirtualInputManager"));
    Events = ReplicatedStorage:WaitForChild("Events");
    QuestEvent = Events:FindFirstChild("Quest");
    ToolsEvent = Events.Tools;
    ShopEvent = Events.Shop;
    SetSpawnEvent = Events.SetSpawn;
    KnockedOutEvent = Events.KnockedOut;
    StatsEvent = Events.stats;
    SkillEvent = Events:FindFirstChild("Skill");
    BuyableItems = Workspace:WaitForChild("BuyableItems");
    return ;
end);
NPCS = { Daph = Vector3.new(-575, 5, -3431), Noah = Vector3.new(-1709, 4, -3377), Robert = Vector3.new(-1441, 10, -5102), Zen = Vector3.new(-3172, 12, -5227), Gonny = Vector3.new(-4248, 42, -8928), Sarah = Vector3.new(-547, 9, -3402), Max = Vector3.new(-4270, 42, -8941), Zhen = Vector3.new(4094, 1819, -9831) };
Chests = { Common = "rbxassetid://10779253534", Uncommon = "rbxassetid://10858352843", Rare = "rbxassetid://10788852296", Legendary = "rbxassetid://10798559852" };
RarityColors = { Common = Color3.fromRGB(181, 135, 99), Uncommon = Color3.fromRGB(144, 238, 144), Rare = Color3.fromRGB(135, 206, 250), Legendary = Color3.fromRGB(255, 200, 100), Mythic = Color3.fromRGB(255, 182, 193) };
SelectedChests = { Common = true, Uncommon = true, Rare = true, Legendary = true, Mythic = true };
Config = { maxDistance = 2500, MaxDistance = 2500, studsOffset = Vector3.new(0, 3, 0), font = Enum.Font.GothamBold, textSize = 16, dotThreshold = 0.05 };
getgenv().ChestEspEnabled = false;
getgenv().MedalEspEnabled = false;
getgenv().AntiStun = true;
getgenv().InfiniteJump = false;
getgenv().tpBehindEnabled = false;
getgenv().Autofish = false;
getgenv().Farm = false;
getgenv().Break = false;
task.wait();
local L_1640 = { enabled = false, lookup = {}, cons = { heartbeat = nil, effectsChildAdded = nil, effectsAdded = nil } };
local L_1641 = { enabled = false, lookup = {}, cons = {} };
local L_1642 = { Enabled = false };
local L_1650 = function(L_1643)
    local L_1644 = L_1643.Backpack;
    local L_1645 = L_1643.Character;
    for L_1646, L_1647 in next, L_1644:GetChildren() do
        if L_1647:IsA("Tool") and L_1647:GetAttribute("devilFruit") then
            return L_1647.Name;
        end;
    end;
    for L_1648, L_1649 in next, L_1645:GetChildren() do
        if L_1649:IsA("Tool") and L_1649:GetAttribute("devilFruit") then
            return L_1649.Name;
        end;
    end;
    return nil;
end;
local L_1651 = { Enabled = false, Settings = { Enabled = false, DevilFruit = false, Boxes = true, Healthbar = true, Names = true, TeamCheck = false, MaxDistance = 2000, UseDisplayName = true, Thickness = 2, BoxColor = Color3.fromRGB(90, 176, 255), TextColor = Color3.fromRGB(220, 235, 255), HealthbarWidth = 10, HealthbarOffset = 8, HealthbarOutlineThickness = 1, HealthbarSide = "Left", HealthbarOutside = true, MinBoxSize = 2, BoxPadding = 2, NameHeight = 18, BoxFillTransparency = 0.45, BoxGradientEnabled = true, BoxGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(12, 26, 58)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(28, 92, 184)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 176, 255)) }), BoxGradientRotation = 90, BoxStrokeGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 140, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(130, 200, 255)) }), NameGradientEnabled = true, NameGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 200, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) }), NameGradientRotation = 0, HealthFillGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(16, 42, 96)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 195, 255)) }), HealthStrokeGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 120, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(130, 210, 255)) }) } };
local L_1652 = nil;
local L_1653 = {};
local L_1654 = {};
local L_1655 = false;
local L_1656 = 50;
local L_1661 = function(L_1657)
    local L_1658 = inventoryValue and inventoryValue.Value;
    if not L_1658 then
        warn("Inventory not found or not loaded");
        return nil;
    end;
    local L_1659, L_1660 = pcall(function()
        return game:GetService("HttpService"):JSONDecode(L_1658);
    end);
    if not L_1659 then
        warn("Failed to decode inventory");
        return nil;
    end;
    return L_1660[L_1657] or 0;
end;
local L_1662 = function()
    return statsFolder.Stats.Peli.Value;
end;
local L_1663 = function()
    return statsFolder.Inventory.Halloween25Candy.Value;
end;
local L_1664 = function()
    return statsFolder.Stats.Level.Value;
end;
local L_1665 = function()
    return statsFolder.Stamina.Value;
end;
local L_1666 = function()
    return statsFolder.Quest.CurrentQuest.Value;
end;
local L_1668 = function(L_1667)
    return L_1667 and L_1667:IsA("Model") and L_1667.Name:match("-") and L_1667:FindFirstChildWhichIsA("MeshPart");
end;
local L_1678 = function(L_1669)
    local L_1670 = L_1669 and L_1669:FindFirstChildWhichIsA("MeshPart");
    if not L_1670 then
        return "Mythic";
    end;
    local L_1671, L_1672 = pcall(function()
        return gethiddenproperty(L_1670, "MeshID");
    end);
    if not L_1671 or not L_1672 then
        local L_1673, L_1674 = pcall(function()
            return L_1670.MeshId;
        end);
        L_1672 = L_1673 and L_1674 or nil;
    end;
    local L_1675 = "Mythic";
    if L_1672 then
        for L_1676, L_1677 in pairs(Chests) do
            if L_1677 == L_1672 then
                L_1675 = L_1676;
                return L_1675;
            end;
        end;
    end;
    return L_1675;
end;
local L_1680 = function(L_1679)
    if L_1679.PrimaryPart then
        return L_1679.PrimaryPart;
    end;
    return L_1679:FindFirstChildWhichIsA("BasePart");
end;
local L_1682 = function(L_1681)
    return string.format("rgb(%d, %d, %d)", math.floor(L_1681.R * 255 + 0.5), math.floor(L_1681.G * 255 + 0.5), math.floor(L_1681.B * 255 + 0.5));
end;
local L_1688 = function(L_1683, L_1684, L_1685)
    local L_1686 = Instance.new("BillboardGui");
    L_1686.Name = "ChestESP_" .. L_1684;
    L_1686.AlwaysOnTop = true;
    L_1686.LightInfluence = 0;
    L_1686.Size = UDim2.fromOffset(180, 20);
    L_1686.StudsOffsetWorldSpace = Config.studsOffset;
    L_1686.MaxDistance = Config.maxDistance;
    L_1686.Adornee = L_1683;
    L_1686.ResetOnSpawn = false;
    L_1686.Enabled = true;
    L_1686.Parent = L_1683;
    local L_1687 = Instance.new("TextLabel");
    L_1687.BackgroundTransparency = 1;
    L_1687.Size = UDim2.new(1, 0, 1, 0);
    L_1687.Font = Config.font;
    L_1687.TextSize = Config.textSize;
    L_1687.TextXAlignment = Enum.TextXAlignment.Center;
    L_1687.TextYAlignment = Enum.TextYAlignment.Center;
    L_1687.TextColor3 = Color3.fromRGB(255, 255, 255);
    L_1687.TextStrokeTransparency = 0.6;
    L_1687.TextStrokeColor3 = Color3.new(0, 0, 0);
    L_1687.RichText = true;
    L_1687.Parent = L_1686;
    return L_1686, L_1687;
end;
L_1640.makeEsp = function(L_1689, L_1690)
    if L_1689.lookup[L_1690] then
        return ;
    end;
    local L_1691 = L_1680(L_1690);
    if not L_1691 then
        return ;
    end;
    local L_1692 = L_1678(L_1690);
    if not SelectedChests[L_1692] then
        return ;
    end;
    local L_1693 = RarityColors[L_1692];
    if not L_1693 then
        return ;
    end;
    local L_1694, L_1695 = L_1688(L_1691, L_1692, L_1693);
    L_1689.lookup[L_1690] = { gui = L_1694, label = L_1695, adornee = L_1691, rarity = L_1692, color = L_1693 };
    return ;
end;
L_1640.removeEsp = function(L_1696, L_1697)
    local L_1698 = L_1696.lookup[L_1697];
    if not L_1698 then
        return ;
    end;
    if L_1698.gui then
        L_1698.gui:Destroy();
    end;
    L_1696.lookup[L_1697] = nil;
    return ;
end;
L_1640.destroyAll = function(L_1699)
    for L_1700, L_1701 in pairs(L_1699.lookup) do
        if L_1701.gui then
            L_1701.gui:Destroy();
        end;
    end;
    L_1699.lookup = {};
    return ;
end;
L_1640.updateAll = function(L_1702)
    local L_1703 = player.Character;
    local L_1704 = L_1703 and L_1703:FindFirstChild(L_33);
    if not L_1704 then
        for L_1705, L_1706 in pairs(L_1702.lookup) do
            if L_1706.gui then
                L_1706.gui.Enabled = false;
            end;
        end;
        return ;
    end;
    local L_1707 = Camera.CFrame;
    local L_1708 = L_1707.Position;
    local L_1709 = L_1707.LookVector;
    local L_1710 = {};
    for L_1711, L_1712 in pairs(L_1702.lookup) do
        local L_1713 = L_1712.adornee;
        local L_1714 = L_1712.gui;
        local L_1715 = L_1712.label;
        if not L_1711 or not L_1711.Parent or not L_1713 or not L_1713.Parent or not L_1714 or not L_1715 then
            table.insert(L_1710, L_1711);
        else
            local L_1716 = L_1713.Position + Config.studsOffset;
            local L_1717 = (L_1716 - L_1704.Position).Magnitude;
            local L_1718 = math.floor(L_1717 + 0.5);
            local L_1719 = L_1716 - L_1708;
            local L_1720 = L_1719.Magnitude > 0.001 and L_1719.Unit:Dot(L_1709) > Config.dotThreshold;
            local L_1721, L_1722 = Camera:WorldToViewportPoint(L_1716);
            local L_1723 = L_1722 and L_1721.Z > 0;
            local L_1724 = L_1717 <= Config.maxDistance;
            L_1714.Enabled = L_1720 and L_1723 and L_1724;
            if L_1714.Enabled then
                L_1715.Text = string.format("<font color=\"%s\">%s</font> [ %d ]", L_1682(L_1712.color), string.upper(L_1712.rarity), L_1718);
            end;
        end;
    end;
    for L_1725, L_1726 in ipairs(L_1710) do
        L_1702:removeEsp(L_1726);
    end;
    return ;
end;
L_1640.scanExisting = function(L_1727)
    local L_1728 = Workspace:FindFirstChild("Effects");
    if not L_1728 then
        return ;
    end;
    for L_1729, L_1730 in ipairs(L_1728:GetChildren()) do
        if L_1668(L_1730) then
            L_1727:makeEsp(L_1730);
        end;
    end;
    return ;
end;
L_1640.bindEffects = function(L_1731)
    local L_1732 = Workspace:FindFirstChild("Effects");
    if L_1732 and not L_1731.cons.effectsChildAdded then
        L_1731.cons.effectsChildAdded = L_1732.ChildAdded:Connect(function(L_1733)
            if L_1731.enabled and L_1668(L_1733) then
                L_1731:makeEsp(L_1733);
            end;
            return ;
        end);
    end;
    if not L_1732 and not L_1731.cons.effectsAdded then
        L_1731.cons.effectsAdded = Workspace.ChildAdded:Connect(function(L_1734)
            if L_1734.Name == "Effects" then
                if L_1731.cons.effectsAdded then
                    L_1731.cons.effectsAdded:Disconnect();
                    L_1731.cons.effectsAdded = nil;
                end;
                if not L_1731.cons.effectsChildAdded then
                    L_1731.cons.effectsChildAdded = L_1734.ChildAdded:Connect(function(L_1735)
                        if L_1731.enabled and L_1668(L_1735) then
                            L_1731:makeEsp(L_1735);
                        end;
                        return ;
                    end);
                end;
                L_1731:scanExisting();
            end;
            return ;
        end);
    end;
    return ;
end;
L_1640.start = function(L_1736)
    if L_1736.enabled then
        return ;
    end;
    L_1736.enabled = true;
    L_1736:scanExisting();
    if not L_1736.cons.heartbeat then
        L_1736.cons.heartbeat = RunService.Heartbeat:Connect(function()
            if L_1736.enabled then
                L_1736:updateAll();
            end;
            return ;
        end);
    end;
    L_1736:bindEffects();
    return ;
end;
L_1640.stop = function(L_1737)
    if not L_1737.enabled then
        return ;
    end;
    L_1737.enabled = false;
    for L_1738, L_1739 in pairs(L_1737.cons) do
        if L_1739 then
            L_1739:Disconnect();
            L_1737.cons[L_1738] = nil;
        end;
    end;
    L_1737:destroyAll();
    return ;
end;
L_1640.applyFilter = function(L_1740)
    for L_1741, L_1742 in pairs(L_1740.lookup) do
        if not SelectedChests[L_1742.rarity] then
            L_1740:removeEsp(L_1741);
        end;
    end;
    L_1740:scanExisting();
    return ;
end;
local L_1744 = function(L_1743)
    return L_1743 and L_1743.Name:match("Medal") and L_1743:GetAttribute("FightingStyle");
end;
local L_1749 = function(L_1745, L_1746)
    local L_1747 = Instance.new("BillboardGui");
    L_1747.Name = "MedalESP";
    L_1747.AlwaysOnTop = true;
    L_1747.LightInfluence = 0;
    L_1747.Size = UDim2.fromOffset(180, 20);
    L_1747.StudsOffsetWorldSpace = Config.studsOffset;
    L_1747.MaxDistance = Config.MaxDistance;
    L_1747.Adornee = L_1745;
    L_1747.ResetOnSpawn = false;
    L_1747.Parent = L_1745;
    local L_1748 = Instance.new("TextLabel");
    L_1748.BackgroundTransparency = 1;
    L_1748.Size = UDim2.new(1, 0, 1, 0);
    L_1748.Font = Config.font;
    L_1748.TextSize = Config.textSize;
    L_1748.TextXAlignment = Enum.TextXAlignment.Center;
    L_1748.TextColor3 = Color3.fromRGB(255, 215, 0);
    L_1748.TextStrokeTransparency = 0.6;
    L_1748.TextStrokeColor3 = Color3.new(0, 0, 0);
    L_1748.Parent = L_1747;
    return L_1747, L_1748;
end;
L_1641.makeEsp = function(L_1750, L_1751)
    if L_1750.lookup[L_1751] then
        return ;
    end;
    local L_1752 = L_1751:IsA("BasePart") and L_1751 or L_1751:FindFirstChildWhichIsA("BasePart");
    if not L_1752 then
        return ;
    end;
    local L_1753 = L_1751:GetAttribute("FightingStyle");
    if not L_1753 then
        return ;
    end;
    local L_1754, L_1755 = L_1749(L_1752, L_1753);
    L_1750.lookup[L_1751] = { gui = L_1754, label = L_1755, adornee = L_1752, style = L_1753 };
    return ;
end;
L_1641.removeEsp = function(L_1756, L_1757)
    local L_1758 = L_1756.lookup[L_1757];
    if L_1758 and L_1758.gui then
        L_1758.gui:Destroy();
    end;
    L_1756.lookup[L_1757] = nil;
    return ;
end;
L_1641.updateAll = function(L_1759)
    local L_1760 = player.Character and player.Character:FindFirstChild(L_33);
    if not L_1760 then
        return ;
    end;
    local L_1761 = Camera.CFrame;
    local L_1762 = L_1761.Position;
    local L_1763 = L_1761.LookVector;
    for L_1764, L_1765 in pairs(L_1759.lookup) do
        if not L_1764.Parent or not L_1765.adornee.Parent then
            L_1759:removeEsp(L_1764);
        else
            local L_1766 = L_1765.adornee.Position + Config.studsOffset;
            local L_1767 = (L_1766 - L_1760.Position).Magnitude;
            local L_1768 = L_1766 - L_1762;
            local L_1769 = L_1768.Magnitude > 0.001 and L_1768.Unit:Dot(L_1763) > Config.dotThreshold;
            local L_1770, L_1771 = Camera:WorldToViewportPoint(L_1766);
            L_1765.gui.Enabled = L_1769 and L_1771 and L_1767 <= Config.MaxDistance;
            if L_1765.gui.Enabled then
                L_1765.label.Text = string.format("%s [%d]", L_1765.style, math.floor(L_1767));
            end;
        end;
    end;
    return ;
end;
L_1641.start = function(L_1772)
    if L_1772.enabled then
        return ;
    end;
    L_1772.enabled = true;
    local L_1773 = Workspace:FindFirstChild("Effects");
    if L_1773 then
        for L_1774, L_1775 in ipairs(L_1773:GetChildren()) do
            if L_1744(L_1775) then
                L_1772:makeEsp(L_1775);
            end;
        end;
        L_1772.cons.childAdded = L_1773.ChildAdded:Connect(function(L_1776)
            if L_1772.enabled and L_1744(L_1776) then
                L_1772:makeEsp(L_1776);
            end;
            return ;
        end);
    end;
    L_1772.cons.heartbeat = RunService.Heartbeat:Connect(function()
        if L_1772.enabled then
            L_1772:updateAll();
        end;
        return ;
    end);
    return ;
end;
L_1641.stop = function(L_1777)
    if not L_1777.enabled then
        return ;
    end;
    L_1777.enabled = false;
    for L_1778, L_1779 in pairs(L_1777.cons) do
        if L_1779 then
            L_1779:Disconnect();
        end;
    end;
    L_1777.cons = {};
    for L_1780, L_1781 in pairs(L_1777.lookup) do
        L_1777:removeEsp(L_1780);
    end;
    return ;
end;
local L_1782 = player;
local L_1783 = L_1782.Idled;
for L_1784, L_1785 in ipairs(getconnections(L_1783)) do
    L_1785:Disable();
end;
L_1783:Connect(function()
    return false;
end);
L_1642.Enable = function()
    local L_1786 = nil;
    pcall(function()
        L_1786 = game:GetService("ReplicatedStorage").Events.CIcklcon;
        return ;
    end);
    L_1642.Enabled = true;
    local L_1787 = player.Idled;
    for L_1788, L_1789 in ipairs(getconnections(L_1787)) do
        L_1789:Disable();
    end;
    L_1787:Connect(function()
        return false;
    end);
    local L_1790 = function()
        return player.PlayerGui.Quest.Enabled;
    end;
    local L_1795 = function()
        local L_1793, L_1794 = pcall(function()
            local L_1791 = player.PlayerGui.HUD.Main.Peli.TextLabel.Text;
            local L_1792 = string.split(L_1791, ": ");
            return tonumber(L_1792[2]);
        end);
        return L_1793 and L_1794 or 0;
    end;
    local L_1796 = false;
    if L_1795() < 300 and not string.find(inventoryValue.Value, "Rifle") then
        repeat
            task.wait();
            if not L_1642.Enabled or string.find(inventoryValue.Value, "Rifle") then
                break;
            end;
            for L_1797, L_1798 in pairs(Workspace.Env:GetChildren()) do
                if not L_1642.Enabled then
                    break;
                end;
                if (L_1798.Name == "Part" or L_1798.Name == "Chest") and L_1798:FindFirstChild("ProximityPrompt") then
                    local L_1799 = L_1798:GetPivot().Position;
                    if not (math.abs(L_1799.Y) > 60) then
                        local L_1800 = player.Character.HumanoidRootPart.Position;
                        if not ((L_1800 - L_1799).Magnitude > 300) then
                            player.Character.HumanoidRootPart.CFrame = CFrame.new(L_1800.X, 25, L_1800.Z);
                            local L_1801 = (Vector3.new(L_1800.X, 0, L_1800.Z) - Vector3.new(L_1799.X, 0, L_1799.Z)).Magnitude / 40;
                            local L_1802 = TweenService:Create(player.Character.HumanoidRootPart, TweenInfo.new(L_1801, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_1799.X, 25, L_1799.Z) });
                            L_1802:Play();
                            task.spawn(function()
                                while L_1802.PlaybackState == Enum.PlaybackState.Playing and L_1642.Enabled do
                                    player.Character.HumanoidRootPart.Velocity = Vector3.zero;
                                    task.wait();
                                end;
                                return ;
                            end);
                            L_1802.Completed:Wait();
                            if not L_1642.Enabled then
                                break;
                            end;
                            local L_1803 = math.abs(25 - L_1799.Y) / 15;
                            local L_1804 = TweenService:Create(player.Character.HumanoidRootPart, TweenInfo.new(L_1803, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_1799.X, L_1799.Y, L_1799.Z) });
                            L_1804:Play();
                            task.spawn(function()
                                while L_1804.PlaybackState == Enum.PlaybackState.Playing and L_1642.Enabled do
                                    player.Character.HumanoidRootPart.Velocity = Vector3.zero;
                                    task.wait();
                                end;
                                return ;
                            end);
                            L_1804.Completed:Wait();
                            if not L_1642.Enabled then
                                break;
                            end;
                            repeat
                                task.wait();
                                if not L_1642.Enabled then
                                    break;
                                end;
                                pcall(function()
                                    fireproximityprompt(L_1798.ProximityPrompt);
                                    return ;
                                end);
                            until not L_1798:FindFirstChild("ProximityPrompt") or not L_1798.ProximityPrompt.Enabled or not L_1642.Enabled;
                            if L_1795() >= 300 or string.find(inventoryValue.Value, "Rifle") then
                                L_1796 = true;
                                break;
                            end;
                        end;
                    end;
                end;
            end;
        until L_1796 or L_1795() >= 300 or string.find(inventoryValue.Value, "Rifle") or not L_1642.Enabled;
    end;
    if not L_1642.Enabled then
        return ;
    end;
    if L_1795() >= 300 and not string.find(inventoryValue.Value, "Rifle") then
        local L_1805 = Vector3.new(-532, 6, -3450);
        local L_1806 = player.Character.HumanoidRootPart.Position;
        player.Character.HumanoidRootPart.CFrame = CFrame.new(L_1806.X, 25, L_1806.Z);
        local L_1807 = (Vector3.new(L_1806.X, 0, L_1806.Z) - Vector3.new(L_1805.X, 0, L_1805.Z)).Magnitude / 40;
        local L_1808 = TweenService:Create(player.Character.HumanoidRootPart, TweenInfo.new(L_1807, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_1805.X, 25, L_1805.Z) });
        L_1808:Play();
        task.spawn(function()
            while L_1808.PlaybackState == Enum.PlaybackState.Playing and L_1642.Enabled do
                player.Character.HumanoidRootPart.Velocity = Vector3.zero;
                task.wait();
            end;
            return ;
        end);
        L_1808.Completed:Wait();
    end;
    if not L_1642.Enabled then
        return ;
    end;
    if L_1795() >= 300 and not string.find(inventoryValue.Value, "Rifle") then
        repeat
            task.wait();
            if not L_1642.Enabled then
                break;
            end;
            ShopEvent:InvokeServer(BuyableItems.Rifle, 1);
        until string.find(inventoryValue.Value, "Rifle") or not L_1642.Enabled;
    end;
    if not L_1642.Enabled then
        return ;
    end;
    local L_1811 = function(L_1809)
        player:RequestStreamAroundAsync(L_1809);
        player.Character.HumanoidRootPart.CFrame = CFrame.new(L_1809);
        for L_1810 = 1, 10, 1 do
            if not L_1642.Enabled then
                break;
            end;
            player.Character.HumanoidRootPart.CFrame = CFrame.new(L_1809);
            task.wait(0.05);
        end;
        KnockedOutEvent:FireServer("self");
        return ;
    end;
    if statsFolder.Stats.SpawnPoint.Value ~= "Fishman Island" then
        repeat
            task.wait(1);
            if not L_1642.Enabled then
                break;
            end;
            pcall(function()
                L_1811(Vector3.new(7976, -2153, -17075));
                QuestEvent:InvokeServer({ "npcChat", true });
                SetSpawnEvent:FireServer(nil, Workspace.NPCs.Robo);
                return ;
            end);
        until statsFolder.Stats.SpawnPoint.Value == "Fishman Island" or not L_1642.Enabled;
    end;
    if not L_1642.Enabled then
        return ;
    end;
    repeat
        task.wait();
        if not L_1642.Enabled then
            return ;
        end;
    until player.Character.Humanoid.Health > 25;
    task.wait(1);
    if not L_1642.Enabled then
        return ;
    end;
    repeat
        task.wait();
        if not L_1642.Enabled then
            return ;
        end;
    until player.Character.Humanoid.Health > 25;
    task.wait(1);
    if not L_1642.Enabled then
        return ;
    end;
    local L_1812 = Vector3.new(7838, -2151, -17134);
    local L_1813 = player.Character.HumanoidRootPart;
    local L_1814 = L_1813.Position;
    local L_1815 = L_1814.Y + 100;
    L_1813.CFrame = CFrame.new(L_1814.X, L_1815, L_1814.Z);
    local L_1816 = (Vector3.new(L_1814.X, 0, L_1814.Z) - Vector3.new(L_1812.X, 0, L_1812.Z)).Magnitude / 40;
    local L_1817 = TweenService:Create(L_1813, TweenInfo.new(L_1816, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_1812.X, L_1815, L_1812.Z) });
    L_1817:Play();
    task.spawn(function()
        while L_1817.PlaybackState == Enum.PlaybackState.Playing and L_1642.Enabled do
            L_1813.Velocity = Vector3.zero;
            task.wait();
        end;
        return ;
    end);
    L_1817.Completed:Wait();
    if not L_1642.Enabled then
        return ;
    end;
    local L_1818 = math.abs(L_1815 - L_1812.Y) / 15;
    local L_1819 = TweenService:Create(L_1813, TweenInfo.new(L_1818, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_1812.X, L_1812.Y, L_1812.Z) });
    L_1819:Play();
    task.spawn(function()
        while L_1819.PlaybackState == Enum.PlaybackState.Playing and L_1642.Enabled do
            L_1813.Velocity = Vector3.zero;
            task.wait();
        end;
        return ;
    end);
    L_1819.Completed:Wait();
    if not L_1642.Enabled then
        return ;
    end;
    ToolsEvent:InvokeServer("equip", "Rifle");
    task.wait(0.5);
    if not L_1642.Enabled then
        return ;
    end;
    if not player.Character:FindFirstChild("Rifle") then
        player.Character.Humanoid:EquipTool(player.Backpack.Rifle);
    end;
    rifle = require(ReplicatedStorage.Modules.GunHandle).New("Rifle", player.Character:FindFirstChild("Rifle"));
    while L_1642.Enabled and task.wait(0.1) do
        pcall(function()
            if not L_1642.Enabled then
                return ;
            end;
            if not L_1790() and statsFolder.Stats.Level.Value >= 190 then
                local L_1820 = Vector3.new(7733, -2176, -17222);
                local L_1821 = player.Character.HumanoidRootPart;
                local L_1822 = L_1821.Position;
                local L_1823 = L_1822.Y + 100;
                L_1821.CFrame = CFrame.new(L_1822.X, L_1823, L_1822.Z);
                local L_1824 = (Vector3.new(L_1822.X, 0, L_1822.Z) - Vector3.new(L_1820.X, 0, L_1820.Z)).Magnitude / 40;
                local L_1825 = TweenService:Create(L_1821, TweenInfo.new(L_1824, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_1820.X, L_1823, L_1820.Z) });
                L_1825:Play();
                task.spawn(function()
                    while L_1825.PlaybackState == Enum.PlaybackState.Playing and L_1642.Enabled do
                        L_1821.Velocity = Vector3.zero;
                        task.wait();
                    end;
                    return ;
                end);
                L_1825.Completed:Wait();
                if not L_1642.Enabled then
                    return ;
                end;
                local L_1826 = math.abs(L_1823 - L_1820.Y) / 15;
                local L_1827 = TweenService:Create(L_1821, TweenInfo.new(L_1826, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_1820.X, L_1820.Y, L_1820.Z) });
                L_1827:Play();
                task.spawn(function()
                    while L_1827.PlaybackState == Enum.PlaybackState.Playing and L_1642.Enabled do
                        L_1821.Velocity = Vector3.zero;
                        task.wait();
                    end;
                    return ;
                end);
                L_1827.Completed:Wait();
                if not L_1642.Enabled then
                    return ;
                end;
                task.wait(1);
                if not L_1642.Enabled then
                    return ;
                end;
                repeat
                    task.wait();
                    if not L_1642.Enabled then
                        break;
                    end;
                    QuestEvent:InvokeServer({ "takequest", "Help becky" });
                until L_1790() or not L_1642.Enabled;
                if not L_1642.Enabled then
                    return ;
                end;
                local L_1828 = Vector3.new(7838, -2151, -17134);
                local L_1829 = player.Character.HumanoidRootPart;
                local L_1830 = L_1829.Position;
                local L_1831 = L_1830.Y + 100;
                L_1829.CFrame = CFrame.new(L_1830.X, L_1831, L_1830.Z);
                local L_1832 = (Vector3.new(L_1830.X, 0, L_1830.Z) - Vector3.new(L_1828.X, 0, L_1828.Z)).Magnitude / 40;
                local L_1833 = TweenService:Create(L_1829, TweenInfo.new(L_1832, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_1828.X, L_1831, L_1828.Z) });
                L_1833:Play();
                task.spawn(function()
                    while L_1833.PlaybackState == Enum.PlaybackState.Playing and L_1642.Enabled do
                        L_1829.Velocity = Vector3.zero;
                        task.wait();
                    end;
                    return ;
                end);
                L_1833.Completed:Wait();
                if not L_1642.Enabled then
                    return ;
                end;
                local L_1834 = math.abs(L_1831 - L_1828.Y) / 15;
                local L_1835 = TweenService:Create(L_1829, TweenInfo.new(L_1834, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_1828.X, L_1828.Y, L_1828.Z) });
                L_1835:Play();
                task.spawn(function()
                    while L_1835.PlaybackState == Enum.PlaybackState.Playing and L_1642.Enabled do
                        L_1829.Velocity = Vector3.zero;
                        task.wait();
                    end;
                    return ;
                end);
                L_1835.Completed:Wait();
            end;
            if not L_1642.Enabled then
                return ;
            end;
            local L_1836 = player.Character;
            local L_1837 = L_1836 and L_1836:FindFirstChild(L_33);
            if not L_1837 then
                return ;
            end;
            local L_1838 = nil;
            local L_1839 = math.huge;
            for L_1840, L_1841 in pairs(Workspace.NPCs:GetChildren()) do
                if L_1841.Name == "Fishman Karate User" and L_1841:FindFirstChild(L_33) and not L_1841:FindFirstChild("Blocking") then
                    local L_1842 = (L_1837.Position - L_1841.HumanoidRootPart.Position).Magnitude;
                    if L_1842 < L_1839 then
                        L_1838 = L_1841;
                        L_1839 = L_1842;
                    end;
                end;
            end;
            if L_1838 then
                if not L_1836:FindFirstChild("Rifle") then
                    return ;
                end;
                if not rifle.Reloaded then
                    rifle:Reload();
                end;
                pcall(function()
                    local L_1843 = L_1836.RifleGun.Hole;
                    local L_1844 = { Gun = rifle.Name, Position = L_1838.Head.Position, Start = L_1843.CFrame, joe = "true" };
                    if L_1838.Parent and L_1838:FindFirstChild(L_33) then
                        L_1786:FireServer("fire", L_1844);
                    end;
                    rifle.Reloaded = false;
                    rifle.Equiped = true;
                    rifle.IsAiming = true;
                    rifle.Ready = true;
                    StatsEvent:FireServer("GunMastery", nil, 1);
                    return ;
                end);
            end;
            return ;
        end);
    end;
    return ;
end;
L_1642.Disable = function()
    L_1642.Enabled = false;
    return ;
end;
local L_1846 = function(L_1845)
    return math.floor(L_1845 + 0.5);
end;
local L_1850 = function(L_1847)
    if not L_1847.Character then
        return true;
    end;
    local L_1848 = L_1847.Character:FindFirstChildOfClass("Humanoid");
    local L_1849 = L_1847.Character:FindFirstChild(L_33);
    if not L_1848 or not L_1849 then
        return true;
    end;
    if L_1848.Health <= 0 then
        return true;
    end;
    if not L_1849:IsA("BasePart") then
        return true;
    end;
    if not L_1847.Character.Parent then
        return true;
    end;
    if L_1651.Settings.TeamCheck and L_1847.Team ~= nil and L_1847.Team == player.Team then
        return true;
    end;
    if (Camera.CFrame.Position - L_1849.Position).Magnitude < L_1651.Settings.MaxDistance then
        return true;
    end;
    return false;
end;
local L_1889 = function(L_1851, L_1852)
    local L_1853 = L_1851:FindFirstChild(L_33);
    if not L_1853 or not L_1853:IsA("BasePart") then
        return nil;
    end;
    local L_1854 = L_1851:FindFirstChildOfClass("Humanoid");
    if not L_1854 or L_1854.Health <= 0 then
        return nil;
    end;
    if not L_1851.Parent then
        return nil;
    end;
    local L_1855 = L_1851:GetExtentsSize();
    if L_1855.X > 100 or L_1855.Y > 100 or L_1855.Z > 100 then
        return nil;
    end;
    if L_1855.X < 0.1 or L_1855.Y < 0.1 or L_1855.Z < 0.1 then
        return nil;
    end;
    local L_1856 = L_1855.X * 0.5;
    local L_1857 = L_1855.Y * 0.5;
    local L_1858 = L_1855.Z * 0.5;
    local L_1859 = L_1853.CFrame;
    local L_1860 = { L_1859 * Vector3.new(-L_1856, -L_1857, -L_1858), L_1859 * Vector3.new(-L_1856, -L_1857, L_1858), L_1859 * Vector3.new(-L_1856, L_1857, -L_1858), L_1859 * Vector3.new(-L_1856, L_1857, L_1858), L_1859 * Vector3.new(L_1856, -L_1857, -L_1858), L_1859 * Vector3.new(L_1856, -L_1857, L_1858), L_1859 * Vector3.new(L_1856, L_1857, -L_1858), L_1859 * Vector3.new(L_1856, L_1857, L_1858) };
    local L_1861 = { { 1, 2 }, { 1, 3 }, { 1, 5 }, { 2, 4 }, { 2, 6 }, { 3, 4 }, { 3, 7 }, { 4, 8 }, { 5, 6 }, { 5, 7 }, { 6, 8 }, { 7, 8 } };
    local L_1862 = Camera.ViewportSize;
    local L_1863 = math.huge;
    local L_1864 = math.huge;
    local L_1865 = -math.huge;
    local L_1866 = -math.huge;
    local L_1867 = 0;
    local L_1868 = 0.03;
    local L_1870 = function(L_1869)
        return -Camera.CFrame:PointToObjectSpace(L_1869).Z;
    end;
    local L_1873 = function(L_1871)
        local L_1872 = Camera:WorldToViewportPoint(L_1871);
        if L_1872.Z <= 0 then
            return ;
        end;
        if L_1872.X ~= L_1872.X or L_1872.Y ~= L_1872.Y then
            return ;
        end;
        L_1863 = math.min(L_1863, L_1872.X);
        L_1864 = math.min(L_1864, L_1872.Y);
        L_1865 = math.max(L_1865, L_1872.X);
        L_1866 = math.max(L_1866, L_1872.Y);
        L_1867 = L_1867 + 1;
        return ;
    end;
    for L_1874 = 1, 8, 1 do
        if L_1868 < L_1870(L_1860[L_1874]) then
            L_1873(L_1860[L_1874]);
        end;
    end;
    for L_1875, L_1876 in ipairs(L_1861) do
        local L_1877 = L_1860[L_1876[1]];
        local L_1878 = L_1860[L_1876[2]];
        local L_1879 = L_1870(L_1877);
        local L_1880 = L_1870(L_1878);
        if L_1879 > L_1868 ~= (L_1880 > L_1868) then
            local L_1881 = (L_1868 - L_1879) / (L_1880 - L_1879);
            local L_1882 = math.clamp(L_1881, 0, 1);
            L_1873(L_1877 + (L_1878 - L_1877) * L_1882);
        end;
    end;
    if L_1867 == 0 then
        if L_1852 and L_1852.LastRect and time() - (L_1852.LastSeen or 0) < 0.15 then
            return table.unpack(L_1852.LastRect);
        end;
        return nil;
    end;
    L_1863 = math.clamp(L_1863, 0, L_1862.X);
    L_1865 = math.clamp(L_1865, 0, L_1862.X);
    L_1864 = math.clamp(L_1864, 0, L_1862.Y);
    L_1866 = math.clamp(L_1866, 0, L_1862.Y);
    local L_1883 = math.max(2, L_1865 - L_1863);
    local L_1884 = math.max(2, L_1866 - L_1864);
    if L_1883 < L_1651.Settings.MinBoxSize or L_1884 < L_1651.Settings.MinBoxSize then
        if L_1852 and L_1852.LastRect and time() - (L_1852.LastSeen or 0) < 0.15 then
            return table.unpack(L_1852.LastRect);
        end;
        return nil;
    end;
    local L_1885 = L_1846(L_1863);
    local L_1886 = L_1846(L_1864);
    local L_1887 = L_1846(L_1883);
    local L_1888 = L_1846(L_1884);
    if L_1852 then
        L_1852.LastRect = { L_1885, L_1886, L_1887, L_1888 };
        L_1852.LastSeen = time();
    end;
    return L_1885, L_1886, L_1887, L_1888;
end;
local L_1890 = function()
    if L_1652 and L_1652.Parent then
        return L_1652;
    end;
    L_1652 = Instance.new("ScreenGui");
    L_1652.Name = "PlayerESP";
    L_1652.IgnoreGuiInset = true;
    L_1652.ResetOnSpawn = false;
    L_1652.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
    L_1652.Parent = player:WaitForChild("PlayerGui");
    return L_1652;
end;
local L_1905 = function()
    local L_1891 = Instance.new(L_32);
    L_1891.Name = "Holder";
    L_1891.BackgroundTransparency = 1;
    L_1891.BorderSizePixel = 0;
    L_1891.Visible = false;
    L_1891.ZIndex = 1;
    L_1891.Parent = L_1890();
    local L_1892 = Instance.new(L_32);
    L_1892.Name = "Container";
    L_1892.BackgroundTransparency = 1;
    L_1892.BorderSizePixel = 0;
    L_1892.Size = UDim2.fromScale(1, 1);
    L_1892.ZIndex = 1;
    L_1892.Parent = L_1891;
    local L_1893 = Instance.new(L_32);
    L_1893.Name = "Box";
    L_1893.BackgroundTransparency = 1;
    L_1893.BorderSizePixel = 0;
    L_1893.ZIndex = 2;
    L_1893.Parent = L_1892;
    local L_1894 = Instance.new(L_32);
    L_1894.Name = "BG";
    L_1894.BackgroundTransparency = L_1651.Settings.BoxFillTransparency;
    L_1894.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
    L_1894.BorderSizePixel = 0;
    L_1894.Size = UDim2.fromScale(1, 1);
    L_1894.ZIndex = 1;
    L_1894.Parent = L_1893;
    local L_1895 = Instance.new("UIGradient");
    L_1895.Rotation = L_1651.Settings.BoxGradientRotation;
    L_1895.Color = L_1651.Settings.BoxGradient;
    L_1895.Enabled = L_1651.Settings.BoxGradientEnabled;
    L_1895.Parent = L_1894;
    local L_1896 = Instance.new("UIStroke");
    L_1896.Thickness = L_1651.Settings.Thickness;
    L_1896.Color = L_1651.Settings.BoxColor;
    L_1896.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
    L_1896.Parent = L_1893;
    local L_1897 = Instance.new("UIGradient");
    L_1897.Color = L_1651.Settings.BoxStrokeGradient;
    L_1897.Rotation = 90;
    L_1897.Parent = L_1896;
    local L_1898 = Instance.new(L_32);
    L_1898.Name = "Health";
    L_1898.BackgroundColor3 = Color3.fromRGB(12, 26, 58);
    L_1898.BackgroundTransparency = 0;
    L_1898.BorderSizePixel = 0;
    L_1898.ClipsDescendants = true;
    L_1898.ZIndex = 3;
    L_1898.Parent = L_1892;
    local L_1899 = Instance.new("UIStroke");
    L_1899.Thickness = L_1651.Settings.HealthbarOutlineThickness;
    L_1899.Color = Color3.fromRGB(0, 0, 0);
    L_1899.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
    L_1899.Parent = L_1898;
    local L_1900 = Instance.new("UIGradient");
    L_1900.Color = L_1651.Settings.HealthStrokeGradient;
    L_1900.Rotation = 90;
    L_1900.Parent = L_1899;
    local L_1901 = Instance.new(L_32);
    L_1901.Name = "Fill";
    L_1901.BorderSizePixel = 0;
    L_1901.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
    L_1901.AnchorPoint = Vector2.new(0, 1);
    L_1901.Position = UDim2.new(0, 0, 1, 0);
    L_1901.Size = UDim2.new(1, 0, 0, 0);
    L_1901.ZIndex = 4;
    L_1901.Parent = L_1898;
    local L_1902 = Instance.new("UIGradient");
    L_1902.Rotation = 90;
    L_1902.Color = L_1651.Settings.HealthFillGradient;
    L_1902.Enabled = true;
    L_1902.Parent = L_1901;
    local L_1903 = Instance.new("TextLabel");
    L_1903.Name = "Name";
    L_1903.BackgroundTransparency = 1;
    L_1903.BorderSizePixel = 0;
    L_1903.TextColor3 = L_1651.Settings.TextColor;
    L_1903.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
    L_1903.TextStrokeTransparency = 0.2;
    L_1903.Font = Enum.Font.GothamSemibold;
    L_1903.TextSize = 14;
    L_1903.AnchorPoint = Vector2.new(0.5, 1);
    L_1903.ZIndex = 5;
    L_1903.Parent = L_1892;
    local L_1904 = Instance.new("UIGradient");
    L_1904.Rotation = L_1651.Settings.NameGradientRotation;
    L_1904.Color = L_1651.Settings.NameGradient;
    L_1904.Enabled = L_1651.Settings.NameGradientEnabled;
    L_1904.Parent = L_1903;
    return { Holder = L_1891, Container = L_1892, Box = L_1893, BoxBG = L_1894, BoxGrad = L_1895, Stroke = L_1896, BoxStrokeGrad = L_1897, HB = L_1898, HBS = L_1899, HBSGrad = L_1900, HBF = L_1901, HBG = L_1902, Name = L_1903, NameGrad = L_1904, LastRect = nil, LastSeen = 0 };
end;
local L_1911 = function(L_1906)
    if L_1906 then
        if L_1906.Connections then
            for L_1907, L_1908 in pairs(L_1906.Connections) do
                if L_1908 and L_1908.Disconnect then
                    L_1908:Disconnect();
                end;
            end;
        end;
        for L_1909, L_1910 in pairs(L_1906) do
            if typeof(L_1910) == "Instance" and L_1910.Destroy then
                L_1910:Destroy();
            end;
        end;
    end;
    return ;
end;
local L_1928 = function(L_1912, L_1913, L_1914)
    local L_1915 = L_1651.Settings;
    local L_1916 = L_1915.BoxPadding;
    local L_1917 = L_1915.Names and L_1915.NameHeight or 0;
    local L_1918 = L_1913 + L_1916 * 2;
    local L_1919 = L_1914 + L_1916 * 2;
    local L_1920 = L_1915.Healthbar and L_1915.HealthbarWidth or 0;
    local L_1921 = L_1915.Healthbar and L_1915.HealthbarOutside and L_1915.HealthbarOffset or 0;
    local L_1922 = 0;
    local L_1923 = 0;
    if L_1915.Healthbar and L_1915.HealthbarOutside then
        if L_1915.HealthbarSide == "Left" then
            L_1922 = L_1920 + L_1921;
        else
            L_1923 = L_1920 + L_1921;
        end;
    end;
    local L_1924 = L_1922 + L_1918 + L_1923;
    local L_1925 = L_1917 + L_1919;
    L_1912.Box.Position = UDim2.fromOffset(L_1922, L_1917);
    L_1912.Box.Size = UDim2.fromOffset(L_1918, L_1919);
    L_1912.BoxBG.BackgroundTransparency = L_1915.BoxFillTransparency;
    L_1912.BoxBG.Visible = L_1915.Boxes;
    L_1912.BoxGrad.Color = L_1915.BoxGradient;
    L_1912.BoxGrad.Rotation = L_1915.BoxGradientRotation;
    L_1912.BoxGrad.Enabled = L_1915.BoxGradientEnabled;
    L_1912.Stroke.Thickness = L_1915.Thickness;
    L_1912.Stroke.Color = L_1915.BoxColor;
    L_1912.Stroke.Transparency = L_1915.Boxes and 0 or 1;
    L_1912.BoxStrokeGrad.Color = L_1915.BoxStrokeGradient;
    L_1912.HB.Visible = L_1915.Healthbar;
    if L_1915.Healthbar then
        if L_1915.HealthbarOutside then
            local L_1926 = if L_1915.HealthbarSide ~= "Left" then L_1922 + L_1918 + (L_1921 > 0 and L_1921 or 0) - L_1920 else 0;
            L_1912.HB.Position = UDim2.fromOffset(L_1926, L_1917);
            L_1912.HB.Size = UDim2.fromOffset(L_1920, L_1919);
        else
            local L_1927 = L_1922 + (L_1915.HealthbarSide == "Left" and L_1916 or L_1918 - L_1916 - L_1920);
            L_1912.HB.Position = UDim2.fromOffset(L_1927, L_1917 + L_1916);
            L_1912.HB.Size = UDim2.fromOffset(L_1920, L_1919 - L_1916 * 2);
        end;
        L_1912.HBS.Thickness = L_1915.HealthbarOutlineThickness;
        L_1912.HBS.Transparency = 0;
        L_1912.HBSGrad.Color = L_1915.HealthStrokeGradient;
    end;
    L_1912.Name.Visible = L_1915.Names;
    if L_1915.Names then
        L_1912.Name.Position = UDim2.fromOffset(L_1922 + math.floor(L_1918 * 0.5), L_1917 - 2);
        L_1912.Name.Size = UDim2.fromOffset(math.max(70, L_1913), L_1915.NameHeight);
    end;
    return L_1924, L_1925, L_1922, L_1917;
end;
local L_1948 = function(L_1929, L_1930)
    if not L_1930 then
        return ;
    end;
    if not L_1651.Settings.Enabled or L_1929 == player or L_1850(L_1929) then
        if L_1930.Holder then
            L_1930.Holder.Visible = false;
        end;
        return ;
    end;
    local L_1931, L_1932, L_1933, L_1934 = L_1889(L_1929.Character, L_1930);
    if not L_1931 then
        if L_1930.Holder then
            L_1930.Holder.Visible = false;
        end;
        return ;
    end;
    local L_1935, L_1936, L_1937, L_1938 = L_1928(L_1930, L_1933, L_1934);
    L_1930.Holder.Size = UDim2.fromOffset(L_1935, L_1936);
    L_1930.Holder.Position = UDim2.fromOffset(L_1846(L_1931 - L_1937), L_1846(L_1932 - L_1938));
    L_1930.Holder.Visible = true;
    if L_1651.Settings.Healthbar then
        local L_1939 = L_1929.Character:FindFirstChildOfClass("Humanoid");
        local L_1940 = L_1939 and L_1939.Health or 0;
        local L_1941 = L_1939 and math.max(1, L_1939.MaxHealth) or 1;
        local L_1942 = math.clamp(L_1940 / L_1941, 0, 1);
        L_1930.HBF.Size = UDim2.new(1, 0, L_1942, 0);
        L_1930.HBF.Position = UDim2.new(0, 0, 1, 0);
        L_1930.HBG.Color = L_1651.Settings.HealthFillGradient;
    end;
    if L_1651.Settings.Names then
        local L_1943 = L_1929.Character:FindFirstChild(L_33);
        local L_1944 = L_1651.Settings.UseDisplayName and L_1929.DisplayName or L_1929.Name;
        local L_1945 = L_1943 and (Camera.CFrame.Position - L_1943.Position).Magnitude or 0;
        local L_1946 = math.floor(L_1945 + 0.5);
        local L_1947 = L_1944 .. " [" .. tostring(L_1946) .. "]";
        if L_1651.Settings.DevilFruit then
            L_1947 = L_1944 .. " | Fruit : " .. (L_1650(L_1929) or "None") .. " [" .. tostring(L_1946) .. "]";
        end;
        L_1930.Name.TextColor3 = L_1651.Settings.TextColor;
        L_1930.Name.Text = L_1947;
        L_1930.NameGrad.Color = L_1651.Settings.NameGradient;
        L_1930.NameGrad.Rotation = L_1651.Settings.NameGradientRotation;
        L_1930.NameGrad.Enabled = L_1651.Settings.NameGradientEnabled;
    end;
    return ;
end;
local L_1951 = function()
    for L_1949, L_1950 in pairs(L_1654) do
        L_1948(L_1949, L_1950);
    end;
    return ;
end;
local L_1954 = function(L_1952)
    if L_1952 == player then
        return ;
    end;
    if L_1654[L_1952] then
        return ;
    end;
    local L_1953 = L_1905();
    L_1654[L_1952] = L_1953;
    L_1953.Connections = {};
    L_1953.Connections.CharacterAdded = L_1952.CharacterAdded:Connect(function()
        return ;
    end);
    return ;
end;
local L_1957 = function(L_1955)
    local L_1956 = L_1654[L_1955];
    if L_1956 then
        L_1911(L_1956);
        L_1654[L_1955] = nil;
    end;
    return ;
end;
L_1651.Enable = function()
    if L_1651.Settings.Enabled then
        return ;
    end;
    L_1651.Settings.Enabled = true;
    L_1890();
    for L_1958, L_1959 in ipairs(Players:GetPlayers()) do
        if L_1959 ~= player then
            L_1954(L_1959);
        end;
    end;
    L_1653.PlayerAdded = Players.PlayerAdded:Connect(function(L_1960)
        L_1954(L_1960);
        return ;
    end);
    L_1653.PlayerRemoving = Players.PlayerRemoving:Connect(function(L_1961)
        L_1957(L_1961);
        return ;
    end);
    L_1653.Stepped = RunService.RenderStepped:Connect(function()
        if Workspace.CurrentCamera ~= Camera then
            Camera = Workspace.CurrentCamera;
        end;
        L_1951();
        return ;
    end);
    return ;
end;
L_1651.Disable = function()
    if not L_1651.Settings.Enabled then
        return ;
    end;
    L_1651.Settings.Enabled = false;
    for L_1962, L_1963 in pairs(L_1653) do
        if L_1963 and L_1963.Disconnect then
            L_1963:Disconnect();
        end;
    end;
    L_1653 = {};
    for L_1964, L_1965 in pairs(L_1654) do
        if L_1965 and L_1965.Holder then
            L_1965.Holder.Visible = false;
        end;
    end;
    return ;
end;
L_1651.Configure = function(L_1966)
    for L_1967, L_1968 in pairs(L_1966 or {}) do
        if L_1651.Settings[L_1967] ~= nil then
            L_1651.Settings[L_1967] = L_1968;
        end;
    end;
    return ;
end;
local L_1969 = player.Character or player.CharacterAdded:Wait();
local L_1970 = L_1969:WaitForChild("Humanoid");
local L_1971 = L_1969:WaitForChild(L_33);
local L_1972 = { "geppo", "rolling" };
player.CharacterAdded:Connect(function(L_1973)
    L_1969 = L_1973;
    L_1970 = L_1973:WaitForChild("Humanoid");
    L_1971 = L_1973:WaitForChild(L_33);
    return ;
end);
L_1969.DescendantAdded:Connect(function(L_1974)
    if not getgenv().AntiStun then
        return ;
    end;
    task.wait();
    if L_1974.Name == "Stun" or L_1974.Name == "StunFolder" then
        L_1974:Destroy();
    end;
    if L_1974:IsA("BodyPosition") or L_1974:IsA("BodyVelocity") and not table.find(L_1972, L_1974.Name) then
        L_1974:Destroy();
    end;
    return ;
end);
player.CharacterAdded:Connect(function(L_1975)
    repeat
        task.wait();
    until player.Character:FindFirstChild("Humanoid");
    L_1969 = L_1975;
    L_1969.DescendantAdded:Connect(function(L_1976)
        if not getgenv().AntiStun then
            return ;
        end;
        task.wait();
        if L_1976.Name == "Stun" or L_1976.Name == "StunFolder" then
            L_1976:Destroy();
        end;
        if L_1976:IsA("BodyPosition") or L_1976:IsA("BodyVelocity") and not table.find(L_1972, L_1976.Name) then
            L_1976:Destroy();
        end;
        return ;
    end);
    return ;
end);
RunService.Heartbeat:Connect(function(L_1977)
    if not L_1655 then
        return ;
    end;
    if not L_1970 or not L_1971 then
        return ;
    end;
    local L_1978 = L_1970.MoveDirection;
    if L_1978.Magnitude > 0 then
        local L_1979 = L_1971.AssemblyLinearVelocity;
        local L_1980 = L_1978 * (L_1970.WalkSpeed + L_1656);
        L_1971.AssemblyLinearVelocity = Vector3.new(L_1980.X, L_1979.Y, L_1980.Z);
    end;
    return ;
end);
resetTeleportAURA = function(L_1981)
    warn("teleporting");
    if player.Character:FindFirstChildWhichIsA("ForceField", true) then
        return ;
    end;
    warn("trying");
    player.Character.HumanoidRootPart.CFrame = CFrame.new(L_1981);
    warn("tped once");
    local L_1982 = math.random(4, 8);
    for L_1983 = 1, 10, 1 do
        if L_1983 == L_1982 then
            KnockedOutEvent:FireServer("self");
        end;
        player.Character.HumanoidRootPart.CFrame = CFrame.new(L_1981);
        task.wait(0.05);
    end;
    warn("we did ts 10 times");
    warn("done");
    local L_1984 = player.Character.Humanoid;
    return ;
end;
CustomTween = function(L_1985, L_1986, L_1987)
    if player.Character:GetAttribute("SpeedBypass") < 1 then
        return ;
    end;
    local L_1988 = player.Character;
    if not L_1988 then
        return ;
    end;
    local L_1989 = L_1988:FindFirstChild(L_33);
    if not L_1989 then
        return ;
    end;
    local L_1990 = L_1989.CFrame;
    local L_1991 = L_1985 + Vector3.new(0, 3, 0);
    local L_1992 = L_1989.Position;
    local L_1993 = Vector3.new(8812, 66, 11539);
    local L_1994 = (L_1989.Position - L_1993).Magnitude;
    if L_1986 and L_1994 <= 100 then
        L_1986 = nil;
    end;
    if L_1986 then
        L_1989.CFrame = CFrame.new(L_1989.Position.X, L_1986, L_1989.Position.Z) * (L_1990 - L_1990.Position);
        L_1992 = L_1989.Position;
    end;
    local L_1995 = (Vector2.new(L_1992.X, L_1992.Z) - Vector2.new(L_1991.X, L_1991.Z)).Magnitude;
    if L_1995 <= 8 then
        local L_1996 = not L_1987 and L_1991.Y or L_1986 or L_1992.Y;
        L_1989.CFrame = CFrame.new(L_1991.X, L_1996, L_1991.Z) * (L_1990 - L_1990.Position);
        L_1989.Velocity = Vector3.zero;
        return ;
    end;
    local L_1997 = L_1986 or L_1992.Y;
    local L_1998 = L_1995 / 40;
    local L_1999 = 2;
    if not L_1987 then
        if L_1995 <= 10 then
            L_1999 = 0;
        else
            L_1999 = 1 - 10 / L_1995;
        end;
    end;
    local L_2000 = 0;
    while L_2000 < 1 do
        if not player.Character or not player.Character:FindFirstChild(L_33) then
            return ;
        end;
        local L_2001 = L_2000 + RunService.Heartbeat:Wait() / L_1998;
        L_2000 = math.clamp(L_2001, 0, 1);
        local L_2002 = L_1992.X + L_2000 * (L_1991.X - L_1992.X);
        local L_2003 = L_1992.Z + L_2000 * (L_1991.Z - L_1992.Z);
        local L_2004 = if not (L_2000 < L_1999) then L_1997 + (L_1999 < 1 and (L_2000 - L_1999) / (1 - L_1999) or 0) * (L_1991.Y - L_1997) else L_1997;
        local L_2005 = Vector3.new(L_2002, L_2004, L_2003);
        L_1989.Velocity = Vector3.zero;
        L_1989.CFrame = CFrame.new(L_2005) * (L_1990 - L_1990.Position);
    end;
    if player.Character and player.Character:FindFirstChild(L_33) then
        local L_2006 = L_1999 <= 1 and L_1991.Y or L_1997;
        L_1989.CFrame = CFrame.new(Vector3.new(L_1991.X, L_2006, L_1991.Z)) * (L_1990 - L_1990.Position);
        L_1989.Velocity = Vector3.zero;
    end;
    return ;
end;
GetClosestMob = function(L_2007)
    if not player.Character or not player.Character:FindFirstChild(L_33) then
        return { Agroed = {}, NonAgroed = {} };
    end;
    local L_2008 = player.Character.HumanoidRootPart;
    local L_2009 = {};
    local L_2010 = {};
    for L_2011, L_2012 in next, Workspace.NPCs:GetChildren() do
        if L_2012.Name == L_2007 and L_2012:FindFirstChild("Head") then
            local L_2013 = (L_2012:GetPivot().Position - player.Character:GetPivot().Position).Magnitude;
            local L_2014 = L_2012:FindFirstChild("Info");
            local L_2015 = false;
            if L_2014 then
                local L_2016 = L_2014:FindFirstChild("Target");
                if L_2016 and L_2016:IsA("ObjectValue") and L_2016.Value == L_2008 then
                    L_2015 = true;
                end;
            end;
            local L_2017 = { Mob = L_2012, Distance = L_2013 };
            if L_2015 then
                table.insert(L_2009, L_2017);
            else
                table.insert(L_2010, L_2017);
            end;
        end;
    end;
    table.sort(L_2009, function(L_2018, L_2019)
        return L_2018.Distance < L_2019.Distance;
    end);
    table.sort(L_2010, function(L_2020, L_2021)
        return L_2020.Distance < L_2021.Distance;
    end);
    return { Agroed = L_2009, NonAgroed = L_2010 };
end;
Island = function(L_2022, L_2023)
    if statsFolder.Stats.SpawnPoint.Value == L_2022 then
        return true;
    end;
    if statsFolder.Stats.SpawnPoint.Value ~= L_2022 then
        repeat
            task.wait();
            resetTeleportAURA(L_2023);
            repeat
                task.wait();
            until player.Character.Humanoid.Health / player.Character.Humanoid.MaxHealth > 0.3;
            QuestEvent:InvokeServer({ "npcChat", true });
            if Workspace.NPCs:FindFirstChild("Robo") then
                SetSpawnEvent:FireServer(nil, Workspace.NPCs.Robo);
            end;
        until statsFolder.Stats.SpawnPoint.Value == L_2022 or not getgenv().Farm;
    end;
    return ;
end;
IsPlayingAnimation = function(L_2024, L_2025)
    local L_2026 = L_2025:lower();
    for L_2027, L_2028 in ipairs(L_2024:GetPlayingAnimationTracks()) do
        local L_2029 = L_2028.Animation.AnimationId:match("%d+");
        if L_2029 and MarketplaceService:GetProductInfo(tonumber(L_2029)).Name:lower():match(L_2026) then
            return true;
        end;
    end;
    return false;
end;
Buy = function(L_2030, L_2031)
    local L_2032 = L_2031 or 1;
    if typeof(L_2030) == "string" then
        L_2030 = workspace.BuyableItems:FindFirstChild(L_2030);
    end;
    ShopEvent:InvokeServer(L_2030, L_2032);
    return ;
end;
GetChest = function()
    local L_2033 = nil;
    local L_2034 = 300;
    for L_2035, L_2036 in ipairs(Workspace.Env:GetChildren()) do
        if L_2036.Name == "Chest" and L_2036.PrimaryPart and L_2036:GetPivot().Position.Y < 50 then
            local L_2037 = (L_2036:GetPivot().Position - player.Character:GetPivot().Position).Magnitude;
            if L_2037 < L_2034 then
                L_2033 = L_2036;
                L_2034 = L_2037;
            end;
        end;
    end;
    return L_2033;
end;
GetPrompt = function(L_2038)
    for L_2039, L_2040 in next, Workspace.Env:GetChildren() do
        if L_2040.Name == "Part" and L_2040:IsA("BasePart") and (L_2040.Position - L_2038).Magnitude < 10 then
            return L_2040.ProximityPrompt;
        end;
    end;
    return ;
end;
GetCurrentIsland = function()
    local L_2041 = nil;
    local L_2042 = math.huge;
    for L_2043, L_2044 in next, workspace.Islands:GetChildren() do
        local L_2045 = (L_2044:GetPivot().Position - player.Character:GetPivot().Position).Magnitude;
        if L_2045 < L_2042 then
            L_2041 = L_2044;
            L_2042 = L_2045;
        end;
    end;
    return L_2041;
end;
Loop = nil;
Fish = function()
    local L_2046 = player.Character;
    if not L_2046 then
        return ;
    end;
    local L_2047 = ReplicatedStorage:WaitForChild("Fishing"):WaitForChild("Remotes"):WaitForChild("Action");
    local L_2048 = player.Backpack:FindFirstChild("Fishing Rod") or L_2046:FindFirstChild("Fishing Rod");
    if not L_2048 then
        return ;
    end;
    if not L_2046:FindFirstChild("Fishing Rod") then
        local L_2049 = player.Backpack:FindFirstChild("Fishing Rod");
        if L_2049 then
            L_2049.Parent = L_2046;
        end;
        task.wait(0.2);
    end;
    local L_2050 = GetCurrentIsland();
    if not L_2050 then
        return ;
    end;
    if not L_2050:FindFirstChild("Dock", true) then
        return ;
    end;
    local L_2051 = Workspace.Effects:FindFirstChild(player.Name .. "'s hook");
    if not L_2051 then
        if not pcall(function()
            L_2047:InvokeServer({ Action = "Throw", Goal = Vector3.new(-1269.864501953125, -99.21800994873047, -4819.37646484375), Bait = "Common Fish Bait" });
            task.wait(0.3);
            L_2047:InvokeServer({ Action = "Landed" });
            return ;
        end) then
            return ;
        end;
        local L_2052 = tick() + 5;
        repeat
            task.wait(0.1);
            L_2051 = Workspace.Effects:FindFirstChild(player.Name .. "'s hook");
        until L_2051 or L_2052 < tick() or not getgenv().Farm;
        if not L_2051 then
            return ;
        end;
    end;
    local L_2053 = true;
    task.spawn(function()
        while L_2053 and L_2051 and L_2051.Parent and getgenv().Farm do
            pcall(function()
                if L_2046 and L_2046:FindFirstChild(L_33) then
                    L_2051.CFrame = CFrame.new(L_2046.HumanoidRootPart.Position);
                end;
                return ;
            end);
            task.wait();
        end;
        return ;
    end);
    task.spawn(function()
        local L_2054 = ReplicatedStorage:WaitForChild("FishingShopRemote");
        local L_2055 = require(ReplicatedStorage.Modules.ToolDesc.ToolDescUtils).GetAllFishes();
        for L_2056, L_2057 in pairs(L_2055) do
            pcall(function()
                L_2054:InvokeServer({ Method = "SellFish", Fish = L_2056, All = true });
                return ;
            end);
            task.wait(0.05);
        end;
        return ;
    end);
    local L_2058 = false;
    local L_2059 = tick();
    while L_2051 and L_2051.Parent and getgenv().Farm and tick() - L_2059 < 30 do
        task.wait(0.1);
        local L_2060 = false;
        for L_2061, L_2062 in ipairs(Workspace.Effects:GetChildren()) do
            if L_2062:IsA("Model") and L_2062 ~= L_2051 and (L_2062:GetPivot().Position - L_2051:GetPivot().Position).Magnitude < 10 then
                L_2060 = true;
                break;
            end;
        end;
        if L_2060 then
            L_2053 = false;
            L_2048.Parent = player.Backpack;
            task.wait(0.5);
            if getgenv().Farm and L_2046 then
                L_2048.Parent = L_2046;
            end;
            break;
        end;
        if not L_2058 then
            local L_2063 = false;
            for L_2064, L_2065 in ipairs(Workspace.Effects:GetChildren()) do
                if L_2065.Name == "Splash" then
                    local L_2066 = Vector3.new(L_2051:GetPivot().Position.X, 0, L_2051:GetPivot().Position.Z);
                    if (Vector3.new(L_2065.Position.X, 0, L_2065.Position.Z) - L_2066).Magnitude < 10 then
                        L_2063 = true;
                        break;
                    end;
                end;
            end;
            if L_2063 then
                L_2058 = true;
                task.spawn(function()
                    task.wait(math.random(60, 70) / 10);
                    pcall(function()
                        L_2047:InvokeServer({ Action = "Reel" });
                        return ;
                    end);
                    task.wait(1);
                    L_2058 = false;
                    return ;
                end);
            end;
        end;
    end;
    L_2053 = false;
    return ;
end;
FakeGeppo = function()
    if statsFolder.Skills:FindFirstChild("skyWalk").Value == true then
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer("Sky Walk2", { char = game.Players.LocalPlayer.Character, cf = CFrame.new(-3065.980712890625, 200.7225799560547, -11824.01171875, 0, 1, -0.0, 0, -0.0, -1, -1, 0, -0.0) });
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer("Geppo", { char = game.Players.LocalPlayer.Character, cf = CFrame.new(-3065.980712890625, 200.7225799560547, -11824.01171875, 0, 1, -0.0, 0, -0.0, -1, -1, 0, -0.0) });
    end;
    return ;
end;
HasGeppo = function()
    return statsFolder.Skills:FindFirstChild("skyWalk").Value == true or statsFolder.Skills:FindFirstChild("Rokushiki") and statsFolder.Skills:FindFirstChild("Rokushiki").Value > 0;
end;
local L_2068 = function(L_2067)
    QuestEvent:InvokeServer({ "quit" });
    task.wait(1.5);
    QuestEvent:InvokeServer({ "takequest", L_2067 });
    return ;
end;
local L_2071 = function(L_2069)
    local L_2070 = TweenService:Create(L_1969.HumanoidRootPart, TweenInfo.new((L_1969.HumanoidRootPart.Position - L_2069).Magnitude / 30, Enum.EasingStyle.Linear), { CFrame = CFrame.new(L_2069) });
    L_2070:Play();
    L_2070.Completed:Wait();
    return ;
end;
local L_2077 = function()
    local L_2072 = nil;
    local L_2073 = 50;
    for L_2074, L_2075 in pairs(Players:GetPlayers()) do
        if L_2075 ~= player and L_2075.Character and L_2075.Character:FindFirstChild(L_33) and player.Character and player.Character:FindFirstChild(L_33) then
            local L_2076 = (player.Character.HumanoidRootPart.Position - L_2075.Character.HumanoidRootPart.Position).Magnitude;
            if L_2076 < L_2073 then
                L_2072 = L_2075;
                L_2073 = L_2076;
            end;
        end;
    end;
    return L_2072;
end;
Main = Library.CreateMain({ Title = "Grand Piece Online", Desc = "" });
Page1 = Main.CreatePage({ Page_Name = "Main", Page_Title = "Main Tab" });
Page2 = Main.CreatePage({ Page_Name = "Esp", Page_Title = "ESP Tab" });
Page4 = Main.CreatePage({ Page_Name = "Combat", Page_Title = "Combat Tab" });
Page3 = Main.CreatePage({ Page_Name = "Farm", Page_Title = "Farm Tab" });
Page5 = Main.CreatePage({ Page_Name = "Misc", Page_Title = "Misc Tab" });
ConfigTab = Main.CreatePage({ Page_Name = "Config", Page_Title = "Config Tab" });
ConfigSection = ConfigTab.CreateSection("Config");
othersection = ConfigTab.CreateSection("Other");
Try2 = ConfigTab.CreateSection("Auto Rejoin");
ChestEsp = Page2.CreateSection("Chest Esp", true);
MedalEsp = Page2.CreateSection("Medal Esp", true);
PlayerEsp = Page2.CreateSection("Player Esp");
PsSection = Page1.CreateSection("Private Server");
SpeedSection = Page1.CreateSection("Speed");
LevelSection = Page3.CreateSection("Level Farm");
HalloweenSection = Page3.CreateSection("Halloween Farm");
JuzoSection = Page3.CreateSection("Juzo");
santaSection = Page3.CreateSection("Santa");
ImeplSection = Page3.CreateSection("Impel");
ShipSection = Page3.CreateSection("Ship Farm");
BaalSection = Page3.CreateSection("Baal Farm");
PicaSection = Page3.CreateSection("Pica Farm");
GkkSection = Page3.CreateSection("Gkk Stack");
StatsSection = Page3.CreateSection("Auto Stats");
PlayerSection = Page4.CreateSection("Player Combat");
Movementsection = Page5.CreateSection("Movement");
QOL = Page5.CreateSection("Quality Of Life");
IslandTp = Page5.CreateSection("Island");
MarketSection = Page5.CreateSection("Market");
ExploitSection = Page5.CreateSection("Local Player");
GlobalSett = Page5.CreateSection("Global Settings");
task.spawn(function()
    while true do
        task.wait(1);
        task.spawn(pcall, function()
            RequirementsTracker:Update("Geppo", statsFolder.Skills.skyWalk.Value);
            return ;
        end);
    end;
end);
ChestEsp.CreateToggle({ Title = "Chest Esp", Desc = "Enable or disable Chest Esp", Default = false }, function(L_2078)
    getgenv().ChestEspEnabled = L_2078;
    if L_2078 then
        L_1640:start();
    else
        L_1640:stop();
    end;
    return ;
end);
ChestEsp.CreateSlider({ Title = "Max Distance", Min = 0, Max = 10000, Default = 2500, Precise = true }, function(L_2079)
    Config.MaxDistance = L_2079;
    Config.maxDistance = L_2079;
    return ;
end);
ChestEsp.CreateDropdown({ Title = "Enabled Chests", List = { "Common", "Uncommon", "Rare", "Legendary", "Mythic" }, Default = { "Common", "Uncommon", "Rare", "Legendary", "Mythic" }, Search = false, Selected = true }, function(L_2080, L_2081)
    SelectedChests[L_2080] = L_2081;
    L_1640:applyFilter();
    return ;
end);
MedalEsp.CreateToggle({ Title = "Medal Esp", Desc = "Enable or disable Medal Esp", Default = false }, function(L_2082)
    getgenv().MedalEspEnabled = L_2082;
    if L_2082 then
        L_1641:start();
    else
        L_1641:stop();
    end;
    return ;
end);
MedalEsp.CreateSlider({ Title = "Max Distance", Min = 0, Max = 10000, Default = 2500, Precise = true }, function(L_2083)
    Config.MaxDistance = L_2083;
    Config.maxDistance = L_2083;
    return ;
end);
PlayerEsp.CreateToggle({ Title = "Enable Player Esp", Desc = "Enables player visuals", Default = false }, function(L_2084)
    if L_2084 then
        L_1651.Enable();
    else
        L_1651.Disable();
    end;
    return ;
end);
PlayerEsp.CreateToggle({ Title = "Enable Name", Desc = "Enables showing name for esp", Default = true }, function(L_2085)
    L_1651.Settings.Names = L_2085;
    return ;
end);
PlayerEsp.CreateToggle({ Title = "Enable Box", Desc = "Enables Boxes for esp", Default = true }, function(L_2086)
    L_1651.Settings.Boxes = L_2086;
    return ;
end);
PlayerEsp.CreateToggle({ Title = "Enable Devil Fruit", Desc = "Enables Devil Fruit for esp", Default = true }, function(L_2087)
    L_1651.Settings.DevilFruit = L_2087;
    return ;
end);
PlayerEsp.CreateToggle({ Title = "Enable HealthBar", Desc = "Enables Healthbar for esp", Default = true }, function(L_2088)
    L_1651.Settings.Healthbar = L_2088;
    return ;
end);
SpeedSection.CreateToggle({ Title = "Speed", Desc = "Increases your velocity", Default = false }, function(L_2089)
    L_1655 = L_2089;
    return ;
end);
SpeedSection.CreateSlider({ Title = "Speed Boost", Min = 0, Max = 250, Default = 50, Precise = true }, function(L_2090)
    L_1656 = L_2090;
    return ;
end);
Movementsection.CreateToggle({ Title = "No Stun", Desc = "Removes stun when attacked", Default = false }, function(L_2091)
    getgenv().AntiStun = L_2091;
    return ;
end);
Movementsection.CreateToggle({ Title = "Infinite Jump", Desc = "Lets you jump forever", Default = false }, function(L_2092)
    getgenv().InfiniteJump = L_2092;
    getgenv()._LastJump = getgenv()._LastJump or 0;
    if L_2092 then
        if not getgenv()._InfJumpConnection then
            getgenv()._InfJumpConnection = UserInputService.JumpRequest:Connect(function()
                if getgenv().InfiniteJump and tick() - getgenv()._LastJump >= 0.1 then
                    getgenv()._LastJump = tick();
                    local L_2093 = player.Character;
                    local L_2094 = L_2093 and L_2093:FindFirstChildOfClass("Humanoid");
                    local L_2095 = L_2093 and L_2093:FindFirstChild(L_33);
                    if L_2094 and L_2095 then
                        if L_2094.JumpPower == 0 then
                            L_2095.CFrame = L_2095.CFrame + Vector3.new(0, 7, 0);
                            L_2095.Velocity = Vector3.zero;
                        else
                            L_2095.AssemblyLinearVelocity = Vector3.new(L_2095.AssemblyLinearVelocity.X, 50, L_2095.AssemblyLinearVelocity.Z);
                        end;
                    end;
                end;
                return ;
            end);
        end;
    elseif getgenv()._InfJumpConnection then
        getgenv()._InfJumpConnection:Disconnect();
        getgenv()._InfJumpConnection = nil;
    end;
    return ;
end);
Movementsection.CreateToggle({ Title = "Geppo Loop", Desc = "Helps bypass some speed checks", Default = false }, function(L_2096)
    getgenv().Gp = L_2096;
    while getgenv().Gp and task.wait(1) do
        FakeGeppo();
    end;
    return ;
end);
QOL.CreateToggle({ Title = "Auto Enable Buso", Desc = "Enables Buso For You When At 100%", Default = false }, function(L_2097)
    getgenv().AB = L_2097;
    if not L_2097 then
        return ;
    end;
    if not statsFolder:FindFirstChild("BusoBar") then
        Library.CreateNoti({ Title = "Uh Oh!", Desc = "You need buso haki to use this!", ShowTime = 4 });
    end;
    while getgenv().AB and task.wait(1) do
        if statsFolder.BusoBar.Value == statsFolder.BusoBar.MaxValue then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Haki"):FireServer("Buso");
        end;
    end;
    return ;
end);
Players = game:GetService("Players");
RunService = game:GetService("RunService");
ReplicatedStorage = game:GetService("ReplicatedStorage");
player = Players.LocalPlayer;
lastDashTrigger = 0;
tpConnection = nil;
isRunning = false;
currentTarget = nil;
local L_2109 = function()
    L_1969 = game.Players.LocalPlayer.Character;
    if not L_1969 then
        return 160;
    end;
    local L_2098 = game:GetService("Players").LocalPlayer;
    local L_2099 = game:GetService("ReplicatedStorage"):FindFirstChild("Stats" .. L_2098.Name);
    if not L_2099 then
        return 160;
    end;
    local L_2100 = L_2099:FindFirstChild("Stats");
    if not L_2100 then
        return 160;
    end;
    local L_2101 = L_2100:FindFirstChild("DF");
    local L_2102 = L_2100:FindFirstChild("FightingStyle");
    local L_2103 = L_2099:FindFirstChild("Customization");
    local L_2104 = L_2103 and L_2103:FindFirstChild("Race");
    if not L_2101 or not L_2102 or not L_2104 then
        return 160;
    end;
    local L_2105 = 26;
    if L_2101.Value == "Buddha-Buddha" then
        L_2105 = 160;
    elseif L_2102.Value == "Rokushiki" or L_2102.Value == "Kamishiki" or L_1969:GetAttribute("GEAR2Active") or _G.soruDashing == true or L_2098:GetAttribute("soruDash") or L_1969:GetAttribute("evading") ~= nil then
        L_2105 = 78;
    elseif L_1969:GetAttribute("evading") == true then
        L_2105 = 70;
    elseif L_2101.Value == "Venom-Venom" then
        L_2105 = 50;
    elseif string.sub(string.lower(L_2104.Value), 1, 7) == "fishman" or _G.swimming then
        L_2105 = 36;
    elseif L_2101.Value == "Yomi-Yomi" then
        L_2105 = 36;
    end;
    local L_2106 = L_1969:GetAttribute("previousEvasiveTick");
    if L_2106 and tick() - L_2106 <= 6 then
        L_2105 = 78;
    end;
    local L_2107 = L_2105 * math.clamp(L_1969:GetScale(), 1, 20);
    local L_2108 = L_1969:GetAttribute("SpeedBypass");
    if L_2108 and L_2108 > 0 then
        L_2107 = L_2107 + L_2108;
    end;
    if L_2107 < 46 then
        L_2107 = 46;
    end;
    return L_2107 * getgenv().TweenSpeed;
end;
loadstring("    function LPH_JIT(f) return f end;\n    function LPH_JIT_MAX(f) return f end;\n    function LPH_JIT_ULTRA(f) return f end;\n    function LPH_NO_VIRTUALIZE(f) return f end;\n    function LPH_NO_UPVALUES(f) return f end;\n    function LPH_CRASH() return end;\n")();
Players = game:GetService("Players");
RunService = game:GetService("RunService");
Workspace = game:GetService("Workspace");
player = Players.LocalPlayer;
tweenConnection = nil;
noclipConnection = nil;
currentTarget = nil;
FLOAT_HEIGHT = 7;
RAY_START_HEIGHT = 9000;
SMOOTHNESS = 0.3;
getSpeed = INTERPRETER_PROXY[1][34][5](function()
    return L_2109() > 0 and L_2109() - 5 or 35;
end);
getExcludeList = function(L_2110)
    local L_2111 = { L_2110 };
    for L_2112, L_2113 in ipairs(Players:GetPlayers()) do
        if L_2113.Character then
            table.insert(L_2111, L_2113.Character);
        end;
    end;
    return L_2111;
end;
local L_2120 = function(L_2114, L_2115, L_2116)
    if not player or (not player.Character or not player.Character:FindFirstChild(L_33)) then
        return false;
    end;
    local L_2117 = player.Character.HumanoidRootPart.Position;
    if L_2116 then
        local L_2118 = L_2117.X - L_2114.X;
        local L_2119 = L_2117.Z - L_2114.Z;
        return math.sqrt(L_2118 * L_2118 + L_2119 * L_2119) <= L_2115;
    end;
    return (L_2117 - L_2114).Magnitude <= L_2115;
end;
HoroTpPro = function(L_2121)
    local L_2122 = nil;
    local L_2123 = nil;
    local L_2124 = typeof(L_2121) == "table" and L_2121.Track;
    if typeof(L_2121) == "Vector3" then
        L_2122 = L_2121;
    elseif typeof(L_2121) == "table" then
        L_2122 = L_2121.Position or L_2121.Target;
        if typeof(L_2121.Target) == "Instance" then
            L_2123 = L_2121.Target;
        elseif typeof(L_2121.Position) == "Instance" then
            L_2123 = L_2121.Position;
        end;
    end;
    if not L_2122 then
        warn("HoroTpPro: No target defined");
        return ;
    end;
    local L_2125 = function()
        if L_2123 and L_2123.Parent then
            if L_2123:IsA("Model") then
                return L_2123:GetPivot().Position;
            end;
            if L_2123:IsA("BasePart") then
                return L_2123.Position;
            end;
            if L_2124 and L_2123:IsA("ValueBase") then
                return L_2123.Value;
            end;
        end;
        return L_2122;
    end;
    if currentTarget and tweenConnection then
        local L_2126 = L_2125();
        if (Vector3.new(L_2126.X, 0, L_2126.Z) - Vector3.new(currentTarget.X, 0, currentTarget.Z)).Magnitude < 1 then
            return ;
        end;
    end;
    local L_2127 = typeof(L_2121) == "table" and L_2121.Stop or function()
        return true;
    end;
    local L_2128 = typeof(L_2121) == "table" and L_2121.Y or nil;
    if tweenConnection then
        tweenConnection:Disconnect();
    end;
    if noclipConnection then
        noclipConnection:Disconnect();
    end;
    currentTarget = L_2125();
    local L_2129 = player.Character;
    local L_2130 = L_2129 and L_2129:FindFirstChild(L_33);
    if not L_2129 or not L_2130 then
        currentTarget = nil;
        return ;
    end;
    local L_2131 = RaycastParams.new();
    L_2131.FilterType = Enum.RaycastFilterType.Exclude;
    L_2131.IgnoreWater = true;
    L_2131.FilterDescendantsInstances = getExcludeList(L_2129);
    local L_2132;
    if L_2128 then
        L_2132 = L_2128;
    else
        local L_2133 = Workspace:Raycast(Vector3.new(currentTarget.X, RAY_START_HEIGHT, currentTarget.Z), Vector3.new(0, -20000, 0), L_2131);
        L_2132 = L_2133 and L_2133.Position.Y + FLOAT_HEIGHT or currentTarget.Y + FLOAT_HEIGHT;
    end;
    local L_2134 = math.max(L_2130.Position.Y, L_2132, 5);
    L_2130.CFrame = CFrame.new(L_2130.Position.X, L_2134, L_2130.Position.Z);
    local L_2135 = L_2134;
    noclipConnection = RunService.Stepped:Connect(function()
        if not L_2129 or not L_2129.Parent then
            if noclipConnection then
                noclipConnection:Disconnect();
            end;
            return ;
        end;
        L_2130.Velocity = Vector3.zero;
        L_2130.AssemblyLinearVelocity = Vector3.zero;
        for L_2136, L_2137 in ipairs(L_2129:GetDescendants()) do
            if L_2137:IsA("BasePart") and L_2137.CanCollide then
                L_2137.CanCollide = false;
            end;
        end;
        return ;
    end);
    tweenConnection = RunService.Heartbeat:Connect(function(L_2138)
        if not L_2129 or (not L_2130 or not L_2130.Parent) then
            tweenConnection:Disconnect();
            noclipConnection:Disconnect();
            currentTarget = nil;
            return ;
        end;
        if not L_2127() then
            tweenConnection:Disconnect();
            noclipConnection:Disconnect();
            currentTarget = nil;
            return ;
        end;
        local L_2139 = L_2125();
        currentTarget = L_2139;
        L_2131.FilterDescendantsInstances = getExcludeList(L_2129);
        local L_2140 = L_2130.Position;
        local L_2141 = Vector3.new(L_2139.X, 0, L_2139.Z) - Vector3.new(L_2140.X, 0, L_2140.Z);
        local L_2142 = L_2141.Magnitude;
        if L_2142 < 8 then
            local L_2143 = L_2128 or L_2139.Y;
            if not L_2128 then
                local L_2144 = Workspace:Raycast(Vector3.new(L_2139.X, RAY_START_HEIGHT, L_2139.Z), Vector3.new(0, -20000, 0), L_2131);
                if L_2144 then
                    L_2143 = L_2144.Position.Y + FLOAT_HEIGHT;
                end;
            end;
            local L_2145 = math.max(L_2143, 5);
            L_2130.CFrame = CFrame.new(L_2139.X, L_2145, L_2139.Z);
            tweenConnection:Disconnect();
            noclipConnection:Disconnect();
            currentTarget = nil;
            return ;
        end;
        local L_2146 = L_2141.Unit;
        local L_2147 = getSpeed();
        local L_2148 = math.min(L_2147 * L_2138, L_2142);
        local L_2149 = L_2140.X + L_2146.X * L_2148;
        local L_2150 = L_2140.Z + L_2146.Z * L_2148;
        local L_2151;
        if L_2128 then
            L_2151 = L_2128;
        else
            local L_2152 = Vector3.new(L_2149, RAY_START_HEIGHT, L_2150);
            local L_2153 = Workspace:Raycast(L_2152, Vector3.new(0, -20000, 0), L_2131);
            L_2151 = L_2153 and L_2153.Position.Y + FLOAT_HEIGHT or L_2139.Y + FLOAT_HEIGHT;
        end;
        local L_2154 = math.max(L_2151, 5);
        L_2135 = L_2135 + (L_2154 - L_2135) * (SMOOTHNESS or 0.25);
        L_2135 = math.max(L_2135, 5);
        L_2130.CFrame = CFrame.new(L_2149, L_2135, L_2150);
        return ;
    end);
    return ;
end;
local L_2156 = function(L_2155)
    player.Character.HumanoidRootPart.CFrame = CFrame.new(L_2155);
    player.Character.HumanoidRootPart.Velocity = Vector3.zero;
    return ;
end;
isTweening = false;
TpTween = function(L_2157, L_2158)
    if isTweening then
        return ;
    end;
    local L_2159 = player.Character and player.Character:FindFirstChild(L_33);
    if not L_2159 then
        return ;
    end;
    isTweening = true;
    local L_2160 = L_2159.CFrame;
    local L_2161 = typeof(L_2157) == "CFrame" and L_2157 or CFrame.new(L_2157);
    local L_2162 = (L_2161.Position - L_2160.Position).Magnitude / 15;
    local L_2163 = 0;
    while L_2163 < L_2162 do
        L_2163 = L_2163 + game:GetService("RunService").Heartbeat:Wait();
        L_2159.CFrame = L_2160:Lerp(L_2161, (math.min(L_2163 / L_2162, 1)));
        L_2159.Velocity = Vector3.zero;
        L_2159.AssemblyLinearVelocity = Vector3.zero;
    end;
    isTweening = false;
    return ;
end;
Touch = function(L_2164)
    if player.Character and player.Character:FindFirstChild(L_33) then
        firetouchinterest(player.Character.HumanoidRootPart, L_2164, 0);
        firetouchinterest(player.Character.HumanoidRootPart, L_2164, 1);
    end;
    return ;
end;
local L_2170 = function(L_2165)
    for L_2166, L_2167 in next, player.Backpack:GetChildren() do
        if L_2167.Name == L_2165 then
            return L_2167;
        end;
    end;
    for L_2168, L_2169 in next, player.Character:GetChildren() do
        if L_2169.Name == L_2165 then
            return L_2169;
        end;
    end;
    return nil;
end;
GetInventoryTool = function(L_2171)
    local L_2172, L_2173 = pcall(function()
        return L_618:JSONDecode(inventoryValue.Value);
    end);
    if L_2172 and L_2173 then
        return L_2173[L_2171] ~= nil;
    end;
    return false;
end;
local L_2174 = getgenv();
local L_2175 = getgenv();
local L_2176 = getgenv();
L_2174.Did = false;
L_2175.Did2 = false;
L_2176.Open = false;
QOL.CreateToggle({ Title = "Auto Second Sea", Desc = "Auto Gets Scroll And Goes To Second Sea", Default = false }, function(L_2177)
    getgenv().SS2 = L_2177;
    task.spawn(function()
        while getgenv().SS2 and task.wait(1) do
            FakeGeppo();
        end;
        return ;
    end);
    while getgenv().SS2 and task.wait() do
        local L_2178 = Vector3.new(-7350.17431640625, 4.758918762207031, -14949.48828125);
        if not getgenv().Did then
            if not L_2120(L_2178, 10, true) then
                HoroTpPro({
                    Position = L_2178,
                    Speed = 50,
                    Stop = function()
                        return getgenv().SS2;
                    end
                });
            else
                L_2156(L_2178);
                local L_2179 = workspace.Effects:FindFirstChild("World Scroll");
                if L_2179 then
                    repeat
                        task.wait();
                        L_2156(L_2178);
                        local L_2180 = L_2179:FindFirstChildWhichIsA("ProximityPrompt");
                        L_2180:InputHoldBegin();
                        task.wait(L_2180.HoldDuration);
                        L_2180:InputHoldEnd();
                    until not L_2179 or not L_2179.Parent or not getgenv().SS2 or L_2170("World Scroll") or GetInventoryTool("World Scroll");
                    getgenv().Did = true;
                else
                    getgenv().Did = true;
                end;
            end;
        elseif not getgenv().Did2 then
            if not L_2120(Vector3.new(-8077, 18, -10787), 10, true) then
                HoroTpPro({
                    Position = Vector3.new(-8077, 18, -10787),
                    Speed = 50,
                    Stop = function()
                        return getgenv().SS2;
                    end
                });
            else
                getgenv().Did2 = true;
            end;
        elseif not L_2120(Vector3.new(-8007, 52, -8540), 10, true) then
            HoroTpPro({
                Position = Vector3.new(-8007, 52, -8540),
                Speed = 50,
                Stop = function()
                    return getgenv().SS2;
                end
            });
        else
            L_2156(Vector3.new(-8007, 52, -8540));
            if not getgenv().Open then
                repeat
                    task.wait();
                    if not player.PlayerGui:FindFirstChild("NPCCHAT") then
                        fireproximityprompt(workspace.NPCs["Gatekeeper Puff"].UpperTorso.Prompt);
                    else
                        local L_2181 = nil;
                        pcall(function()
                            L_2181 = game:GetService("Players").LocalPlayer.PlayerGui.NPCCHAT.Frame.ImageLabel.desc.Line001.Container.Group001.TextColor3 == Color3.fromRGB(255, 102, 102);
                            return ;
                        end);
                        if L_2181 then
                            getgenv().Open = true;
                        else
                            firesignal(game:GetService("Players").LocalPlayer.PlayerGui.NPCCHAT.Frame.endChat.MouseButton1Click);
                        end;
                    end;
                until getgenv().Open;
            else
                Touch(workspace.Effects["2ndSeaTeleport"]);
                task.wait(1);
            end;
        end;
    end;
    return ;
end);
QOL.CreateToggle({ Title = "Reveal Fruits", Desc = "Reveals Fruits In HotBar And Inventory", Default = false }, function(L_2182)
    getgenv().fah = L_2182;
    while getgenv().fah and task.wait() do
        pcall(function()
            local L_2194 = function(L_2183)
                local L_2184 = L_2183:FindFirstChild("ToolImage", true);
                local L_2185 = L_2183:FindFirstChild("ToolObject", true);
                if L_2184 and (L_2184.Image == "rbxassetid://2766648781" and L_2185 and L_2185.Value) then
                    if L_2184.Parent:FindFirstChild("ToolViewport") then
                        return ;
                    end;
                    local L_2186 = L_2185.Value;
                    L_2184.Visible = false;
                    local L_2187 = Instance.new("ViewportFrame");
                    L_2187.Name = "ToolViewport";
                    L_2187.Size = UDim2.new(1, 0, 1, 0);
                    L_2187.BackgroundTransparency = 1;
                    L_2187.Parent = L_2184.Parent;
                    local L_2188 = Instance.new("Model");
                    for L_2189, L_2190 in L_2186:GetDescendants() do
                        if L_2190:IsA("BasePart") then
                            L_2190:Clone().Parent = L_2188;
                        end;
                    end;
                    L_2188.Parent = L_2187;
                    local L_2191 = Instance.new("Camera");
                    L_2191.Parent = L_2187;
                    L_2187.CurrentCamera = L_2191;
                    local L_2192, L_2193 = L_2188:GetBoundingBox();
                    L_2191.CFrame = L_2192 * CFrame.new(0, 0, math.max(L_2193.X, L_2193.Y, L_2193.Z) * 0.8);
                end;
                return ;
            end;
            local L_2195 = game:GetService("Players").LocalPlayer.PlayerGui.BackpackGui;
            for L_2196, L_2197 in L_2195.Hotbar:GetChildren() do
                L_2194(L_2197);
            end;
            for L_2198, L_2199 in L_2195.Backpack.Inventory.SpecialInventory:GetChildren() do
                L_2194(L_2199);
            end;
            return ;
        end);
    end;
    return ;
end);
QOL.CreateToggle({ Title = "Auto Watch Xp Ads", Desc = "Watches Ads When You Don't Have The Boost.", Default = false }, function(L_2200)
    getgenv().ABC = L_2200;
    if not L_2200 then
        return ;
    end;
    if L_1664() < 126 then
        Library.CreateNoti({ Title = "Uh Oh!", Desc = "You need lvl 125 to unlock ads!", ShowTime = 4 });
    end;
    while getgenv().ABC and task.wait(1) do
        if player.PlayerGui.HUD.Main.Boosts.Exp.Visible ~= true then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ADShop"):FireServer(3457788725);
            task.wait(10);
        end;
    end;
    return ;
end);
QOL.CreateToggle({ Title = "Auto Watch Drop Rate Ads", Desc = "Watches Ads When You Don't Have The Boost.", Default = false }, function(L_2201)
    getgenv().ABC2 = L_2201;
    if not L_2201 then
        return ;
    end;
    if L_1664() < 126 then
        Library.CreateNoti({ Title = "Uh Oh!", Desc = "You need lvl 125 to unlock ads!", ShowTime = 4 });
    end;
    while getgenv().ABC2 and task.wait(1) do
        if player.PlayerGui.HUD.Main.Boosts.Drop.Visible ~= true then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ADShop"):FireServer(3457789187);
            task.wait(10);
        end;
    end;
    return ;
end);
local L_2205 = function()
    for L_2202, L_2203 in next, workspace.Effects:GetChildren() do
        if L_2203:IsA("BasePart") then
            local L_2204 = L_2203:FindFirstChild("Mesh");
            if L_2204 and L_2204.TextureId == "http://www.roblox.com/asset/?id=28461501" then
                warn("found");
                return L_2203;
            end;
        end;
    end;
    return nil;
end;
local L_2206 = game.ReplicatedStorage:FindFirstChild("FishingShopRemote");
getgenv().DontSellLegendary = false;
SellFish = function()
    local L_2207 = game.ReplicatedStorage;
    local L_2208 = require(L_2207.Modules.ToolDesc);
    local L_2209 = game:GetService("HttpService");
    for L_2210, L_2211 in pairs(L_2209:JSONDecode(L_2207["Stats" .. game.Players.LocalPlayer.Name].Inventory.Inventory.Value)) do
        local L_2212 = L_2208[L_2210];
        if L_2212 and L_2212.Type == "Fish" then
            if getgenv().FishKaitun.LegendaryBait and L_2212.Rare == "Legendary" and L_1661("Legendary Fish Bait") < 300 then
                return ;
            end;
            if getgenv().FishKaitun.RareBait and L_2212.Rare == "Rare" and L_1661("Rare Fish Bait") < 300 then
                return ;
            end;
            if not getgenv().Buying then
                if L_1662() >= 1000000 then
                    return ;
                end;
                local L_2213 = getgenv().FishKaitun and getgenv().FishKaitun.SellRarities;
                if L_2213 and table.find(L_2213, L_2212.Rare) then
                    if L_1662() >= 1000000 then
                        return ;
                    end;
                    L_2206:InvokeServer({ Method = "SellFish", Fish = L_2210, All = false });
                    task.wait(0.5);
                end;
            end;
        end;
    end;
    return ;
end;
GetRarity = function(L_2214)
    local L_2215 = require(game.ReplicatedStorage.Modules.ToolDesc)[L_2214];
    return L_2215 and L_2215.Rare or nil;
end;
local L_2216 = false;
getgenv().TweenSpeed = 1;
local L_2238 = function(L_2217, L_2218, L_2219, L_2220)
    if L_2216 then
        return ;
    end;
    local L_2221 = L_2218 or tonumber(getgenv().TweenSpeed);
    local L_2222 = L_2219 == nil and true or L_2219;
    local L_2223 = L_2220 == nil and true or L_2220;
    if typeof(L_2217) == "CFrame" then
        L_2217 = L_2217.Position;
    elseif typeof(L_2217) ~= "Vector3" then
        return ;
    end;
    local L_2224 = game:GetService("Players").LocalPlayer.Character;
    if not L_2224 then
        return ;
    end;
    local L_2225 = L_2224:FindFirstChild(L_33);
    if not L_2225 then
        return ;
    end;
    L_2216 = true;
    local L_2226 = game:GetService("RunService");
    if (Vector3.new(L_2225.Position.X, 0, L_2225.Position.Z) - Vector3.new(L_2217.X, 0, L_2217.Z)).Magnitude >= 10 and L_2223 then
        task.spawn(function()
            while L_2216 and task.wait() do
                if statsFolder.Skills:FindFirstChild("skyWalk").Value == true then
                    game:GetService("ReplicatedStorage").Events.Skill:InvokeServer("Sky Walk2", { char = L_2224, cf = CFrame.new(L_2225.Position) });
                    task.wait(1);
                else
                    game:GetService("ReplicatedStorage").Events.takestam:FireServer(1, "dash");
                    task.wait(3);
                end;
            end;
            return ;
        end);
    end;
    local L_2235 = function(L_2227, L_2228)
        local L_2229 = (Vector2.new(L_2227.X, L_2227.Z) - Vector2.new(L_2228.X, L_2228.Z)).Magnitude;
        if L_2229 == 0 then
            return L_2228;
        end;
        local L_2230 = L_2229 / L_2221;
        local L_2231 = 0;
        while L_2231 < L_2230 do
            if not L_2216 then
                return "STOP";
            end;
            L_2231 = L_2231 + L_2226.RenderStepped:Wait();
            local L_2232 = math.clamp(L_2231 / L_2230, 0, 1);
            local L_2233 = L_2227.X + (L_2228.X - L_2227.X) * L_2232;
            local L_2234 = L_2227.Z + (L_2228.Z - L_2227.Z) * L_2232;
            L_2225.Velocity = Vector3.zero;
            L_2225.CFrame = CFrame.new(Vector3.new(L_2233, L_2227.Y, L_2234));
        end;
        L_2225.Velocity = Vector3.zero;
        L_2225.CFrame = CFrame.new(L_2228);
        return "OK";
    end;
    local L_2236 = L_2225.Position;
    local L_2237 = L_2236.Y + 1000;
    if L_2222 then
        L_2236 = Vector3.new(L_2236.X, L_2237, L_2236.Z);
        L_2225.CFrame = CFrame.new(L_2236);
        L_2225.Velocity = Vector3.zero;
    end;
    if L_2235(L_2236, (Vector3.new(L_2217.X, L_2236.Y, L_2217.Z))) == "STOP" then
        return ;
    end;
    L_2225.CFrame = CFrame.new(L_2217);
    L_2225.Velocity = Vector3.zero;
    L_2216 = false;
    return ;
end;
task.spawn(pcall, function()
    local L_2239 = game:GetService("ReplicatedStorage"):FindFirstChild("Fishing"):FindFirstChild("Remotes"):FindFirstChild("Action");
    return ;
end);
local L_2240 = 0;
HoroTpRunning = false;
getgenv().Tuff2 = true;
HoroTp2 = function(L_2241, L_2242, L_2243, L_2244)
    local L_2245 = function()
        if getgenv().Tuff2 then
            return true;
        end;
        if getgenv().FishKaitun and getgenv().FishKaitun.Enabled then
            return true;
        end;
        return false;
    end;
    if HoroTpRunning then
        return ;
    end;
    if not L_2245() then
        warn("not enabled :C");
        return ;
    end;
    local L_2246 = 50;
    local L_2247 = L_2244 or 300;
    local L_2248 = game:GetService("Players").LocalPlayer;
    local L_2249 = L_2248.Character or L_2248.CharacterAdded:Wait();
    local L_2250 = L_2249:WaitForChild(L_33, 5);
    if not L_2250 then
        return ;
    end;
    HoroTpRunning = true;
    local L_2251 = game:GetService("RunService");
    local L_2252 = L_2250.Position.Y + L_2247;
    local L_2253 = L_2250.Position;
    local L_2254 = L_2253.Y < -100;
    local L_2255 = false;
    pcall(function()
        local L_2256 = GetCurrentIsland();
        if L_2256 and L_2256.Name == "Fishman Island" then
            L_2255 = true;
        end;
        return ;
    end);
    local L_2257 = L_2254 or L_2255;
    local L_2258 = RaycastParams.new();
    L_2258.FilterType = Enum.RaycastFilterType.Exclude;
    L_2258.FilterDescendantsInstances = { L_2249, workspace:FindFirstChild("PlayerCharacters"), workspace:FindFirstChild("Effects") };
    local L_2262 = function()
        local L_2259 = false;
        pcall(function()
            for L_2260, L_2261 in L_2248.PlayerGui.Notifications:GetDescendants() do
                if L_2261:IsA("TextLabel") and (L_2261.Text == "TP" or L_2261.Text == "Strike" or L_2261.Text:find("Strike")) then
                    L_2259 = true;
                    return ;
                end;
            end;
            return ;
        end);
        return L_2259;
    end;
    local L_2278 = function(L_2263, L_2264)
        if not L_2245() then
            return L_2253.Y;
        end;
        if L_2243 then
            return L_2253.Y;
        end;
        local L_2265 = Vector3.new(L_2263, L_2252, L_2264);
        local L_2266 = Vector3.new(0, -2000, 0);
        local L_2267 = workspace:Raycast(L_2265, L_2266, L_2258);
        while L_2267 and (not L_2267.Instance.CanCollide and not L_2267.Instance.CanQuery or L_2267.Instance.Name == "Leaves") do
            local L_2268 = L_2267.Position - Vector3.new(0, 0.1, 0);
            L_2267 = workspace:Raycast(L_2268, L_2266, L_2258);
        end;
        if not L_2267 then
            return L_2257 and L_2253.Y or math.max(L_2253.Y, 2);
        end;
        if L_2253.Y > -1500 then
            local L_2269 = L_2267.Instance.Color;
            local L_2270 = math.floor(L_2269.R * 255);
            local L_2271 = math.floor(L_2269.G * 255);
            local L_2272 = math.floor(L_2269.B * 255);
            if L_2270 == 148 and L_2271 == 147 and L_2272 == 150 or L_2270 == 116 and L_2271 == 134 and L_2272 == 157 then
                local L_2273 = L_2248.Character;
                if L_2273 then
                    local L_2274 = L_2273:GetAttribute("SpeedBypass") or 0;
                    if tick() - (L_2240 or 0) >= 2 and L_2274 < 1 then
                        L_2240 = tick();
                        task.spawn(pcall, function()
                            local L_2275 = game:GetService("ReplicatedStorage"):FindFirstChild("Events");
                            if L_2275 then
                                local L_2276 = L_2275:FindFirstChild("takestam");
                                if L_2276 then
                                    L_2276:FireServer(0.52, "dash");
                                end;
                            end;
                            return ;
                        end);
                    end;
                end;
            end;
        end;
        local L_2277 = L_2267.Position.Y + 5;
        return L_2257 and L_2277 or math.max(L_2277, 2);
    end;
    local L_2279;
    L_2279 = function()
        local L_2280 = (Vector2.new(L_2253.X, L_2253.Z) - Vector2.new(L_2241.X, L_2241.Z)).Magnitude;
        if L_2280 < 2 then
            local L_2281 = L_2278(L_2241.X, L_2241.Z);
            L_2250.CFrame = CFrame.new(L_2241.X, L_2281, L_2241.Z);
            HoroTpRunning = false;
            return ;
        end;
        local L_2282 = L_2280 / L_2246;
        local L_2283 = 0;
        while L_2283 < L_2282 and L_2245() do
            if L_2262() then
                task.wait(5);
                L_2253 = L_2250.Position;
                L_2279();
                return ;
            end;
            L_2283 = L_2283 + L_2251.RenderStepped:Wait();
            local L_2284 = math.clamp(L_2283 / L_2282, 0, 1);
            local L_2285 = L_2253.X + (L_2241.X - L_2253.X) * L_2284;
            local L_2286 = L_2253.Z + (L_2241.Z - L_2253.Z) * L_2284;
            local L_2287 = L_2278(L_2285, L_2286);
            L_2250.Velocity = Vector3.zero;
            L_2250.CFrame = CFrame.new(L_2285, L_2287, L_2286);
        end;
        local L_2288 = L_2278(L_2241.X, L_2241.Z);
        L_2250.CFrame = CFrame.new(L_2241.X, L_2288, L_2241.Z);
        HoroTpRunning = false;
        return ;
    end;
    L_2279();
    return ;
end;
HoroTp3 = function(L_2289, L_2290, L_2291)
    if HoroTpRunning then
        return ;
    end;
    if not getgenv().AutoJuzo then
        return ;
    end;
    local L_2292 = tonumber(getgenv().TweenSpeed) or 50;
    local L_2293 = game:GetService("Players").LocalPlayer;
    local L_2294 = L_2293.Character;
    if not L_2294 then
        return ;
    end;
    local L_2295 = L_2294:FindFirstChild(L_33);
    if not L_2295 then
        return ;
    end;
    HoroTpRunning = true;
    local L_2296 = game:GetService("RunService");
    local L_2297 = RaycastParams.new();
    L_2297.FilterType = Enum.RaycastFilterType.Exclude;
    L_2297.FilterDescendantsInstances = { L_2294 };
    local L_2301 = function()
        local L_2298 = false;
        pcall(function()
            for L_2299, L_2300 in next, L_2293.PlayerGui.Notifications:GetDescendants() do
                if L_2300:IsA("TextLabel") and (L_2300.Text == "TP" or L_2300.Text == "Strike" or L_2300.Text:match("Strike")) then
                    L_2298 = true;
                    return ;
                end;
            end;
            return ;
        end);
        return L_2298;
    end;
    local L_2314 = function(L_2302, L_2303)
        if not getgenv().AutoJuzo then
            return L_2295.Position.Y;
        end;
        if L_2291 then
            return L_2295.Position.Y;
        end;
        local L_2304 = math.min(L_2295.Position.Y + 300, L_2295.Position.Y + 500);
        local L_2305 = Vector3.new(L_2302, L_2304, L_2303);
        local L_2306 = Vector3.new(0, -1000, 0);
        while getgenv().AutoJuzo do
            local L_2307 = workspace:Raycast(L_2305, L_2306, L_2297);
            if not L_2307 then
                return L_2295.Position.Y;
            end;
            local L_2308 = L_2307.Instance;
            local L_2309 = L_2308.CanCollide == true or L_2308.CanQuery == true;
            if L_2308.Name ~= "Leaves" and L_2309 then
                local L_2310 = L_2308.Color;
                local L_2311 = math.floor(L_2310.R * 255);
                local L_2312 = math.floor(L_2310.G * 255);
                local L_2313 = math.floor(L_2310.B * 255);
                if (L_2311 == 148 and L_2312 == 147 and L_2313 == 150 or L_2311 == 116 and L_2312 == 134 and L_2313 == 157) and tick() - L_2240 >= 2 and L_2293.Character:GetAttribute("SpeedBypass") < 1 then
                    L_2240 = tick();
                    game:GetService("ReplicatedStorage").Events.takestam:FireServer(unpack({ 0.52, "dash" }));
                    task.wait(0.5);
                end;
                return L_2307.Position.Y + 5;
            end;
            L_2305 = L_2307.Position - Vector3.new(0, 1, 0);
        end;
        return L_2295.Position.Y;
    end;
    local L_2315;
    L_2315 = function(L_2316, L_2317, L_2318)
        if not getgenv().AutoJuzo then
            return "STOP";
        end;
        local L_2319 = (Vector2.new(L_2316.X, L_2316.Z) - Vector2.new(L_2317.X, L_2317.Z)).Magnitude;
        if L_2319 == 0 then
            return "OK";
        end;
        local L_2320 = L_2319 / L_2318;
        local L_2321 = 0;
        while L_2321 < L_2320 do
            if not getgenv().AutoJuzo then
                return "STOP";
            end;
            if L_2301() then
                wait(5);
                local L_2322 = L_2295.Position;
                return L_2315(L_2322, L_2317, 30);
            end;
            L_2321 = L_2321 + L_2296.RenderStepped:Wait();
            local L_2323 = math.clamp(L_2321 / L_2320, 0, 1);
            local L_2324 = L_2316.X + (L_2317.X - L_2316.X) * L_2323;
            local L_2325 = L_2316.Z + (L_2317.Z - L_2316.Z) * L_2323;
            local L_2326 = L_2314(L_2324, L_2325);
            L_2295.Velocity = Vector3.zero;
            L_2295.CFrame = CFrame.new(L_2324, L_2326, L_2325);
        end;
        if not getgenv().AutoJuzo then
            return "STOP";
        end;
        local L_2327 = L_2314(L_2317.X, L_2317.Z);
        L_2295.Velocity = Vector3.zero;
        L_2295.CFrame = CFrame.new(L_2317.X, L_2327, L_2317.Z);
        return "OK";
    end;
    L_2315(L_2295.Position, L_2289, L_2292);
    HoroTpRunning = false;
    return ;
end;
getgenv().Delay = false;
getgenv().Buying = false;
local L_2328 = false;
getgenv().TweenSpeed = 50;
getgenv().CurrentHoroTarget = nil;
getgenv().CancelHoroTp = nil;
HoroTp = function(L_2329, L_2330)
    if L_2328 then
        if not getgenv().CurrentHoroTarget or not ((Vector2.new(L_2329.X, L_2329.Z) - Vector2.new(getgenv().CurrentHoroTarget.X, getgenv().CurrentHoroTarget.Z)).Magnitude > 5) then
            return ;
        end;
        getgenv().CancelHoroTp = true;
        repeat
            task.wait();
        until not L_2328;
    end;
    getgenv().CurrentHoroTarget = L_2329;
    getgenv().CancelHoroTp = false;
    local L_2331 = L_2109();
    local L_2332 = game:GetService("Players").LocalPlayer;
    local L_2333 = L_2332.Character;
    if not L_2333 then
        return ;
    end;
    local L_2334 = L_2333:FindFirstChild(L_33);
    if not L_2334 then
        return ;
    end;
    if getgenv().FishKaitun and getgenv().FishKaitun.Enabled == false then
        return ;
    end;
    local L_2339 = function()
        local L_2335 = RaycastParams.new();
        L_2335.FilterType = Enum.RaycastFilterType.Exclude;
        local L_2336 = { L_2333 };
        for L_2337, L_2338 in game:GetService("Players"):GetPlayers() do
            if L_2338.Character then
                table.insert(L_2336, L_2338.Character);
            end;
        end;
        L_2335.FilterDescendantsInstances = L_2336;
        return L_2335;
    end;
    local L_2341 = function()
        local L_2340 = L_2333:FindFirstChildOfClass("Humanoid");
        if L_2340 then
            L_2340:UnequipTools();
        end;
        return ;
    end;
    local L_2344 = function()
        local L_2342 = L_2332:FindFirstChild("Stats");
        if not L_2342 or not L_2342:FindFirstChild("Skills") then
            return ;
        end;
        local L_2343 = L_2342.Skills:FindFirstChild("skyWalk");
        if not L_2343 or not L_2343.Value then
            return ;
        end;
        while L_2332.Character and L_2332.Character:GetAttribute("SpeedBypass") and L_2332.Character:GetAttribute("SpeedBypass") < 15 do
            L_2341();
            task.wait(0.1);
        end;
        return ;
    end;
    if (Vector2.new(L_2329.X, L_2329.Z) - Vector2.new(L_2334.Position.X, L_2334.Position.Z)).Magnitude < 8 then
        local L_2345 = L_2339();
        local L_2346 = Vector3.new(L_2329.X, 1000, L_2329.Z);
        local L_2347 = workspace:Raycast(L_2346, Vector3.new(0, -2000, 0), L_2345);
        local L_2348 = L_2347 and math.max(L_2347.Position.Y + 5, 2) or math.max(L_2334.Position.Y, 2);
        L_2334.CFrame = CFrame.new(L_2329.X, L_2348, L_2329.Z);
        L_2334.Velocity = Vector3.zero;
        getgenv().CurrentHoroTarget = nil;
        return ;
    end;
    getgenv().Busy = true;
    L_2341();
    L_2344();
    L_2328 = true;
    local L_2349 = L_2339();
    local L_2353 = function()
        local L_2350 = false;
        pcall(function()
            for L_2351, L_2352 in next, game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetDescendants() do
                if L_2352:IsA("TextLabel") and (L_2352.Text == "TP" or L_2352.Text == "Strike" or L_2352.Text:match("Strike")) then
                    L_2350 = true;
                    return ;
                end;
            end;
            return ;
        end);
        return L_2350;
    end;
    local L_2360 = function(L_2354, L_2355)
        local L_2356 = Vector3.new(L_2354, 1000, L_2355);
        local L_2357 = Vector3.new(0, -2000, 0);
        local L_2358 = workspace:Raycast(L_2356, L_2357, L_2349);
        if L_2358 then
            local L_2359 = L_2358.Position.Y + 5;
            return math.max(L_2359, 2);
        end;
        return math.max(L_2334.Position.Y, 2);
    end;
    (function(L_2361)
        while L_2333.Parent and L_2334.Parent do
            if getgenv().CancelHoroTp then
                return "CANCELLED";
            end;
            if not getgenv().FishKaitun or not getgenv().FishKaitun.Enabled then
                L_2328 = false;
                return "ABORT";
            end;
            if L_2353() then
                task.wait(5);
            else
                L_2344();
                local L_2362 = L_2334.CFrame.Position;
                local L_2363 = Vector2.new(L_2361.X, L_2361.Z) - Vector2.new(L_2362.X, L_2362.Z);
                local L_2364 = L_2363.Magnitude;
                if L_2364 < 0.5 then
                    local L_2365 = L_2360(L_2361.X, L_2361.Z);
                    L_2334.CFrame = CFrame.new(L_2361.X, L_2365, L_2361.Z);
                    L_2334.Velocity = Vector3.zero;
                    return "OK";
                end;
                local L_2366 = L_2109();
                local L_2367 = task.wait();
                local L_2368 = math.min(L_2366 * L_2367, L_2364);
                local L_2369 = Vector3.new(L_2363.X, 0, L_2363.Y).Unit;
                local L_2370 = L_2362.X + L_2369.X * L_2368;
                local L_2371 = L_2362.Z + L_2369.Z * L_2368;
                local L_2372 = L_2360(L_2370, L_2371);
                L_2334.CFrame = CFrame.new(L_2370, L_2372, L_2371);
                L_2334.Velocity = Vector3.zero;
            end;
        end;
        return "ABORT";
    end)(L_2329);
    L_2328 = false;
    getgenv().CurrentHoroTarget = nil;
    getgenv().Busy = false;
    return ;
end;
getgenv().Rifle = nil;
local L_2385 = function()
    local L_2373 = player.Backpack:FindFirstChild("Rifle") or player.Character:FindFirstChild("Rifle");
    if not L_2373 then
        ToolsEvent:InvokeServer("equip", "Rifle");
        task.wait(0.5);
    else
        L_2373.Parent = player.Character;
        if not getgenv().Rifle then
            local L_2374 = require(game.ReplicatedStorage.Modules.GunHandle);
            getgenv().Rifle = L_2374.New("Rifle", L_1782.Character:FindFirstChild("Rifle"));
        end;
        rifle = getgenv().Rifle;
        if rifle then
            pcall(function()
                CIcklconEvent = game:GetService("ReplicatedStorage").Events.CIcklcon;
                return ;
            end);
            pcall(function()
                char = player.Character;
                local L_2375 = char and char:FindFirstChild(L_33);
                if not L_2375 then
                    return ;
                end;
                local L_2376 = nil;
                local L_2377 = math.huge;
                for L_2378, L_2379 in pairs(workspace.NPCs:GetChildren()) do
                    if L_2379.Name == "Fishman Karate User" and L_2379:FindFirstChild(L_33) and not L_2379:FindFirstChild("Blocking") then
                        local L_2380 = (L_2375.Position - L_2379.HumanoidRootPart.Position).Magnitude;
                        if L_2380 < L_2377 then
                            L_2376 = L_2379;
                            L_2377 = L_2380;
                        end;
                    end;
                end;
                if L_2376 then
                    if not char:FindFirstChild("Rifle") or not char:FindFirstChild("RifleGun") then
                        return ;
                    end;
                    if not rifle.Reloaded then
                        rifle:Reload();
                    end;
                    task.spawn(function()
                        local L_2381 = { "reload", { Gun = "Rifle" } };
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CIcklcon"):WaitForChild("gunFunctions"):InvokeServer(unpack(L_2381));
                        return ;
                    end);
                    local L_2382 = char.RifleGun.Hole;
                    local L_2383 = { Gun = "Rifle", Position = L_2376.Head.Position, Start = L_2382.CFrame, joe = "true" };
                    if L_2376.Parent and L_2376:FindFirstChild(L_33) then
                        game:GetService("ReplicatedStorage").Events.CIcklcon:FireServer("fire", L_2383);
                    end;
                    rifle.Reloaded = false;
                    rifle.Equiped = true;
                    rifle.IsAiming = true;
                    rifle.Ready = true;
                    game:GetService("ReplicatedStorage").Events.stats:FireServer(table.unpack({ "GunMastery", nil, 1 }));
                    local L_2384 = { "reload", { Gun = "Rifle" } };
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CIcklcon"):WaitForChild("gunFunctions"):InvokeServer(unpack(L_2384));
                end;
                return ;
            end);
        end;
    end;
    return ;
end;
LevelSection.CreateToggle({ Title = "Level Farm Unpatched (Beta)", Desc = "Level farm 0-625 lvl", Default = false }, function(L_2386)
    getgenv().Tuff2 = L_2386;
    if L_2386 then
        pcall(function()
            workspace.Islands["Town of Beginnings"].ImportantBuildings.BoatShop:Destroy();
            return ;
        end);
    end;
    if not L_2386 then
        return ;
    end;
    task.spawn(function()
        local L_2387 = tick();
        while getgenv().Tuff2 and task.wait() do
            local L_2388 = string.find(inventoryValue.Value, "Rifle");
            local L_2389 = string.find(inventoryValue.Value, "Rowboat");
            if not L_2388 then
                if L_1662() >= 300 then
                    if (Vector3.new(-532, 6, -3450) - player.Character.HumanoidRootPart.Position).Magnitude > 5 then
                        HoroTp2(Vector3.new(-532, 6, -3450));
                    else
                        game:GetService("ReplicatedStorage").Events.Shop:InvokeServer(workspace.BuyableItems.Rifle, 1);
                    end;
                elseif L_1664() >= 3 then
                    if L_1666() ~= "Find Sarah's necklace" then
                        L_2387 = tick();
                        if (Vector3.new(-546, 9, -3403) - player.Character.HumanoidRootPart.Position).Magnitude > 5 then
                            HoroTp2(Vector3.new(-546, 9, -3403));
                        else
                            L_2068("Find Sarah's necklace");
                            task.wait(2);
                        end;
                    elseif tick() - L_2387 > 30 then
                        if (Vector3.new(-546, 9, -3403) - player.Character.HumanoidRootPart.Position).Magnitude > 5 then
                            HoroTp2(Vector3.new(-546, 9, -3403));
                        else
                            L_2068("Find Sarah's necklace");
                            L_2387 = tick();
                            task.wait(2);
                        end;
                    else
                        local L_2390 = nil;
                        pcall(function()
                            L_2390 = L_2205();
                            return ;
                        end);
                        if L_2390 then
                            HoroTp2(L_2390.Position);
                            pcall(function()
                                fireproximityprompt(L_2390:FindFirstChildWhichIsA("ProximityPrompt"), true);
                                return ;
                            end);
                        elseif (Vector3.new(-546, 9, -3403) - player.Character.HumanoidRootPart.Position).Magnitude > 5 then
                            HoroTp2(Vector3.new(-546, 9, -3403));
                        else
                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quest"):InvokeServer({ "returnitem" });
                            task.wait(2);
                        end;
                    end;
                elseif workspace.Env:FindFirstChild("Chest") then
                    pcall(function()
                        local L_2391 = nil;
                        local L_2392 = math.huge;
                        local L_2393 = nil;
                        for L_2394, L_2395 in next, workspace.Env:GetChildren() do
                            if L_2395.Name == "Chest" then
                                local L_2396 = L_2395:GetPivot().Position;
                                local L_2397 = (L_2396 - player.Character.HumanoidRootPart.Position).Magnitude;
                                if L_2397 < 500 and L_2396.Y < 50 then
                                    local L_2398 = GetPrompt(L_2396);
                                    if L_2398 and L_2397 < L_2392 then
                                        L_2391 = L_2395;
                                        L_2393 = L_2398;
                                        L_2392 = L_2397;
                                    end;
                                end;
                            end;
                        end;
                        if L_2391 and L_2393 then
                            pcall(function()
                                HoroTp2(L_2391:GetPivot().Position);
                                fireproximityprompt(L_2393);
                                return ;
                            end);
                        end;
                        return ;
                    end);
                elseif workspace.NPCs:FindFirstChild("Bandit") then
                    if L_1666() ~= "Help Daph" then
                        if not L_2120(Vector3.new(-576, 5, -3431), 10) then
                            HoroTpPro({
                                Position = Vector3.new(-576, 5, -3431),
                                Speed = 30,
                                Stop = function()
                                    return getgenv().Tuff2;
                                end
                            });
                        else
                            L_2068("Help Daph");
                        end;
                    else
                        local L_2399 = workspace.NPCs:FindFirstChild("Bandit");
                        if L_2399 then
                            player.Character.HumanoidRootPart.Velocity = Vector3.zero;
                            HoroTp2(L_2399:GetPivot().Position);
                            task.spawn(function()
                                getgenv().Hit(L_2399);
                                return ;
                            end);
                        end;
                    end;
                end;
            elseif GetCurrentIsland().Name ~= "Fishman Island" then
                if (Vector3.new(1838, 4, -12173) - player.Character.HumanoidRootPart.Position).Magnitude > 300 then
                    HoroTp2(Vector3.new(1838, 4, -12173));
                elseif (Vector3.new(workspace.AreaTeleporters.FirstSea.Fishman.Part.Position.X, 0, workspace.AreaTeleporters.FirstSea.Fishman.Part.Position.Z) - Vector3.new(player.Character.HumanoidRootPart.Position.X, 0, player.Character.HumanoidRootPart.Position.Z)).Magnitude < 10 then
                    repeat
                        task.wait();
                    until L_1665() > 10;
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("takestam"):FireServer(unpack({ 0.525, "dash" }));
                    task.wait(0.5);
                    player.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.AreaTeleporters.FirstSea.Fishman.Part.Position);
                    task.wait(10);
                else
                    HoroTp2(workspace.AreaTeleporters.FirstSea.Fishman.Part.Position);
                end;
            elseif GetCurrentIsland().Name == "Fishman Island" then
                if statsFolder.Stats.SpawnPoint.Value ~= "Fishman Island" then
                    HoroTp2(Vector3.new(7977, -2153, -17074), 30, true);
                    if workspace.NPCs:FindFirstChild("Robo") then
                        QuestEvent:InvokeServer({ "npcChat", true });
                        SetSpawnEvent:FireServer(nil, Workspace.NPCs.Robo);
                    end;
                elseif (Vector3.new(7839, -2151, -17135) - player.Character.HumanoidRootPart.Position).Magnitude > 10 then
                    HoroTp2(Vector3.new(7839, -2151, -17135), 30, false, 100);
                elseif L_1666() ~= "Help becky" and L_1664() >= 190 then
                    HoroTp2(Vector3.new(7733, -2176, -17218), 30, false, 30);
                    task.wait(1);
                    L_2068("Help becky");
                    task.wait(1);
                else
                    pcall(function()
                        L_2385();
                        return ;
                    end);
                    task.wait(0.2);
                end;
            end;
        end;
        return ;
    end);
    return ;
end);
getgenv().HitDelay = getgenv().HitDelay or 0.45;
Hit = function(L_2400)
    if typeof(L_2400) ~= "table" or #L_2400 == 0 then
        return ;
    end;
    local L_2401 = game.Players.LocalPlayer;
    local L_2402 = game:GetService("ReplicatedStorage");
    local L_2403 = L_2401.Character;
    local L_2404 = L_2403 and L_2403:FindFirstChildOfClass("Humanoid");
    if not L_2403 or not L_2404 then
        return ;
    end;
    getgenv().HitDelay = getgenv().HitDelay or 0.45;
    getgenv().SwingDelay = getgenv().SwingDelay or 0.05;
    getgenv().ComboResetDelay = getgenv().ComboResetDelay or 1.2;
    getgenv().Throttle = getgenv().Throttle or 0.05;
    getgenv().LastHitTick = getgenv().LastHitTick or 0;
    getgenv().NextHitTime = getgenv().NextHitTime or 0;
    getgenv().Combo = getgenv().Combo or 1;
    local L_2405 = tick();
    if L_2405 < getgenv().NextHitTime or L_2405 - getgenv().LastHitTick < getgenv().Throttle then
        return ;
    end;
    local L_2406 = nil;
    for L_2407, L_2408 in next, L_2403:GetChildren() do
        if L_2408:GetAttribute("MeleeTool") then
            L_2406 = L_2408;
            break;
        end;
    end;
    for L_2409, L_2410 in next, L_2401.Backpack:GetChildren() do
        if L_2410:GetAttribute("MeleeTool") then
            L_2406 = L_2410;
            break;
        end;
    end;
    if not L_2406 then
        return ;
    end;
    if L_2406.Parent ~= L_2403 then
        L_2406.Parent = L_2403;
    end;
    local L_2411 = select(2, getgenv().GetStyle());
    local L_2412 = L_2402:FindFirstChild("CombatAnimations"):FindFirstChild(L_2411);
    if not L_2412 then
        return ;
    end;
    local L_2413 = getgenv().Combo;
    local L_2414 = L_2412:FindFirstChild("Punch" .. L_2413) or L_2412:FindFirstChild("GroundPunch" .. L_2413) or L_2412:FindFirstChild("Punch1");
    if not L_2414 then
        return ;
    end;
    local L_2415 = L_2403:FindFirstChild(L_33);
    if not L_2415 then
        return ;
    end;
    local L_2416 = L_2415.Position;
    local L_2417 = 0;
    local L_2418 = 0;
    local L_2419 = 0;
    for L_2420, L_2421 in next, L_2400, nil do
        if typeof(L_2421) == "Instance" and L_2421:IsA("BasePart") and L_2421.Parent then
            L_2417 = L_2417 + L_2421.Position.X;
            L_2418 = L_2418 + L_2421.Position.Z;
            L_2419 = L_2419 + 1;
        end;
    end;
    if L_2419 == 0 then
        return ;
    end;
    local L_2422 = Vector3.new(L_2417 / L_2419, L_2416.Y, L_2418 / L_2419);
    local L_2423 = CFrame.new(L_2416, L_2422);
    local L_2424 = L_2404:FindFirstChildOfClass("Animator");
    local L_2425 = L_2424 and L_2424:LoadAnimation(L_2414);
    local L_2426 = L_2401:GetAttribute("Ping") and math.clamp(L_2401:GetAttribute("Ping"), 0, 0.35) or 0.05;
    local L_2427 = (L_2425 and L_2425.Length or 0.35) / (L_2425 and L_2425.Speed ~= 0 and L_2425.Speed or 1) * 0.4 - L_2426;
    if L_2427 < 0.03 then
        L_2427 = 0.03;
    end;
    if L_2425 then
        L_2425:Stop();
        L_2425:Destroy();
    end;
    getgenv().LastHitTick = L_2405;
    getgenv().NextHitTime = L_2405 + L_2427 + getgenv().SwingDelay;
    pcall(function()
        L_2402.Events.CombatRegister:InvokeServer({ "swingsfx", L_2411, L_2413, "Ground", false, L_2414, 1.75, 2, L_2423 });
        return ;
    end);
    task.delay(L_2427 + getgenv().HitDelay, function()
        local L_2428 = {};
        for L_2429, L_2430 in next, L_2400, nil do
            if typeof(L_2430) == "Instance" and L_2430.Parent then
                table.insert(L_2428, L_2430);
            end;
        end;
        if #L_2428 == 0 then
            return ;
        end;
        local L_2431 = CFrame.new(L_2416, L_2422);
        pcall(function()
            L_2402.Events.CombatRegister:InvokeServer({ "damage", L_2428, L_2411, { L_2413, "Ground", L_2411 }, true, L_2431 });
            return ;
        end);
        return ;
    end);
    getgenv().Combo = getgenv().Combo + 1;
    if getgenv().Combo > 5 then
        getgenv().Combo = 1;
        getgenv().NextHitTime = L_2405 + L_2427 + getgenv().ComboResetDelay;
    end;
    return ;
end;
local L_2438 = function(L_2432, L_2433)
    local L_2434 = L_2432:FindFirstChildWhichIsA("Animator", true);
    if not L_2434 then
        return false;
    end;
    local L_2435 = tostring(L_2433);
    for L_2436, L_2437 in next, L_2434:GetPlayingAnimationTracks() do
        if L_2437.Animation and L_2437.Animation.AnimationId == "rbxassetid://" .. L_2435 then
            return true;
        end;
    end;
    return false;
end;
local L_2444 = function(L_2439)
    local L_2440 = nil;
    local L_2441 = math.huge;
    for L_2442, L_2443 in next, workspace.NPCs:GetChildren() do
        if L_2443.Name == L_2439 then
            distance = (L_2443:GetPivot().Position - player.Character.HumanoidRootPart.Position).Magnitude;
            if distance < L_2441 then
                L_2441 = distance;
                L_2440 = L_2443;
            end;
        end;
    end;
    return L_2440;
end;
PlayerSection.CreateToggle({ Title = "Tp Behind Player", Desc = "Teleports behind the closest player", Default = false, Keybind = true, DefaultKey = "N" }, function(L_2445)
    getgenv().tpBehindEnabled = L_2445;
    while getgenv().tpBehindEnabled do
        local L_2446 = L_2077();
        if L_2446 and L_2446.Character and L_2446.Character:FindFirstChild(L_33) and player.Character and player.Character:FindFirstChild(L_33) then
            local L_2447 = L_2446.Character.HumanoidRootPart;
            local L_2448 = L_2447.Position + L_2447.CFrame.LookVector * -5;
            player.Character.HumanoidRootPart.CFrame = CFrame.new(L_2448, L_2447.Position + Vector3.new(0, 3, 0));
        end;
        task.wait();
    end;
    return ;
end);
SellRarities = { "Legendary", "Rare", "Common", "Uncommon", "Epic" };
getgenv().LastPosition = 0;
task.spawn(pcall, function()
    Action = game:GetService("ReplicatedStorage"):FindFirstChild("Fishing"):FindFirstChild("Remotes"):FindFirstChild("Action");
    return ;
end);
getgenv().FishKaitun = { Enabled = false, Merchant = false, Bait = "Common Fish Bait", Buyables = {}, SetSpawn = false, WebhookFruits = { "Mythical", "Legendary", "Rare", "Epic", "Common", "Uncommon" }, DropFruits = { "Mythical", "Legendary", "Rare", "Epic", "Common", "Uncommon" }, Bait = "Best", EquipTitle = true, LegendaryBait = false, RareBait = false, BaitBuyAmount = 50, StoreFruit = true, SellRarities = { "Legendary", "Rare", "Epic", "Common", "Uncommon" }, AutoSell = true, Webhook = "" };
getgenv().Loop = false;
Tiers = { ["Devil Fruit Rod"] = 8, ["ODM Rod"] = 7, ["Jack-O'Rod"] = 6, ["Angler Rod"] = 5, ["Merchants Banana Rod"] = 4, ["Epic Fishing Rod"] = 3, ["Rare Fishing Rod"] = 2, ["Fishing Rod"] = 1 };
Baits = { ["Legendary Fish Bait"] = 1, ["Rare Fish Bait"] = 2, ["Common Fish Bait"] = 3 };
BestBait = function()
    if getgenv().FishKaitun.Bait == "Best" then
        local L_2449 = nil;
        local L_2450 = math.huge;
        local L_2451 = nil;
        for L_2452, L_2453 in next, Baits, nil do
            if L_1661(L_2452) > 0 and L_2453 < L_2450 then
                L_2449 = L_2452;
                L_2450 = L_2453;
            end;
        end;
        if L_2449 == "Legendary Fish Bait" then
            L_2451 = "legendary";
        elseif L_2449 == "Rare Fish Bait" then
            L_2451 = "rare";
        elseif L_2449 == "Common Fish Bait" then
            L_2451 = "common";
        end;
        return L_2449, L_2451;
    end;
    local L_2454 = nil;
    local L_2455 = L_1661(getgenv().FishKaitun.Bait) > 0 and getgenv().FishKaitun.Bait or "Common Fish Bait";
    if L_2455 == "Legendary Fish Bait" then
        L_2454 = "legendary";
    elseif L_2455 == "Rare Fish Bait" then
        L_2454 = "rare";
    elseif L_2455 == "Common Fish Bait" then
        L_2454 = "common";
    end;
    return L_2455, L_2454;
end;
GetStock = function(L_2456)
    local L_2457 = game:GetService("Players");
    local L_2458 = game:GetService("HttpService");
    local L_2459 = L_2457.LocalPlayer;
    if not L_2459 then
        return 0;
    end;
    local L_2460 = L_2459:WaitForChild("PlayerGui"):FindFirstChild("MerchentShop");
    if not L_2460 then
        return 0;
    end;
    local L_2461 = L_2460:GetAttribute("Prices");
    if not L_2461 or L_2461 == "" then
        return 0;
    end;
    local L_2462, L_2463 = pcall(L_2458.JSONDecode, L_2458, L_2461);
    if not L_2462 or type(L_2463) ~= "table" then
        return 0;
    end;
    local L_2464 = L_2463[L_2456];
    if not L_2464 then
        return 0;
    end;
    return L_2464.remaining or 0;
end;
IsInStock = function(L_2465)
    local L_2466 = game:GetService("Players");
    local L_2467 = game:GetService("HttpService");
    local L_2468 = L_2466.LocalPlayer;
    if not L_2468 then
        return false;
    end;
    local L_2469 = L_2468:WaitForChild("PlayerGui"):FindFirstChild("MerchentShop");
    if not L_2469 then
        return false;
    end;
    local L_2470 = L_2469:GetAttribute("Prices");
    if not L_2470 or L_2470 == "" then
        return false;
    end;
    local L_2471, L_2472 = pcall(L_2467.JSONDecode, L_2467, L_2470);
    if not L_2471 or type(L_2472) ~= "table" then
        return false;
    end;
    local L_2473 = L_2472[L_2465];
    if not L_2473 then
        return false;
    end;
    if (L_2473.remaining or 0) <= 0 then
        return false;
    end;
    local L_2474 = L_2473.price or 0;
    if L_2474 <= 0 then
        return false;
    end;
    local L_2475 = L_1662();
    if type(L_2475) ~= "number" then
        return false;
    end;
    return L_2475 >= L_2474;
end;
timeLeft = function(L_2476)
    return math.max(0, L_2476 - os.time());
end;
tbl = { "Race Reroll", "SP Reset Essence", "Dark Root", "Spirit Color Essence", "Rare Fish Bait", "Golden Staff", "Golden Hook", "Tropical Parrot", "Blossom Skirt", "Raylo's Outfit", "Desert Merchant Outfit", "Sea-Breeze Skirt", "Tari's Karoo Coat", "Sea-Breeze Haori", "Crimson Nightcoat", "Powderpunk Outfit", "Shadowrunner Mask", "Shadowrunner's Outfit", "Street Enforcer Outfit", "Wastelander Goggles", "Special Tailor Token", "Karoo Mount", "Gravity Blade", "Jitte", "Sorcerer Hunter Costume", "Ulquiorra Outfit", "Bomi's Log Pose", "Rare Fruit Chest", "Spare Fruit Bag", "Thrilled Ship", "Raiui", "Kessui", "Bisento", "Crab Cutlass", "Knight's Gauntlet", "Merchants Banana Rod", "Legendary Fish Bait", "Hoverboard", "Striker", "Coffin Boat", "Legendary Fruit Chest", "Mythical Fruit Chest", "Turkey Head", "Cute Turkey Bucket Hat", "Pilgrim Hat", "Turkey Costume" };
GetInventoryData = function()
    if not inventoryValue or inventoryValue.Value == "" then
        return nil;
    end;
    local L_2477, L_2478 = pcall(function()
        return L_618:JSONDecode(inventoryValue.Value);
    end);
    if L_2477 and type(L_2478) == "table" then
        return L_2478;
    end;
    return nil;
end;
GetRodInventory = function()
    local L_2479 = GetInventoryData();
    if not L_2479 then
        return nil;
    end;
    local L_2480 = nil;
    local L_2481 = -math.huge;
    for L_2482, L_2483 in next, Tiers, nil do
        if L_2479[L_2482] and L_2481 < L_2483 then
            L_2481 = L_2483;
            L_2480 = L_2482;
        end;
    end;
    return L_2480;
end;
EnsureBestRodEquipped = function()
    local L_2484 = GetRodInstance();
    local L_2485 = L_2484 and Tiers[L_2484.Name] or -math.huge;
    local L_2486 = GetRodInventory();
    if L_2486 and L_2485 < (Tiers[L_2486] or -math.huge) then
        ToolsEvent:InvokeServer("equip", L_2486);
        task.wait(2);
        L_2484 = GetRodInstance();
    end;
    return L_2484;
end;
GetRodInstance = function()
    local L_2487 = nil;
    local L_2488 = -math.huge;
    local L_2489 = nil;
    for L_2490, L_2491 in next, Tiers, nil do
        local L_2492 = L_2170(L_2490);
        if L_2492 and L_2488 < L_2491 then
            L_2488 = L_2491;
            L_2489 = L_2490;
            L_2487 = L_2492;
        end;
        if not L_2492 and GetInventoryTool(L_2490) and L_2488 < L_2491 then
            L_2488 = L_2491;
            L_2487 = nil;
            L_2489 = L_2490;
        end;
    end;
    if L_2489 and not L_2487 then
        ToolsEvent:InvokeServer("equip", L_2489);
        task.wait(0.5);
        L_2487 = L_2170(L_2489);
    end;
    return L_2487;
end;
local L_2493 = {};
local L_2518 = function()
    local L_2494 = GetRodInstance();
    if not L_2494 then
        local L_2495 = GetRodInventory();
        if L_2495 then
            warn("equipping");
            ToolsEvent:InvokeServer("equip", L_2495);
            task.wait(2);
            local L_2496 = GetRodInstance();
        elseif L_1662() > 60 then
            if (Vector3.new(-1340, 2, -4978) - player.Character.HumanoidRootPart.Position).Magnitude > 10 then
                L_2156(Vector3.new(-1340, 2, -4978));
            else
                Buy(BuyableItems:FindFirstChild("Fishing Rod"));
            end;
        else
            for L_2497, L_2498 in next, workspace.Env:GetChildren() do
                if L_2498.Name == "Chest" then
                    local L_2499 = GetPrompt(L_2498:GetPivot().Position);
                    pcall(function()
                        L_2156(L_2499.Parent.Position);
                        fireproximityprompt(L_2499);
                        return ;
                    end);
                end;
            end;
        end;
    else
        if L_2494.Parent ~= player.Character then
            player.Character.Humanoid:EquipTool(L_2494);
            task.wait(2);
            return ;
        end;
        if L_1661("Common Fish Bait") <= 1 then
            if (Vector3.new(-1340, 2, -4978) - player.Character.HumanoidRootPart.Position).Magnitude > 10 then
                L_2156(Vector3.new(-1340, 2, -4978));
            elseif L_1662() >= 500 then
                repeat
                    task.wait();
                    local L_2500 = L_1661("Common Fish Bait");
                    Buy(BuyableItems:FindFirstChild("Common Fish Bait"));
                until L_2500 >= 50 or not getgenv().FishKaitun.Enabled;
            else
                repeat
                    task.wait();
                    for L_2501, L_2502 in next, workspace.Env:GetChildren() do
                        if L_2502.Name == "Chest" then
                            local L_2503 = GetPrompt(L_2502:GetPivot().Position);
                            pcall(function()
                                L_2156(L_2503.Parent.Position);
                                fireproximityprompt(L_2503);
                                return ;
                            end);
                        end;
                    end;
                until L_1662() >= 500 or not getgenv().FishKaitun.Enabled;
            end;
        else
            local L_2504 = workspace.Effects:FindFirstChild(player.Name .. "'s hook") or nil;
            if not L_2504 then
                Action:InvokeServer({ Goal = Vector3.new(0, 0, 0), Action = "Throw", Bait = BestBait() });
                task.wait(0.5);
                Action:InvokeServer({ Action = "Landed" });
                local L_2505 = workspace.Effects:FindFirstChild(player.Name .. "'s hook");
            else
                warn("here");
                L_2504.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position);
                if L_2504:GetAttribute("Caught") and not getgenv().Loop then
                    warn("caught");
                    getgenv().Loop = true;
                    task.spawn(function()
                        repeat
                            task.wait(0.5);
                            Action:InvokeServer({ Action = "Reel" });
                        until not L_2504:GetAttribute("Caught") or not getgenv().FishKaitun.Enabled;
                        getgenv().Loop = false;
                        return ;
                    end);
                elseif L_2504:GetAttribute("MoveMultiplier") and not L_2504:GetAttribute("Caught") then
                    warn("here unequipping");
                    L_2494.Parent = player.Backpack;
                    task.wait(0.2);
                    L_2494.Parent = player.Character;
                end;
            end;
            if L_1662() < 1000000 and not getgenv().Buying then
                SellFish();
            end;
            if getgenv().FishKaitun.Merchant then
                local L_2506 = game:GetService("ReplicatedStorage").CompassGuider:FindFirstChild("Traveling Merchant");
                if getgenv().LastPosition ~= L_2506.Value then
                    getgenv().LastPosition = L_2506.Value;
                    if L_2506 and game:GetService("Players").LocalPlayer.PlayerGui.Compass.Compass.Guiders:FindFirstChild("Traveling Merchant").Visible then
                        warn("here teleporting gng?");
                        HoroTp(L_2506.Value);
                        task.wait(2);
                        getgenv().Buying = true;
                        repeat
                            task.wait(1);
                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TravelingMerchentRemote"):InvokeServer("OpenShop");
                        until player.PlayerGui:FindFirstChild("MerchentShop") or not getgenv().FishKaitun.Enabled;
                        for L_2507, L_2508 in next, getgenv().FishKaitun.Buyables, nil do
                            if IsInStock(L_2508) then
                                for L_2509 = 1, 10, 1 do
                                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TravelingMerchentRemote"):InvokeServer(L_2508, game:GetService("Players").LocalPlayer.PlayerGui.MerchentShop:GetAttribute("Seed"));
                                end;
                                task.wait();
                            end;
                        end;
                        getgenv().Buying = false;
                        local L_2510 = timeLeft(player.PlayerGui:FindFirstChild("MerchentShop"):GetAttribute("NextRefresh"));
                        task.delay(L_2510, function()
                            getgenv().LastPosition = 0;
                            return ;
                        end);
                    end;
                end;
            end;
            local L_2511 = game.Players.LocalPlayer;
            for L_2512, L_2513 in next, L_2511.Backpack:GetChildren() do
                if L_2513:GetAttribute("verifiedFruit") and not L_2493[L_2513] then
                    local L_2514 = 0;
                    repeat
                        task.wait(0.1);
                        L_2514 = L_2514 + 0.1;
                        if L_2513.Parent ~= L_2511.Character then
                            L_2511.Character.Humanoid:EquipTool(L_2513);
                        end;
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FruitStorage"):InvokeServer(true);
                    until not L_2513 or not L_2513.Parent or L_2514 > 2;
                    if L_2513 and L_2513.Parent then
                        L_2493[L_2513] = true;
                    end;
                end;
            end;
            for L_2515, L_2516 in next, L_2511.Character:GetChildren() do
                if L_2516:GetAttribute("verifiedFruit") then
                    local L_2517 = 0;
                    repeat
                        task.wait(0.1);
                        L_2517 = L_2517 + 0.1;
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FruitStorage"):InvokeServer(true);
                    until not L_2516 or not L_2516.Parent or L_2517 > 2;
                    if L_2516 and L_2516.Parent then
                        L_2493[L_2516] = true;
                    end;
                end;
            end;
        end;
    end;
    return ;
end;
getgenv().HalloweenSettings = { Enabled = false };
local L_2519 = player;
local L_2520 = {};
local L_2521 = {};
local L_2522 = {};
getgenv().CONFIG = { KAITUN = { ENABLED = false }, Halloween = {}, Player = {} };
local L_2528 = function()
    local L_2523 = nil;
    local L_2524 = math.huge;
    for L_2525, L_2526 in next, workspace.Islands.Spooksville.Building:GetChildren() do
        if not table.find(L_2522, L_2526) then
            local L_2527 = (L_2526:GetPivot().Position - Character:GetPivot().Position).Magnitude;
            if L_2527 < L_2524 then
                L_2523 = L_2526;
                L_2524 = L_2527;
            end;
        end;
    end;
    return L_2523;
end;
local L_2534 = function()
    local L_2529 = nil;
    local L_2530 = math.huge;
    for L_2531, L_2532 in next, workspace.Islands:GetChildren() do
        local L_2533 = (L_2532:GetPivot().Position - Character:GetPivot().Position).Magnitude;
        if L_2533 < L_2530 then
            L_2529 = L_2532;
            L_2530 = L_2533;
        end;
    end;
    return L_2529;
end;
local L_2535 = { ["Candy Corn Basket"] = 250, ["Pumpkin Basket"] = 100, ["Pumpkin Bag"] = 0 };
local L_2541 = function(L_2536)
    for L_2537, L_2538 in next, L_2519.Backpack:GetChildren() do
        if L_2538.Name == L_2536 then
            return L_2538;
        end;
    end;
    if Character then
        for L_2539, L_2540 in next, Character:GetChildren() do
            if L_2540.Name == L_2536 then
                return L_2540;
            end;
        end;
    end;
    return nil;
end;
local L_2550 = function()
    local L_2542 = nil;
    local L_2543 = -math.huge;
    local L_2544 = nil;
    for L_2545, L_2546 in pairs(L_2535) do
        local L_2547 = L_2541(L_2545);
        local L_2548 = false;
        if not L_2547 then
            local L_2549 = game.ReplicatedStorage:FindFirstChild("Stats" .. L_2519.Name);
            if L_2549 and string.find(L_2549.Inventory.Inventory.Value, L_2545) then
                L_2548 = true;
            end;
        end;
        if (L_2547 or L_2548) and L_2543 < L_2546 then
            L_2543 = L_2546;
            L_2544 = L_2545;
            L_2542 = L_2547;
        end;
    end;
    if L_2544 and not L_2542 then
        game:GetService("ReplicatedStorage").Events.Tools:InvokeServer("equip", L_2544);
        task.wait(0.5);
        L_2542 = L_2541(L_2544);
    end;
    return L_2542;
end;
if workspace:FindFirstChild("P") then
    workspace:FindFirstChild("P"):Destroy();
end;
local L_2554 = function(L_2551)
    getgenv().Platform = L_2551;
    if not Character then
        return ;
    end;
    if not Character:FindFirstChild(L_33) then
        return ;
    end;
    if not getgenv().CONFIG.Player.USERPLATFORM then
        local L_2552 = Instance.new("Part");
        L_2552.Parent = workspace;
        L_2552.Anchored = true;
        L_2552.Name = "P";
        L_2552.Material = Enum.Material.ForceField;
        L_2552.Size = Vector3.new(10, 0.1, 10);
        L_2552.CanCollide = false;
        getgenv().CONFIG.Player.USERPLATFORM = L_2552;
    end;
    if L_2551 then
        getgenv().CONFIG.Player.USERPLATFORM.CanCollide = true;
        L_2521.Platform = task.spawn(function()
            while task.wait() do
                local L_2553 = Character:FindFirstChild(L_33);
                if L_2553 then
                    getgenv().CONFIG.Player.USERPLATFORM.CFrame = CFrame.new(L_2553.Position.X, 34, L_2553.Position.Z);
                    L_2553.CFrame = CFrame.new(getgenv().CONFIG.Player.USERPLATFORM.Position + Vector3.new(0, 3, 0));
                end;
            end;
            return ;
        end);
    else
        getgenv().CONFIG.Player.USERPLATFORM.CanCollide = false;
        if L_2521.Platform then
            task.cancel(L_2521.Platform);
            L_2521.Platform = nil;
        end;
    end;
    return ;
end;
local L_2555 = game:GetService("TweenService");
local L_2564 = function(L_2556, L_2557, L_2558)
    L_2521.Tween = task.spawn(function()
        local L_2559 = Character and Character:FindFirstChild(L_33);
        local L_2560 = Character and Character:FindFirstChild("Humanoid");
        if not L_2559 or not L_2560 then
            return ;
        end;
        if L_2521.Tween then
            task.cancel(L_2521.Tween);
            L_2521.Tween = nil;
        end;
        local L_2561 = not L_2558 and L_2556 or CFrame.new(L_2556.Position.X, 36, L_2556.Position.Z);
        local L_2562 = (L_2559.Position - L_2561.Position).Magnitude / (L_2557 or 40);
        local L_2563 = L_2555:Create(L_2559, TweenInfo.new(L_2562, Enum.EasingStyle.Linear), { CFrame = L_2561 });
        L_2563:Play();
        L_2563.Completed:Wait();
        return ;
    end);
    return ;
end;
tbl2 = { ["Race Reroll x5"] = 25, ["Legendary Fruit Chest Blueprint"] = 100, ["Mummy Wrappings"] = 100, ["Custom Spirit Color"] = 50, ["Devil Fruit Journal"] = 125, ["Devil Fruit Remover"] = 25, ["Joker Costume"] = 100, Lantern = 50, ["Blood Scythe"] = 500, ["Plague Doctor Costume"] = 100, ["Trading Sign"] = 100, ["SP Reset Essence"] = 10, ["Fruit Bag"] = 250, ["Ghost Face Costume"] = 100, ["Rare Fruit Chest"] = 250 };
tblnames = {};
for L_2565, L_2566 in next, tbl2, nil do
    table.insert(tblnames, L_2565);
end;
HalloweenSection.CreateToggle({ Title = "Auto Farm Halloween", Desc = "Auto Knocks on doors to farm candy (fully automatic)", Default = false }, function(L_2567)
    getgenv().HalloweenSettings.Enabled = L_2567;
    task.spawn(function()
        while getgenv().HalloweenSettings.Enabled and task.wait(1) do
            FakeGeppo();
        end;
        return ;
    end);
    if L_2567 and not HasGeppo() then
        Library.CreateNoti({ Title = "Uh Oh!", Desc = "You need geppo to use this!", ShowTime = 4 });
        return ;
    end;
    if not L_2567 then
        L_2554(false);
        return ;
    end;
    pcall(function()
        repeat
            task.wait();
            if player.Character.Humanoid.Health / player.Character.Humanoid.MaxHealth < 0.3 then
                repeat
                    task.wait();
                until player.Character.Humanoid.Health / player.Character.Humanoid.MaxHealth > 0.3;
            end;
            local L_2568 = L_2550();
            if L_2568 and L_2568.Parent ~= player.Character then
                player.Character.Humanoid:EquipTool(L_2568);
            end;
            if L_2534().Name ~= "Spooksville" then
                L_2554(false);
                HoroTpPro({
                    Position = Vector3.new(-7465.7002, 100, -589.25),
                    Speed = 40,
                    Stop = function()
                        return getgenv().HalloweenSettings.Enabled;
                    end
                });
                task.wait(10);
            else
                L_2554(true);
                local L_2569 = game.ReplicatedStorage:FindFirstChild("Stats" .. player.Name) and game.ReplicatedStorage["Stats" .. player.Name].Inventory:FindFirstChild("Halloween25Candy") and game.ReplicatedStorage["Stats" .. player.Name].Inventory.Halloween25Candy.Value;
                local L_2570 = L_2568 and require(game.ReplicatedStorage.Modules.ToolDesc)[L_2568.Name].MaxCandy or 0;
                local L_2571, L_2572 = tonumber(L_2569), tonumber(L_2570);
                local L_2573 = L_2572;
                pcall(function()
                    if L_2573 <= L_2571 then
                        for L_2574, L_2575 in next, player.PlayerGui.HalloweenShop.Main.List.Bundles:GetChildren() do
                            if L_2575:IsA("ImageButton") then
                                local L_2576 = L_2575:FindFirstChild("Price", true).Text;
                                if tonumber(L_2576) <= L_2573 then
                                    game:GetService("ReplicatedStorage"):WaitForChild("HalloweenShopRemote"):InvokeServer(L_2575.Name);
                                end;
                            end;
                        end;
                        task.wait(3);
                        return ;
                    end;
                    return ;
                end);
                local L_2577 = L_2528();
                if not L_2577 then
                    L_2522 = {};
                else
                    local L_2578 = L_2577:FindFirstChild("eventDoor");
                    if (L_2578:GetPivot().Position - player.Character:GetPivot().Position).Magnitude > 200 then
                        HoroTpPro({
                            Position = L_2578:GetPivot().Position + Vector3.new(0, 5, 0),
                            Speed = 40,
                            Stop = function()
                                return getgenv().HalloweenSettings.Enabled;
                            end
                        });
                    else
                        L_2564(CFrame.new(L_2578:GetPivot().Position), 30, true);
                    end;
                    local L_2579 = L_2578:GetPivot();
                    local L_2580 = L_2578:FindFirstChildWhichIsA("ProximityPrompt", true);
                    repeat
                        task.wait();
                    until (L_2578:GetPivot().Position - player.Character:GetPivot().Position).Magnitude < 15 or not getgenv().HalloweenSettings.Enabled;
                    repeat
                        task.wait(0.5);
                        if L_2580.Enabled then
                            fireproximityprompt(L_2580);
                        end;
                    until L_2578:GetPivot() ~= L_2579 or not getgenv().HalloweenSettings.Enabled or player.PlayerGui.Notifications.Frame:FindFirstChild("TextLabel");
                    task.wait(1.5);
                    if workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable then
                        repeat
                            task.wait();
                        until workspace.CurrentCamera.CameraType ~= Enum.CameraType.Scriptable;
                    end;
                    for L_2581, L_2582 in next, player.PlayerGui.Notifications.Frame:GetChildren() do
                        if L_2582:IsA("TextLabel") then
                            L_2582:Destroy();
                        end;
                    end;
                    table.insert(L_2522, L_2577);
                end;
            end;
        until not getgenv().HalloweenSettings.Enabled or not player.Character:FindFirstChild(L_33);
        L_2554(false);
        return ;
    end);
    return ;
end);
local L_2583 = {};
local L_2586 = function()
    for L_2584, L_2585 in next, workspace.Islands.Spooksville.Building:GetChildren() do
        if L_2585:FindFirstChild("eventDoor", true) and not L_2583[L_2585] then
            return L_2585:FindFirstChild("eventDoor", true);
        end;
    end;
    return nil;
end;
local L_2596 = function(L_2587)
    local L_2588 = L_2550();
    local L_2589 = game.ReplicatedStorage:FindFirstChild("Stats" .. L_2519.Name) and game.ReplicatedStorage["Stats" .. L_2519.Name].Inventory:FindFirstChild("Halloween25Candy") and game.ReplicatedStorage["Stats" .. L_2519.Name].Inventory.Halloween25Candy.Value;
    local L_2590 = L_2588 and require(game.ReplicatedStorage.Modules.ToolDesc)[L_2588.Name].MaxCandy or 0;
    local L_2591, L_2592 = tonumber(L_2589), tonumber(L_2590);
    if L_2592 <= L_2591 then
        for L_2593, L_2594 in next, L_2519.PlayerGui.HalloweenShop.Main.List.Bundles:GetChildren() do
            if L_2594:IsA("ImageButton") then
                local L_2595 = L_2594:FindFirstChild("Price", true).Text;
                if L_2592 <= tonumber(L_2595) then
                    game:GetService("ReplicatedStorage"):WaitForChild("HalloweenShopRemote"):InvokeServer(L_2594.Name);
                end;
            end;
        end;
        task.wait(1);
    end;
    return ;
end;
local L_2597 = function()
    return workspace.Islands["Rose Kingdom"].Factory.FrontDoor.Model.Center.CFrame.Position.Y > 120;
end;
getgenv().HalloweenBuyables = {};
HalloweenSection.CreateToggle({ Title = "Auto Buy Halloween", Desc = "Automaticlaly purchases selected items with candy", Default = false }, function(L_2598)
    getgenv().AutoBuy = L_2598;
    while getgenv().AutoBuy and task.wait() do
        for L_2599, L_2600 in next, getgenv().HalloweenBuyables, nil do
            if tbl2[L_2600] <= L_1663() then
                game:GetService("ReplicatedStorage"):WaitForChild("HalloweenShopRemote"):InvokeServer(L_2600);
            end;
        end;
    end;
    return ;
end);
HalloweenSection.CreateDropdown({ Title = "Buyables", List = tblnames, Default = {}, Search = false, Selected = true }, function(L_2601, L_2602)
    local L_2603 = getgenv().HalloweenBuyables;
    if L_2602 then
        if not table.find(L_2603, L_2601) then
            table.insert(L_2603, L_2601);
        end;
    else
        for L_2604, L_2605 in ipairs(L_2603) do
            if L_2605 == L_2601 then
                table.remove(L_2603, L_2604);
                return ;
            end;
        end;
    end;
    return ;
end);
getgenv().AutoStatsTable = {};
local L_2606 = {};
task.spawn(pcall, function()
    for L_2607, L_2608 in next, game:GetService("Players").LocalPlayer.PlayerGui.Statistics.Main.Stats:GetChildren() do
        if L_2608:IsA("ImageLabel") then
            table.insert(L_2606, L_2608:FindFirstChild("Stat", true).Text);
        end;
    end;
    return ;
end);
getgenv().AutoStats = {};
getgenv().AutoStatsTable = {};
for L_2609, L_2610 in next, L_2606, nil do
    getgenv().AutoStats[L_2610] = 800;
end;
task.spawn(pcall, function()
    for L_2611, L_2612 in next, L_2606, nil do
        StatsSection.CreateToggle({
            Title = "Auto " .. L_2612 .. " Stat",
            Desc = "Automatically Puts Stat Points Into " .. L_2612,
            Default = false,
            Textbox = true,
            TextboxPlaceholder = "Max Stat",
            TextboxDefault = tostring(getgenv().AutoStats[L_2612]),
            TextboxCallback = function(L_2613)
                local L_2614 = tonumber(L_2613);
                if L_2614 then
                    getgenv().AutoStats[L_2612] = L_2614;
                    warn(L_2612 .. " stat set to:", L_2614);
                else
                    warn("Invalid number for " .. L_2612);
                end;
                return ;
            end
        }, function(L_2615)
            if L_2615 then
                table.insert(getgenv().AutoStatsTable, L_2612);
                warn("Auto " .. L_2612 .. " enabled");
            else
                local L_2616 = table.find(getgenv().AutoStatsTable, L_2612);
                if L_2616 then
                    table.remove(getgenv().AutoStatsTable, L_2616);
                    warn("Auto " .. L_2612 .. " disabled");
                end;
            end;
            return ;
        end);
    end;
    return ;
end);
getgenv().StatAmount = 1;
task.spawn(function()
    while task.wait(0.1) do
        pcall(function()
            local L_2617 = game:GetService("Players").LocalPlayer.PlayerGui.Statistics.Main.TopOptions.AvailableSP;
            if (tonumber(string.match(L_2617.Text, "%d+")) or 0) > 0 then
                for L_2618, L_2619 in next, game:GetService("Players").LocalPlayer.PlayerGui.Statistics.Main.Stats:GetChildren() do
                    if L_2619:IsA("ImageLabel") then
                        local L_2620 = L_2619:FindFirstChild("Stat", true);
                        local L_2621 = L_2619:FindFirstChild("Amount", true);
                        if L_2620 and L_2621 then
                            local L_2622 = L_2620.Text;
                            local L_2623 = tonumber(L_2621.Text) or 0;
                            if table.find(getgenv().AutoStatsTable, L_2622) and L_2623 < (getgenv().AutoStats[L_2622] or 800) then
                                firesignal(L_2619:FindFirstChild("Add").MouseButton1Click);
                            end;
                        end;
                    end;
                end;
            end;
            return ;
        end);
    end;
    return ;
end);
StatsSection.CreateSlider({ Title = "Stat Amount", Min = 1, Max = 100, Default = 1, Precise = true }, function(L_2624)
    getgenv().StatAmount = L_2624;
    return ;
end);
getgenv().NoDash = false;
if not getgenv().Namecall then
    getgenv().Namecall = true;
    local L_2625 = nil;
    L_2625 = hookmetamethod(game, "__namecall", (INTERPRETER_PROXY[1][34][5](function(L_2626, ...)
        if not checkcaller() and (getnamecallmethod() == "FireServer" and L_2626.Name == "takestam" and getgenv().NoDash) then
            return ;
        end;
        return L_2625(L_2626, ...);
    end)));
end;
local L_2631 = function(L_2627)
    local L_2628 = inventoryValue and inventoryValue.Value;
    if not L_2628 then
        return 0;
    end;
    local L_2629, L_2630 = pcall(function()
        return game:GetService("HttpService"):JSONDecode(L_2628);
    end);
    if not L_2629 then
        return 0;
    end;
    return L_2630[L_2627] or 0;
end;
GetStock = function(L_2632)
    local L_2633 = game:GetService("Players").LocalPlayer.PlayerGui.MerchentShop.Main.List.Redeemables;
    if L_2633:FindFirstChild(L_2632) then
        local L_2634 = L_2633:FindFirstChild(L_2632):FindFirstChild("Amount", true).Text;
        return tonumber(L_2634:match("(%d+)/%d+"));
    end;
    return 0;
end;
HasBag = function()
    local L_2635 = L_2631("Fruit Bag");
    if L_2631("Spare Fruit Bag") > 0 and L_2635 < 1 then
        return true;
    end;
    return false;
end;
EquipShit = function(L_2636)
    if getgenv().Busy then
        return ;
    end;
    if L_2170(L_2636) and L_2170(L_2636).Parent ~= player.Character then
        player.Character.Humanoid:UnequipTools();
        task.wait(1);
        L_2170(L_2636).Parent = player.Character;
        task.wait(1);
    end;
    return ;
end;
ExploitSection.CreateToggle({ Title = "Auto Use/Buy Fruit Bag", Desc = "Uses/Buys Spare Fruit Bag When Available", Default = false }, function(L_2637)
    getgenv().AutoUse = L_2637;
    while getgenv().AutoUse and task.wait() do
        if not getgenv().FishKaitun.Enabled then
            if HasBag() then
                getgenv().Busy = true;
                repeat
                    task.wait();
                    local L_2638 = L_2170("Spare Fruit Bag");
                    if L_2638 then
                        if L_2638.Parent ~= player.Character then
                            player.Character.Humanoid:UnequipTools();
                            task.wait(0.3);
                            L_2638.Parent = player.Character;
                            task.wait(0.3);
                        elseif not player.PlayerGui:FindFirstChild("ConfirmationPrompt") then
                            L_2638:Activate();
                            if L_2638:FindFirstChild("ConfirmationPrompt") then
                                L_2638:FindFirstChild("ConfirmationPrompt").Parent = player.PlayerGui;
                            end;
                        else
                            game:GetService("GuiService").SelectedObject = player.PlayerGui:FindFirstChild("ConfirmationPrompt").Main.Accept;
                            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, nil);
                            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, nil);
                        end;
                    else
                        ToolsEvent:InvokeServer("equip", "Spare Fruit Bag");
                    end;
                until not L_2638 or not L_2638.Parent or not getgenv().FishKaitun.Enabled or L_2631("Fruit Bag") > 0;
                game:GetService("GuiService").SelectedObject = nil;
                getgenv().Busy = false;
            elseif HasMerchant() and statsFolder.Skills:FindFirstChild("skyWalk") and statsFolder.Skills.skyWalk.Value then
                if not L_2120(HasMerchant(), 10, true) then
                    L_2238(HasMerchant());
                elseif not player.PlayerGui:FindFirstChild("MerchentShop") then
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TravelingMerchentRemote"):InvokeServer("OpenShop");
                elseif GetStock("Spare Fruit Bag") and GetStock("Spare Fruit Bag") > 0 then
                    Events.TravelingMerchentRemote:InvokeServer("Spare Fruit Bag", player.PlayerGui:FindFirstChild("MerchentShop"):GetAttribute("Seed"));
                end;
            end;
        end;
    end;
    return ;
end);
ExploitSection.CreateToggle({ Title = "No Dash Take Stamina", Desc = "Prevents the game from taking your stamina on dash", Default = false }, function(L_2639)
    getgenv().NoDash = L_2639;
    return ;
end);
local L_2640 = false;
ExploitSection.CreateToggle({ Title = "Fake Geppo", Desc = "Gives you fake geppo (Anticheat still can flag you)", Default = false }, function(L_2641)
    if L_2641 then
        if statsFolder.Skills.skyWalk.Value ~= true then
            L_2640 = true;
            statsFolder.Skills.skyWalk.Value = true;
        end;
    elseif L_2640 then
        statsFolder.Skills.skyWalk.Value = false;
    end;
    return ;
end);
ExploitSection.CreateToggle({ Title = "Streamer Mode", Desc = "Replaces usernames", Default = false }, function(L_2642)
    getgenv().replace = L_2642;
    if not L_2642 then
        pcall(function()
            if game:GetService("Players").LocalPlayer.PlayerGui.Playerlist.Main.ScrollingFrame.Pirate.Container:FindFirstChild(player.Name) then
                game:GetService("Players").LocalPlayer.PlayerGui.Playerlist.Main.ScrollingFrame.Pirate.Container:FindFirstChild(player.Name).Visible = true;
            end;
            game:GetService("Players").LocalPlayer.PlayerGui.Display.Enabled = true;
            return ;
        end);
    end;
    while getgenv().replace and task.wait(1) do
        pcall(function()
            if player.PlayerGui.Playerlist and player.PlayerGui.Playerlist.Enabled then
                player.PlayerGui.Playerlist.Enabled = false;
            end;
            player.PlayerGui.HealthBars:FindFirstChild(player.Name).NameT.Text = "gg/feral";
            return ;
        end);
        pcall(function()
            if game:GetService("Players").LocalPlayer.PlayerGui.Playerlist.Main.ScrollingFrame.Pirate.Container:FindFirstChild(player.Name) then
                game:GetService("Players").LocalPlayer.PlayerGui.Playerlist.Main.ScrollingFrame.Pirate.Container:FindFirstChild(player.Name).Visible = false;
            end;
            return ;
        end);
        pcall(function()
            if game:GetService("Players").LocalPlayer.PlayerGui.Display.Enabled then
                game:GetService("Players").LocalPlayer.PlayerGui.Display.Enabled = false;
            end;
            return ;
        end);
    end;
    return ;
end);
ExploitSection.CreateToggle({ Title = "Optimize Game", Desc = "Applies optimizations :)", Default = false }, function(L_2643)
    getgenv().Optimize = L_2643;
    if L_2643 then
        local L_2644 = game:GetService("Lighting");
        local L_2645 = game:GetService("Workspace");
        local L_2646 = game:GetService("RunService");
        local L_2647 = game:GetService("Players");
        local L_2648 = game:GetService("StarterGui");
        local L_2649 = game:GetService("ReplicatedStorage");
        local L_2650 = game:GetService("ReplicatedFirst");
        local L_2651 = game:GetService("SoundService");
        local L_2652 = game:GetService("CoreGui");
        local L_2653 = game:GetService("Debris");
        local L_2654 = game:GetService("TweenService");
        local L_2655 = L_2645:FindFirstChildOfClass("Terrain");
        local L_2656 = L_2645.CurrentCamera;
        local L_2657 = L_2647.LocalPlayer;
        local L_2658 = sethiddenproperty or set_hidden_property or set_hidden_prop;
        local L_2659 = gethiddenproperty or get_hidden_property or get_hidden_prop;
        local L_2660 = getgc or get_gc;
        local L_2661 = getconnections or get_connections;
        local L_2662 = getnilinstances or get_nil_instances;
        local L_2663 = getinstances or get_instances;
        if not getloadedmodules then
            local L_2664 = get_loaded_modules;
        end;
        if not getscripts then
            local L_2665 = get_scripts;
        end;
        if not getrunningscripts then
            local L_2666 = get_running_scripts;
        end;
        if not firesignal then
            local L_2667 = fire_signal;
        end;
        if not fireclickdetector then
            local L_2668 = fire_click_detector;
        end;
        local L_2669 = setrenderproperty or set_render_property;
        if not getrenderproperty then
            local L_2670 = get_render_property;
        end;
        if not cloneref then
            local L_2671 = clone_ref;
        end;
        if not gethui then
            local L_2672 = get_hidden_ui;
        end;
        if not isreadonly then
            local L_2673 = is_readonly;
        end;
        if not setreadonly then
            local L_2674 = set_readonly;
        end;
        if not getrawmetatable then
            local L_2675 = get_raw_metatable;
        end;
        if not setrawmetatable then
            local L_2676 = set_raw_metatable;
        end;
        if not hookfunction and not hookfunc and not replaceclosure then
            local L_2677 = detour_function;
        end;
        if not newcclosure then
            local L_2678 = new_cclosure;
        end;
        if not islclosure then
            local L_2679 = is_lclosure;
        end;
        local L_2680 = getinfo or debug.getinfo;
        if not getconstants and not debug.getconstants then
            local L_2681 = get_constants;
        end;
        if not getupvalues and not debug.getupvalues then
            local L_2682 = get_upvalues;
        end;
        if not setupvalue and not debug.setupvalue then
            local L_2683 = set_upvalue;
        end;
        if not getgenv().OptimizeData then
            getgenv().OptimizeData = { Lighting = {}, Terrain = {}, Workspace = {}, Camera = {}, Effects = {}, Parts = {}, Meshes = {}, Textures = {}, Decals = {}, SurfaceAppearances = {}, Materials = {}, Connections = {}, Sounds = {}, Guis = {}, NilParented = {}, Scripts = {}, Humanoids = {} };
        end;
        local L_2684 = getgenv().OptimizeData;
        local L_2685 = { fallingParticle = true, Lines = true, Lines2 = true };
        local L_2688 = function(L_2686)
            if not L_2686 then
                return true;
            end;
            if L_2685[L_2686.Name] then
                return true;
            end;
            local L_2687 = L_2686.Parent;
            while L_2687 do
                if L_2685[L_2687.Name] then
                    return true;
                end;
                L_2687 = L_2687.Parent;
            end;
            return false;
        end;
        L_2684.Lighting = { GlobalShadows = L_2644.GlobalShadows, FogEnd = L_2644.FogEnd, FogStart = L_2644.FogStart, FogColor = L_2644.FogColor, Brightness = L_2644.Brightness, Ambient = L_2644.Ambient, OutdoorAmbient = L_2644.OutdoorAmbient, ClockTime = L_2644.ClockTime, GeographicLatitude = L_2644.GeographicLatitude, EnvironmentDiffuseScale = L_2644.EnvironmentDiffuseScale, EnvironmentSpecularScale = L_2644.EnvironmentSpecularScale, ShadowSoftness = L_2644.ShadowSoftness, ColorShift_Bottom = L_2644.ColorShift_Bottom, ColorShift_Top = L_2644.ColorShift_Top, ExposureCompensation = L_2644.ExposureCompensation };
        L_2644.GlobalShadows = false;
        L_2644.FogEnd = 9000000000;
        L_2644.FogStart = 9000000000;
        L_2644.Brightness = 2;
        L_2644.ClockTime = 14;
        L_2644.GeographicLatitude = 0;
        L_2644.EnvironmentDiffuseScale = 0;
        L_2644.EnvironmentSpecularScale = 0;
        L_2644.ShadowSoftness = 0;
        L_2644.ExposureCompensation = 0;
        L_2644.Ambient = Color3.fromRGB(178, 178, 178);
        L_2644.OutdoorAmbient = Color3.fromRGB(178, 178, 178);
        pcall(function()
            L_2684.Lighting.Technology = L_2659(L_2644, "Technology");
            L_2658(L_2644, "Technology", 2);
            return ;
        end);
        pcall(function()
            L_2684.Lighting.GlobalIllumination = L_2659(L_2644, "GlobalIllumination");
            L_2658(L_2644, "GlobalIllumination", 0);
            return ;
        end);
        pcall(function()
            L_2658(L_2644, "LegacyOutlines", false);
            return ;
        end);
        pcall(function()
            L_2658(L_2644, "Outlines", false);
            return ;
        end);
        for L_2689, L_2690 in ipairs(L_2644:GetChildren()) do
            if L_2690:IsA("BlurEffect") or L_2690:IsA("BloomEffect") or L_2690:IsA("SunRaysEffect") or L_2690:IsA("ColorCorrectionEffect") or L_2690:IsA("DepthOfFieldEffect") or L_2690:IsA("Atmosphere") or L_2690:IsA("Clouds") or L_2690:IsA("Sky") then
                L_2684.Effects[L_2690] = { Parent = L_2644, ClassName = L_2690.ClassName };
                L_2690.Parent = nil;
                table.insert(L_2684.NilParented, L_2690);
            end;
        end;
        if L_2655 then
            L_2684.Terrain = { WaterWaveSize = L_2655.WaterWaveSize, WaterWaveSpeed = L_2655.WaterWaveSpeed, WaterReflectance = L_2655.WaterReflectance, WaterTransparency = L_2655.WaterTransparency, WaterColor = L_2655.WaterColor };
            L_2655.WaterWaveSize = 0;
            L_2655.WaterWaveSpeed = 0;
            L_2655.WaterReflectance = 0;
            L_2655.WaterTransparency = 1;
            L_2655.WaterColor = Color3.new(0.3, 0.3, 0.3);
            pcall(function()
                L_2684.Terrain.Decoration = L_2659(L_2655, "Decoration");
                L_2658(L_2655, "Decoration", false);
                return ;
            end);
            pcall(function()
                L_2684.Terrain.GrassLength = L_2659(L_2655, "GrassLength");
                L_2658(L_2655, "GrassLength", 0);
                return ;
            end);
            pcall(function()
                L_2658(L_2655, "MaterialColors", "");
                return ;
            end);
        end;
        for L_2691, L_2692 in ipairs({ "InterpolationThrottling", "PhysicsSteppingMethod", "HumanoidOnlySetCollisionsOnStateChange", "MeshPartHeadsAndAccessories", "ClientAnimatorThrottling", "StreamingMinRadius", "StreamingTargetRadius", "StreamingIntegrityMode", "ExpSolverEnabled_Replicate", "RejectCharacterDeletions", "TouchesUseCollisionGroups" }) do
            pcall(function()
                L_2684.Workspace[L_2692] = L_2659(L_2645, L_2692);
                return ;
            end);
        end;
        pcall(function()
            L_2658(L_2645, "InterpolationThrottling", 0);
            return ;
        end);
        pcall(function()
            L_2658(L_2645, "PhysicsSteppingMethod", 0);
            return ;
        end);
        pcall(function()
            L_2658(L_2645, "HumanoidOnlySetCollisionsOnStateChange", 2);
            return ;
        end);
        pcall(function()
            L_2658(L_2645, "MeshPartHeadsAndAccessories", 1);
            return ;
        end);
        pcall(function()
            L_2658(L_2645, "ClientAnimatorThrottling", 0);
            return ;
        end);
        if L_2645.StreamingEnabled then
            pcall(function()
                L_2658(L_2645, "StreamingMinRadius", 16);
                return ;
            end);
            pcall(function()
                L_2658(L_2645, "StreamingTargetRadius", 64);
                return ;
            end);
        end;
        pcall(function()
            L_2684.Sounds.Service = { AmbientReverb = L_2651.AmbientReverb, DistanceFactor = L_2651.DistanceFactor, DopplerScale = L_2651.DopplerScale, RolloffScale = L_2651.RolloffScale, VolumetricAudio = L_2651.VolumetricAudio };
            L_2651.AmbientReverb = Enum.ReverbType.NoReverb;
            L_2651.DopplerScale = 0;
            L_2651.RolloffScale = 0;
            L_2651.VolumetricAudio = Enum.VolumetricAudio.Disabled;
            return ;
        end);
        local L_2693 = nil;
        L_2693 = function(L_2694)
            if not L_2694 or not L_2694.Parent then
                return ;
            end;
            if L_2688(L_2694) then
                return ;
            end;
            local L_2700 = pcall(function()
                local L_2695 = L_2694.ClassName;
                if L_2695 == "Texture" then
                    if not L_2684.Textures[L_2694] then
                        L_2684.Textures[L_2694] = { Parent = L_2694.Parent, Texture = L_2694.Texture, Transparency = L_2694.Transparency, StudsPerTileU = L_2694.StudsPerTileU, StudsPerTileV = L_2694.StudsPerTileV, OffsetStudsU = L_2694.OffsetStudsU, OffsetStudsV = L_2694.OffsetStudsV, Color3 = L_2694.Color3, Face = L_2694.Face };
                    end;
                    L_2694.Texture = "";
                    L_2694.Transparency = 1;
                    L_2694.StudsPerTileU = 9000000000;
                    L_2694.StudsPerTileV = 9000000000;
                    pcall(function()
                        L_2658(L_2694, "LocalTransparencyModifier", 1);
                        return ;
                    end);
                    pcall(function()
                        L_2658(L_2694, "Shiny", 0);
                        return ;
                    end);
                    pcall(function()
                        L_2658(L_2694, "Specular", 0);
                        return ;
                    end);
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "Decal" then
                    if not L_2684.Decals[L_2694] then
                        L_2684.Decals[L_2694] = { Parent = L_2694.Parent, Texture = L_2694.Texture, Transparency = L_2694.Transparency, Color3 = L_2694.Color3, Face = L_2694.Face, ZIndex = L_2694.ZIndex };
                    end;
                    L_2694.Texture = "";
                    L_2694.Transparency = 1;
                    pcall(function()
                        L_2658(L_2694, "LocalTransparencyModifier", 1);
                        return ;
                    end);
                    pcall(function()
                        L_2658(L_2694, "Shiny", 0);
                        return ;
                    end);
                    pcall(function()
                        L_2658(L_2694, "Specular", 0);
                        return ;
                    end);
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "SurfaceAppearance" then
                    if not L_2684.SurfaceAppearances[L_2694] then
                        L_2684.SurfaceAppearances[L_2694] = { Parent = L_2694.Parent, ColorMap = L_2694.ColorMap, MetalnessMap = L_2694.MetalnessMap, NormalMap = L_2694.NormalMap, RoughnessMap = L_2694.RoughnessMap, TexturePack = L_2694.TexturePack, AlphaMode = L_2694.AlphaMode };
                    end;
                    L_2694.ColorMap = "";
                    L_2694.MetalnessMap = "";
                    L_2694.NormalMap = "";
                    L_2694.RoughnessMap = "";
                    L_2694.TexturePack = "";
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "MaterialVariant" then
                    if not L_2684.Materials[L_2694] then
                        L_2684.Materials[L_2694] = { Parent = L_2694.Parent, ColorMap = L_2694.ColorMap, MetalnessMap = L_2694.MetalnessMap, NormalMap = L_2694.NormalMap, RoughnessMap = L_2694.RoughnessMap };
                    end;
                    L_2694.ColorMap = "";
                    L_2694.MetalnessMap = "";
                    L_2694.NormalMap = "";
                    L_2694.RoughnessMap = "";
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "ParticleEmitter" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent, Enabled = L_2694.Enabled, Rate = L_2694.Rate, Texture = L_2694.Texture, Lifetime = L_2694.Lifetime, Speed = L_2694.Speed, Size = L_2694.Size, Transparency = L_2694.Transparency, LightEmission = L_2694.LightEmission, LightInfluence = L_2694.LightInfluence, SpreadAngle = L_2694.SpreadAngle, Drag = L_2694.Drag, Acceleration = L_2694.Acceleration, RotSpeed = L_2694.RotSpeed, Rotation = L_2694.Rotation, LockedToPart = L_2694.LockedToPart };
                    end;
                    L_2694.Enabled = false;
                    L_2694.Rate = 0;
                    L_2694.Texture = "";
                    L_2694.Lifetime = NumberRange.new(0);
                    L_2694.Speed = NumberRange.new(0);
                    L_2694.Size = NumberSequence.new(0);
                    L_2694.Transparency = NumberSequence.new(1);
                    L_2694.LightEmission = 0;
                    L_2694.LightInfluence = 0;
                    L_2694.Drag = 9999;
                    pcall(function()
                        L_2658(L_2694, "LocalTransparencyModifier", 1);
                        return ;
                    end);
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "Trail" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent, Enabled = L_2694.Enabled, Lifetime = L_2694.Lifetime, Texture = L_2694.Texture, LightEmission = L_2694.LightEmission, LightInfluence = L_2694.LightInfluence, Transparency = L_2694.Transparency, Color = L_2694.Color, WidthScale = L_2694.WidthScale, MinLength = L_2694.MinLength, MaxLength = L_2694.MaxLength, FaceCamera = L_2694.FaceCamera };
                    end;
                    L_2694.Enabled = false;
                    L_2694.Lifetime = 0;
                    L_2694.Texture = "";
                    L_2694.LightEmission = 0;
                    L_2694.LightInfluence = 0;
                    L_2694.Transparency = NumberSequence.new(1);
                    L_2694.MinLength = 9000000000;
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "Beam" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent, Enabled = L_2694.Enabled, Texture = L_2694.Texture, LightEmission = L_2694.LightEmission, LightInfluence = L_2694.LightInfluence, Transparency = L_2694.Transparency, Color = L_2694.Color, Width0 = L_2694.Width0, Width1 = L_2694.Width1, FaceCamera = L_2694.FaceCamera, Segments = L_2694.Segments, TextureLength = L_2694.TextureLength, TextureSpeed = L_2694.TextureSpeed };
                    end;
                    L_2694.Enabled = false;
                    L_2694.Texture = "";
                    L_2694.LightEmission = 0;
                    L_2694.LightInfluence = 0;
                    L_2694.Transparency = NumberSequence.new(1);
                    L_2694.Width0 = 0;
                    L_2694.Width1 = 0;
                    L_2694.Segments = 1;
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "Fire" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent, Enabled = L_2694.Enabled, Size = L_2694.Size, Heat = L_2694.Heat, Color = L_2694.Color, SecondaryColor = L_2694.SecondaryColor, TimeScale = L_2694.TimeScale };
                    end;
                    L_2694.Enabled = false;
                    L_2694.Size = 0;
                    L_2694.Heat = 0;
                    L_2694.TimeScale = 0;
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "Smoke" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent, Enabled = L_2694.Enabled, Size = L_2694.Size, RiseVelocity = L_2694.RiseVelocity, Opacity = L_2694.Opacity, Color = L_2694.Color, TimeScale = L_2694.TimeScale };
                    end;
                    L_2694.Enabled = false;
                    L_2694.Size = 0;
                    L_2694.Opacity = 0;
                    L_2694.RiseVelocity = 0;
                    L_2694.TimeScale = 0;
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "Sparkles" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent, Enabled = L_2694.Enabled, SparkleColor = L_2694.SparkleColor, TimeScale = L_2694.TimeScale };
                    end;
                    L_2694.Enabled = false;
                    L_2694.TimeScale = 0;
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "Highlight" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent, Enabled = L_2694.Enabled, FillTransparency = L_2694.FillTransparency, OutlineTransparency = L_2694.OutlineTransparency, FillColor = L_2694.FillColor, OutlineColor = L_2694.OutlineColor, DepthMode = L_2694.DepthMode };
                    end;
                    L_2694.Enabled = false;
                    L_2694.FillTransparency = 1;
                    L_2694.OutlineTransparency = 1;
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "ForceField" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent, Visible = L_2694.Visible };
                    end;
                    L_2694.Visible = false;
                elseif L_2695 == "Explosion" then
                    L_2694.BlastPressure = 0;
                    L_2694.BlastRadius = 0;
                    L_2694.Visible = false;
                    L_2694.TimeScale = 0;
                elseif L_2694:IsA("Light") then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent, Enabled = L_2694.Enabled, Brightness = L_2694.Brightness, Color = L_2694.Color, Shadows = L_2694.Shadows };
                        if L_2694:IsA("PointLight") or L_2694:IsA("SpotLight") then
                            L_2684.Effects[L_2694].Range = L_2694.Range;
                        end;
                        if L_2694:IsA("SpotLight") then
                            L_2684.Effects[L_2694].Angle = L_2694.Angle;
                            L_2684.Effects[L_2694].Face = L_2694.Face;
                        end;
                        if L_2694:IsA("SurfaceLight") then
                            L_2684.Effects[L_2694].Angle = L_2694.Angle;
                            L_2684.Effects[L_2694].Face = L_2694.Face;
                            L_2684.Effects[L_2694].Range = L_2694.Range;
                        end;
                    end;
                    L_2694.Enabled = false;
                    L_2694.Brightness = 0;
                    L_2694.Shadows = false;
                    if L_2694:IsA("PointLight") or L_2694:IsA("SpotLight") or L_2694:IsA("SurfaceLight") then
                        L_2694.Range = 0;
                    end;
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "MeshPart" then
                    if not L_2684.Meshes[L_2694] then
                        L_2684.Meshes[L_2694] = { RenderFidelity = L_2694.RenderFidelity, CastShadow = L_2694.CastShadow, DoubleSided = L_2694.DoubleSided, Material = L_2694.Material, Reflectance = L_2694.Reflectance, TextureID = L_2694.TextureID };
                    end;
                    L_2694.RenderFidelity = Enum.RenderFidelity.Performance;
                    L_2694.CastShadow = false;
                    L_2694.DoubleSided = false;
                    L_2694.Reflectance = 0;
                    L_2694.TextureID = "";
                    if L_2694.Material == Enum.Material.Glass or L_2694.Material == Enum.Material.Neon or L_2694.Material == Enum.Material.ForceField or L_2694.Material == Enum.Material.Water then
                        L_2694.Material = Enum.Material.SmoothPlastic;
                    end;
                    pcall(function()
                        L_2684.Meshes[L_2694].CollisionFidelity = L_2659(L_2694, "CollisionFidelity");
                        L_2658(L_2694, "CollisionFidelity", 2);
                        return ;
                    end);
                    pcall(function()
                        L_2684.Meshes[L_2694].FluidFidelity = L_2659(L_2694, "FluidFidelity");
                        L_2658(L_2694, "FluidFidelity", 0);
                        return ;
                    end);
                    pcall(function()
                        L_2658(L_2694, "LocalTransparencyModifier", 0);
                        return ;
                    end);
                    pcall(function()
                        L_2658(L_2694, "HasJointOffset", false);
                        return ;
                    end);
                    pcall(function()
                        L_2658(L_2694, "HasSkinnedMesh", false);
                        return ;
                    end);
                    for L_2696, L_2697 in ipairs(L_2694:GetChildren()) do
                        if (L_2697:IsA("SurfaceAppearance") or L_2697:IsA("Texture") or L_2697:IsA("Decal")) and not L_2688(L_2697) then
                            L_2693(L_2697);
                        end;
                    end;
                elseif L_2695 == "UnionOperation" or L_2695 == "NegateOperation" or L_2695 == "IntersectOperation" then
                    if not L_2684.Meshes[L_2694] then
                        L_2684.Meshes[L_2694] = { CastShadow = L_2694.CastShadow, Material = L_2694.Material, Reflectance = L_2694.Reflectance, UsePartColor = L_2694.UsePartColor };
                    end;
                    L_2694.CastShadow = false;
                    L_2694.Reflectance = 0;
                    if L_2694.Material == Enum.Material.Glass or L_2694.Material == Enum.Material.Neon then
                        L_2694.Material = Enum.Material.SmoothPlastic;
                    end;
                    pcall(function()
                        L_2658(L_2694, "FluidFidelity", 0);
                        return ;
                    end);
                elseif L_2694:IsA("BasePart") and not L_2694:IsA("Terrain") then
                    if not L_2684.Parts[L_2694] then
                        L_2684.Parts[L_2694] = { CastShadow = L_2694.CastShadow, Material = L_2694.Material, Reflectance = L_2694.Reflectance };
                    end;
                    L_2694.CastShadow = false;
                    L_2694.Reflectance = 0;
                    if L_2694.Material == Enum.Material.Glass or L_2694.Material == Enum.Material.Neon or L_2694.Material == Enum.Material.ForceField or L_2694.Material == Enum.Material.Water then
                        L_2694.Material = Enum.Material.SmoothPlastic;
                    end;
                    pcall(function()
                        L_2658(L_2694, "LocalTransparencyModifier", 0);
                        return ;
                    end);
                    pcall(function()
                        L_2658(L_2694, "FluidFidelity", 0);
                        return ;
                    end);
                    for L_2698, L_2699 in ipairs(L_2694:GetChildren()) do
                        if (L_2699:IsA("Texture") or L_2699:IsA("Decal") or L_2699:IsA("SurfaceAppearance")) and not L_2688(L_2699) then
                            L_2693(L_2699);
                        end;
                    end;
                elseif L_2694:IsA("DataModelMesh") then
                    if not L_2684.Meshes[L_2694] then
                        L_2684.Meshes[L_2694] = { Scale = L_2694.Scale, Offset = L_2694.Offset, VertexColor = L_2694.VertexColor };
                        if L_2694:IsA("SpecialMesh") or L_2694:IsA("FileMesh") then
                            L_2684.Meshes[L_2694].TextureId = L_2694.TextureId;
                        end;
                    end;
                    if L_2694:IsA("SpecialMesh") or L_2694:IsA("FileMesh") then
                        L_2694.TextureId = "";
                    end;
                    L_2694.VertexColor = Vector3.one;
                elseif L_2695 == "Sound" then
                    if not L_2694:IsDescendantOf(L_2657) then
                        if not L_2684.Sounds[L_2694] then
                            L_2684.Sounds[L_2694] = { RollOffMaxDistance = L_2694.RollOffMaxDistance, RollOffMinDistance = L_2694.RollOffMinDistance, Volume = L_2694.Volume, EmitterSize = L_2694.EmitterSize };
                        end;
                        L_2694.RollOffMaxDistance = 30;
                        L_2694.RollOffMinDistance = 5;
                        L_2694.EmitterSize = 5;
                        L_2694.Volume = math.min(L_2694.Volume, 0.3);
                    end;
                elseif L_2694:IsA("SoundEffect") then
                    if not L_2684.Sounds[L_2694] then
                        L_2684.Sounds[L_2694] = { Parent = L_2694.Parent, Enabled = L_2694.Enabled, Priority = L_2694.Priority };
                    end;
                    L_2694.Enabled = false;
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "BillboardGui" then
                    if not L_2694:IsDescendantOf(L_2657) and not L_2694:IsDescendantOf(L_2652) then
                        if not L_2684.Guis[L_2694] then
                            L_2684.Guis[L_2694] = { Enabled = L_2694.Enabled, MaxDistance = L_2694.MaxDistance, LightInfluence = L_2694.LightInfluence, Size = L_2694.Size, StudsOffset = L_2694.StudsOffset, AlwaysOnTop = L_2694.AlwaysOnTop };
                        end;
                        L_2694.MaxDistance = 15;
                        L_2694.LightInfluence = 0;
                        L_2694.Size = UDim2.new(0, 50, 0, 50);
                    end;
                elseif L_2695 == "SurfaceGui" then
                    if not L_2694:IsDescendantOf(L_2657) then
                        if not L_2684.Guis[L_2694] then
                            L_2684.Guis[L_2694] = { Enabled = L_2694.Enabled, MaxDistance = L_2694.MaxDistance, LightInfluence = L_2694.LightInfluence, PixelsPerStud = L_2694.PixelsPerStud, Brightness = L_2694.Brightness };
                        end;
                        L_2694.MaxDistance = 15;
                        L_2694.LightInfluence = 0;
                        L_2694.PixelsPerStud = 5;
                        L_2694.Brightness = 0;
                    end;
                elseif L_2695 == "Humanoid" then
                    if not L_2684.Humanoids[L_2694] then
                        L_2684.Humanoids[L_2694] = { DisplayDistanceType = L_2694.DisplayDistanceType, HealthDisplayDistance = L_2694.HealthDisplayDistance, NameDisplayDistance = L_2694.NameDisplayDistance, HealthDisplayType = L_2694.HealthDisplayType, NameOcclusion = L_2694.NameOcclusion };
                    end;
                    L_2694.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
                    L_2694.HealthDisplayDistance = 0;
                    L_2694.NameDisplayDistance = 0;
                    L_2694.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff;
                    pcall(function()
                        L_2658(L_2694, "DisplayName", "");
                        return ;
                    end);
                elseif L_2695 == "Animator" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { PreferLodEnabled = L_2694.PreferLodEnabled };
                    end;
                    L_2694.PreferLodEnabled = true;
                elseif L_2695 == "ProximityPrompt" then
                    if not L_2684.Guis[L_2694] then
                        L_2684.Guis[L_2694] = { MaxActivationDistance = L_2694.MaxActivationDistance };
                    end;
                    L_2694.MaxActivationDistance = math.min(L_2694.MaxActivationDistance, 8);
                elseif L_2694:IsA("Constraint") then
                    if L_2694:IsA("RopeConstraint") or L_2694:IsA("RodConstraint") or L_2694:IsA("SpringConstraint") then
                        if not L_2684.Effects[L_2694] then
                            L_2684.Effects[L_2694] = { Visible = L_2694.Visible, Color = L_2694.Color };
                        end;
                        L_2694.Visible = false;
                    end;
                elseif L_2695 == "Wire" then
                    if not L_2684.Effects[L_2694] then
                        L_2684.Effects[L_2694] = { Parent = L_2694.Parent };
                    end;
                    L_2694.Parent = nil;
                    table.insert(L_2684.NilParented, L_2694);
                elseif L_2695 == "Attachment" then
                    pcall(function()
                        L_2694.Visible = false;
                        return ;
                    end);
                elseif L_2695 == "VideoFrame" then
                    if not L_2684.Guis[L_2694] then
                        L_2684.Guis[L_2694] = { Playing = L_2694.Playing, Volume = L_2694.Volume };
                    end;
                    L_2694.Playing = false;
                    L_2694.Volume = 0;
                elseif L_2695 == "ViewportFrame" and not L_2694:IsDescendantOf(L_2657) then
                    if not L_2684.Guis[L_2694] then
                        L_2684.Guis[L_2694] = { Ambient = L_2694.Ambient, LightColor = L_2694.LightColor, LightDirection = L_2694.LightDirection };
                    end;
                    L_2694.Ambient = Color3.new(1, 1, 1);
                    L_2694.LightColor = Color3.new(0, 0, 0);
                end;
                return ;
            end);
            return ;
        end;
        local L_2701 = { L_2645, L_2649, L_2650, L_2644 };
        local L_2702 = {};
        for L_2703, L_2704 in ipairs(L_2701) do
            for L_2705, L_2706 in ipairs(L_2704:GetDescendants()) do
                table.insert(L_2702, L_2706);
            end;
        end;
        local L_2707 = 750;
        for L_2708 = 1, #L_2702, L_2707 do
            for L_2709 = L_2708, math.min(L_2708 + L_2707 - 1, #L_2702), 1 do
                L_2693(L_2702[L_2709]);
            end;
            task.wait();
        end;
        if L_2660 then
            task.spawn(function()
                local L_2710 = L_2660(true);
                for L_2711, L_2712 in ipairs(L_2710) do
                    if typeof(L_2712) == "Instance" and not L_2688(L_2712) then
                        pcall(function()
                            if L_2712:IsA("ParticleEmitter") then
                                L_2712.Enabled = false;
                                L_2712.Rate = 0;
                            elseif L_2712:IsA("Trail") or L_2712:IsA("Beam") then
                                L_2712.Enabled = false;
                            elseif L_2712:IsA("Fire") or L_2712:IsA("Smoke") or L_2712:IsA("Sparkles") then
                                L_2712.Enabled = false;
                            elseif L_2712:IsA("Light") then
                                L_2712.Enabled = false;
                            elseif L_2712:IsA("Decal") or L_2712:IsA("Texture") then
                                L_2712.Transparency = 1;
                            elseif L_2712:IsA("Sound") and L_2712.IsPlaying and not L_2712:IsDescendantOf(L_2657) then
                                L_2712.Volume = 0;
                            end;
                            return ;
                        end);
                    elseif typeof(L_2712) == "table" and (rawget(L_2712, "Particles") or rawget(L_2712, "Effects") or rawget(L_2712, "Trails")) then
                        pcall(function()
                            for L_2713, L_2714 in pairs(L_2712) do
                                if typeof(L_2714) == "Instance" and not L_2688(L_2714) and (L_2714:IsA("ParticleEmitter") or L_2714:IsA("Trail") or L_2714:IsA("Beam")) then
                                    L_2714.Enabled = false;
                                end;
                            end;
                            return ;
                        end);
                    end;
                end;
                return ;
            end);
        end;
        if L_2662 then
            task.spawn(function()
                local L_2715 = L_2662();
                for L_2716, L_2717 in ipairs(L_2715) do
                    if not L_2688(L_2717) then
                        pcall(function()
                            if L_2717:IsA("Sound") and L_2717.Playing then
                                L_2717:Stop();
                                L_2717.Volume = 0;
                            elseif L_2717:IsA("ParticleEmitter") then
                                L_2717.Enabled = false;
                                L_2717.Rate = 0;
                            elseif L_2717:IsA("Trail") or L_2717:IsA("Beam") then
                                L_2717.Enabled = false;
                            elseif L_2717:IsA("Fire") or L_2717:IsA("Smoke") or L_2717:IsA("Sparkles") then
                                L_2717.Enabled = false;
                            elseif L_2717:IsA("VideoFrame") then
                                L_2717.Playing = false;
                            end;
                            return ;
                        end);
                    end;
                end;
                return ;
            end);
        end;
        if L_2663 then
            task.spawn(function()
                local L_2718 = L_2663();
                for L_2719, L_2720 in ipairs(L_2718) do
                    if not L_2688(L_2720) then
                        pcall(function()
                            if L_2720:IsA("ParticleEmitter") and L_2720.Enabled then
                                L_2720.Enabled = false;
                                L_2720.Rate = 0;
                            elseif L_2720:IsA("Trail") and L_2720.Enabled then
                                L_2720.Enabled = false;
                            elseif L_2720:IsA("Beam") and L_2720.Enabled then
                                L_2720.Enabled = false;
                            end;
                            return ;
                        end);
                    end;
                end;
                return ;
            end);
        end;
        if L_2661 then
            task.spawn(function()
                pcall(function()
                    local L_2721 = L_2661(L_2646.RenderStepped);
                    for L_2722, L_2723 in ipairs(L_2721) do
                        if L_2723.Function then
                            local L_2724 = L_2680 and L_2680(L_2723.Function);
                            local L_2725 = L_2724 and L_2724.source or "";
                            if not L_2725:find("CoreScripts") and not L_2725:find("Camera") and not L_2725:find("PlayerModule") then
                                local L_2726 = tostring(L_2723.Function):lower();
                                if L_2726:find("particle") or L_2726:find("effect") or L_2726:find("trail") or L_2726:find("vfx") or L_2726:find("beam") or L_2726:find("smoke") then
                                    table.insert(L_2684.Connections, L_2723);
                                    L_2723:Disable();
                                end;
                            end;
                        end;
                    end;
                    return ;
                end);
                pcall(function()
                    local L_2727 = L_2661(L_2646.Heartbeat);
                    for L_2728, L_2729 in ipairs(L_2727) do
                        if L_2729.Function then
                            local L_2730 = L_2680 and L_2680(L_2729.Function);
                            local L_2731 = L_2730 and L_2730.source or "";
                            if not L_2731:find("CoreScripts") and not L_2731:find("Camera") then
                                local L_2732 = tostring(L_2729.Function):lower();
                                if L_2732:find("particle") or L_2732:find("effect") then
                                    table.insert(L_2684.Connections, L_2729);
                                    L_2729:Disable();
                                end;
                            end;
                        end;
                    end;
                    return ;
                end);
                return ;
            end);
        end;
        if L_2669 then
            pcall(function()
                L_2669("GuiNearClip", 0.1);
                return ;
            end);
            pcall(function()
                L_2669("ExposureCompensation", 0);
                return ;
            end);
        end;
        getgenv().OptimizeConns = {};
        table.insert(getgenv().OptimizeConns, L_2645.DescendantAdded:Connect(function(L_2733)
            if getgenv().Optimize and not L_2688(L_2733) then
                task.defer(L_2693, L_2733);
            end;
            return ;
        end));
        table.insert(getgenv().OptimizeConns, L_2649.DescendantAdded:Connect(function(L_2734)
            if getgenv().Optimize and not L_2688(L_2734) then
                task.defer(L_2693, L_2734);
            end;
            return ;
        end));
        table.insert(getgenv().OptimizeConns, L_2644.ChildAdded:Connect(function(L_2735)
            if getgenv().Optimize and (not L_2688(L_2735) and (L_2735:IsA("PostEffect") or L_2735:IsA("Atmosphere") or L_2735:IsA("Clouds") or L_2735:IsA("Sky"))) then
                L_2684.Effects[L_2735] = { Parent = L_2644 };
                L_2735.Parent = nil;
                table.insert(L_2684.NilParented, L_2735);
            end;
            return ;
        end));
        local L_2739 = function(L_2736)
            if not L_2736 then
                return ;
            end;
            for L_2737, L_2738 in ipairs(L_2736:GetDescendants()) do
                if not L_2688(L_2738) then
                    pcall(function()
                        if L_2738:IsA("ParticleEmitter") or (L_2738:IsA("Trail") or L_2738:IsA("Beam") or L_2738:IsA("Fire") or L_2738:IsA("Smoke") or L_2738:IsA("Sparkles")) then
                            L_2738.Enabled = false;
                        elseif L_2738:IsA("MeshPart") then
                            L_2738.CastShadow = false;
                            L_2738.TextureID = "";
                        elseif L_2738:IsA("BasePart") then
                            L_2738.CastShadow = false;
                        elseif L_2738:IsA("Decal") or L_2738:IsA("Texture") then
                            pcall(function()
                                L_2658(L_2738, "LocalTransparencyModifier", 0.3);
                                return ;
                            end);
                        end;
                        return ;
                    end);
                end;
            end;
            return ;
        end;
        for L_2740, L_2741 in ipairs(L_2647:GetPlayers()) do
            if L_2741.Character then
                L_2739(L_2741.Character);
            end;
            table.insert(getgenv().OptimizeConns, L_2741.CharacterAdded:Connect(L_2739));
        end;
        table.insert(getgenv().OptimizeConns, L_2647.PlayerAdded:Connect(function(L_2742)
            table.insert(getgenv().OptimizeConns, L_2742.CharacterAdded:Connect(L_2739));
            return ;
        end));
    else
        if getgenv().OptimizeConns then
            for L_2743, L_2744 in ipairs(getgenv().OptimizeConns) do
                pcall(function()
                    L_2744:Disconnect();
                    return ;
                end);
            end;
            getgenv().OptimizeConns = nil;
        end;
        local L_2745 = getgenv().OptimizeData;
        if not L_2745 then
            return ;
        end;
        local L_2746 = game:GetService("Lighting");
        local L_2747 = game:GetService("Workspace");
        local L_2748 = game:GetService("SoundService");
        local L_2749 = L_2747:FindFirstChildOfClass("Terrain");
        for L_2750, L_2751 in pairs(L_2745.Lighting or {}) do
            pcall(function()
                if L_2750 == "Technology" or L_2750 == "GlobalIllumination" then
                    sethiddenproperty(L_2746, L_2750, L_2751);
                else
                    L_2746[L_2750] = L_2751;
                end;
                return ;
            end);
        end;
        if L_2749 and L_2745.Terrain then
            for L_2752, L_2753 in pairs(L_2745.Terrain) do
                pcall(function()
                    if L_2752 == "Decoration" or L_2752 == "GrassLength" then
                        sethiddenproperty(L_2749, L_2752, L_2753);
                    else
                        L_2749[L_2752] = L_2753;
                    end;
                    return ;
                end);
            end;
        end;
        for L_2754, L_2755 in pairs(L_2745.Workspace or {}) do
            pcall(function()
                sethiddenproperty(L_2747, L_2754, L_2755);
                return ;
            end);
        end;
        if L_2745.Sounds and L_2745.Sounds.Service then
            for L_2756, L_2757 in pairs(L_2745.Sounds.Service) do
                pcall(function()
                    L_2748[L_2756] = L_2757;
                    return ;
                end);
            end;
        end;
        for L_2758, L_2759 in ipairs(L_2745.NilParented or {}) do
            pcall(function()
                if L_2745.Effects[L_2759] and L_2745.Effects[L_2759].Parent then
                    L_2759.Parent = L_2745.Effects[L_2759].Parent;
                elseif L_2745.Textures[L_2759] and L_2745.Textures[L_2759].Parent then
                    L_2759.Parent = L_2745.Textures[L_2759].Parent;
                elseif L_2745.Decals[L_2759] and L_2745.Decals[L_2759].Parent then
                    L_2759.Parent = L_2745.Decals[L_2759].Parent;
                elseif L_2745.SurfaceAppearances[L_2759] and L_2745.SurfaceAppearances[L_2759].Parent then
                    L_2759.Parent = L_2745.SurfaceAppearances[L_2759].Parent;
                elseif L_2745.Materials[L_2759] and L_2745.Materials[L_2759].Parent then
                    L_2759.Parent = L_2745.Materials[L_2759].Parent;
                end;
                return ;
            end);
        end;
        for L_2760, L_2761 in pairs(L_2745.Textures or {}) do
            pcall(function()
                L_2760.Texture = L_2761.Texture;
                L_2760.Transparency = L_2761.Transparency;
                L_2760.StudsPerTileU = L_2761.StudsPerTileU;
                L_2760.StudsPerTileV = L_2761.StudsPerTileV;
                return ;
            end);
        end;
        for L_2762, L_2763 in pairs(L_2745.Decals or {}) do
            pcall(function()
                L_2762.Texture = L_2763.Texture;
                L_2762.Transparency = L_2763.Transparency;
                return ;
            end);
        end;
        for L_2764, L_2765 in pairs(L_2745.SurfaceAppearances or {}) do
            pcall(function()
                L_2764.ColorMap = L_2765.ColorMap;
                L_2764.MetalnessMap = L_2765.MetalnessMap;
                L_2764.NormalMap = L_2765.NormalMap;
                L_2764.RoughnessMap = L_2765.RoughnessMap;
                L_2764.TexturePack = L_2765.TexturePack;
                return ;
            end);
        end;
        for L_2766, L_2767 in pairs(L_2745.Materials or {}) do
            pcall(function()
                L_2766.ColorMap = L_2767.ColorMap;
                L_2766.MetalnessMap = L_2767.MetalnessMap;
                L_2766.NormalMap = L_2767.NormalMap;
                L_2766.RoughnessMap = L_2767.RoughnessMap;
                return ;
            end);
        end;
        for L_2768, L_2769 in pairs(L_2745.Effects or {}) do
            pcall(function()
                for L_2770, L_2771 in pairs(L_2769) do
                    if L_2770 ~= "Parent" and L_2770 ~= "ClassName" then
                        L_2768[L_2770] = L_2771;
                    end;
                end;
                return ;
            end);
        end;
        for L_2772, L_2773 in pairs(L_2745.Parts or {}) do
            pcall(function()
                for L_2774, L_2775 in pairs(L_2773) do
                    L_2772[L_2774] = L_2775;
                end;
                return ;
            end);
        end;
        for L_2776, L_2777 in pairs(L_2745.Meshes or {}) do
            pcall(function()
                for L_2778, L_2779 in pairs(L_2777) do
                    if L_2778 == "CollisionFidelity" or L_2778 == "FluidFidelity" then
                        sethiddenproperty(L_2776, L_2778, L_2779);
                    elseif L_2778 ~= "RenderFidelity" or not L_2776:IsA("UnionOperation") and not L_2776:IsA("NegateOperation") and not L_2776:IsA("IntersectOperation") then
                        L_2776[L_2778] = L_2779;
                    end;
                end;
                return ;
            end);
        end;
        for L_2780, L_2781 in pairs(L_2745.Sounds or {}) do
            if typeof(L_2781) == "table" and L_2781 ~= L_2745.Sounds.Service then
                pcall(function()
                    for L_2782, L_2783 in pairs(L_2781) do
                        L_2780[L_2782] = L_2783;
                    end;
                    return ;
                end);
            end;
        end;
        for L_2784, L_2785 in pairs(L_2745.Guis or {}) do
            pcall(function()
                for L_2786, L_2787 in pairs(L_2785) do
                    L_2784[L_2786] = L_2787;
                end;
                return ;
            end);
        end;
        for L_2788, L_2789 in pairs(L_2745.Humanoids or {}) do
            pcall(function()
                for L_2790, L_2791 in pairs(L_2789) do
                    L_2788[L_2790] = L_2791;
                end;
                return ;
            end);
        end;
        for L_2792, L_2793 in ipairs(L_2745.Connections or {}) do
            pcall(function()
                L_2793:Enable();
                return ;
            end);
        end;
        getgenv().OptimizeData = nilw;
    end;
    return ;
end);
ExploitSection.CreateToggle({ Title = "Hide Accounts", Desc = "Hides other accounts (this can't be undone)", Default = false }, function(L_2794)
    getgenv().fa = L_2794;
    while getgenv().fa and task.wait() do
        for L_2795, L_2796 in next, game:GetService("Players"):GetPlayers() do
            if L_2796.Character and L_2796 ~= player then
                L_2796.Character:Destroy();
            end;
        end;
    end;
    return ;
end);
ExploitSection.CreateButton({ Title = "Remove Fog + Fix Lightning" }, function(L_2797)
    while task.wait() do
        for L_2798, L_2799 in next, game:GetService("Lighting"):GetChildren() do
            L_2799:Destroy();
        end;
        game:GetService("Lighting").FogEnd = 100000;
        game:GetService("Lighting").ClockTime = 12;
    end;
    return ;
end);
ExploitSection.CreateButton({ Title = "Desync" }, function(L_2800)
    setfflag("NextGenReplicatorEnabledWrite4", "true");
    return ;
end);
getgenv().TargetNearest = true;
GetNearest = function(L_2801)
    local L_2802 = game.Players.LocalPlayer;
    local L_2803 = L_2802.Character;
    if not L_2803 or not L_2803:FindFirstChild(L_33) then
        return ;
    end;
    if getgenv().TargetNearest then
        local L_2804 = nil;
        local L_2805 = math.huge;
        for L_2806, L_2807 in next, game.Players:GetPlayers() do
            if L_2807 ~= L_2802 and L_2807.Character and L_2807.Character:FindFirstChild(L_33) and L_2807.Character:FindFirstChildOfClass("Humanoid") and L_2807.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
                local L_2808 = (L_2807.Character.HumanoidRootPart.Position - L_2803.HumanoidRootPart.Position).Magnitude;
                if L_2808 < L_2805 and L_2808 <= 100 then
                    L_2804 = L_2807.Character;
                    L_2805 = L_2808;
                end;
            end;
        end;
        if not L_2804 then
            for L_2809, L_2810 in next, workspace.NPCs:GetChildren() do
                if L_2810:IsA("Model") and L_2810:FindFirstChild(L_33) and L_2810:FindFirstChildOfClass("Humanoid") and L_2810:FindFirstChildOfClass("Humanoid").Health > 0 and L_2810 ~= L_2803 then
                    local L_2811 = (L_2810.HumanoidRootPart.Position - L_2803.HumanoidRootPart.Position).Magnitude;
                    if L_2811 < L_2805 then
                        L_2804 = L_2810;
                        L_2805 = L_2811;
                    end;
                end;
            end;
        end;
        if L_2801 then
            return L_2804;
        end;
        return L_2804 and L_2804:FindFirstChild(L_33).CFrame or L_2803.HumanoidRootPart.CFrame;
    end;
    return L_2803.HumanoidRootPart.CFrame;
end;
Selected = "Coco Island";
IslandTp.CreateDropdown({ Title = "Island Tp", List = IslandNames, Default = "Coco Island", Search = true, Selected = false }, function(L_2812)
    Selected = L_2812;
    return ;
end);
IslandTp.CreateButton({ Title = "Teleport" }, function(L_2813)
    if not Selected then
        return ;
    end;
    L_2238(Islands[Selected], 50, true);
    return ;
end);
local L_2815 = function(L_2814)
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("learnStyle"):FireServer(L_2814);
    return ;
end;
local L_2816 = { "skyWalkTrainer", "Cyborg", "Vampire", "Rokushiki" };
local L_2817 = "skyWalkTrainer";
MarketSection.CreateDropdown({ Title = "Select Value", List = L_2816, Default = "skyWalkTrainer", Search = false, Selected = false }, function(L_2818)
    L_2817 = L_2818;
    return ;
end);
MarketSection.CreateButton({ Title = "Purchase" }, function(L_2819)
    if table.find(L_2816, L_2817) then
        L_2815(L_2817);
    end;
    return ;
end);
local L_2820 = { ws = nil, wsConnected = false, registered = false, accountId = nil, lastInventorySnapshot = {}, autoReconnect = false, updateLoopRunning = false, inventoryLoopRunning = false, inventoryConnection = nil, notificationConnection = nil, backpackConnection = nil, statsFolder = nil, inventoryValue = nil, HttpService = nil, Workspace = nil };
Connect = function()
    if L_2820.ws and L_2820.wsConnected then
        return ;
    end;
    L_2820.autoReconnect = true;
    local L_2821 = { BASE_URL = "wss://feral-backend-production.up.railway.app", LICENSE_KEY = script_key, UPDATE_INTERVAL = 1, INVENTORY_UPDATE_INTERVAL = 3 };
    local L_2822 = game:GetService("Players");
    local L_2823 = game:GetService("ReplicatedStorage");
    local L_2824 = game:GetService("HttpService");
    local L_2825 = game:GetService("Workspace");
    local L_2826 = game:GetService("RunService");
    local L_2827 = L_2822.LocalPlayer;
    local L_2828 = L_2823:FindFirstChild("Stats" .. L_2827.Name);
    local L_2829 = L_2828:FindFirstChild("Inventory"):FindFirstChild("Inventory");
    L_2820.statsFolder = L_2828;
    L_2820.inventoryValue = L_2829;
    L_2820.HttpService = L_2824;
    L_2820.Workspace = L_2825;
    local L_2830 = function()
        return tostring(L_2827.UserId) .. "_" .. tostring(math.floor(tick() * 1000));
    end;
    local L_2832 = function()
        local L_2831 = { name = L_2827.Name, level = 0, peli = 0, fps = 60, ping = 0 };
        pcall(function()
            L_2831.level = L_2828.Stats.Level.Value;
            L_2831.peli = L_2828.Stats.Peli.Value;
            return ;
        end);
        pcall(function()
            L_2831.fps = math.floor(1 / L_2826.RenderStepped:Wait());
            return ;
        end);
        pcall(function()
            L_2831.ping = math.floor(L_2827:GetNetworkPing() * 1000);
            return ;
        end);
        return L_2831;
    end;
    local L_2839 = function()
        local L_2833 = {};
        pcall(function()
            if not L_2829 or L_2829.Value == "" then
                return ;
            end;
            local L_2834, L_2835 = pcall(function()
                return L_2824:JSONDecode(L_2829.Value);
            end);
            if L_2834 and type(L_2835) == "table" then
                for L_2836, L_2837 in pairs(L_2835) do
                    local L_2838 = 1;
                    if type(L_2837) == "table" then
                        L_2838 = L_2837.Count or 1;
                    end;
                    table.insert(L_2833, { name = L_2836, count = L_2838 });
                end;
            end;
            return ;
        end);
        return L_2833;
    end;
    local L_2841 = function(L_2840)
        if not L_2820.ws then
            return false;
        end;
        return (pcall(function()
            L_2820.ws:Send(L_2824:JSONEncode(L_2840));
            return ;
        end));
    end;
    local L_2844 = function(L_2842, L_2843)
        if not L_2820.ws or not L_2820.registered then
            return ;
        end;
        L_2841({ type = L_2842, payload = L_2843 });
        return ;
    end;
    local L_2851 = function(L_2845, L_2846, L_2847, L_2848)
        if not L_2820.registered then
            return ;
        end;
        local L_2849 = nil;
        pcall(function()
            local L_2850 = require(game.ReplicatedStorage.Modules.ToolDesc)[L_2845];
            L_2849 = L_2850 and L_2850.Rare or nil;
            return ;
        end);
        L_2844("bought_item", { itemName = L_2845, cost = L_2846 or 0, costType = L_2847 or "Peli", rarity = L_2849, amount = L_2848 or 1 });
        return ;
    end;
    local L_2854 = function(L_2852, L_2853)
        if not L_2820.registered then
            return ;
        end;
        L_2844("update_bait", { baitName = L_2852, baitType = L_2853 or "common" });
        return ;
    end;
    local L_2856 = function(L_2855)
        if not L_2820.registered then
            return ;
        end;
        L_2844("update_fishing_state", { state = L_2855 or "idle" });
        return ;
    end;
    local L_2859 = function(L_2857, L_2858)
        if not L_2820.registered then
            return ;
        end;
        L_2844("caught_fruit", { fruitName = L_2857, rarity = L_2858 or "Common" });
        return ;
    end;
    local L_2860 = { { name = "Anglerfish", rarity = "Legendary", keywords = { "angler", "fish" } }, { name = "Dark Skeletal Shark", rarity = "Legendary", keywords = { "dark", "skeletal", "shark" } }, { name = "Jack-O'-Bite", rarity = "Legendary", keywords = { "jack", "bite", "jacko" } }, { name = "Swordfish", rarity = "Legendary", keywords = { "sword", "fish" } }, { name = "Golden Polka Puffer", rarity = "Legendary", keywords = { "golden", "polka", "puffer" } }, { name = "Golden Ribbon Angelfish", rarity = "Legendary", keywords = { "golden", "ribbon", "angel" } }, { name = "Golden Tigerfin", rarity = "Legendary", keywords = { "golden", "tiger" } }, { name = "Skeletal Shark", rarity = "Epic", keywords = { "skeletal", "shark", "halloween" } }, { name = "Candy Corn Squid", rarity = "Rare", keywords = { "candy", "corn", "squid" } }, { name = "Crimson Polka Puffer", rarity = "Rare", keywords = { "crimson", "polka", "puffer" } }, { name = "Crimson Snapper", rarity = "Rare", keywords = { "crimson", "snapper" } }, { name = "Exotic Tigerfin", rarity = "Rare", keywords = { "exotic", "tiger" } }, { name = "Fangfish", rarity = "Rare", keywords = { "fang", "fish" } }, { name = "Zebra Ribbon Angelfish", rarity = "Rare", keywords = { "zebra", "ribbon", "angel" } }, { name = "Blue-Lip Grouper", rarity = "Common", keywords = { "blue", "lip", "grouper" } }, { name = "Tigerfin", rarity = "Common", keywords = { "tiger", "fin" } } };
    local L_2861 = { { name = "Kilo Kilo no Mi", rarity = "Common", keywords = { "kilo", "pound" } }, { name = "Suke Suke no Mi", rarity = "Common", keywords = { "suke", "clear" } }, { name = "Guru Guru no Mi", rarity = "Common", keywords = { "guru", "spin" } }, { name = "Chiyu Chiyu no Mi", rarity = "Common", keywords = { "chiyu", "heal" } }, { name = "Bari Bari no Mi", rarity = "Rare", keywords = { "bari", "barrier" } }, { name = "Mero Mero no Mi", rarity = "Rare", keywords = { "mero", "love" } }, { name = "Horo Horo no Mi", rarity = "Rare", keywords = { "horo", "hollow" } }, { name = "Gomu Gomu no Mi", rarity = "Rare", keywords = { "gomu", "rubber" } }, { name = "Bomu Bomu no Mi", rarity = "Rare", keywords = { "bomu", "bomb" } }, { name = "Yomi Yomi no Mi", rarity = "Epic", keywords = { "yomi", "revive" } }, { name = "Bane Bane no Mi", rarity = "Epic", keywords = { "bane", "spring" } }, { name = "Kira Kira no Mi", rarity = "Epic", keywords = { "kira", "diamond" } }, { name = "Zushi Zushi no Mi", rarity = "Legendary", keywords = { "zushi", "gravity" } }, { name = "Gura Gura no Mi", rarity = "Legendary", keywords = { "gura", "tremor", "quake" } }, { name = "Suna Suna no Mi", rarity = "Legendary", keywords = { "suna", "sand" } }, { name = "Hie Hie no Mi", rarity = "Legendary", keywords = { "hie", "ice" } }, { name = "Ito Ito no Mi", rarity = "Legendary", keywords = { "ito", "string" } }, { name = "Goro Goro no Mi", rarity = "Legendary", keywords = { "goro", "rumble", "lightning" } }, { name = "Nikyu Nikyu no Mi", rarity = "Legendary", keywords = { "nikyu", "paw" } }, { name = "Mera Mera no Mi", rarity = "Legendary", keywords = { "mera", "flame", "fire" } }, { name = "Kage Kage no Mi", rarity = "Legendary", keywords = { "kage", "shadow" } }, { name = "Magu Magu no Mi", rarity = "Legendary", keywords = { "magu", "magma" } }, { name = "Pika Pika no Mi", rarity = "Legendary", keywords = { "pika", "light" } }, { name = "Yami Yami no Mi", rarity = "Legendary", keywords = { "yami", "darkness" } }, { name = "Yuki Yuki no Mi", rarity = "Legendary", keywords = { "yuki", "snow" } }, { name = "Goru Goru no Mi", rarity = "Legendary", keywords = { "goru", "gold" } }, { name = "Moku Moku no Mi", rarity = "Legendary", keywords = { "moku", "smoke" } }, { name = "Tori Tori no Mi, Model: Phoenix", rarity = "Mythical", keywords = { "tori", "phoenix", "bird" } }, { name = "Mochi Mochi no Mi", rarity = "Mythical", keywords = { "mochi" } }, { name = "Ope Ope no Mi", rarity = "Mythical", keywords = { "ope", "operation" } }, { name = "Doku Doku no Mi", rarity = "Mythical", keywords = { "doku", "venom", "poison" } }, { name = "Hito Hito no Mi, Model: Daibutsu", rarity = "Mythical", keywords = { "hito", "buddha", "daibutsu" } }, { name = "Ryu Ryu no Mi, Model: Pteranodon", rarity = "Mythical", keywords = { "ryu", "ptero", "pteranodon" } } };
    local L_2875 = function(L_2862, L_2863)
        local L_2864 = L_2862:lower();
        local L_2865 = nil;
        local L_2866 = 0;
        for L_2867, L_2868 in ipairs(L_2863) do
            local L_2869 = 0;
            for L_2870, L_2871 in ipairs(L_2868.keywords) do
                if L_2864:find(L_2871:lower()) then
                    L_2869 = L_2869 + 1;
                end;
            end;
            if L_2866 < L_2869 then
                L_2865 = L_2868;
                L_2866 = L_2869;
            end;
        end;
        if L_2865 and L_2866 > 0 then
            return L_2865;
        end;
        for L_2872, L_2873 in ipairs(L_2863) do
            local L_2874 = L_2873.name:lower();
            if L_2874:find(L_2864) or L_2864:find(L_2874) then
                return L_2873;
            end;
        end;
        return nil;
    end;
    local L_2879 = function(L_2876)
        local L_2877 = L_2875(L_2876, L_2860);
        if L_2877 then
            L_2859(L_2877.name, L_2877.rarity);
            return true;
        end;
        local L_2878 = L_2875(L_2876, L_2861);
        if L_2878 then
            L_2859(L_2878.name, L_2878.rarity);
            return true;
        end;
        return false;
    end;
    local L_2880 = { "Anglerfish", "Dark Skeletal Shark", "Jack-O'-Bite", "Swordfish", "Golden Polka Puffer", "Golden Ribbon Angelfish", "Golden Tigerfin", "Skeletal Shark", "Candy Corn Squid", "Crimson Polka Puffer", "Crimson Snapper", "Exotic Tigerfin", "Fangfish", "Zebra Ribbon Angelfish", "Blue-Lip Grouper", "Tigerfin", "Kilo Kilo no Mi", "Suke Suke no Mi", "Guru Guru no Mi", "Chiyu Chiyu no Mi", "Bari Bari no Mi", "Mero Mero no Mi", "Horo Horo no Mi", "Gomu Gomu no Mi", "Bomu Bomu no Mi", "Yomi Yomi no Mi", "Bane Bane no Mi", "Kira Kira no Mi", "Zushi Zushi no Mi", "Gura Gura no Mi", "Suna Suna no Mi", "Hie Hie no Mi", "Ito Ito no Mi", "Goro Goro no Mi", "Nikyu Nikyu no Mi", "Mera Mera no Mi", "Kage Kage no Mi", "Magu Magu no Mi", "Pika Pika no Mi", "Yami Yami no Mi", "Yuki Yuki no Mi", "Goru Goru no Mi", "Moku Moku no Mi", "Tori Tori no Mi, Model: Phoenix", "Mochi Mochi no Mi", "Ope Ope no Mi", "Doku Doku no Mi", "Hito Hito no Mi, Model: Daibutsu", "Ryu Ryu no Mi, Model: Pteranodon" };
    local L_2889 = function()
        pcall(function()
            local L_2881 = L_2827;
            if not L_2881 or not L_2881:FindFirstChild("PlayerGui") then
                return ;
            end;
            local L_2882 = L_2881.PlayerGui:WaitForChild("Notifications", 5);
            if not L_2882 then
                return ;
            end;
            L_2820.notificationConnection = L_2882.DescendantAdded:Connect(function(L_2883)
                if L_2883:IsA("TextLabel") then
                    local L_2884 = L_2883.Parent;
                    if L_2884 then
                        local L_2885 = false;
                        for L_2886, L_2887 in pairs(L_2884:GetChildren()) do
                            if L_2887:IsA("TextLabel") and L_2887.Text:match("New") then
                                L_2885 = true;
                                break;
                            end;
                        end;
                        if L_2885 then
                            local L_2888 = L_2883.Text:gsub("[<>]", "");
                            if table.find(L_2880, L_2888) then
                                L_2879(L_2888);
                            end;
                        end;
                    end;
                end;
                return ;
            end);
            return ;
        end);
        return ;
    end;
    local L_2894 = function()
        pcall(function()
            local L_2890 = L_2827;
            if not L_2890 or not L_2890:FindFirstChild("Backpack") then
                return ;
            end;
            L_2820.backpackConnection = L_2890.Backpack.ChildAdded:Connect(function(L_2891)
                if L_2891:IsA("Tool") then
                    local L_2892 = L_2891.Name;
                    local L_2893 = L_2875(L_2892, L_2861);
                    if L_2893 then
                        L_2859(L_2893.name, L_2893.rarity);
                    end;
                end;
                return ;
            end);
            return ;
        end);
        return ;
    end;
    local L_2901 = function(L_2895)
        local L_2896, L_2897 = pcall(function()
            return L_2824:JSONDecode(L_2895);
        end);
        if not L_2896 then
            return ;
        end;
        if L_2897.type == "connected" or L_2897.type == "auth_success" then
            L_2820.wsConnected = true;
            L_2820.accountId = L_2830();
            local L_2898 = L_2832();
            local L_2899 = L_2839();
            local L_2900 = { type = "register_game", payload = { userKey = L_2821.LICENSE_KEY, accountId = L_2820.accountId, name = L_2898.name, level = L_2898.level, peli = L_2898.peli, fps = L_2898.fps, ping = L_2898.ping, inventory = L_2899 } };
            L_2841(L_2900);
        elseif L_2897.type == "register_success" then
            L_2820.registered = true;
        elseif L_2897.type == "register_error" then
            L_2820.registered = false;
        elseif L_2897.type ~= "pong" then
        end;
        return ;
    end;
    local L_2902;
    L_2902 = function()
        local L_2903 = L_2821.BASE_URL .. "/" .. L_2821.LICENSE_KEY;
        if not pcall(function()
            if not WebSocket then
                error("WebSocket not available in this executor");
            end;
            L_2820.ws = WebSocket.connect(L_2903);
            if not L_2820.ws then
                error("Failed to create WebSocket connection");
            end;
            L_2820.ws.OnMessage:Connect(function(L_2904)
                L_2901(L_2904);
                return ;
            end);
            L_2820.ws.OnClose:Connect(function()
                L_2820.wsConnected = false;
                L_2820.registered = false;
                if L_2820.autoReconnect then
                    task.wait(5);
                    L_2902();
                end;
                return ;
            end);
            return ;
        end) and L_2820.autoReconnect then
            task.wait(5);
            L_2902();
        end;
        return ;
    end;
    local L_2906 = function()
        if L_2820.updateLoopRunning then
            return ;
        end;
        L_2820.updateLoopRunning = true;
        task.spawn(function()
            while L_2820.autoReconnect do
                task.wait(L_2821.UPDATE_INTERVAL);
                if L_2820.registered then
                    local L_2905 = L_2832();
                    L_2844("update_account", { level = L_2905.level, peli = L_2905.peli, fps = L_2905.fps, ping = L_2905.ping });
                end;
            end;
            L_2820.updateLoopRunning = false;
            return ;
        end);
        return ;
    end;
    local L_2912 = function()
        if L_2820.inventoryLoopRunning then
            return ;
        end;
        L_2820.inventoryLoopRunning = true;
        task.spawn(function()
            while L_2820.autoReconnect do
                task.wait(L_2821.INVENTORY_UPDATE_INTERVAL);
                if L_2820.registered then
                    local L_2907 = L_2839();
                    local L_2908 = L_2631("Rare Fruit Chest") or 0;
                    local L_2909 = L_2631("Legendary Fruit Chest") or 0;
                    local L_2910 = L_2631("Mythic Fruit Chest") or 0;
                    local L_2911 = L_2631("Legendary Fish Bait") or 0;
                    L_2844("update_inventory", { inventory = L_2907, chestStats = { rareChest = L_2908, legendaryChest = L_2909, mythicChest = L_2910 }, legendaryFishBait = L_2911 });
                end;
            end;
            L_2820.inventoryLoopRunning = false;
            return ;
        end);
        return ;
    end;
    L_2902();
    L_2906();
    L_2912();
    L_2889();
    L_2894();
    print("we managed to connect!");
    return ;
end;
Disconnect = function()
    L_2820.autoReconnect = false;
    if L_2820.ws and L_2820.HttpService then
        pcall(function()
            if L_2820.registered then
                L_2820.ws:Send(L_2820.HttpService:JSONEncode({ type = "game_disconnect", payload = {} }));
            end;
            L_2820.ws:Close();
            return ;
        end);
    end;
    if L_2820.notificationConnection then
        L_2820.notificationConnection:Disconnect();
        L_2820.notificationConnection = nil;
    end;
    if L_2820.backpackConnection then
        L_2820.backpackConnection:Disconnect();
        L_2820.backpackConnection = nil;
    end;
    L_2820.wsConnected = false;
    L_2820.registered = false;
    L_2820.ws = nil;
    L_2820.lastInventorySnapshot = {};
    L_2820.statsFolder = nil;
    L_2820.inventoryValue = nil;
    L_2820.HttpService = nil;
    L_2820.Workspace = nil;
    return ;
end;
local L_2918 = function(L_2913, L_2914, L_2915, L_2916)
    if not L_2820.registered or (not L_2820.ws or not L_2820.HttpService) then
        return ;
    end;
    local L_2917 = GetRarity(L_2913);
    pcall(function()
        L_2820.ws:Send(L_2820.HttpService:JSONEncode({ type = "bought_item", payload = { itemName = L_2913, cost = L_2914 or 0, costType = L_2915 or "Peli", rarity = L_2917, amount = L_2916 or 1 } }));
        return ;
    end);
    return ;
end;
local L_2921 = function(L_2919, L_2920)
    if not L_2820.registered or (not L_2820.ws or not L_2820.HttpService) then
        return ;
    end;
    pcall(function()
        L_2820.ws:Send(L_2820.HttpService:JSONEncode({ type = "update_bait", payload = { baitName = L_2919, baitType = L_2920 or "common" } }));
        return ;
    end);
    return ;
end;
local L_2923 = function(L_2922)
    if not L_2820.registered or (not L_2820.ws or not L_2820.HttpService) then
        return ;
    end;
    pcall(function()
        L_2820.ws:Send(L_2820.HttpService:JSONEncode({ type = "update_fishing_state", payload = { state = L_2922 or "idle" } }));
        return ;
    end);
    return ;
end;
local L_2926 = function(L_2924, L_2925)
    if not L_2820.registered or (not L_2820.ws or not L_2820.HttpService) then
        return ;
    end;
    pcall(function()
        L_2820.ws:Send(L_2820.HttpService:JSONEncode({ type = "caught_fruit", payload = { fruitName = L_2924, rarity = L_2925 or "Common" } }));
        return ;
    end);
    return ;
end;
_G.FeralClient = {
    Connect = Connect,
    Disconnect = Disconnect,
    isConnected = function()
        return L_2820.registered;
    end,
    sendBoughtItem = L_2918,
    updateBait = L_2921,
    updateFishingState = L_2923,
    sendCaughtFruit = L_2926,
    GetPeli = L_1662,
    GetCandy = L_1663,
    GetLevel = L_1664,
    GetCamera = GetCamera,
    GetItemCount = L_2631,
    GetInventoryData = GetInventoryData,
    GetRarity = GetRarity
};
FishingTitles = { [1] = "Godly Fisherman", [2] = "Master Fisherman", [3] = "Skilled Fisherman", [4] = "Novice Fisherman", [5] = "Fruit Fisher" };
GetBestTitle = function()
    local L_2927 = nil;
    local L_2928 = math.huge;
    local L_2929 = statsFolder.Titles.AllTitles;
    local L_2930 = game:GetService("HttpService"):JSONDecode(L_2929.Value);
    for L_2931, L_2932 in next, FishingTitles, nil do
        for L_2933, L_2934 in next, L_2930, nil do
            if L_2933 == L_2932 and L_2931 < L_2928 then
                L_2927 = L_2932;
                L_2928 = L_2931;
            end;
        end;
    end;
    return L_2927;
end;
webhookCooldowns = {};
COOLDOWN_TIME = 60;
GLOBAL_WEBHOOK_COOLDOWN = 1;
lastWebhookTime = 0;
local L_2936 = function(L_2935)
    if not L_2820.registered or (not L_2820.ws or not L_2820.HttpService) then
        return ;
    end;
    pcall(function()
        L_2820.ws:Send(L_2820.HttpService:JSONEncode({ type = "update_merchant_stock", payload = L_2935 }));
        return ;
    end);
    return ;
end;
local L_2943 = function()
    local L_2937 = game:GetService("Players").LocalPlayer;
    if L_2937 then
        local L_2938 = L_2937:FindFirstChild("PlayerGui");
        if L_2938 then
            local L_2939 = L_2938:FindFirstChild("MerchentShop");
            if L_2939 then
                local L_2940 = L_2939:GetAttribute("Prices");
                if L_2940 and L_2940 ~= "" and L_2940 ~= lastSentData then
                    local L_2941, L_2942 = pcall(function()
                        return L_2820.HttpService:JSONDecode(L_2940);
                    end);
                    if L_2941 and L_2942 then
                        L_2936(L_2942);
                        lastSentData = L_2940;
                    end;
                end;
            end;
        end;
    end;
    return ;
end;
SendWebhook = function(L_2944, L_2945, L_2946)
    local L_2947 = getgenv().FishKaitun.Webhook;
    if not L_2947 or L_2947 == "" then
        return ;
    end;
    if L_2946 == nil then
        L_2946 = true;
    end;
    local L_2948 = type(L_2944) == "table" and L_2944.Name or type(L_2944) == "string" and L_2944 or "Unknown";
    local L_2949 = tick();
    if L_2949 - lastWebhookTime < GLOBAL_WEBHOOK_COOLDOWN then
        return ;
    end;
    if webhookCooldowns[L_2948] and L_2949 - webhookCooldowns[L_2948] < COOLDOWN_TIME then
        return ;
    end;
    webhookCooldowns[L_2948] = L_2949;
    lastWebhookTime = L_2949;
    local L_2950 = request or http_request or syn and syn.request or fluxus and fluxus.request or krnl and krnl.request;
    if not L_2950 then
        warn("No supported HTTP request function found.");
        return ;
    end;
    local L_2951 = game:GetService("Players");
    local L_2952 = game:GetService("HttpService");
    local L_2953 = L_2951.LocalPlayer;
    if not L_2953 then
        warn("LocalPlayer not found.");
        return ;
    end;
    local L_2954 = L_2953.Name;
    local L_2955 = L_2953.UserId;
    if type(L_2944) == "table" and L_2944.Quantity then
    end;
    local L_2956 = os.date("!%Y-%m-%dT%H:%M:%S.000Z");
    local L_2957 = GetRarity(L_2944);
    local L_2958 = L_2948 == "Mythical Fruit Chest" or L_2945 and (L_2957 == "Mythical" or L_2957 == "Mythic");
    local L_2959 = 5814783;
    local L_2960 = nil;
    local L_2961, L_2962;
    if L_2945 and table.find(getgenv().FishKaitun.WebhookFruits, L_2957) then
        if L_2946 then
            L_2961 = "Devil Fruit Log";
            L_2962 = "Stored Devil Fruit: " .. tostring(L_2948);
            if L_2958 then
                L_2959 = 16776960;
            end;
        else
            L_2961 = "Devil Fruit Log";
            L_2962 = "Failed to store " .. tostring(L_2948) .. " devil fruit";
            L_2959 = 16711680;
        end;
    else
        L_2961 = "Purchase Log";
        L_2962 = "Purchased x" .. tostring(GetStock(L_2948)) .. " " .. tostring(L_2948);
        local L_2963 = L_2953.PlayerGui:FindFirstChild("MerchentShop");
        if L_2963 then
            local L_2964 = L_2963:GetAttribute("Prices");
            if L_2964 and L_2964 ~= "" then
                local L_2965, L_2966 = pcall(L_2952.JSONDecode, L_2952, L_2964);
                if L_2965 and type(L_2966) == "table" then
                    local L_2967 = L_2966[L_2948];
                    if L_2967 then
                        local L_2968 = L_2967.remaining or 0;
                        local L_2969 = L_2967.price or 0;
                        local L_2970 = L_1662();
                        if type(L_2970) == "number" and L_2969 > 0 then
                            local L_2971 = math.floor(L_2970 / L_2969);
                            L_2962 = (L_2962 .. "\nStock Remaining: " .. tostring(L_2968)) .. "\nCan Afford: " .. tostring(L_2971) .. " more";
                        end;
                    end;
                end;
            end;
        end;
        if L_2958 then
            L_2959 = 16776960;
        end;
    end;
    if L_2958 then
        L_2960 = "@everyone";
    end;
    local L_2972 = L_2962 .. "\nPlayer: " .. L_2954 .. " (" .. tostring(L_2955) .. ")";
    local L_2973 = { username = "Feral | Purchase Logs", avatar_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsLa1v6TE3iNJ3WESfDIPVwEji6FTcp6RGfg&s", embeds = { { title = L_2961, description = L_2972, color = L_2959, timestamp = L_2956, footer = { text = "Feral" } } } };
    if L_2960 then
        L_2973.content = L_2960;
    end;
    local L_2974 = L_2952:JSONEncode(L_2973);
    local L_2975, L_2976 = pcall(function()
        L_2950({ Url = L_2947, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = L_2974 });
        return ;
    end);
    if not L_2975 then
        warn("Failed to send webhook: " .. tostring(L_2976));
    end;
    return ;
end;
local L_2977 = require(game:GetService("ReplicatedStorage").Modules.ToolDesc);
local L_2978 = { "Katana", "Katana2", "Gun", "Core", "Hammer", "Chest", "Grip", "FishingRod", "Mount", "Ship", "Baloon", "CandyBasket", "Cap", "Head", "Cape", "Waist", "Jaw", "Back", "Back2", "Glasses", "Headband", "Ears", "TorsoScarf", "Shoulder", "Shoulder2", "Outfit", "CustomOutfit", "ASESlot", "Book", "Artifact", "Pet", "Key", "Item" };
local L_2980 = function(L_2979)
    if L_2977[L_2979] and (L_2977[L_2979].Type and table.find(L_2978, L_2977[L_2979].Type) and L_2631(L_2979) > 0) then
        return true;
    end;
    return false;
end;
local L_2981 = Page3.CreateSection("Fish Kaitun - Main");
local L_2982 = workspace:FindFirstChild("Uhhh");
if not L_2982 then
    L_2982 = Instance.new("Part");
    L_2982.Parent = workspace;
    L_2982.Name = "Uhhh";
    L_2982.Position = Vector3.new(0, 15000, 0);
    L_2982.Size = Vector3.new(20, 0.1, 20);
    L_2982.Material = Enum.Material.ForceField;
    L_2982.Color = Color3.fromRGB(255, 0, 0);
    L_2982.Anchored = true;
end;
local L_2993 = function()
    local L_2983 = game.Players.LocalPlayer.PlayerGui:FindFirstChild("MerchentShop");
    if not L_2983 then
        return {};
    end;
    local L_2984 = L_2983:GetAttribute("Prices");
    if not L_2984 or L_2984 == "" then
        return {};
    end;
    local L_2985 = game:GetService("HttpService");
    local L_2986, L_2987 = pcall(L_2985.JSONDecode, L_2985, L_2984);
    if not L_2986 or type(L_2987) ~= "table" then
        return {};
    end;
    local L_2988 = {};
    for L_2989, L_2990 in next, getgenv().FishKaitun.Buyables, nil do
        if L_2987[L_2990] then
            table.insert(L_2988, { name = L_2990, price = L_2987[L_2990].price or 0 });
        end;
    end;
    table.sort(L_2988, function(L_2991, L_2992)
        return L_2991.price > L_2992.price;
    end);
    return L_2988;
end;
getgenv().TaskQueue = getgenv().TaskQueue or {};
getgenv().TaskRunning = getgenv().TaskRunning or {};
getgenv().Delayed = false;
getgenv().LastMerchant = 0;
getgenv().EquipState = getgenv().EquipState or { IsEquipping = false, LastEquip = 0, LastReequip = 0 };
getgenv().Blacklist = getgenv().Blacklist or {};
getgenv().LastHookState = nil;
getgenv().StoringFruit = false;
getgenv().ThrowAttempts = 0;
getgenv().ReelAttempts = 0;
local L_2997 = {
    Queue = function(L_2994, L_2995)
        if not getgenv().TaskRunning[L_2994] then
            getgenv().TaskRunning[L_2994] = true;
            task.spawn(function()
                pcall(L_2995);
                getgenv().TaskRunning[L_2994] = false;
                return ;
            end);
        end;
        return ;
    end,
    IsRunning = function(L_2996)
        return getgenv().TaskRunning[L_2996] == true;
    end
};
if not getgenv().Freaky then
    getgenv().Freaky = game:GetService("Players").LocalPlayer.PlayerGui.Notifications.DescendantAdded:Connect(function(L_2998)
        if L_2998:IsA("TextLabel") and L_2998.Text == "shark" then
            local L_2999 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid");
            if L_2999 then
                L_2999:UnequipTools();
            end;
        end;
        return ;
    end);
end;
if not getgenv().FishCaught then
    getgenv().FishCaught = game:GetService("Players").LocalPlayer.PlayerGui.Notifications.DescendantAdded:Connect(function(L_3000)
        if L_3000:IsA("TextLabel") and (L_3000.Parent and L_3000.Parent.Name == "Container") then
            getgenv().ReelAttempts = 0;
            getgenv().ThrowAttempts = 0;
        end;
        return ;
    end);
end;
CraftBait = function(L_3001)
    if not inventoryValue or not inventoryValue.Value then
        return ;
    end;
    local L_3007, L_3008 = pcall(function()
        local L_3002 = require(game:GetService("ReplicatedStorage").Modules.ToolDesc);
        local L_3003 = game:GetService("HttpService"):JSONDecode(inventoryValue.Value);
        for L_3004, L_3005 in pairs(L_3003) do
            local L_3006 = L_3002[L_3004];
            if L_3006 and L_3006.Type == "Fish" then
                if L_3001 == "Rare" and L_3006.Rare == "Rare" then
                    game:GetService("ReplicatedStorage").CraftingRemote:InvokeServer({ BlueprintItem = "Rare Fish Bait", Method = "Craft", ExtraData = { ["Rare Fish"] = L_3004 } });
                    return ;
                end;
                if L_3001 == "Legendary" and L_3006.Rare == "Legendary" then
                    game:GetService("ReplicatedStorage").CraftingRemote:InvokeServer({ BlueprintItem = "Legendary Fish Bait", Method = "Craft", ExtraData = { ["Legendary Fish"] = L_3004 } });
                    return ;
                end;
            end;
        end;
        return ;
    end);
    return ;
end;
CanCraft = function(L_3009)
    if not inventoryValue or not inventoryValue.Value then
        return false;
    end;
    local L_3015, L_3016 = pcall(function()
        local L_3010 = require(game:GetService("ReplicatedStorage").Modules.ToolDesc);
        local L_3011 = game:GetService("HttpService"):JSONDecode(inventoryValue.Value);
        for L_3012, L_3013 in pairs(L_3011) do
            local L_3014 = L_3010[L_3012];
            if L_3014 and L_3014.Type == "Fish" then
                if L_3009 == "Rare" and L_3014.Rare == "Rare" then
                    return true;
                end;
                if L_3009 == "Legendary" and L_3014.Rare == "Legendary" and L_2631("Legendary Fish Bait") < 300 then
                    return true;
                end;
            end;
        end;
        return ;
    end);
    return L_3015 and L_3016 or false;
end;
HasFruit = function()
    if not player or (not player.Character or not player.Backpack) then
        return false;
    end;
    for L_3017, L_3018 in next, player.Backpack:GetChildren() do
        if L_3018:GetAttribute("verifiedFruit") and not getgenv().Blacklist[L_3018] then
            return L_3018;
        end;
    end;
    for L_3019, L_3020 in next, player.Character:GetChildren() do
        if L_3020:GetAttribute("verifiedFruit") and not getgenv().Blacklist[L_3020] then
            return L_3020;
        end;
    end;
    return false;
end;
local L_3021 = { Vector3.new(3389.60742, 1442.66956, -9062.29297), Vector3.new(7797.435546875, -2018.90625, -17452.791015625), Vector3.new(1836.715087890625, -14.500030517578125, -12258.0048828125) };
local L_3025 = function()
    local L_3022 = game:GetService("ReplicatedStorage").CompassGuider:FindFirstChild("Traveling Merchant");
    if not L_3022 or not L_3022.Value then
        return false;
    end;
    for L_3023, L_3024 in next, L_3021, nil do
        if (L_3024 - L_3022.Value).Magnitude < 2000 then
            return true;
        end;
    end;
    return false;
end;
local L_3030 = function(L_3026)
    if getgenv().StoringFruit then
        return false;
    end;
    if not L_3026 and (L_2997.IsRunning("EquipRod") or os.clock() - getgenv().EquipState.LastEquip < 2) then
        return false;
    end;
    L_2997.Queue("EquipRod", function()
        if getgenv().StoringFruit then
            return ;
        end;
        getgenv().EquipState.LastEquip = os.clock();
        local L_3027 = GetRodInstance();
        if not L_3027 then
            local L_3028 = GetRodInventory();
            if L_3028 then
                ToolsEvent:InvokeServer("equip", L_3028);
                for L_3029 = 1, 20, 1 do
                    if getgenv().StoringFruit then
                        return ;
                    end;
                    L_3027 = GetRodInstance();
                    if L_3027 then
                        break;
                    end;
                    task.wait(0.1);
                end;
            end;
        end;
        if not getgenv().StoringFruit and L_3027 and L_3027.Parent ~= player.Character then
            L_3027.Parent = player.Character;
        end;
        return ;
    end);
    return true;
end;
ReequipRod = function()
    if getgenv().StoringFruit then
        return ;
    end;
    local L_3031 = os.time();
    if L_3031 - getgenv().EquipState.LastReequip < 1 then
        return ;
    end;
    getgenv().EquipState.LastReequip = L_3031;
    getgenv().ThrowAttempts = 0;
    getgenv().ReelAttempts = 0;
    if not player.Character then
        return ;
    end;
    local L_3032 = player.Character:FindFirstChild("Humanoid");
    if L_3032 then
        L_3032:UnequipTools();
    end;
    task.wait(0.1);
    if getgenv().StoringFruit then
        return ;
    end;
    local L_3033 = GetRodInstance();
    if L_3033 then
        L_3033.Parent = player.Character;
    end;
    return ;
end;
EnsureOnlyFruitEquipped = function(L_3034)
    if not player.Character then
        return ;
    end;
    for L_3035, L_3036 in pairs(player.Character:GetChildren()) do
        if L_3036:IsA("Tool") and L_3036.Name ~= L_3034 then
            local L_3037 = player.Character:FindFirstChild("Humanoid");
            if L_3037 then
                L_3037:UnequipTools();
            end;
            return ;
        end;
    end;
    return ;
end;
FarmPeli = function()
    local L_3038 = game:GetService("Players").LocalPlayer;
    local L_3039 = (L_3038.Character or L_3038.CharacterAdded:Wait()):WaitForChild(L_33);
    if not getgenv().NecklaceTimer then
        getgenv().NecklaceTimer = 0;
    end;
    local L_3042 = function(L_3040, L_3041)
        return (Vector3.new(L_3040.X, 0, L_3040.Z) - Vector3.new(L_3041.X, 0, L_3041.Z)).Magnitude;
    end;
    local L_3043 = 0;
    pcall(function()
        L_3043 = L_1664();
        return ;
    end);
    if L_3043 >= 3 then
        local L_3044 = L_1666();
        local L_3045 = Vector3.new(-546, 9, -3403);
        if L_3044 ~= "Find Sarah's necklace" then
            if L_3042(L_3039.Position, L_3045) > 10 then
                HoroTpPro({ Position = L_3045, Speed = 50 });
            else
                L_3039.CFrame = CFrame.new(L_3045);
                L_2068("Find Sarah's necklace");
                getgenv().NecklaceTimer = tick();
                task.wait(1);
            end;
        elseif tick() - getgenv().NecklaceTimer > 30 then
            if L_3042(L_3039.Position, L_3045) > 10 then
                HoroTpPro({ Position = L_3045, Speed = 50 });
            else
                L_3039.CFrame = CFrame.new(L_3045);
                L_2068("Find Sarah's necklace");
                getgenv().NecklaceTimer = tick();
                task.wait(1);
            end;
        else
            local L_3046 = nil;
            pcall(function()
                L_3046 = L_2205();
                return ;
            end);
            if L_3046 then
                if L_3042(L_3039.Position, L_3046.Position) > 10 then
                    HoroTpPro({ Position = L_3046.Position, Speed = 50 });
                else
                    L_3039.CFrame = L_3046.CFrame;
                end;
                pcall(function()
                    fireproximityprompt(L_3046:FindFirstChildWhichIsA("ProximityPrompt"), true);
                    return ;
                end);
            elseif L_3042(L_3039.Position, L_3045) > 10 then
                HoroTpPro({ Position = L_3045, Speed = 50 });
            else
                L_3039.CFrame = CFrame.new(L_3045);
                game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({ "returnitem" });
                task.wait(1);
            end;
        end;
    else
        pcall(function()
            local L_3047 = nil;
            local L_3048 = math.huge;
            local L_3049 = nil;
            for L_3050, L_3051 in next, workspace.Env:GetChildren() do
                if L_3051.Name == "Chest" then
                    local L_3052 = L_3051:GetPivot().Position;
                    local L_3053 = (L_3052 - L_3039.Position).Magnitude;
                    if L_3053 < 500 and L_3052.Y < 50 then
                        local L_3054 = nil;
                        if GetPrompt then
                            L_3054 = GetPrompt(L_3052);
                        else
                            for L_3055, L_3056 in pairs(L_3051:GetDescendants()) do
                                if L_3056:IsA("ProximityPrompt") then
                                    L_3054 = L_3056;
                                    break;
                                end;
                            end;
                        end;
                        if L_3054 and L_3053 < L_3048 then
                            L_3047 = L_3051;
                            L_3049 = L_3054;
                            L_3048 = L_3053;
                        end;
                    end;
                end;
            end;
            if L_3047 and L_3049 then
                local L_3057 = L_3047:GetPivot().Position;
                if L_3042(L_3039.Position, L_3057) > 10 then
                    HoroTpPro({ Position = L_3057, Speed = 50 });
                else
                    L_3039.CFrame = CFrame.new(L_3057);
                end;
                fireproximityprompt(L_3049);
            end;
            return ;
        end);
    end;
    return ;
end;
getgenv().Fish_LastAction = getgenv().Fish_LastAction or 0;
getgenv().Fish_Reeling = getgenv().Fish_Reeling or false;
getgenv().Fish_StuckCount = getgenv().Fish_StuckCount or 0;
getgenv().Fish_LastAction = getgenv().Fish_LastAction or 0;
getgenv().Delayed = getgenv().Delayed or false;
getgenv().ReelAttempts = getgenv().ReelAttempts or 0;
getgenv().LastHookState = getgenv().LastHookState or nil;
pcall(function()
    local L_3058 = ReplicatedStorage:FindFirstChild("Fishing"):FindFirstChild("Remotes"):FindFirstChild("Action");
    return ;
end);
Animations = { Idle = "rbxassetid://107207137324194", Catch = "rbxassetid://127450553330242", Reel = "rbxassetid://136623058564703", Throw = "rbxassetid://140322334422224" };
LoadedAnimations = {};
LoadAnim = function(L_3059)
    if not LoadedAnimations[L_3059] then
        local L_3060 = Instance.new("Animation");
        L_3060.AnimationId = Animations[L_3059];
        LoadedAnimations[L_3059] = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(L_3060);
    end;
    return LoadedAnimations[L_3059];
end;
Play = function(L_3061)
    local L_3062 = LoadAnim(L_3061);
    if not L_3062.IsPlaying then
        L_3062:Play();
    end;
    return L_3062;
end;
Stop = function(L_3063)
    if LoadedAnimations[L_3063] and LoadedAnimations[L_3063].IsPlaying then
        LoadedAnimations[L_3063]:Stop();
    end;
    return ;
end;
StopAll = function()
    for L_3064, L_3065 in pairs(LoadedAnimations) do
        if L_3065.IsPlaying then
            L_3065:Stop();
        end;
    end;
    return ;
end;
GetAnimation = function(L_3066)
    return LoadedAnimations[L_3066];
end;
FishOnce = function()
    if getgenv().Delayed then
        return ;
    end;
    local L_3067 = game:GetService("Players").LocalPlayer;
    local L_3068 = L_3067.Character;
    if not L_3068 then
        return ;
    end;
    local L_3069 = L_3068:FindFirstChild(L_33);
    if not L_3069 then
        return ;
    end;
    local L_3072 = function()
        local L_3070 = L_3068:FindFirstChild("Humanoid");
        if L_3070 then
            L_3070:UnequipTools();
            task.wait(0.2);
            local L_3071 = L_3067.Backpack:FindFirstChild("Fishing Rod");
            if L_3071 then
                L_3071.Parent = L_3068;
            end;
        end;
        return ;
    end;
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tools"):InvokeServer(unpack({ "equip", "Fishing Rod" }));
    local L_3073 = L_3068:FindFirstChild("Fishing Rod") or L_3067.Backpack:FindFirstChild("Fishing Rod");
    if not L_3073 then
        return ;
    end;
    if L_3073.Parent ~= L_3068 then
        local L_3074 = L_3068:FindFirstChild("Humanoid");
        if L_3074 then
            L_3074:EquipTool(L_3073);
            getgenv().Fish_LastAction = tick() + 0.5;
            return ;
        end;
    end;
    local L_3075 = workspace.Effects:FindFirstChild(L_3067.Name .. "'s hook");
    if not L_3075 then
        local L_3076 = workspace.Env.WaterStuff.Ocean;
        local L_3077 = L_3076.CFrame;
        local L_3078 = L_3076.Size;
        local L_3079 = L_3077:PointToObjectSpace(L_3069.Position);
        local L_3080 = L_3077:PointToWorldSpace((Vector3.new(math.clamp(L_3079.X, -L_3078.X / 2, L_3078.X / 2), L_3078.Y / 2, math.clamp(L_3079.Z, -L_3078.Z / 2, L_3078.Z / 2))));
        local L_3081 = RaycastParams.new();
        L_3081.FilterType = Enum.RaycastFilterType.Include;
        L_3081.FilterDescendantsInstances = { workspace.Env.WaterStuff };
        local L_3082 = L_3069.Position;
        if L_3082.Y < 0 then
            L_3082 = Vector3.new(L_3082.X, 10, L_3082.Z);
        end;
        local L_3083 = workspace:Raycast(L_3082, Vector3.new(0, -2000, 0), L_3081);
        local L_3084 = L_3083 and L_3083.Position + Vector3.new(0, 7, 0) or L_3080 + Vector3.new(0, 7, 0);
        local L_3085 = Vector3.new(L_3084.X, 0, L_3084.Z);
        local L_3086 = L_3085;
        getgenv().watersigma = L_3085;
        Play("Throw");
        pcall(function()
            Action:InvokeServer({ Goal = L_3085, Action = "Throw", Bait = BestBait() });
            return ;
        end);
        task.wait(0.5);
        Action:InvokeServer({ Action = "Landed" });
    else
        L_3075.CFrame = CFrame.new(getgenv().watersigma);
        if L_3075:GetAttribute("Caught") and not getgenv().Delayed then
            Play("Reel");
            getgenv().Delayed = true;
            local L_3087 = math.random(7.5, 10);
            task.delay(L_3087, function()
                if not getgenv().Delayed then
                    return ;
                end;
                pcall(function()
                    Action:InvokeServer({ Action = "Reel" });
                    return ;
                end);
                Play("Reel");
                getgenv().ReelAttempts = (getgenv().ReelAttempts or 0) + 1;
                if getgenv().ReelAttempts >= 3 then
                    task.wait(0.3);
                    L_3072();
                else
                    task.wait(0.2);
                end;
                getgenv().Delayed = false;
                return ;
            end);
        elseif L_3075:GetAttribute("MoveMultiplier") and not L_3075:GetAttribute("Caught") then
            getgenv().ReelAttempts = 0;
            pcall(function()
                Play("Catch");
                Action:InvokeServer({ Action = "HookReturning" });
                Action:InvokeServer({ Action = "Cancel" });
                L_3075:Destroy();
                return ;
            end);
            getgenv().Fish_LastAction = tick() + 0.5;
        end;
    end;
    return ;
end;
GetChestClose = function(L_3088)
    local L_3089 = nil;
    local L_3090 = nil;
    for L_3091, L_3092 in next, workspace.Env:GetChildren() do
        if L_3092.Name == "Chest" then
            local L_3093 = (L_3092:GetPivot().Position - player.Character:GetPivot().Position).Magnitude;
            local L_3094 = GetPrompt(L_3092:GetPivot().Position);
            if L_3094 and L_3093 < L_3088 then
                L_3089 = L_3092;
                L_3090 = L_3094;
                L_3088 = L_3093;
            end;
        end;
    end;
    return L_3089, L_3090;
end;
PlayerPos = function()
    return player.Character.HumanoidRootPart.Position;
end;
GetDistance = function(L_3095)
    if typeof(L_3095) == "Instance" then
        return (PlayerPos() - L_3095:GetPivot().Position).Magnitude;
    end;
    if typeof(L_3095) == "Vector3" then
        return (PlayerPos() - L_3095).Magnitude;
    end;
    if typeof(L_3095) == "CFrame" then
        return (PlayerPos() - L_3095.Position).Magnitude;
    end;
    return nil;
end;
getgenv().LastMerchant = 0;
L_3021 = { Vector3.new(-2964, 6, -6672) };
local L_3099 = function()
    local L_3096 = game:GetService("ReplicatedStorage").CompassGuider:FindFirstChild("Traveling Merchant");
    if not L_3096 or not L_3096.Value then
        return false;
    end;
    for L_3097, L_3098 in next, L_3021, nil do
        if (L_3098 - L_3096.Value).Magnitude < 500 then
            return true;
        end;
    end;
    return false;
end;
HasMerchant = function()
    if L_3099() then
        warn("merchant is at a blacklisted location.");
        return false;
    end;
    local L_3100 = game:GetService("ReplicatedStorage").CompassGuider["Traveling Merchant"];
    if L_3100 and L_3100:GetAttribute("isEnabled") and getgenv().LastMerchant ~= L_3100.Value then
        return L_3100.Value;
    end;
    return false;
end;
merchnatposition = function()
    local L_3101 = game:GetService("ReplicatedStorage").CompassGuider["Traveling Merchant"];
    if L_3101 then
        return L_3101.Value;
    end;
    return false;
end;
GetPrice = function(L_3102)
    local L_3103 = game:GetService("Players").LocalPlayer.PlayerGui.MerchentShop.Main.List.Redeemables;
    if L_3103:FindFirstChild(L_3102) then
        local L_3104 = L_3103:FindFirstChild(L_3102):FindFirstChild("Price", true).Text;
        return tonumber((L_3104:gsub("[^%d]", "")));
    end;
    return ;
end;
CanAffordStock = function(L_3105)
    local L_3106 = GetPrice(L_3105);
    local L_3107 = GetStock(L_3105);
    if L_3107 == 0 then
        return false;
    end;
    return L_1662() >= L_3106 * L_3107;
end;
GetTime = function()
    local L_3108, L_3109 = game:GetService("Players").LocalPlayer.PlayerGui.MerchentShop.Main.List.RefreshFrame.RefreshTimer.Text:match("Refresh in: (%d+):(%d+)");
    return tonumber(L_3108) * 60 + tonumber(L_3109);
end;
EquipTool = function(L_3110)
    player.Character.Humanoid:EquipTool(L_3110);
    return ;
end;
getgenv().BlacklistedBuyables = {};
getgenv().TuffDelay = false;
getgenv().Busy = false;
getgenv().LastMost = nil;
WaitForChar = function()
    local L_3111 = player.Character;
    if not L_3111 or (not L_3111:FindFirstChild("Humanoid") or L_3111.Humanoid.Health <= 0) then
        L_3111 = player.CharacterAdded:Wait();
    end;
    L_3111:WaitForChild("Humanoid");
    L_3111:WaitForChild(L_33);
    return L_3111;
end;
GetChar = function()
    local L_3112 = player.Character;
    if not L_3112 or (not L_3112:FindFirstChild("Humanoid") or L_3112.Humanoid.Health <= 0) then
        return WaitForChar();
    end;
    return L_3112;
end;
HRP = function()
    return GetChar():WaitForChild(L_33);
end;
Hum = function()
    return GetChar():WaitForChild("Humanoid");
end;
getgenv().Attempts = 0;
if not getgenv().Added then
    getgenv().Added = player.CharacterAdded:Connect(function()
        getgenv().Attempts = 0;
        getgenv().Zipl = false;
        getgenv().Busy = false;
        return ;
    end);
end;
local L_3113 = { running = false, target = nil, trackObject = nil, cancel = false };
Twunu = function(L_3114, L_3115, L_3116)
    local L_3117 = L_3115 or L_2109() - 15;
    local L_3118 = nil;
    local L_3119 = nil;
    if typeof(L_3114) == "Vector3" then
        L_3118 = L_3114;
    elseif typeof(L_3114) == "Instance" then
        if L_3114:IsA("ObjectValue") then
            L_3119 = L_3114;
            if not L_3114.Value then
                return ;
            end;
            L_3118 = L_3114.Value:GetPivot().Position;
        else
            L_3119 = L_3114;
            L_3118 = L_3114:GetPivot().Position;
        end;
    end;
    if not L_3118 then
        return ;
    end;
    if L_3113.running and L_3113.trackObject == L_3119 and L_3119 then
        return ;
    end;
    if L_3113.running and L_3113.target and not L_3119 and (Vector3.new(L_3113.target.X, 0, L_3113.target.Z) - Vector3.new(L_3118.X, 0, L_3118.Z)).Magnitude < 1 then
        return ;
    end;
    if L_3113.running then
        L_3113.target = L_3118;
        L_3113.trackObject = L_3119;
        L_3113.cancel = true;
        return ;
    end;
    (function()
        local L_3120 = false;
        local L_3121 = player.Character;
        local L_3122 = L_3121 and L_3121:FindFirstChild(L_33);
        if not L_3122 then
            return ;
        end;
        L_3113.target = L_3118;
        L_3113.trackObject = L_3119;
        L_3113.running = true;
        L_3113.cancel = false;
        getgenv().Busy = true;
        player.Character.Humanoid:UnequipTools();
        local L_3123 = L_3116 or L_3122.Position.Y + 600;
        L_3122.CFrame = CFrame.new(L_3122.Position.X, L_3123, L_3122.Position.Z);
        L_3122.Velocity = Vector3.zero;
        L_3122.AssemblyLinearVelocity = Vector3.zero;
        while true do
            while true do
                while true do
                    while true do
                        L_3117 = L_2109() - 15;
                        if L_3113.cancel then
                            break;
                        end;
                        if not getgenv().FishKaitun.Enabled and not getgenv().AutoSanta and not getgenv().AutoImpel or getgenv().Die then
                            L_3120 = true;
                        end;
                        if L_3120 then
                            break;
                        end;
                        if L_3119 then
                            if L_3119:IsA("ObjectValue") then
                                if not L_3119.Value then
                                    L_3120 = true;
                                end;
                                if not L_3120 then
                                    L_3118 = L_3119.Value:GetPivot().Position;
                                end;
                            else
                                L_3118 = L_3119:GetPivot().Position;
                            end;
                        end;
                        if L_3120 then
                            break;
                        end;
                        local L_3124 = task.wait();
                        local L_3125 = L_3122.Position;
                        local L_3126 = Vector2.new(L_3125.X, L_3125.Z);
                        local L_3127 = Vector2.new(L_3118.X, L_3118.Z);
                        local L_3128 = (L_3127 - L_3126).Magnitude;
                        if L_3128 <= 5 then
                            L_3122.CFrame = CFrame.new(L_3118);
                            L_3122.Velocity = Vector3.zero;
                            L_3122.AssemblyLinearVelocity = Vector3.zero;
                            L_3120 = true;
                        end;
                        if L_3120 then
                            break;
                        end;
                        local L_3129 = L_3126 + (L_3127 - L_3126).Unit * math.min(L_3117 * L_3124, L_3128);
                        L_3122.CFrame = CFrame.new(L_3129.X, L_3123, L_3129.Y);
                        L_3122.Velocity = Vector3.zero;
                        L_3122.AssemblyLinearVelocity = Vector3.zero;
                    end;
                    if L_3120 then
                        break;
                    end;
                    if L_3120 then
                        break;
                    end;
                    if L_3120 then
                        break;
                    end;
                    L_3113.cancel = false;
                    L_3119 = L_3113.trackObject;
                    if L_3119 then
                        break;
                    end;
                    L_3118 = L_3113.target;
                end;
                if L_3120 then
                    break;
                end;
                if L_3120 then
                    break;
                end;
                if L_3120 then
                    break;
                end;
                if L_3119:IsA("ObjectValue") then
                    break;
                end;
                L_3118 = L_3119:GetPivot().Position;
            end;
            if L_3120 then
                break;
            end;
            if L_3120 then
                break;
            end;
            if L_3120 then
                break;
            end;
            if not L_3119.Value then
                break;
            end;
            L_3118 = L_3119.Value:GetPivot().Position;
        end;
        L_3120 = false;
        getgenv().Busy = false;
        L_3113.running = false;
        L_3113.target = nil;
        L_3113.trackObject = nil;
        return ;
    end)();
    return ;
end;
L_2981.CreateToggle({ Title = "Fish Kaitun Enabled", Desc = "Enable fish kaitun farming or disable", Default = false }, function(L_3130)
    getgenv().FishKaitun.Enabled = L_3130;
    task.spawn(function()
        while getgenv().FishKaitun.Enabled and task.wait(1) do
            local L_3131, L_3132 = BestBait();
            _G.FeralClient.updateBait(L_3131, L_3132);
            if getgenv().FishKaitun.AutoSell then
                SellFish();
            end;
            if player.PlayerGui:FindFirstChild("ScreenGui") then
                Hum():UnequipTools();
                task.wait(1);
            else
                FakeGeppo();
                if getgenv().FishKaitun.EquipTitle then
                    local L_3133 = GetBestTitle();
                    local L_3134 = statsFolder and statsFolder.Titles and statsFolder.Titles.EquipedTitle;
                    if L_3134 and L_3134.Value ~= L_3133 then
                        warn(L_3133);
                        Events.Titles:InvokeServer(L_3133);
                    end;
                end;
            end;
        end;
        return ;
    end);
    if L_3130 then
        for L_3135, L_3136 in next, workspace.ZipLines:GetDescendants() do
            if L_3136.Name == "ZiplineRails" then
                for L_3137, L_3138 in next, L_3136:GetChildren() do
                    L_3138:Destroy();
                end;
            end;
        end;
    end;
    task.spawn(function()
        while getgenv().FishKaitun.Enabled and task.wait() do
            if player.PlayerGui:FindFirstChild("ScreenGui") then
                _G.FeralClient.updateFishingState("Black Screen Unequipping..");
                Hum():UnequipTools();
                task.wait(1);
            else
                local L_3139 = GetRodInstance();
                if HasGeppo() and L_3139 and not getgenv().Busy then
                    if L_3139.Parent ~= GetChar() then
                        _G.FeralClient.updateFishingState("Equipped Rod");
                        EquipTool(L_3139);
                        task.wait(1);
                    else
                        local L_3140 = player.Character.HumanoidRootPart;
                        local L_3141 = workspace.Env.WaterStuff.Ocean;
                        local L_3142 = L_3141.CFrame;
                        local L_3143 = L_3141.Size;
                        local L_3144 = L_3142:PointToObjectSpace(L_3140.Position);
                        local L_3145 = L_3142:PointToWorldSpace((Vector3.new(math.clamp(L_3144.X, -L_3143.X / 2, L_3143.X / 2), L_3143.Y / 2, math.clamp(L_3144.Z, -L_3143.Z / 2, L_3143.Z / 2))));
                        local L_3146 = RaycastParams.new();
                        L_3146.FilterType = Enum.RaycastFilterType.Include;
                        L_3146.FilterDescendantsInstances = { workspace.Env.WaterStuff };
                        local L_3147 = L_3140.Position;
                        if L_3147.Y < 0 then
                            L_3147 = Vector3.new(L_3147.X, 10, L_3147.Z);
                        end;
                        local L_3148 = workspace:Raycast(L_3147, Vector3.new(0, -2000, 0), L_3146);
                        local L_3149 = L_3148 and L_3148.Position + Vector3.new(0, 7, 0) or L_3145 + Vector3.new(0, 7, 0);
                        local L_3150 = Vector3.new(L_3149.X, 0, L_3149.Z);
                        getgenv().waterpos = L_3150;
                        local L_3151 = workspace.Effects:FindFirstChild(player.Name .. "'s hook") or nil;
                        if not L_3151 then
                            Play("Throw");
                            pcall(function()
                                Action:InvokeServer({ Goal = L_3150, Action = "Throw", Bait = BestBait() });
                                return ;
                            end);
                            task.wait(0.5);
                            Action:InvokeServer({ Action = "Landed" });
                            _G.FeralClient.updateFishingState("Threw Bait");
                            local L_3152 = workspace.Effects:FindFirstChild(player.Name .. "'s hook");
                        else
                            if player.Character.HumanoidRootPart.Position.Y > 0 and player.Character.HumanoidRootPart.Position.Y < 800 then
                                L_3151.CFrame = CFrame.new(getgenv().waterpos);
                            end;
                            _G.FeralClient.updateFishingState("Fishing / Idling");
                            if L_3151:GetAttribute("Caught") and not getgenv().Loop then
                                Play("Reel");
                                warn("before reel");
                                getgenv().Loop = true;
                                task.delay(7.5, function()
                                    warn("reel thing");
                                    pcall(function()
                                        Action:InvokeServer({ Action = "Reel" });
                                        return ;
                                    end);
                                    Play("Reel");
                                    _G.FeralClient.updateFishingState("Reeled Fish");
                                    getgenv().Loop = false;
                                    warn("reel finish");
                                    return ;
                                end);
                            elseif L_3151:GetAttribute("MoveMultiplier") and not L_3151:GetAttribute("Caught") then
                                pcall(function()
                                    Play("Catch");
                                    Action:InvokeServer({ Action = "HookReturning" });
                                    Action:InvokeServer({ Action = "Cancel" });
                                    L_3151:Destroy();
                                    return ;
                                end);
                            elseif L_3151:GetAttribute("Seed") and not L_3151:GetAttribute("MoveMultiplier") and not L_3151:GetAttribute("Caught") and L_2120(merchnatposition(), 5, true) then
                                repeat
                                    task.wait();
                                until not HasMerchant();
                                player.Character.Humanoid:UnequipTools();
                                task.wait();
                                local L_3153;
                                if L_2120(Vector3.new(-7427, 26, -793), 1500, true) then
                                    L_3153 = Vector3.new(-1299, 4, -5052);
                                else
                                    L_3153 = workspace.NPCs:FindFirstChild("Robo") and workspace.NPCs:FindFirstChild("Robo"):GetPivot().Position + Vector3.new(-5, 0, 0) or Vector3.new(-1299, 4, -5052);
                                end;
                                repeat
                                    task.wait();
                                    if getgenv().Attempts < 5 then
                                        Twunu(L_3153);
                                    else
                                        HoroTp(L_3153);
                                    end;
                                until L_2120(L_3153, 10, true) or not getgenv().FishKaitun.Enabled or not player.Character:FindFirstChild("Humanoid");
                                pcall(function()
                                    L_3139.Parent = player.Backpack;
                                    task.wait(0.2);
                                    L_3139.Parent = GetChar();
                                    return ;
                                end);
                            end;
                        end;
                    end;
                end;
            end;
        end;
        return ;
    end);
    while task.wait() and getgenv().FishKaitun.Enabled do
        if not player.Character or not player.Character:FindFirstChild("Humanoid") then
            task.wait(10);
        end;
        local L_3154 = GetRodInstance();
        local L_3155 = HasGeppo();
        if not L_3154 then
            if L_1662() < 70 then
                if L_1664() < 3 then
                    warn("level less than 3 and peli less than 70");
                    local L_3156, L_3157 = GetChestClose(250);
                    if L_3156 then
                        if (L_3156:GetPivot().Position - PlayerPos()).Magnitude > 5 then
                            _G.FeralClient.updateFishingState("Moving To Chest");
                            HoroTp2(L_3156:GetPivot().Position);
                        else
                            pcall(function()
                                fireproximityprompt(L_3157);
                                return ;
                            end);
                            _G.FeralClient.updateFishingState("Opening Chest");
                        end;
                    else
                        warn("bandit?");
                    end;
                else
                    warn("sarah?");
                    if L_1666() ~= "Find Sarah's necklace" then
                        NecklaceTimer = tick();
                        if (Vector3.new(-546, 9, -3403) - player.Character.HumanoidRootPart.Position).Magnitude > 5 then
                            HoroTp2(Vector3.new(-546, 9, -3403));
                        else
                            L_2068("Find Sarah's necklace");
                            task.wait(2);
                        end;
                    elseif tick() - NecklaceTimer > 30 then
                        if (Vector3.new(-546, 9, -3403) - player.Character.HumanoidRootPart.Position).Magnitude > 5 then
                            HoroTp2(Vector3.new(-546, 9, -3403));
                        else
                            L_2068("Find Sarah's necklace");
                            NecklaceTimer = tick();
                            task.wait(2);
                        end;
                    else
                        local L_3158 = nil;
                        pcall(function()
                            L_3158 = L_2205();
                            return ;
                        end);
                        if L_3158 then
                            HoroTp2(L_3158.Position);
                            if L_2120(L_3158.Position, 5, true) then
                                L_2156(L_3158.Position);
                                pcall(function()
                                    fireproximityprompt(L_3158:FindFirstChildWhichIsA("ProximityPrompt"), true);
                                    return ;
                                end);
                            end;
                        elseif (Vector3.new(-546, 9, -3403) - player.Character.HumanoidRootPart.Position).Magnitude > 5 then
                            HoroTp2(Vector3.new(-546, 9, -3403));
                        else
                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quest"):InvokeServer({ "returnitem" });
                            task.wait(2);
                        end;
                    end;
                end;
            elseif GetDistance(Vector3.new(-1340, 3, -4980)) > 5 then
                HoroTp(Vector3.new(-1340, 3, -4980));
            else
                Buy("Fishing Rod");
                task.wait();
                for L_3159 = 1, 2, 1 do
                    Buy("Common Fish Bait");
                end;
            end;
        elseif not L_3155 then
            if GetDistance(Vector3.new(-1340, 3, -4980)) > 5 then
                HoroTp(Vector3.new(-1340, 3, -4980));
            else
                task.wait();
                if L_2631("Common Fish Bait") < 1 then
                    Buy("Common Fish Bait");
                end;
            end;
            if L_1662() < 50000 then
                FishOnce();
            else
                L_2815("skyWalkTrainer");
            end;
        elseif not getgenv().Zipl then
            local L_3160 = Vector3.new(-1290, 11, -5089);
            if not L_2120(L_3160, 10, true) then
                HoroTp(L_3160);
            elseif player.Character:GetAttribute("SpeedBypass") < 250 then
                if getgenv().Attempts < 5 then
                    getgenv().Busy = true;
                    player.Character.Humanoid:UnequipTools();
                    L_2156(L_3160);
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ZiplineRemote"):InvokeServer(unpack({ "Exit" }));
                    task.wait(1);
                    local L_3161 = { "Enter", -1, Vector3.new(-1290.2841796875, 18.644325256347656, -5087.14990234375) };
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ZiplineRemote"):InvokeServer(unpack(L_3161));
                    task.wait(3);
                    getgenv().Attempts = getgenv().Attempts + 1;
                else
                    getgenv().Busy = false;
                    getgenv().Zipl = true;
                end;
            elseif player.Character:GetAttribute("SpeedBypass") >= 250 then
                getgenv().Busy = false;
                getgenv().Zipl = true;
            end;
        elseif HasMerchant() and getgenv().FishKaitun.Merchant then
            _G.FeralClient.updateFishingState("At Merchant");
            pcall(function()
                local L_3162 = GetDistance(HasMerchant());
                L_2982.Position = HasMerchant() + Vector3.new(0, 5, 0);
                if not L_2120(HasMerchant(), 10, true) then
                    if getgenv().Attempts < 5 then
                        Twunu(HasMerchant());
                    else
                        HoroTp(HasMerchant());
                    end;
                else
                    warn("teleporting");
                    HRP().CFrame = CFrame.new(L_2982.Position + Vector3.new(0, 2.5, 0));
                    if not player.PlayerGui:FindFirstChild("MerchentShop") then
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TravelingMerchentRemote"):InvokeServer("OpenShop");
                    else
                        L_2943();
                        if not getgenv().TuffDelay then
                            getgenv().TuffDelay = true;
                            task.delay(GetTime(), function()
                                task.wait(20);
                                warn("so is he refreshed?");
                                getgenv().LastMerchant = 0;
                                getgenv().LastMost = nil;
                                getgenv().TuffDelay = false;
                                return ;
                            end);
                        end;
                        local L_3163 = math.huge;
                        local L_3164 = nil;
                        if GetStock("Mythical Fruit Chest") and GetStock("Mythical Fruit Chest") > 0 then
                            L_3164 = "Mythical Fruit Chest";
                        end;
                        if not L_3164 then
                            for L_3165, L_3166 in next, getgenv().FishKaitun.Buyables, nil do
                                local L_3167 = GetStock(L_3166);
                                local L_3168 = GetPrice(L_3166);
                                if CanAffordStock(L_3166) and L_3167 > 0 and L_3168 < L_3163 and not getgenv().BlacklistedBuyables[L_3166] then
                                    L_3164 = L_3166;
                                    L_3163 = L_3168;
                                end;
                            end;
                        end;
                        warn(getgenv().LastMost, L_3164);
                        if L_3164 ~= getgenv().LastMost and L_3164 ~= nil then
                            getgenv().LastMost = L_3164;
                            warn("this part");
                            task.spawn(function()
                                SendWebhook(L_3164);
                                return ;
                            end);
                            warn("webhook?");
                            _G.FeralClient.sendBoughtItem(L_3164, GetPrice(L_3164), "Peli", GetStock(L_3164));
                            warn("sent?");
                        end;
                        if L_3164 then
                            local L_3169 = GetStock(L_3164);
                            for L_3170 = 1, L_3169, 1 do
                                HRP().CFrame = CFrame.new(L_2982.Position + Vector3.new(0, 2.5, 0));
                                task.wait();
                                Events.TravelingMerchentRemote:InvokeServer(L_3164, player.PlayerGui:FindFirstChild("MerchentShop"):GetAttribute("Seed"));
                                task.wait();
                                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TravelingMerchentRemote"):InvokeServer("OpenShop");
                                if GetStock(L_3164) == L_3169 then
                                    getgenv().BlacklistedBuyables[L_3164] = true;
                                end;
                                L_3164 = nil;
                            end;
                        else
                            getgenv().LastMerchant = game:GetService("ReplicatedStorage").CompassGuider:FindFirstChild("Traveling Merchant").Value;
                        end;
                    end;
                end;
                return ;
            end);
            if not HasMerchant() or not getgenv().FishKaitun.Merchant then
            end;
        elseif getgenv().FishKaitun.LegendaryBait and CanCraft("Legendary") then
            _G.FeralClient.updateFishingState("Crafting Legendary Bait");
            if GetDistance(Vector3.new(-1377, 4, -5063)) < 10 then
                for L_3171 = 1, 5, 1 do
                    CraftBait("Legendary");
                end;
            elseif getgenv().Attempts < 5 then
                Twunu(Vector3.new(-1377, 4, -5063));
            else
                HoroTp(Vector3.new(-1377, 4, -5063));
            end;
        elseif getgenv().FishKaitun.RareBait and CanCraft("Rare") then
            _G.FeralClient.updateFishingState("Crafting Rare Bait");
            if GetDistance(Vector3.new(-1377, 4, -5063)) < 10 then
                for L_3172 = 1, 5, 1 do
                    CraftBait("Rare");
                end;
            elseif getgenv().Attempts < 5 then
                Twunu(Vector3.new(-1377, 4, -5063));
            else
                HoroTp(Vector3.new(-1377, 4, -5063));
            end;
        elseif L_2631("Common Fish Bait") < 1 then
            _G.FeralClient.updateFishingState("Buying Common Fish Bait");
            local L_3173 = game.PlaceId == 6811831486 and Vector3.new(102, 10, -55) or Vector3.new(-1340, 3, -4980);
            if GetDistance(L_3173) > 5 then
                if getgenv().Attempts < 5 then
                    Twunu(L_3173);
                else
                    HoroTp(L_3173);
                end;
            else
                Buy("Common Fish Bait", getgenv().FishKaitun.BaitBuyAmount);
            end;
        elseif HasFruit() then
            getgenv().Busy = true;
            local L_3174 = HasFruit();
            if L_2631(L_3174.Name) > 0 and table.find(getgenv().FishKaitun.DropFruits, GetRarity(L_3174.Name)) then
                local L_3175 = if not (GetRarity(HasFruit().Name) ~= "Legendary" or Raritiy ~= "Mythic") and Raritiy == "Mythical" then Vector3.new(-1401, 4, -5041) else Vector3.new(-1340, 4, -5035);
                if GetDistance(L_3175) > 5 then
                    if getgenv().Attempts < 5 then
                        Twunu(L_3175);
                    else
                        HoroTp(L_3175);
                    end;
                else
                    Events.Tools:InvokeServer("drop", L_3174);
                    _G.FeralClient.updateFishingState("Dropping Fruit");
                    getgenv().Busy = false;
                end;
            else
                local L_3176 = 0;
                repeat
                    task.wait(1);
                    if L_2631(L_3174.Name) > 0 then
                        break;
                    end;
                    L_3176 = L_3176 + 1;
                    Hum():UnequipTools();
                    task.wait();
                    EquipTool(L_3174);
                    task.wait(0.5);
                    Events.FruitStorage:InvokeServer(true);
                    task.wait(1);
                until not L_3174 or L_3176 >= 5 or not getgenv().FishKaitun.Enabled;
                if L_3176 >= 5 then
                    warn("blacklisting attempt");
                    _G.FeralClient.updateFishingState("Blacklisting Fruit");
                    getgenv().Blacklist[L_3174] = true;
                end;
                if table.find(getgenv().FishKaitun.WebhookFruits, GetRarity(L_3174.Name)) then
                    if L_3176 >= 5 then
                        SendWebhook(L_3174.Name, true, false);
                    else
                        SendWebhook(L_3174.Name, true, true);
                    end;
                end;
                getgenv().Busy = false;
            end;
        elseif HasBag() then
            getgenv().Busy = true;
            repeat
                task.wait();
                local L_3177 = L_2170("Spare Fruit Bag");
                if L_3177 then
                    if L_3177.Parent ~= player.Character then
                        player.Character.Humanoid:UnequipTools();
                        task.wait(0.3);
                        L_3177.Parent = player.Character;
                        task.wait(0.3);
                    elseif not player.PlayerGui:FindFirstChild("ConfirmationPrompt") then
                        L_3177:Activate();
                        if L_3177:FindFirstChild("ConfirmationPrompt") then
                            L_3177:FindFirstChild("ConfirmationPrompt").Parent = player.PlayerGui;
                        end;
                    else
                        game:GetService("GuiService").SelectedObject = player.PlayerGui:FindFirstChild("ConfirmationPrompt").Main.Accept;
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, nil);
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, nil);
                    end;
                else
                    ToolsEvent:InvokeServer("equip", "Spare Fruit Bag");
                end;
            until not L_3177 or not L_3177.Parent or not getgenv().FishKaitun.Enabled or L_2631("Fruit Bag") > 0;
            game:GetService("GuiService").SelectedObject = nil;
            getgenv().Busy = false;
        elseif getgenv().FishKaitun.SetSpawn and statsFolder.Stats.SpawnPoint.Value ~= "Shell's Town" then
            local L_3178 = Vector3.new(-1297, 4, -5058);
            if not L_2120(L_3178, 10, true) then
                if getgenv().Attempts < 5 then
                    Twunu(L_3178);
                else
                    HoroTp(L_3178);
                end;
            else
                L_2156(L_3178);
                QuestEvent:InvokeServer({ "npcChat", true });
                if Workspace.NPCs:FindFirstChild("Robo") then
                    SetSpawnEvent:FireServer(nil, Workspace.NPCs.Robo);
                end;
            end;
        end;
    end;
    return ;
end);
L_2981.CreateToggle({ Title = "Auto Sell Fish", Desc = "Enable whether to sell fish or not.", Default = true }, function(L_3179)
    getgenv().FishKaitun.AutoSell = L_3179;
    return ;
end);
L_2981.CreateToggle({ Title = "Auto Equip Titles", Desc = "Enables wether to equip titles or not.", Default = true }, function(L_3180)
    getgenv().FishKaitun.EquipTitle = L_3180;
    return ;
end);
L_2981.CreateToggle({ Title = "Auto Set Spawn", Desc = "Sets spawn at Shell's Town", Default = false }, function(L_3181)
    getgenv().FishKaitun.SetSpawn = L_3181;
    return ;
end);
L_2981.CreateDropdown({ Title = "Bait", List = { "Best", "Legendary Fish Bait", "Rare Fish Bait", "Common Fish Bait" }, Default = "Best", Search = false, Selected = false }, function(L_3182, L_3183)
    getgenv().FishKaitun.Bait = L_3182;
    return ;
end);
L_2981.CreateDropdown({ Title = "Sell Rarities", List = SellRarities, Default = SellRarities, Search = false, Selected = true }, function(L_3184, L_3185)
    local L_3186 = getgenv().FishKaitun.SellRarities;
    if L_3185 then
        if not table.find(L_3186, L_3184) then
            table.insert(L_3186, L_3184);
        end;
    else
        for L_3187, L_3188 in ipairs(L_3186) do
            if L_3188 == L_3184 then
                table.remove(L_3186, L_3187);
                return ;
            end;
        end;
    end;
    return ;
end);
local L_3189 = Page3.CreateSection("Fish Kaitun - Bait & Crafting");
L_3189.CreateToggle({ Title = "Auto Craft Legendary Bait", Desc = "Auto Crafts Legendary Bait When You Have Legendary Fish", Default = false }, function(L_3190)
    getgenv().FishKaitun.LegendaryBait = L_3190;
    return ;
end);
L_3189.CreateToggle({ Title = "Auto Craft Rare Bait", Desc = "Auto Crafts Rare Bait When You Have Rare Fish", Default = false }, function(L_3191)
    getgenv().FishKaitun.RareBait = L_3191;
    return ;
end);
L_3189.CreateBox({ Title = "Buy Bait Amount (Common)", Placeholder = "50", Default = "50", Number = false }, function(L_3192)
    getgenv().FishKaitun.BaitBuyAmount = L_3192;
    return ;
end);
local L_3193 = Page3.CreateSection("Fish Kaitun - Merchant & Items");
L_3193.CreateToggle({ Title = "Auto Buy From Merchant", Desc = "Auto buys from the merchant when available", Default = false }, function(L_3194)
    getgenv().FishKaitun.Merchant = L_3194;
    return ;
end);
L_3193.CreateToggle({ Title = "Auto Store Fruits", Desc = "Enable whether to store fruits or not.", Default = true }, function(L_3195)
    getgenv().FishKaitun.StoreFruit = L_3195;
    return ;
end);
getgenv().ConnectedBall = nil;
L_3193.CreateToggle({ Title = "Connect Websocket", Desc = "Connectes you to the websocket server", Default = false }, function(L_3196)
    if getgenv().ConnectedBall then
        return ;
    end;
    if L_3196 then
        warn("attempting to connect");
        Connect();
    else
        Disconnect();
    end;
    return ;
end);
L_3193.CreateBox({ Title = "Webhook", Placeholder = "https://discord.com/api/webhooks/...", Default = "", Number = false }, function(L_3197)
    getgenv().FishKaitun.Webhook = L_3197;
    return ;
end);
L_3193.CreateDropdown({ Title = "Drop Fruit Rarities", List = { "Mythical", "Legendary", "Rare", "Epic", "Common", "Uncommon" }, Default = { "Mythical", "Legendary", "Rare", "Epic", "Common", "Uncommon" }, Search = false, Selected = true }, function(L_3198, L_3199)
    local L_3200 = getgenv().FishKaitun.DropFruits;
    if L_3199 then
        if not table.find(L_3200, L_3198) then
            table.insert(L_3200, L_3198);
        end;
    else
        for L_3201, L_3202 in ipairs(L_3200) do
            if L_3202 == L_3198 then
                table.remove(L_3200, L_3201);
                return ;
            end;
        end;
    end;
    return ;
end);
L_3193.CreateDropdown({ Title = "Webhook Fruit Rarities", List = { "Mythical", "Legendary", "Rare", "Epic", "Common", "Uncommon" }, Default = { "Mythical", "Legendary", "Rare", "Epic", "Common", "Uncommon" }, Search = false, Selected = true }, function(L_3203, L_3204)
    local L_3205 = getgenv().FishKaitun.WebhookFruits;
    if L_3204 then
        if not table.find(L_3205, L_3203) then
            table.insert(L_3205, L_3203);
        end;
    else
        for L_3206, L_3207 in ipairs(L_3205) do
            if L_3207 == L_3203 then
                table.remove(L_3205, L_3206);
                return ;
            end;
        end;
    end;
    return ;
end);
L_3193.CreateDropdown({ Title = "Buyables", List = tbl, Default = {}, Search = true, Selected = true }, function(L_3208, L_3209)
    local L_3210 = getgenv().FishKaitun.Buyables;
    if L_3209 then
        if not table.find(L_3210, L_3208) then
            table.insert(L_3210, L_3208);
        end;
    else
        for L_3211, L_3212 in ipairs(L_3210) do
            if L_3212 == L_3208 then
                table.remove(L_3210, L_3211);
                return ;
            end;
        end;
    end;
    return ;
end);
local L_3224 = function(L_3213)
    if not L_3213 then
        return 0;
    end;
    local L_3214 = L_3213:GetPivot().Position;
    local L_3215 = workspace:WaitForChild("Effects");
    local L_3216 = { ["Zombie Arm"] = true, ["Zombie Leg"] = true, ["Wandering Soul"] = true };
    local L_3217 = 10;
    local L_3218 = L_3217 * L_3217;
    local L_3219 = 0;
    for L_3220, L_3221 in ipairs(L_3215:GetChildren()) do
        if L_3221:IsA("Model") and L_3221.PrimaryPart and (L_3221.PrimaryPart.Position - L_3214).Magnitude ^ 2 <= L_3218 then
            for L_3222, L_3223 in pairs(L_3216) do
                if L_3221:FindFirstChild(L_3222) then
                    L_3219 = L_3219 + 1;
                    break;
                end;
            end;
        end;
    end;
    return L_3219;
end;
local L_3261 = function(L_3225)
    if not L_3225 or #L_3225 == 0 then
        return ;
    end;
    local L_3226 = game.Players.LocalPlayer;
    local L_3227 = L_3226.Character;
    if not L_3227 then
        return ;
    end;
    local L_3228 = L_3227:FindFirstChildOfClass("Humanoid");
    if not L_3228 then
        return ;
    end;
    local L_3229 = nil;
    for L_3230, L_3231 in next, L_3226.Backpack:GetChildren() do
        if L_3231:GetAttribute("MeleeTool") then
            L_3229 = L_3231;
            break;
        end;
    end;
    for L_3232, L_3233 in next, L_3227:GetChildren() do
        if L_3233:GetAttribute("MeleeTool") then
            L_3229 = L_3233;
            break;
        end;
    end;
    if not L_3229 then
        return ;
    end;
    if L_3229.Parent ~= L_3227 then
        L_3229.Parent = L_3227;
    end;
    if not getgenv().HitState then
        getgenv().HitState = { combo = 1, lastTick = 0, nextHitTime = 0 };
    end;
    local L_3234 = getgenv().HitState;
    local L_3235 = tick();
    if L_3235 < L_3234.nextHitTime or L_3235 - L_3234.lastTick < 0.05 then
        return ;
    end;
    task.spawn(function()
        local L_3236 = tick();
        if L_3236 < L_3234.nextHitTime or L_3236 - L_3234.lastTick < 0.05 then
            return ;
        end;
        L_3234.nextHitTime = L_3236 + 0.5;
        L_3234.lastTick = L_3236;
        local L_3237 = game:GetService("ReplicatedStorage");
        local L_3238 = { "Rokushiki", "Electro" };
        local L_3239 = select(2, getgenv().GetStyle());
        local L_3240 = L_3237.CombatAnimations:FindFirstChild(L_3239);
        if not L_3240 then
            return ;
        end;
        local L_3241 = L_3240:FindFirstChild("GroundPunch" .. L_3234.combo) or L_3240:FindFirstChild("Punch" .. L_3234.combo) or L_3240:FindFirstChild("Punch1");
        if not L_3241 then
            return ;
        end;
        local L_3242 = L_3227.PrimaryPart;
        local L_3243 = L_3242 and L_3242.Position or Vector3.zero;
        local L_3244 = 0;
        local L_3245 = 0;
        local L_3246 = 0;
        for L_3247, L_3248 in next, L_3225, nil do
            if typeof(L_3248) == "Instance" and L_3248:IsA("BasePart") and L_3248.Parent then
                L_3244, L_3245, L_3246 = L_3244 + L_3248.Position.X, L_3245 + L_3248.Position.Z, L_3246 + 1;
            end;
        end;
        local L_3249 = L_3246 > 0 and CFrame.new(L_3243, Vector3.new(L_3244 / L_3246, L_3243.Y, L_3245 / L_3246)) or CFrame.new(L_3243, (workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -1000)).Position);
        local L_3250 = L_3226:GetAttribute("Ping");
        local L_3251 = typeof(L_3250) == "number" and math.clamp(L_3250, 0, 0.35) or 0.05;
        local L_3252 = L_3228:FindFirstChildOfClass("Animator");
        local L_3253 = L_3252 and L_3252:LoadAnimation(L_3241);
        local L_3254 = (L_3253 and L_3253.Length or 0.35) / (L_3253 and L_3253.Speed or 1) * 0.4 - L_3251;
        if L_3254 < 0.03 then
            L_3254 = 0.03;
        end;
        if L_3253 then
            L_3253:Stop();
            L_3253:Destroy();
        end;
        pcall(function()
            L_3237.Events.CombatRegister:InvokeServer({ "swingsfx", L_3239, L_3234.combo, "Ground", false, L_3241, 1.75, 2, L_3249 });
            return ;
        end);
        task.delay(L_3254, function()
            local L_3255 = {};
            for L_3256, L_3257 in next, L_3225, nil do
                if typeof(L_3257) == "Instance" and L_3257.Parent then
                    table.insert(L_3255, L_3257);
                end;
            end;
            if #L_3255 == 0 then
                return ;
            end;
            local L_3258 = CFrame.new(L_3243, Vector3.new(L_3244 / L_3246, L_3243.Y, L_3245 / L_3246));
            local L_3259 = { "damage", L_3255, L_3239, { L_3234.combo, "Ground", L_3239 }, true, aircombo = "Ground", [6] = L_3258 };
            local L_3260 = L_3237.Events.CombatRegister;
            if not pcall(L_3260.InvokeServer, L_3260, L_3259) then
                task.wait(0.03);
                pcall(L_3260.InvokeServer, L_3260, L_3259);
            end;
            L_3234.lastTick = tick();
            return ;
        end);
        L_3234.combo = L_3234.combo + 1;
        if L_3234.combo == 4 then
            L_3234.nextHitTime = L_3236 + L_3254 + 0.65;
        elseif L_3234.combo > 5 then
            L_3234.combo = 1;
            L_3234.nextHitTime = L_3236 + L_3254 + 1.5;
        end;
        return ;
    end);
    return ;
end;
local L_3265 = function()
    local L_3262 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid");
    if not L_3262 then
        return false;
    end;
    for L_3263, L_3264 in ipairs(L_3262:GetPlayingAnimationTracks()) do
        if L_3264.Animation and L_3264.Animation.AnimationId:match("761034697") then
            return true;
        end;
    end;
    return false;
end;
local L_3266 = getgenv().M1ComboState or { combo = 1, lastTick = 0, nextHitTime = 0 };
getgenv().M1ComboState = L_3266;
getgenv().M1_Throttle = getgenv().M1_Throttle or 0.05;
getgenv().M1_BaseNext = getgenv().M1_BaseNext or 0.5;
getgenv().M1_Combo3Delay = getgenv().M1_Combo3Delay or 0.65;
getgenv().M1_ComboResetDelay = getgenv().M1_ComboResetDelay or 1.5;
local L_3269 = function(L_3267)
    local L_3268 = L_3267:GetAttribute("Ping");
    if typeof(L_3268) == "number" then
        return math.clamp(L_3268, 0, 0.35);
    end;
    return 0.05;
end;
local L_3276 = function(L_3270, L_3271)
    local L_3272 = type(_G.m1HitDelay) == "number" and _G.m1HitDelay or 0.4;
    local L_3273 = L_3270 and L_3270.Length or 0.35;
    local L_3274 = L_3270 and L_3270.Speed or 1;
    local L_3275 = (L_3274 ~= 0 and L_3273 / L_3274 or L_3273) * L_3272 - L_3269(L_3271);
    if L_3275 < 0.03 then
        L_3275 = 0.03;
    end;
    return L_3275;
end;
local L_3288 = function(L_3277, L_3278)
    local L_3279 = L_3277 and L_3277.PrimaryPart;
    if not L_3279 then
        return CFrame.new();
    end;
    local L_3280 = L_3279.Position;
    local L_3281 = 0;
    local L_3282 = 0;
    local L_3283 = 0;
    if typeof(L_3278) == "Instance" then
        if L_3278:IsA("BasePart") then
            L_3281, L_3282 = L_3278.Position.X, L_3278.Position.Z;
            L_3283 = 1;
        end;
    elseif typeof(L_3278) == "table" then
        for L_3284, L_3285 in next, L_3278, nil do
            if typeof(L_3285) == "Instance" and L_3285:IsA("BasePart") and L_3285.Parent then
                L_3281 = L_3281 + L_3285.Position.X;
                L_3282 = L_3282 + L_3285.Position.Z;
                L_3283 = L_3283 + 1;
            end;
        end;
    end;
    if L_3283 == 0 then
        local L_3286 = workspace.CurrentCamera;
        return CFrame.new(L_3280, (L_3286.CFrame * CFrame.new(0, 0, -1000)).Position);
    end;
    local L_3287 = Vector3.new(L_3281 / L_3283, L_3280.Y, L_3282 / L_3283);
    return CFrame.new(L_3280, L_3287);
end;
getgenv().Hit = function(L_3289)
    local L_3290 = game:GetService("Players");
    local L_3291 = game:GetService("ReplicatedStorage");
    local L_3292 = L_3290.LocalPlayer;
    if not L_3292 then
        return ;
    end;
    local L_3293 = L_3292.Character or L_3292.CharacterAdded:Wait();
    if not L_3293 then
        return ;
    end;
    local L_3294 = L_3293:FindFirstChildOfClass("Humanoid");
    local L_3295 = L_3293:FindFirstChild(L_33);
    if not L_3294 or not L_3295 then
        return ;
    end;
    local L_3296 = L_3291:FindFirstChild("Events");
    local L_3297 = L_3296 and L_3296:FindFirstChild("CombatRegister");
    if not L_3297 then
        return ;
    end;
    if typeof(L_3289) ~= "table" then
        L_3289 = { L_3289 };
    end;
    if #L_3289 == 0 then
        return ;
    end;
    local L_3298 = {};
    for L_3299, L_3300 in next, L_3289, nil do
        if typeof(L_3300) == "Instance" then
            if L_3300:IsA("Model") then
                local L_3301 = L_3300:FindFirstChild(L_33) or L_3300:FindFirstChild("Torso") or L_3300:FindFirstChild("UpperTorso");
                if L_3301 and L_3301:IsA("BasePart") then
                    table.insert(L_3298, L_3301);
                end;
            elseif L_3300:IsA("BasePart") then
                table.insert(L_3298, L_3300);
            end;
        end;
    end;
    if #L_3298 == 0 then
        return ;
    end;
    local L_3302 = tick();
    local L_3303 = getgenv().M1_Throttle;
    if L_3302 < L_3266.nextHitTime then
        return ;
    end;
    if L_3302 - L_3266.lastTick < L_3303 then
        return ;
    end;
    for L_3304, L_3305 in next, L_3292.Backpack:GetChildren() do
        if L_3305:GetAttribute("MeleeTool") then
            local L_3306 = L_3305;
            break;
        end;
    end;
    for L_3307, L_3308 in next, L_3293:GetChildren() do
        if L_3308:GetAttribute("MeleeTool") then
            local L_3309 = L_3308;
            break;
        end;
    end;
    local L_3310 = select(2, getgenv().GetStyle());
    if not L_3291:WaitForChild("CombatAnimations"):FindFirstChild(L_3310) then
        return ;
    end;
    local L_3311 = L_3266.combo;
    local L_3312 = 0.1;
    local L_3313 = "Ground";
    local L_3314 = L_3288(L_3293, L_3298);
    local L_3315 = tick();
    L_3266.lastTick = L_3315;
    local L_3316 = getgenv().M1_BaseNext;
    local L_3317 = getgenv().M1_Combo3Delay;
    local L_3318 = getgenv().M1_ComboResetDelay;
    local L_3319 = L_3315 + L_3316;
    local L_3320 = L_3311 + 1;
    if L_3320 == 4 then
        L_3319 = L_3315 + L_3312 + L_3317;
    elseif L_3320 > 5 then
        L_3320 = 1;
        L_3319 = L_3315 + L_3312 + L_3318;
    end;
    L_3266.combo = L_3320;
    L_3266.nextHitTime = L_3319;
    pcall(function()
        L_3297:InvokeServer({ "swingsfx", L_3310, L_3311, L_3313, false, anim, 1.75, 2, L_3314 });
        return ;
    end);
    task.delay(L_3312, function()
        local L_3321 = L_3292.Character;
        local L_3322 = L_3321 and L_3321:FindFirstChildOfClass("Humanoid");
        if not L_3321 or (not L_3322 or L_3322.Health <= 0 or L_3322:GetState() == Enum.HumanoidStateType.Dead) then
            return ;
        end;
        local L_3323 = {};
        for L_3324, L_3325 in next, L_3298, nil do
            if typeof(L_3325) == "Instance" and L_3325:IsA("BasePart") and L_3325.Parent then
                table.insert(L_3323, L_3325);
            end;
        end;
        if #L_3323 == 0 then
            return ;
        end;
        local L_3326 = L_3288(L_3321, L_3323);
        local L_3327 = { "damage", L_3323, L_3310, { L_3311, L_3313, L_3310 }, true, aircombo = L_3313, [6] = L_3326 };
        local L_3328, L_3329 = pcall(L_3297.InvokeServer, L_3297, L_3327);
        if not L_3328 or L_3329 == nil then
            task.wait(0.03);
            pcall(L_3297.InvokeServer, L_3297, L_3327);
        end;
        L_3266.lastTick = tick();
        return ;
    end);
    return ;
end;
getgenv().CastSoulUnbound = function(L_3330)
    local L_3331 = game.ReplicatedStorage.Events.Skill;
    local L_3332, L_3333 = pcall(L_3331.InvokeServer, L_3331, "Soul Unbound", L_3330 or CFrame.new(-9638, 172, -1954), true);
    if L_3332 and (type(L_3333) == "table" and typeof(L_3333[1]) == "Instance" and L_3333[1]:IsA("RemoteFunction")) then
        getgenv().HoroReturnRF = L_3333[1];
        getgenv().HoroStart = tick();
    end;
    return ;
end;
task.spawn(pcall, function()
    player = game.Players.LocalPlayer;
    RS = game:GetService("ReplicatedStorage");
    NPCs = workspace:FindFirstChild("NPCs");
    return ;
end);
local L_3334 = 1;
local L_3335 = 0;
local L_3336 = 0;
local L_3338 = function(L_3337)
    return L_3337 and L_3337:FindFirstChild(L_33);
end;
local L_3343 = function(L_3339, L_3340)
    local L_3341 = L_3339.X - L_3340.X;
    local L_3342 = L_3339.Z - L_3340.Z;
    return L_3341 * L_3341 + L_3342 * L_3342;
end;
local L_3356 = function(L_3344, L_3345, L_3346)
    local L_3347 = {};
    local L_3348 = (typeof(L_3345) == "Vector3" or typeof(L_3345) == "CFrame") and typeof(L_3346) == "number";
    local L_3349 = nil;
    local L_3350 = nil;
    if L_3348 then
        L_3349 = typeof(L_3345) == "CFrame" and L_3345.Position or L_3345;
        L_3350 = L_3346 * L_3346;
    end;
    for L_3351, L_3352 in ipairs(NPCs:GetChildren()) do
        if L_3352.Name == L_3344 then
            local L_3353 = L_3352:FindFirstChild(L_33);
            local L_3354 = L_3352:FindFirstChild("Head");
            if L_3353 and L_3354 then
                if L_3348 then
                    local L_3355 = L_3353.Position - L_3349;
                    if L_3355.X * L_3355.X + L_3355.Y * L_3355.Y + L_3355.Z * L_3355.Z <= L_3350 then
                        L_3347[#L_3347 + 1] = L_3352;
                    end;
                else
                    L_3347[#L_3347 + 1] = L_3352;
                end;
            end;
        end;
    end;
    return L_3347;
end;
local L_3368 = function(L_3357, L_3358, L_3359)
    local L_3360 = {};
    local L_3361 = L_3359 * L_3359;
    for L_3362, L_3363 in ipairs(L_3357) do
        local L_3364 = L_3338(L_3363);
        if L_3364 then
            local L_3365 = L_3364.Position.X - L_3358.X;
            local L_3366 = L_3364.Position.Y - L_3358.Y;
            local L_3367 = L_3364.Position.Z - L_3358.Z;
            if L_3365 * L_3365 + L_3366 * L_3366 + L_3367 * L_3367 <= L_3361 then
                L_3360[#L_3360 + 1] = L_3363;
            end;
        end;
    end;
    return L_3360;
end;
local L_3374 = function(L_3369, L_3370)
    local L_3371 = L_3369:FindFirstChild("Info");
    local L_3372 = L_3371 and L_3371:FindFirstChild("Target");
    local L_3373 = L_3370 and L_3370:FindFirstChild(L_33);
    return L_3372 and L_3373 and L_3372.Value == L_3373;
end;
local L_3379 = function(L_3375, L_3376)
    if #L_3375 == 0 then
        return false;
    end;
    for L_3377, L_3378 in ipairs(L_3375) do
        if not L_3374(L_3378, L_3376) then
            return false;
        end;
    end;
    return true;
end;
local L_3388 = function(L_3380, L_3381, L_3382)
    local L_3383 = {};
    local L_3384 = L_3382 * L_3382;
    for L_3385, L_3386 in ipairs(L_3380) do
        local L_3387 = L_3338(L_3386);
        if L_3387 and L_3343(L_3387.Position, L_3381) <= L_3384 then
            L_3383[#L_3383 + 1] = L_3387;
        end;
    end;
    return L_3383;
end;
local L_3398 = function(L_3389)
    for L_3390, L_3391 in ipairs(L_3389:GetChildren()) do
        if L_3391:FindFirstChild("SwordEquip") then
            return L_3391, "Sword";
        end;
    end;
    for L_3392, L_3393 in ipairs(player.Backpack:GetChildren()) do
        if L_3393:FindFirstChild("SwordEquip") then
            L_3393.Parent = L_3389;
            return L_3393, "Sword";
        end;
    end;
    for L_3394, L_3395 in ipairs(L_3389:GetChildren()) do
        if L_3395:GetAttribute("MeleeTool") then
            return L_3395;
        end;
    end;
    for L_3396, L_3397 in ipairs(player.Backpack:GetChildren()) do
        if L_3397:GetAttribute("MeleeTool") then
            L_3397.Parent = L_3389;
            return L_3397;
        end;
    end;
    return ;
end;
local L_3401 = function(L_3399, L_3400)
    if not L_3399 then
        return ;
    end;
    if L_3400 then
        return L_3400;
    end;
    if L_3399.Name == "Rokushiki" or L_3399.Name == "Electro" or L_3399.Name == "Vampire" or L_3399:GetAttribute("devilFruit") then
        return "Melee";
    end;
    return L_3399.Name;
end;
local L_3403 = function()
    local L_3402 = player:GetAttribute("Ping");
    if typeof(L_3402) ~= "number" then
        return 0.05;
    end;
    if L_3402 < 0 then
        return 0;
    end;
    if L_3402 > 0.35 then
        return 0.35;
    end;
    return L_3402;
end;
local L_3409 = function(L_3404)
    local L_3405 = type(_G.m1HitDelay) == "number" and _G.m1HitDelay or 0.4;
    local L_3406 = L_3404 and L_3404.Length or 0.35;
    local L_3407 = L_3404 and L_3404.Speed or 1;
    local L_3408 = (L_3407 ~= 0 and L_3406 / L_3407 or L_3406) * L_3405 - L_3403();
    if L_3408 < 0.03 then
        L_3408 = 0.03;
    end;
    return L_3408;
end;
local L_3429 = function(L_3410, L_3411)
    local L_3412 = L_3410 and L_3410.PrimaryPart;
    if not L_3412 then
        return CFrame.new();
    end;
    local L_3413 = L_3412.Position.X;
    local L_3414 = L_3412.Position.Y;
    local L_3415 = L_3412.Position.Z;
    local L_3416 = 0;
    local L_3417 = 0;
    local L_3418 = 0;
    for L_3419, L_3420 in ipairs(L_3411) do
        if typeof(L_3420) == "Instance" and L_3420:IsA("BasePart") and L_3420.Parent then
            L_3416 = L_3416 + L_3420.Position.X;
            L_3417 = L_3417 + L_3420.Position.Z;
            L_3418 = L_3418 + 1;
        end;
    end;
    local L_3421 = Vector3.new(L_3413, L_3414, L_3415);
    if L_3418 == 0 then
        local L_3422 = workspace.CurrentCamera;
        return CFrame.new(L_3421, (L_3422.CFrame * CFrame.new(0, 0, -1000)).Position);
    end;
    local L_3423 = L_3416 / L_3418;
    local L_3424 = L_3417 / L_3418;
    local L_3425 = Vector3.new(L_3423, L_3414, L_3424) - L_3421;
    if L_3425.Magnitude < 0.001 then
        L_3425 = Vector3.new(0, 0, -1);
    end;
    local L_3426 = L_3425.Unit;
    local L_3427 = L_3426 * 1.5;
    local L_3428 = L_3421 + L_3426;
    return CFrame.new(L_3421 + L_3427, L_3428);
end;
local L_3446 = function(L_3430, L_3431)
    local L_3432 = L_3430 and L_3430.PrimaryPart;
    if not L_3432 then
        return CFrame.new();
    end;
    local L_3433 = L_3432.Position;
    local L_3434 = 0;
    local L_3435 = 0;
    local L_3436 = 0;
    if typeof(L_3431) == "Instance" then
        if L_3431:IsA("BasePart") then
            L_3434, L_3435 = L_3431.Position.X, L_3431.Position.Z;
            L_3436 = 1;
        end;
    elseif typeof(L_3431) == "table" then
        for L_3437, L_3438 in next, L_3431, nil do
            if typeof(L_3438) == "Instance" and L_3438:IsA("BasePart") and L_3438.Parent then
                L_3434 = L_3434 + L_3438.Position.X;
                L_3435 = L_3435 + L_3438.Position.Z;
                L_3436 = L_3436 + 1;
            end;
        end;
    end;
    if L_3436 == 0 then
        local L_3439 = workspace.CurrentCamera;
        return CFrame.new(L_3433, (L_3439.CFrame * CFrame.new(0, 0, -1000)).Position);
    end;
    local L_3440 = L_3434 / L_3436;
    local L_3441 = L_3435 / L_3436;
    local L_3442 = Vector3.new(L_3440, L_3433.Y, L_3441) - L_3433;
    if L_3442.Magnitude < 0.001 then
        L_3442 = Vector3.new(0, 0, -1);
    end;
    local L_3443 = L_3442.Unit;
    local L_3444 = L_3443 * 1.5;
    local L_3445 = L_3433 + L_3443;
    return CFrame.new(L_3433 + L_3444, L_3445);
end;
local L_3469 = function(L_3447, L_3448, L_3449, L_3450, L_3451)
    if not L_3447 or (not L_3449 or not L_3450 or #L_3451 == 0) then
        return ;
    end;
    local L_3452 = tick();
    if L_3452 < L_3336 or L_3452 - L_3335 < 0.05 then
        return ;
    end;
    local L_3453 = L_3401(L_3447, L_3448);
    if not L_3453 then
        return ;
    end;
    local L_3454 = RS:FindFirstChild("Events");
    local L_3455 = L_3454 and L_3454:FindFirstChild("CombatRegister");
    if not L_3455 then
        return ;
    end;
    local L_3456 = L_3334;
    local L_3457 = "Ground";
    local L_3458 = L_3429(L_3450, L_3451);
    local L_3459 = 0.1;
    L_3335 = L_3452;
    local L_3460 = L_3456 + 1;
    local L_3461 = L_3452 + 0.5;
    if L_3460 == 4 then
        L_3461 = L_3452 + L_3459 + 0.65;
    elseif L_3460 > 5 then
        L_3460 = 1;
        L_3461 = L_3452 + L_3459 + 1.5;
    end;
    L_3334 = L_3460;
    L_3336 = L_3461;
    pcall(function()
        L_3455:InvokeServer({ "swingsfx", L_3453, L_3456, L_3457, false, nil, 1.75, 2, L_3458 });
        return ;
    end);
    task.delay(L_3459, function()
        if not getgenv().AutoBaal then
            return ;
        end;
        local L_3462 = player.Character;
        local L_3463 = L_3462 and L_3462:FindFirstChildOfClass("Humanoid");
        if not L_3462 or not L_3463 or L_3463.Health <= 0 or L_3463:GetState() == Enum.HumanoidStateType.Dead then
            return ;
        end;
        local L_3464 = {};
        for L_3465, L_3466 in ipairs(L_3451) do
            if typeof(L_3466) == "Instance" and L_3466:IsA("BasePart") and L_3466.Parent then
                L_3464[#L_3464 + 1] = L_3466;
            end;
        end;
        if #L_3464 == 0 then
            return ;
        end;
        local L_3467 = L_3429(L_3462, L_3464);
        local L_3468 = { "damage", L_3464, L_3453, { L_3456, L_3457, L_3453 }, true, aircombo = L_3457, [6] = L_3467 };
        pcall(function()
            L_3455:InvokeServer(L_3468);
            return ;
        end);
        L_3335 = tick();
        return ;
    end);
    return ;
end;
task.spawn(pcall, function()
    player = game.Players.LocalPlayer;
    RS = game:GetService("ReplicatedStorage");
    NPCs = workspace:FindFirstChild("NPCs");
    return ;
end);
L_3338 = function(L_3470)
    return L_3470 and L_3470:FindFirstChild(L_33);
end;
L_3343 = function(L_3471, L_3472)
    local L_3473 = L_3471.X - L_3472.X;
    local L_3474 = L_3471.Z - L_3472.Z;
    return L_3473 * L_3473 + L_3474 * L_3474;
end;
local L_3483 = function(L_3475)
    local L_3476 = {};
    local L_3477 = game.Players.LocalPlayer.Character;
    local L_3478 = L_3477 and L_3477:FindFirstChild(L_33);
    if not L_3478 then
        return L_3476;
    end;
    for L_3479, L_3480 in ipairs(NPCs:GetChildren()) do
        if L_3480.Name == L_3475 then
            local L_3481 = L_3480:FindFirstChild(L_33);
            local L_3482 = L_3480:FindFirstChild("Head");
            if L_3481 and L_3482 and (L_3481.Position - L_3478.Position).Magnitude <= 1000 then
                L_3476[#L_3476 + 1] = L_3480;
            end;
        end;
    end;
    return L_3476;
end;
local L_3492 = function(L_3484, L_3485, L_3486)
    local L_3487 = {};
    local L_3488 = L_3486 * L_3486;
    for L_3489, L_3490 in ipairs(L_3484) do
        local L_3491 = L_3338(L_3490);
        if L_3491 and L_3343(L_3491.Position, L_3485) <= L_3488 then
            L_3487[#L_3487 + 1] = L_3490;
        end;
    end;
    return L_3487;
end;
L_3374 = function(L_3493, L_3494)
    local L_3495 = L_3493:FindFirstChild("Info");
    local L_3496 = L_3495 and L_3495:FindFirstChild("Target");
    local L_3497 = L_3494 and L_3494:FindFirstChild(L_33);
    return L_3496 and L_3497 and L_3496.Value == L_3497;
end;
local L_3502 = function(L_3498, L_3499)
    if #L_3498 == 0 then
        return false;
    end;
    for L_3500, L_3501 in ipairs(L_3498) do
        if not L_3374(L_3501, L_3499) then
            return false;
        end;
    end;
    return true;
end;
local L_3511 = function(L_3503, L_3504, L_3505)
    local L_3506 = {};
    local L_3507 = L_3505 * L_3505;
    for L_3508, L_3509 in ipairs(L_3503) do
        local L_3510 = L_3338(L_3509);
        if L_3510 and L_3343(L_3510.Position, L_3504) <= L_3507 then
            L_3506[#L_3506 + 1] = L_3510;
        end;
    end;
    return L_3506;
end;
local L_3521 = function(L_3512)
    for L_3513, L_3514 in ipairs(L_3512:GetChildren()) do
        if L_3514:FindFirstChild("SwordEquip") then
            return L_3514, "Sword";
        end;
    end;
    for L_3515, L_3516 in ipairs(player.Backpack:GetChildren()) do
        if L_3516:FindFirstChild("SwordEquip") then
            L_3516.Parent = L_3512;
            return L_3516, "Sword";
        end;
    end;
    for L_3517, L_3518 in ipairs(L_3512:GetChildren()) do
        if L_3518:GetAttribute("MeleeTool") then
            return L_3518;
        end;
    end;
    for L_3519, L_3520 in ipairs(player.Backpack:GetChildren()) do
        if L_3520:GetAttribute("MeleeTool") then
            L_3520.Parent = L_3512;
            return L_3520;
        end;
    end;
    return ;
end;
L_3401 = function(L_3522, L_3523)
    if not L_3522 then
        return ;
    end;
    if L_3523 then
        return L_3523;
    end;
    if L_3522.Name == "Rokushiki" or L_3522.Name == "Electro" or L_3522.Name == "Vampire" or L_3522:GetAttribute("devilFruit") then
        return "Melee";
    end;
    return L_3522.Name;
end;
local L_3524 = getgenv().M1ComboState or { combo = 1, lastTick = 0, nextHitTime = 0 };
getgenv().M1ComboState = L_3524;
getgenv().M1_Throttle = getgenv().M1_Throttle or 0.05;
getgenv().M1_BaseNext = getgenv().M1_BaseNext or 0.5;
getgenv().M1_Combo3Delay = getgenv().M1_Combo3Delay or 0.65;
getgenv().M1_ComboResetDelay = getgenv().M1_ComboResetDelay or 1.5;
local L_3527 = function(L_3525)
    local L_3526 = L_3525:GetAttribute("Ping");
    if typeof(L_3526) == "number" then
        return math.clamp(L_3526, 0, 0.35);
    end;
    return 0.05;
end;
local L_3530 = function(L_3528, L_3529)
    return L_3446(L_3528, L_3529);
end;
getgenv().Hit2 = function(L_3531)
    local L_3532 = game:GetService("Players");
    local L_3533 = game:GetService("ReplicatedStorage");
    local L_3534 = L_3532.LocalPlayer;
    if not L_3534 then
        return ;
    end;
    local L_3535 = L_3534.Character or L_3534.CharacterAdded:Wait();
    if not L_3535 then
        return ;
    end;
    local L_3536 = L_3535:FindFirstChildOfClass("Humanoid");
    local L_3537 = L_3535:FindFirstChild(L_33);
    if not L_3536 or not L_3537 then
        return ;
    end;
    local L_3538 = L_3533:FindFirstChild("Events");
    local L_3539 = L_3538 and L_3538:FindFirstChild("CombatRegister");
    if not L_3539 then
        return ;
    end;
    if typeof(L_3531) ~= "table" then
        L_3531 = { L_3531 };
    end;
    if #L_3531 == 0 then
        return ;
    end;
    local L_3540 = {};
    for L_3541, L_3542 in next, L_3531, nil do
        if typeof(L_3542) == "Instance" then
            if L_3542:IsA("Model") then
                local L_3543 = L_3542:FindFirstChild(L_33) or L_3542:FindFirstChild("Torso") or L_3542:FindFirstChild("UpperTorso");
                if L_3543 and L_3543:IsA("BasePart") then
                    table.insert(L_3540, L_3543);
                end;
            elseif L_3542:IsA("BasePart") then
                table.insert(L_3540, L_3542);
            end;
        end;
    end;
    if #L_3540 == 0 then
        return ;
    end;
    local L_3544 = tick();
    local L_3545 = getgenv().M1_Throttle;
    if L_3544 < L_3524.nextHitTime then
        return ;
    end;
    if L_3544 - L_3524.lastTick < L_3545 then
        return ;
    end;
    local L_3546, L_3547 = L_3521(L_3535);
    if not L_3546 then
        return ;
    end;
    if L_3546:FindFirstChild("SwordEquip") then
        L_3547 = "Sword";
    elseif not L_3547 then
        if table.find({ "Rokushiki", "Electro", "Vampire" }, L_3546.Name) or L_3546:GetAttribute("devilFruit") then
            L_3547 = "Melee";
        else
            L_3547 = L_3546.Name;
        end;
    end;
    local L_3548 = L_3533:FindFirstChild("CombatAnimations");
    local L_3549 = L_3524.combo;
    local L_3550 = 0.1;
    if L_3550 < 0.03 then
        L_3550 = 0.03;
    end;
    local L_3551 = "Ground";
    local L_3552 = L_3530(L_3535, L_3540);
    local L_3553 = tick();
    L_3524.lastTick = L_3553;
    local L_3554 = getgenv().M1_BaseNext;
    local L_3555 = getgenv().M1_Combo3Delay;
    local L_3556 = getgenv().M1_ComboResetDelay;
    local L_3557 = L_3553 + L_3554;
    local L_3558 = L_3549 + 1;
    if L_3558 == 4 then
        L_3557 = L_3553 + L_3550 + L_3555;
    elseif L_3558 > 5 then
        L_3558 = 1;
        L_3557 = L_3553 + L_3550 + L_3556;
    end;
    L_3524.combo = L_3558;
    L_3524.nextHitTime = L_3557;
    pcall(function()
        L_3539:InvokeServer({ "swingsfx", L_3547, L_3549, L_3551, false, anim, 1.75, 2, L_3552 });
        return ;
    end);
    task.delay(L_3550, function()
        local L_3559 = L_3534.Character;
        local L_3560 = L_3559 and L_3559:FindFirstChildOfClass("Humanoid");
        if not L_3559 or (not L_3560 or L_3560.Health <= 0 or L_3560:GetState() == Enum.HumanoidStateType.Dead) then
            return ;
        end;
        local L_3561 = {};
        for L_3562, L_3563 in next, L_3540, nil do
            if typeof(L_3563) == "Instance" and L_3563:IsA("BasePart") and L_3563.Parent then
                table.insert(L_3561, L_3563);
            end;
        end;
        if #L_3561 == 0 then
            return ;
        end;
        local L_3564 = L_3530(L_3559, L_3561);
        local L_3565 = { "damage", L_3561, L_3547, { L_3549, L_3551, L_3547 }, true, aircombo = L_3551, [6] = L_3564 };
        local L_3566, L_3567 = pcall(L_3539.InvokeServer, L_3539, L_3565);
        if not L_3566 or L_3567 == nil then
            task.wait(0.03);
            pcall(L_3539.InvokeServer, L_3539, L_3565);
        end;
        L_3524.lastTick = tick();
        return ;
    end);
    return ;
end;
Bad = { "fire", "Alert" };
BaalAttackAnimations = { ["Roar + Fireballs"] = "rbxassetid://15171985195", Roar = "rbxassetid://15171447546", ["Skeleton Grab"] = "rbxassetid://15172484665", ["Fire breath"] = "rbxassetid://15171535144", ["Rapid Stomp"] = "rbxassetid://15171628089", ultimate = "rbxassetid://15172004593", slam = "rbxassetid://15171272212" };
BaalAttackIds = {};
for L_3568, L_3569 in pairs(BaalAttackAnimations) do
    local L_3570 = tostring(L_3569):match("%d+");
    if L_3570 then
        BaalAttackIds[L_3570] = L_3568;
    end;
end;
lastLog = 0;
logCooldown = 0.5;
logOnce = function(L_3571)
    local L_3572 = tick();
    if L_3572 - lastLog <= logCooldown then
        lastLog = L_3572;
        print(L_3571);
    end;
    return ;
end;
IsBad = function()
    for L_3573, L_3574 in next, workspace.Effects:GetChildren() do
        if table.find(Bad, L_3574.Name) then
            return true;
        end;
    end;
    local L_3575 = workspace:FindFirstChild("NPCs");
    if L_3575 then
        local L_3576 = L_3575:FindFirstChild("True Demon Ba'al");
        if L_3576 then
            local L_3577 = L_3576:FindFirstChildOfClass("Humanoid");
            if L_3577 then
                local L_3578 = L_3577:FindFirstChildOfClass("Animator") or L_3577:FindFirstChild("Animator");
                if L_3578 then
                    for L_3579, L_3580 in ipairs(L_3578:GetPlayingAnimationTracks()) do
                        if L_3580.Animation and L_3580.Animation.AnimationId then
                            local L_3581 = tostring(L_3580.Animation.AnimationId):match("%d+");
                            if L_3581 and BaalAttackIds[L_3581] then
                                local L_3582 = BaalAttackIds[L_3581];
                                return true;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
    return false;
end;
HasBad = function(L_3583)
    hasbad = false;
    for L_3584, L_3585 in next, L_3583:GetChildren() do
        if L_3585:IsA("TextLabel") and L_3585.TextColor == Color3.fromRGB(255, 102, 102) then
            hasbad = true;
        end;
    end;
    return hasbad;
end;
getgenv().WebhookBaal = "";
local L_3586 = {};
local L_3587 = 60;
SendBaalWebhook = function(L_3588)
    local L_3589 = getgenv().WebhookBaal;
    if not L_3589 or L_3589 == "" then
        return ;
    end;
    local L_3590 = request or http_request or syn and syn.request or fluxus and fluxus.request or krnl and krnl.request;
    if not L_3590 then
        return ;
    end;
    local L_3591 = game:GetService("Players");
    local L_3592 = game:GetService("HttpService");
    local L_3593 = L_3591.LocalPlayer;
    if not L_3593 then
        return ;
    end;
    local L_3594 = L_3593.Name;
    local L_3595 = L_3593.UserId;
    local L_3596 = type(L_3588) == "table" and L_3588.Name or type(L_3588) == "string" and L_3588 or "Unknown";
    local L_3597 = tick();
    if L_3586[L_3596] and L_3597 - L_3586[L_3596] < L_3587 then
        return ;
    end;
    L_3586[L_3596] = L_3597;
    local L_3598 = os.date("!%Y-%m-%dT%H:%M:%S.000Z");
    local L_3599 = L_3592:JSONEncode({ username = "Feral | Baal Farm Logs", avatar_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsLa1v6TE3iNJ3WESfDIPVwEji6FTcp6RGfg&s", embeds = { { title = "Baal Farm Log", description = "Baal Farm Kaitun Received x1 " .. tostring(L_3596) .. " from Baal" .. "\nPlayer: " .. L_3594 .. " (" .. tostring(L_3595) .. ")", color = 5814783, timestamp = L_3598, footer = { text = "Feral" } } } });
    L_3590({ Url = L_3589, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = L_3599 });
    return ;
end;
getgenv().WebhookSanta = nil;
SantaWebhook = function(L_3600)
    local L_3601 = getgenv().WebhookSanta;
    if not L_3601 or L_3601 == "" then
        warn("here");
        return ;
    end;
    local L_3602 = request or http_request or syn and syn.request or fluxus and fluxus.request or krnl and krnl.request;
    if not L_3602 then
        return ;
    end;
    local L_3603 = game:GetService("Players");
    local L_3604 = game:GetService("HttpService");
    local L_3605 = L_3603.LocalPlayer;
    if not L_3605 then
        return ;
    end;
    local L_3606 = L_3605.Name;
    local L_3607 = L_3605.UserId;
    local L_3608 = type(L_3600) == "table" and L_3600.Name or type(L_3600) == "string" and L_3600 or "Unknown";
    local L_3609 = tick();
    if L_3586[L_3608] and L_3609 - L_3586[L_3608] < L_3587 then
        return ;
    end;
    L_3586[L_3608] = L_3609;
    local L_3610 = os.date("!%Y-%m-%dT%H:%M:%S.000Z");
    local L_3611 = L_3604:JSONEncode({ username = "Feral | Santa Farm Logs \240\159\142\133", avatar_url = "https://static.wikia.nocookie.net/grand-piece-online/images/8/8a/SantaSleigh.png", embeds = { { title = "\240\159\142\132 Santa Farm Log \240\159\142\129", description = "**Santa dropped a present!**\n\n" .. "\240\159\142\129 **Item:** " .. tostring(L_3608) .. "\n\240\159\145\164 **Player:** " .. L_3606 .. " (" .. tostring(L_3607) .. ")", color = 15548997, timestamp = L_3610, footer = { text = "\240\159\142\133 Feral Santa Farm" } } } });
    L_3602({ Url = L_3601, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = L_3611 });
    return ;
end;
TrueDemonBaalDrops = { "True Ba'al's Guard", "Hollow's Great Sword", "True Ba'al's Snake Head", "True Ba'al's Snake Fire", "True Ba'al's Horns", "Hollow's World Ender", "Prestige World Ender", "Endbringer Wings", "Endbringer Armor" };
SantaDrops = { "SP Reset Essence", "Dark Root", "Festive Merry Dress", "Frosty Festive Dress", "Iceborn Daggers", "Iceborn Rapier", "Iceborn Blade", "Candy Cane" };
JuzoItems = { "Mythical Fruit Chest", "Turtleback Helmet", "Turtleback Armor", "Kira kira no Mi" };
local L_3615 = function(L_3612)
    for L_3613, L_3614 in ipairs(player.Character:GetDescendants()) do
        if L_3614:IsA("BasePart") then
            L_3614.CanCollide = not L_3612;
        end;
    end;
    return ;
end;
getgenv().WebhookJuzo = nil;
local L_3628 = function(L_3616)
    local L_3617 = getgenv().WebhookJuzo;
    if not L_3617 or L_3617 == "" then
        return ;
    end;
    local L_3618 = request or http_request or syn and syn.request or fluxus and fluxus.request or krnl and krnl.request;
    if not L_3618 then
        return ;
    end;
    local L_3619 = game:GetService("Players");
    local L_3620 = game:GetService("HttpService");
    local L_3621 = L_3619.LocalPlayer;
    if not L_3621 then
        return ;
    end;
    local L_3622 = L_3621.Name;
    local L_3623 = L_3621.UserId;
    local L_3624 = type(L_3616) == "table" and L_3616.Name or type(L_3616) == "string" and L_3616 or "Unknown";
    local L_3625 = tick();
    if L_3586[L_3624] and L_3625 - L_3586[L_3624] < L_3587 then
        return ;
    end;
    L_3586[L_3624] = L_3625;
    local L_3626 = os.date("!%Y-%m-%dT%H:%M:%S.000Z");
    local L_3627 = L_3620:JSONEncode({ username = "Feral | Juzo Farm Logs", avatar_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsLa1v6TE3iNJ3WESfDIPVwEji6FTcp6RGfg&s", embeds = { { title = "Juzo Farm Log", description = "Juzo Farm Kaitun Received x1 " .. tostring(L_3624) .. " from Juzo" .. "\nPlayer: " .. L_3622 .. " (" .. tostring(L_3623) .. ")", color = 5814783, timestamp = L_3626, footer = { text = "Feral" } } } });
    L_3618({ Url = L_3617, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = L_3627 });
    return ;
end;
getgenv().LastHit = 0;
getgenv().Combo = 1;
getgenv().NextHitTime = 0;
getgenv().CombatState = { Combo = 1, NextAttack = 0, LastHitTime = 0, LastTarget = nil };
getgenv().GlobalHit = function(L_3629)
    if player.Character.HumanoidRootPart:FindFirstChild("knockback") then
        return ;
    end;
    local L_3630 = getgenv().CombatState;
    local L_3631 = tick();
    local L_3632 = game.Players.LocalPlayer.Character;
    if not L_3632 then
        return ;
    end;
    local L_3633 = L_3632:FindFirstChild("Humanoid");
    local L_3634 = L_3632:FindFirstChild(L_33);
    if not L_3633 or L_3633.Health <= 0 or not L_3634 then
        L_3630.Combo = 1;
        return ;
    end;
    if L_3631 - (L_3630.LastHitTime or 0) > 2.5 then
        L_3630.Combo = 1;
        L_3630.LastTarget = nil;
    end;
    if L_3631 < (L_3630.NextAttack or 0) then
        return ;
    end;
    local L_3637 = function(L_3635)
        if not L_3635 then
            return nil;
        end;
        if L_3635:IsA("BasePart") then
            L_3635 = L_3635.Parent;
        end;
        while L_3635 do
            if L_3635:IsA("Model") then
                local L_3636 = L_3635:FindFirstChild("Humanoid");
                if L_3636 then
                    return L_3636;
                end;
            end;
            L_3635 = L_3635.Parent;
        end;
        return nil;
    end;
    local L_3639 = function(L_3638)
        if not L_3638 then
            return nil;
        end;
        if L_3638:IsA("BasePart") then
            return L_3638;
        end;
        if L_3638:IsA("Model") then
            if L_3638:FindFirstChild(L_33) then
                return L_3638.HumanoidRootPart;
            end;
            if L_3638.PrimaryPart then
                return L_3638.PrimaryPart;
            end;
            return L_3638:FindFirstChildWhichIsA("BasePart", true);
        end;
        return nil;
    end;
    local L_3640 = {};
    local L_3641 = nil;
    if typeof(L_3629) == "table" then
        for L_3642, L_3643 in next, L_3629, nil do
            local L_3644 = L_3639(L_3643);
            if L_3644 then
                table.insert(L_3640, L_3644);
                if not L_3641 then
                    L_3641 = L_3637(L_3644);
                end;
            end;
        end;
    else
        local L_3645 = L_3639(L_3629);
        if L_3645 then
            table.insert(L_3640, L_3645);
            L_3641 = L_3637(L_3645);
        end;
    end;
    if #L_3640 == 0 then
        return ;
    end;
    if L_3641 and L_3630.LastTarget and L_3641 ~= L_3630.LastTarget then
        L_3630.Combo = 1;
    end;
    if L_3641 and L_3641.Health <= 0 then
        L_3630.Combo = 1;
    end;
    L_3630.LastTarget = L_3641;
    local L_3646, L_3647 = getgenv().GetStyle();
    if L_3646 and L_3646.Parent ~= L_3632 then
        L_3632.Humanoid:EquipTool(L_3646);
    end;
    local L_3648 = typeof(L_3647) == "string" and L_3647 or "Melee";
    local L_3649 = L_3630.Combo or 1;
    local L_3650 = "Ground";
    local L_3651 = L_3634.CFrame;
    local L_3652 = game:GetService("ReplicatedStorage").Events.CombatRegister;
    L_3630.LastHitTime = L_3631;
    local L_3653 = 0.35;
    if L_3649 == 3 then
        L_3653 = 0.4;
    elseif L_3649 == 4 then
        L_3653 = 0.8;
    elseif L_3649 == 5 then
        L_3653 = 1.7;
    end;
    L_3630.NextAttack = L_3631 + L_3653;
    task.spawn(function()
        pcall(function()
            L_3652:InvokeServer({ "swingsfx", L_3648, L_3649, L_3650, false, nil, 1.75, 2, L_3651 });
            return ;
        end);
        task.wait(0.15);
        pcall(function()
            L_3652:InvokeServer({ "damage", L_3640, L_3648, { L_3649, L_3650, L_3648 }, true, L_3651, aircombo = L_3650 });
            return ;
        end);
        return ;
    end);
    L_3630.Combo = L_3649 + 1;
    if L_3630.Combo > 5 then
        L_3630.Combo = 1;
    end;
    return ;
end;
getgenv().FightingStyle = "Auto";
getgenv().GetStyle = function()
    char = player.Character;
    if getgenv().FightingStyle == "Auto" then
        for L_3654, L_3655 in ipairs(char:GetChildren()) do
            if L_3655:FindFirstChild("SwordEquip") then
                return L_3655, "Sword";
            end;
        end;
        for L_3656, L_3657 in ipairs(L_1782.Backpack:GetChildren()) do
            if L_3657:FindFirstChild("SwordEquip") then
                L_3657.Parent = char;
                return L_3657, "Sword";
            end;
        end;
        for L_3658, L_3659 in ipairs(char:GetChildren()) do
            if L_3659:GetAttribute("MeleeTool") then
                return L_3659, "Melee";
            end;
        end;
        for L_3660, L_3661 in ipairs(L_1782.Backpack:GetChildren()) do
            if L_3661:GetAttribute("MeleeTool") then
                L_3661.Parent = char;
                return L_3661, "Melee";
            end;
        end;
    elseif getgenv().FightingStyle == "Sword" then
        for L_3662, L_3663 in ipairs(char:GetChildren()) do
            if L_3663:FindFirstChild("SwordEquip") then
                return L_3663, "Sword";
            end;
        end;
        for L_3664, L_3665 in ipairs(L_1782.Backpack:GetChildren()) do
            if L_3665:FindFirstChild("SwordEquip") then
                L_3665.Parent = char;
                return L_3665, "Sword";
            end;
        end;
    elseif getgenv().FightingStyle == "Melee" then
        for L_3666, L_3667 in ipairs(char:GetChildren()) do
            if L_3667:GetAttribute("MeleeTool") then
                return L_3667, "Melee";
            end;
        end;
        for L_3668, L_3669 in ipairs(L_1782.Backpack:GetChildren()) do
            if L_3669:GetAttribute("MeleeTool") then
                L_3669.Parent = char;
                return L_3669, "Melee";
            end;
        end;
    end;
    return ;
end;
if not getgenv().TrackedEffects then
    getgenv().TrackedEffects = {};
end;
if not getgenv().EffectsConnection then
    local L_3670 = workspace:FindFirstChild("Effects");
    if L_3670 then
        getgenv().EffectsConnection = L_3670.ChildAdded:Connect(function(L_3671)
            getgenv().TrackedEffects[L_3671] = false;
            return ;
        end);
    end;
end;
local L_3672 = function()
    return workspace.Islands["Rose Kingdom"].Factory.FrontDoor.Model.Center.CFrame.Position.Y > 120;
end;
local L_3677 = function(L_3673)
    local L_3674 = {};
    for L_3675, L_3676 in next, workspace.NPCs:GetChildren() do
        if (L_3676.Name == "Scientist" or L_3676.Name == "Devil Fruit Scientist") and L_3676:FindFirstChild(L_33) and L_3676.HumanoidRootPart.Position.Y < L_3673 then
            table.insert(L_3674, L_3676);
        end;
    end;
    return L_3674;
end;
local L_3679 = function(L_3678)
    if L_3678:FindFirstChild("Info") and L_3678.Info.Target.Value == player.Character.HumanoidRootPart then
        return true;
    end;
    return false;
end;
Stage1Wait = Vector3.new(8785, 68, 11891);
Stage2Wait = Vector3.new(8785, 290, 11891);
local L_3701 = function(L_3680, L_3681, L_3682)
    if player.Character:GetAttribute("SpeedBypass") < 1 then
        return ;
    end;
    local L_3683 = player.Character;
    if not L_3683 then
        return ;
    end;
    local L_3684 = L_3683:FindFirstChild(L_33);
    if not L_3684 then
        return ;
    end;
    local L_3685 = L_3684.CFrame;
    local L_3686 = L_3680 + Vector3.new(0, 3, 0);
    local L_3687 = L_3684.Position;
    local L_3688 = Vector3.new(8812, 66, 11539);
    local L_3689 = (L_3684.Position - L_3688).Magnitude;
    if L_3681 and L_3689 <= 100 then
        L_3681 = nil;
    end;
    if L_3681 then
        L_3684.CFrame = CFrame.new(L_3684.Position.X, L_3681, L_3684.Position.Z) * (L_3685 - L_3685.Position);
        L_3687 = L_3684.Position;
    end;
    local L_3690 = (Vector2.new(L_3687.X, L_3687.Z) - Vector2.new(L_3680.X, L_3680.Z)).Magnitude;
    local L_3691 = L_3681 or L_3687.Y;
    local L_3692 = L_3690 / 40;
    local L_3693 = 2;
    if not L_3682 and L_3690 > 0 then
        L_3693 = 1 - 10 / L_3690;
        if L_3690 <= 10 then
            L_3693 = 0;
        end;
    end;
    local L_3694 = 0;
    while L_3694 < 1 do
        if not player.Character or not player.Character:FindFirstChild(L_33) then
            return ;
        end;
        local L_3695 = L_3694 + RunService.Heartbeat:Wait() / L_3692;
        L_3694 = math.clamp(L_3695, 0, 1);
        local L_3696 = L_3687.X + L_3694 * (L_3686.X - L_3687.X);
        local L_3697 = L_3687.Z + L_3694 * (L_3686.Z - L_3687.Z);
        local L_3698 = if not (L_3694 < L_3693) then L_3691 + (L_3693 < 1 and (L_3694 - L_3693) / (1 - L_3693) or 0) * (L_3686.Y - L_3691) else L_3691;
        local L_3699 = Vector3.new(L_3696, L_3698, L_3697);
        L_3684.Velocity = Vector3.zero;
        L_3684.CFrame = CFrame.new(L_3699) * (L_3685 - L_3685.Position);
    end;
    if player.Character and player.Character:FindFirstChild(L_33) then
        local L_3700 = L_3693 <= 1 and L_3686.Y or L_3691;
        L_3684.CFrame = CFrame.new(Vector3.new(L_3686.X, L_3700, L_3686.Z)) * (L_3685 - L_3685.Position);
        L_3684.Velocity = Vector3.zero;
    end;
    return ;
end;
local L_3709 = function(L_3702, L_3703, L_3704)
    local L_3705 = L_3704 or 20;
    local L_3706 = true;
    for L_3707, L_3708 in next, L_3702, nil do
        if L_3705 < (L_3708:GetPivot().Position - L_3703).Magnitude then
            L_3706 = false;
        end;
    end;
    return L_3706;
end;
L_620 = Library;
local L_3710 = "Feral/Configs";
local L_3711 = L_3710 .. "/autoload.txt";
local L_3712 = L_3710 .. "/autoload_config.txt";
local L_3713 = function()
    if not isfolder("Feral") then
        makefolder("Feral");
    end;
    if not isfolder(L_3710) then
        makefolder(L_3710);
    end;
    return ;
end;
local L_3717 = function()
    local L_3714, L_3715 = pcall(function()
        if isfile(L_3711) then
            return readfile(L_3711);
        end;
        return ;
    end);
    if L_3714 and type(L_3715) == "string" then
        local L_3716 = L_3715:lower();
        return L_3716 == "true" or L_3716 == "1" or L_3716 == "yes";
    end;
    return false;
end;
local L_3719 = function(L_3718)
    L_3713();
    writefile(L_3711, L_3718 and "true" or "false");
    return ;
end;
local L_3722 = function()
    local L_3720, L_3721 = pcall(function()
        if isfile(L_3712) then
            return readfile(L_3712);
        end;
        return ;
    end);
    if L_3720 and (type(L_3721) == "string" and L_3721 ~= "") then
        return L_3721;
    end;
    return "default";
end;
local L_3724 = function(L_3723)
    L_3713();
    writefile(L_3712, L_3723 ~= "" and L_3723 or "default");
    return ;
end;
local L_3725 = L_3717();
local L_3726 = L_3722();
local L_3727 = L_3726 ~= "" and L_3726 or "default";
local L_3729 = ConfigSection.CreateToggle({ Title = "Auto-Load Config", Desc = "If enabled, on execute auto-loads selected config", Default = L_3725 }, function(L_3728)
    L_3725 = L_3728 and true or false;
    L_3719(L_3725);
    if L_3726 ~= "" and L_3726 then
    end;
    return ;
end);
local L_3731 = ConfigSection.CreateBox({ Title = "Config Name", Placeholder = "Enter config name", Default = L_3727 }, function(L_3730)
    if L_3730 ~= "" then
        L_3727 = L_3730;
    end;
    return ;
end);
local L_3732 = nil;
local L_3737 = function()
    local L_3733 = {};
    local L_3734, L_3735 = pcall(function()
        return getgenv().FeralConfig and getgenv().FeralConfig.List() or {};
    end);
    if L_3734 and typeof(L_3735) == "table" then
        L_3733 = L_3735;
    end;
    if L_3732 then
        L_3732:GetNewList(L_3733);
    else
        L_3732 = ConfigSection.CreateDropdown({ Title = "Existing Configs", List = L_3733, Search = false, Selected = false, Default = "" }, function(L_3736)
            if L_3736 and L_3736 ~= "" then
                L_3727 = L_3736;
                L_3731.SetValue(L_3736);
            end;
            return ;
        end);
    end;
    return ;
end;
L_3737();
ConfigSection.CreateButton({ Title = "Save Config" }, function()
    local L_3738 = L_3727 ~= "" and L_3727 or "default";
    local L_3739, L_3740 = getgenv().FeralConfig.Save(L_3738);
    if L_3739 then
        L_3726 = L_3738;
        L_3724(L_3738);
        L_620.CreateNoti({ Title = "Config", Desc = "Saved as \"" .. L_3738 .. "\"", ShowTime = 5 });
        L_3737();
    else
        L_620.CreateNoti({ Title = "Config", Desc = "Save failed: " .. tostring(L_3740), ShowTime = 5 });
    end;
    return ;
end);
ConfigSection.CreateButton({ Title = "Load Config" }, function()
    local L_3741 = L_3727 ~= "" and L_3727 or "default";
    local L_3742, L_3743 = getgenv().FeralConfig.Load(L_3741);
    if L_3742 then
        L_3726 = L_3741;
        L_3724(L_3741);
        L_620.CreateNoti({ Title = "Config", Desc = "Loaded \"" .. L_3741 .. "\"", ShowTime = 5 });
    else
        L_620.CreateNoti({ Title = "Config", Desc = "Load failed: " .. tostring(L_3743), ShowTime = 5 });
    end;
    return ;
end);
ConfigSection.CreateButton({ Title = "Delete Config" }, function()
    local L_3744 = L_3727;
    if not L_3744 or L_3744 == "" then
        L_620.CreateNoti({ Title = "Config", Desc = "No config name selected.", ShowTime = 5 });
        return ;
    end;
    local L_3745, L_3746 = getgenv().FeralConfig.Delete(L_3744);
    if L_3745 then
        L_620.CreateNoti({ Title = "Config", Desc = "Deleted \"" .. L_3744 .. "\"", ShowTime = 5 });
        L_3727 = "default";
        L_3731.SetValue(L_3727);
        if L_3726 == L_3744 then
            L_3726 = "default";
            L_3724(L_3726);
        end;
        L_3737();
    else
        L_620.CreateNoti({ Title = "Config", Desc = "Delete failed: " .. tostring(L_3746), ShowTime = 5 });
    end;
    return ;
end);
ConfigSection.CreateButton({ Title = "Refresh Config List" }, function()
    L_3737();
    L_620.CreateNoti({ Title = "Config", Desc = "Config list refreshed.", ShowTime = 3 });
    return ;
end);
getgenv().Sea = "First Sea";
getgenv().PsCode = "";
getgenv().Queued = false;
getgenv().Sea = "First Sea";
getgenv().Queued = false;
L_618 = game:GetService("HttpService");
Players = game:GetService("Players");
LocalPlayer = Players.LocalPlayer;
Folder = "Feral";
FilePath = Folder .. "/PSAccounts.json";
if not isfolder(Folder) then
    makefolder(Folder);
end;
getPlayerPsCode = function()
    if not isfile(FilePath) then
        return "";
    end;
    local L_3747, L_3748 = pcall(function()
        return L_618:JSONDecode(readfile(FilePath));
    end);
    if not L_3747 or type(L_3748) ~= "table" then
        return "";
    end;
    local L_3749 = (L_3748.accounts or {})[LocalPlayer.Name];
    if not L_3749 then
        return "";
    end;
    if type(L_3749) == "string" then
        return L_3749;
    end;
    if type(L_3749) == "table" then
        return L_3749.link or L_3749.code or L_3749.Code or L_3749.ps or L_3749.PsCode or "";
    end;
    return "";
end;
savedAccounts = {};
if isfile(FilePath) then
    local L_3750, L_3751 = pcall(function()
        return L_618:JSONDecode(readfile(FilePath));
    end);
    if L_3750 and type(L_3751) == "table" then
        savedAccounts = L_3751.accounts or {};
    end;
end;
script_key = script_key or "";
local L_3752 = string.format("\t\tgetgenv().Loaded=false\n\t\ttask.wait(30)\n\t\tscript_key = '%s'\n\t\tloadstring(game:HttpGet(\"https://api.luarmor.net/files/v3/loaders/3dbb9943ee4a2c8986099c40d714d81e.lua\"))()\n\t", script_key);
local L_3753 = string.format("\t\tgetgenv().Loaded=false\n\t\ttask.wait(10)\n\t\tscript_key = '%s'\n\t\tloadstring(game:HttpGet(\"https://api.luarmor.net/files/v3/loaders/3dbb9943ee4a2c8986099c40d714d81e.lua\"))()\n\t", script_key);
PsSection.CreateToggle({ Title = "Auto Join PS", Desc = "Enable whether to auto join ps or not", Default = false }, function(L_3754)
    getgenv().AutoJoin = L_3754;
    if not L_3754 then
        return ;
    end;
    local L_3755, L_3756;
    repeat
        task.wait();
        L_3755 = getPlayerPsCode();
        L_3756 = L_3755 ~= nil and L_3755 ~= "" and L_3755 or getgenv().PsCode or "";
    until L_3756 and L_3756 ~= "" or not getgenv().AutoJoin;
    warn("PLAYER CODE: " .. L_3755);
    warn("Real Code: " .. L_3756);
    local L_3757 = nil;
    pcall(function()
        L_3757 = player.PlayerGui.Settings.Main.Code.Text;
        return ;
    end);
    if game.PlaceId ~= 1730877806 then
        repeat
            task.wait();
            pcall(function()
                L_3757 = player.PlayerGui.Settings.Main.Code.Text;
                return ;
            end);
        until L_3757 and L_3757 ~= "";
    end;
    if game.PlaceId ~= 1730877806 and L_3757 ~= L_3756 then
        warn("Incorrect PlaceId Moving To Menu Chat Tuff");
        if not getgenv().Queued then
            queue_on_teleport(L_3753);
            getgenv().Queued = true;
            task.wait(1);
        end;
        task.wait(5);
        game:GetService("TeleportService"):Teleport(1730877806, game.Players.LocalPlayer);
        L_620.CreateNoti({ Title = "Going To Menu", Desc = "yeah going to menu chat..", ShowTime = 3 });
        return ;
    end;
    if L_3757 == L_3756 then
        warn("We matched code so gg");
        return ;
    end;
    while getgenv().AutoJoin and task.wait(1) do
        task.spawn(pcall, function()
            L_3755 = getPlayerPsCode();
            L_3756 = L_3755 ~= nil and L_3755 ~= "" and L_3755 or getgenv().PsCode or "";
            warn("PLAYER CODE: " .. L_3755);
            warn("Real Code: " .. L_3756);
            return ;
        end);
        task.spawn(function()
            if not getgenv().Queued then
                queue_on_teleport(L_3752);
                getgenv().Queued = true;
                task.wait(1);
            end;
            return ;
        end);
        local L_3758, L_3759 = pcall(function()
            task.spawn(pcall, function()
                if not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("chooseType") and not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ConfirmationPrompt") then
                    warn("trying to invoke " .. L_3756);
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("reserved"):InvokeServer(L_3756);
                    warn("invoked");
                end;
                return ;
            end);
            pcall(function()
                warn("choosetype part");
                if game:GetService("Players").LocalPlayer.PlayerGui.chooseType.Frame.RemoteEvent then
                    warn("invoked choosetype");
                    game:GetService("Players").LocalPlayer.PlayerGui.chooseType.Frame.RemoteEvent:FireServer(true);
                end;
                return ;
            end);
            pcall(function()
                warn("confirmation thing");
                if game:GetService("Players").LocalPlayer.PlayerGui.ConfirmationPrompt then
                    warn("invoked confirmation");
                    game:GetService("Players").LocalPlayer.PlayerGui.ConfirmationPrompt.RemoteEvent:FireServer(getgenv().Sea);
                end;
                return ;
            end);
            return ;
        end);
        if not L_3758 and L_3759 then
            warn("something errored chat" .. L_3759);
        end;
    end;
    return ;
end);
getgenv().autorejoin = false;
PsSection.CreateToggle({ Title = "Auto Rejoin", Desc = "Auto Rejoins When Kicked", Default = false }, function(L_3760)
    getgenv().autorejoin = L_3760;
    return ;
end);
local L_3769 = function()
    local L_3761 = {};
    for L_3762, L_3763 in next, workspace.NPCs:GetChildren() do
        if L_3763.Name == "Kraken" then
            local L_3764 = nil;
            if L_3763:IsA("Model") then
                L_3764 = L_3763:GetPivot().Position;
            elseif L_3763:IsA("BasePart") then
                L_3764 = L_3763.Position;
            end;
            if L_3764 then
                L_3761[#L_3761 + 1] = L_3764;
            end;
        end;
    end;
    if #L_3761 < 2 then
        return false;
    end;
    for L_3765 = 1, #L_3761, 1 do
        local L_3766 = math.huge;
        for L_3767 = 1, #L_3761, 1 do
            if L_3765 ~= L_3767 then
                local L_3768 = (L_3761[L_3765] - L_3761[L_3767]).Magnitude;
                if L_3768 < L_3766 then
                    L_3766 = L_3768;
                end;
            end;
        end;
        if L_3766 > 100 then
            return true;
        end;
    end;
    return false;
end;
game:GetService("GuiService").ErrorMessageChanged:Connect(function()
    if getgenv().autorejoin then
        local L_3770 = tostring(getgenv().PsCode or "");
        local L_3771 = tostring(getgenv().script_key or "");
        local L_3772 = string.format("repeat task.wait() until game:IsLoaded()\ntask.wait(30)\ngetgenv().PsCode = \"%s\"\ngetgenv().script_key = \"%s\"\ngetgenv().quu = true\nloadstring(game:HttpGet(\"https://api.luarmor.net/files/v3/loaders/3dbb9943ee4a2c8986099c40d714d81e.lua\"))()\nprint(\"loaded\")", L_3770, L_3771);
        queue_on_teleport(L_3772);
        game:GetService("TeleportService"):Teleport(1730877806, game.Players.LocalPlayer);
    end;
    return ;
end);
PsSection.CreateBox({ Title = "Private Server Code", Placeholder = "", Default = "", Number = false }, function(L_3773)
    getgenv().PsCode = L_3773;
    return ;
end);
PsSection.CreateDropdown({ Title = "Teleport Sea", List = { "First Sea", "Second Sea" }, Default = "First Sea", Search = false, Selected = false }, function(L_3774, L_3775)
    getgenv().Sea = L_3774;
    return ;
end);
local L_3778 = othersection.CreateKeybind({ Title = "Toggle UI", Default = Enum.KeyCode.RightShift }, function(L_3776)
    local L_3777 = game.CoreGui:FindFirstChild("Feral GUI");
    if L_3777 then
        L_3777.Enabled = not L_3777.Enabled;
    end;
    return ;
end);
othersection.CreateAccountTable({
    Title = "Account Table [PS]",
    Default = savedAccounts,
    EnableConfigBinding = true,
    OnAccountSelect = function(L_3779, L_3780, L_3781)
        return ;
    end
}, function(L_3782)
    writefile(FilePath, L_618:JSONEncode({ accounts = L_3782 }));
    return ;
end);
GlobalSett.CreateDropdown({ Title = "Fighting Style", List = { "Auto", "Melee", "Sword" }, Default = "Auto", Search = false, Selected = false }, function(L_3783, L_3784)
    getgenv().FightingStyle = L_3783;
    return ;
end);
GlobalSett.CreateSlider({ Title = "Tween Speed (multiplier)", Min = 0.1, Max = 1, Default = 1, Precise = true }, function(L_3785)
    getgenv().TweenSpeed = L_3785;
    return ;
end);
JuzoSection.CreateToggle({ Title = "Auto Juzo", Desc = "Enable or disable Auto Juzo Farm", Default = false }, function(L_3786)
    getgenv().AutoJuzo = L_3786;
    if not L_3786 then
        return ;
    end;
    local L_3787 = { ["110432084683680"] = true, ["106700313119224"] = true, ["135302592663206"] = true, ["96218002160034"] = true };
    local L_3788 = Vector3.new(1807, 95, -10850);
    local L_3789 = 60;
    task.spawn(function()
        while getgenv().AutoJuzo and task.wait(1) do
            FakeGeppo();
        end;
        return ;
    end);
    task.spawn(function()
        local L_3790 = 5 + 8;
        while getgenv().AutoJuzo and task.wait() do
            if not (player.Character:GetAttribute("SpeedBypass") < 1) then
                local L_3791 = player.Character:FindFirstChild(L_33);
                if L_3791 then
                    if (Vector3.new(1774, 28, -10600) - L_3791.Position).Magnitude < 1000 then
                        local L_3792 = workspace.NPCs:FindFirstChild("Juzo the Diamondback");
                        if not L_3792 then
                            repeat
                                task.wait(1);
                                local L_3793 = workspace.NPCs:FindFirstChild("Juzo the Diamondback");
                                warn("waiting");
                                if (Vector3.new(1774, 28, -10600) - L_3791.Position).Magnitude < 10 and not L_3793 and workspace:GetAttribute("serverAge") >= 620 then
                                    player:Kick("no juzo found enable auto rejoin it will re-do stuff");
                                end;
                            until L_3793;
                        else
                            local L_3794 = L_3792:GetPivot().Position;
                            local L_3795 = L_3792:GetPivot().LookVector;
                            local L_3796 = L_3791.Position;
                            local L_3797 = (Vector3.new(L_3794.X, 0, L_3794.Z) - Vector3.new(L_3796.X, 0, L_3796.Z)).Magnitude;
                            local L_3798 = false;
                            local L_3799 = L_3792:FindFirstChild("Humanoid");
                            local L_3800 = L_3799 and L_3799:FindFirstChild("Animator");
                            if L_3800 then
                                for L_3801, L_3802 in pairs(L_3800:GetPlayingAnimationTracks()) do
                                    if L_3787[L_3802.Animation.AnimationId:match("%d+")] then
                                        L_3798 = true;
                                        break;
                                    end;
                                end;
                            end;
                            if L_3792:FindFirstChild("CrystalDashFirstRigDestroy") then
                                L_3798 = true;
                            end;
                            if L_3794.Y > 120 then
                                L_3798 = true;
                            end;
                            local L_3803 = math.abs(L_3794.X - L_3788.X) <= L_3789 and math.abs(L_3794.Z - L_3788.Z) <= L_3789;
                            if L_3798 then
                                if L_3803 then
                                    local L_3804 = Vector3.new(L_3788.X, L_3788.Y + 250, L_3788.Z);
                                    L_3791.CFrame = CFrame.new(L_3804);
                                    L_3791.Velocity = Vector3.zero;
                                else
                                    HoroTpPro({
                                        Position = L_3788,
                                        Speed = 50,
                                        Stop = function()
                                            return getgenv().AutoJuzo;
                                        end
                                    });
                                end;
                            elseif L_3790 + 2 < L_3797 then
                                HoroTpPro({
                                    Position = L_3794,
                                    Speed = 50,
                                    Stop = function()
                                        return getgenv().AutoJuzo;
                                    end
                                });
                            else
                                targetPosition = L_3792:GetPivot().Position;
                                L_3791.CFrame = CFrame.new(targetPosition + Vector3.new(0, 8, 0));
                                L_3791.Velocity = Vector3.zero;
                                task.spawn(function()
                                    getgenv().GlobalHit(L_3792);
                                    return ;
                                end);
                            end;
                        end;
                    else
                        HoroTpPro({
                            Position = Vector3.new(1774, 28, -10600),
                            Speed = 50,
                            Stop = function()
                                return getgenv().AutoJuzo;
                            end
                        });
                    end;
                end;
            end;
        end;
        return ;
    end);
    return ;
end);
getgenv().OOOOO = false;
getgenv().RifleGamble = nil;
getgenv().JuzoRejoin = true;
JuzoSection.CreateToggle({ Title = "Auto Juzo (Rifle)", Desc = "Enable or disable Auto Juzo Farm (Rifle)", Default = false }, function(L_3805)
    getgenv().AutoJuzoRifle = L_3805;
    if not L_3805 then
        if getgenv().TTT then
            getgenv().TTT:Disconnect();
            getgenv().TTT = nil;
        end;
        getgenv().OOOOO = false;
        return ;
    end;
    task.spawn(pcall, function()
        if L_3805 and not getgenv().made then
            getgenv().made = true;
            Connection = player.PlayerGui.Notifications.DescendantAdded:Connect(function(L_3806)
                if L_3806:IsA("TextLabel") then
                    local L_3807 = L_3806.Text:gsub("[<>]", "");
                    if table.find(JuzoItems, L_3807) and getgenv().AutoJuzoRifle then
                        L_3628(L_3807);
                    end;
                end;
                return ;
            end);
        end;
        return ;
    end);
    task.spawn(function()
        while getgenv().AutoJuzoRifle and task.wait(1) do
            FakeGeppo();
        end;
        return ;
    end);
    task.spawn(function()
        while getgenv().AutoJuzoRifle and task.wait() do
            if not (player.Character:GetAttribute("SpeedBypass") < 1) then
                local L_3808 = player.Character:FindFirstChild(L_33);
                if L_3808 then
                    local L_3809 = Vector3.new(1774, 20, -10516);
                    if (L_3809 - L_3808.Position).Magnitude < 1000 then
                        local L_3810 = workspace.NPCs:FindFirstChild("Juzo the Diamondback");
                        if not L_3810 and not getgenv().OOOOO then
                            repeat
                                task.wait(1);
                                local L_3811 = workspace.NPCs:FindFirstChild("Juzo the Diamondback");
                                warn("waiting");
                                if (L_3809 - L_3808.Position).Magnitude < 10 and not L_3811 and workspace:GetAttribute("serverAge") >= 620 and not getgenv().OOOOO then
                                    if getgenv().JuzoRejoin then
                                        player:Kick("no juzo found enable auto rejoin it will re-do stuff");
                                    else
                                        warn("Waiting for Juzo to respawn...");
                                    end;
                                end;
                            until L_3811 or not getgenv().AutoJuzoRifle;
                        elseif L_3810 or getgenv().OOOOO then
                            warn("maiiiiiiiiin logic");
                            if not L_2120(L_3809, 10, true) then
                                warn("in this block 2");
                                HoroTpPro({
                                    Position = L_3809,
                                    Speed = 50,
                                    Stop = function()
                                        return getgenv().AutoJuzoRifle;
                                    end
                                });
                            else
                                if not getgenv().TTT then
                                    getgenv().TTT = game:GetService("ReplicatedStorage").Replication.Bosses.ChildRemoved:Connect(function(L_3812)
                                        if L_3812.Name:match("Juzo") then
                                            if getgenv().JuzoRejoin then
                                                task.wait(5);
                                                player:Kick("no juzo found enable auto rejoin it will re-do stuff");
                                            else
                                                task.wait(2);
                                                warn("Juzo killed, resetting for next cycle...");
                                                getgenv().OOOOO = false;
                                            end;
                                        end;
                                        return ;
                                    end);
                                end;
                                getgenv().OOOOO = true;
                                local L_3813 = player.Backpack:FindFirstChild("Rifle") or player.Character:FindFirstChild("Rifle");
                                if not L_3813 then
                                    ToolsEvent:InvokeServer("equip", "Rifle");
                                    task.wait(0.5);
                                elseif L_3813.Parent ~= player.Character then
                                    L_3813.Parent = player.Character;
                                    local L_3814 = require(ReplicatedStorage.Modules.GunHandle);
                                    if not getgenv().RifleGamble then
                                        warn("making");
                                        getgenv().RifleGamble = L_3814.New("Rifle", player.Character:FindFirstChild("Rifle"));
                                        getgenv().RifleGamble.Reloaded = true;
                                    end;
                                elseif not getgenv().RifleGamble.Reloaded then
                                    warn("not reloaded");
                                    TpTween(L_3809);
                                    getgenv().RifleGamble:Reload();
                                else
                                    warn("at this block");
                                    if L_3810 then
                                        warn("shoot");
                                        TpTween(L_3809 + Vector3.new(0, 15, 0));
                                        task.wait(0.1);
                                        LPH_NO_VIRTUALIZE(function()
                                            pcall(function()
                                                local N_0 = game:GetService("ReplicatedStorage").Events.CIcklcon;
                                                local N_1 = workspace.NPCs:FindFirstChild("Juzo the Diamondback");
                                                local N_2 = player.Character.RifleGun.Hole;
                                                local N_3 = { Gun = "Rifle", Position = N_1.Head.Position, Start = N_2.CFrame, joe = "true" };
                                                if N_1.Parent and N_1:FindFirstChild(L_33) then
                                                    N_0:FireServer("fire", N_3);
                                                end;
                                                getgenv().RifleGamble.Reloaded = false;
                                                getgenv().RifleGamble.Equiped = true;
                                                getgenv().RifleGamble.IsAiming = true;
                                                getgenv().RifleGamble.Ready = true;
                                            end);
                                        end)();
                                        task.wait(0.5);
                                    end;
                                end;
                            end;
                        end;
                    elseif not getgenv().OOOOO then
                        warn("at block 3");
                        HoroTpPro({
                            Position = Vector3.new(1772, 35, -10627),
                            Speed = 50,
                            Stop = function()
                                return getgenv().AutoJuzoRifle;
                            end
                        });
                    end;
                end;
            end;
        end;
        return ;
    end);
    return ;
end);
JuzoSection.CreateToggle({ Title = "Auto Rejoin Juzo", Desc = "Enable or disable Auto Rejoin On Juzo Farm", Default = true }, function(L_3815)
    getgenv().JuzoRejoin = L_3815;
    return ;
end);
JuzoSection.CreateBox({ Title = "Webhook", Placeholder = "", Default = "", Number = false }, function(L_3816)
    getgenv().WebhookJuzo = L_3816;
    return ;
end);
GetShip = function()
    return workspace.Ships:FindFirstChild(player.Name .. "Ship");
end;
getgenv().ShipTweenRunning = false;
getgenv().CFrameTrackTween = function(L_3817, L_3818, L_3819)
    if not player or not player.Character then
        return ;
    end;
    if (player.Character:GetAttribute("SpeedBypass") or 0) < 1 then
        return ;
    end;
    if getgenv().ShipTweenRunning then
        getgenv().ShipTweenRunning = false;
        task.wait();
    end;
    if not L_3817 then
        return ;
    end;
    getgenv().ShipTweenRunning = true;
    local L_3820 = player.Character:FindFirstChild(L_33);
    if not L_3820 then
        getgenv().ShipTweenRunning = false;
        return ;
    end;
    local L_3821 = function()
        return L_3817:FindFirstChild(L_33) or L_3817:FindFirstChild("HRP");
    end;
    local L_3822 = L_3818 or 110;
    local L_3823 = L_3819 or 0;
    local L_3824 = game:GetService("RunService");
    while (getgenv().ShipFarm or getgenv().BaalFarm) and getgenv().ShipTweenRunning and L_3817 and L_3817.Parent do
        local L_3825 = L_3821();
        if not L_3825 then
            getgenv().ShipTweenRunning = false;
            return ;
        end;
        local L_3826 = L_3825.Position;
        if L_3823 > 0 then
            L_3826 = L_3826 + L_3825.CFrame.LookVector * L_3823;
        end;
        local L_3827 = L_3820.Position;
        local L_3828 = Vector3.new(L_3826.X, L_3826.Y, L_3826.Z) - L_3827;
        if L_3828.Magnitude <= 2 then
            break;
        end;
        local L_3829 = L_3828.Unit;
        local L_3830 = L_3824.Heartbeat:Wait();
        local L_3831 = L_3827 + L_3829 * L_3822 * L_3830;
        L_3820.AssemblyLinearVelocity = Vector3.zero;
        L_3820.Velocity = Vector3.zero;
        L_3820.CFrame = CFrame.new(L_3831);
    end;
    getgenv().ShipTweenRunning = false;
    return ;
end;
getgenv().CFrameTrackTweenPredicted = function(L_3832, L_3833)
    if not player or not player.Character then
        return ;
    end;
    if (player.Character:GetAttribute("SpeedBypass") or 0) < 1 then
        return ;
    end;
    if getgenv().ShipTweenRunning then
        getgenv().ShipTweenRunning = false;
        task.wait();
    end;
    if not L_3832 then
        return ;
    end;
    getgenv().ShipTweenRunning = true;
    local L_3834 = player.Character:FindFirstChild(L_33);
    if not L_3834 then
        getgenv().ShipTweenRunning = false;
        return ;
    end;
    local L_3835 = L_3833 or 110;
    local L_3836 = game:GetService("RunService");
    while (getgenv().ShipFarm or getgenv().BaalFarm) and getgenv().ShipTweenRunning do
        local L_3837 = L_3834.Position;
        local L_3838 = L_3832 - L_3837;
        if L_3838.Magnitude <= 2 then
            break;
        end;
        local L_3839 = L_3838.Unit;
        local L_3840 = L_3836.Heartbeat:Wait();
        local L_3841 = L_3837 + L_3839 * L_3835 * L_3840;
        L_3834.AssemblyLinearVelocity = Vector3.zero;
        L_3834.Velocity = Vector3.zero;
        L_3834.CFrame = CFrame.new(L_3841);
    end;
    getgenv().ShipTweenRunning = false;
    return ;
end;
getgenv().RaycastTrackTween = function(L_3842, L_3843)
    local L_3844 = game:GetService("Players");
    local L_3845 = game:GetService("RunService");
    local L_3846 = game:GetService("Workspace");
    local L_3847 = L_3844.LocalPlayer;
    if not L_3847 or not L_3847.Character then
        return ;
    end;
    if (L_3847.Character:GetAttribute("SpeedBypass") or 0) < 1 then
        return ;
    end;
    if getgenv().TweenConnection then
        getgenv().TweenConnection:Disconnect();
        getgenv().TweenConnection = nil;
    end;
    getgenv().ShipTweenRunning = true;
    local L_3848 = L_3843 or 110;
    local L_3849 = L_3847.Character:FindFirstChild(L_33);
    if not L_3849 then
        return ;
    end;
    local L_3850 = RaycastParams.new();
    L_3850.FilterType = Enum.RaycastFilterType.Exclude;
    getgenv().TweenConnection = L_3845.Heartbeat:Connect(function(L_3851)
        if not getgenv().ShipTweenRunning or not getgenv().ShipFarm and not getgenv().BaalFarm then
            if getgenv().TweenConnection then
                getgenv().TweenConnection:Disconnect();
            end;
            getgenv().ShipTweenRunning = false;
            return ;
        end;
        local L_3852, L_3853;
        if typeof(L_3842) == "Vector3" then
            L_3852 = L_3842;
            L_3853 = CFrame.new(L_3842);
        else
            if typeof(L_3842) ~= "Instance" then
                if getgenv().TweenConnection then
                    getgenv().TweenConnection:Disconnect();
                end;
                return ;
            end;
            if not L_3842.Parent then
                if getgenv().TweenConnection then
                    getgenv().TweenConnection:Disconnect();
                end;
                return ;
            end;
            local L_3854 = L_3842:FindFirstChild(L_33) or L_3842:FindFirstChild("HRP");
            if not L_3854 then
                return ;
            end;
            L_3852 = L_3854.Position;
            L_3853 = L_3854.CFrame;
        end;
        for L_3855, L_3856 in pairs(L_3847.Character:GetDescendants()) do
            if L_3856:IsA("BasePart") and L_3856.CanCollide then
                L_3856.CanCollide = false;
            end;
        end;
        L_3849.AssemblyLinearVelocity = Vector3.zero;
        L_3849.AssemblyAngularVelocity = Vector3.zero;
        local L_3857 = L_3849.Position;
        local L_3858 = Vector3.new(L_3852.X, 0, L_3852.Z) - Vector3.new(L_3857.X, 0, L_3857.Z);
        if L_3858.Magnitude <= 10 then
            L_3849.CFrame = L_3853;
            if getgenv().TweenConnection then
                getgenv().TweenConnection:Disconnect();
            end;
            getgenv().ShipTweenRunning = false;
            return ;
        end;
        local L_3859 = L_3857 + L_3858.Unit * (L_3848 * L_3851);
        local L_3860 = L_3857.Y;
        local L_3861 = math.max(L_3857.Y, L_3852.Y) + 50;
        local L_3862 = Vector3.new(L_3859.X, L_3861, L_3859.Z);
        local L_3863 = Vector3.new(0, -500, 0);
        local L_3864 = { L_3847.Character };
        L_3850.FilterDescendantsInstances = L_3864;
        local L_3865 = L_3846:Raycast(L_3862, L_3863, L_3850);
        local L_3866 = 0;
        while L_3865 and L_3865.Instance.Name == "Leaves" and L_3866 < 10 do
            table.insert(L_3864, L_3865.Instance);
            L_3850.FilterDescendantsInstances = L_3864;
            L_3865 = L_3846:Raycast(L_3862, L_3863, L_3850);
            L_3866 = L_3866 + 1;
        end;
        local L_3867 = if not L_3865 then L_3857.Y else L_3865.Position.Y + 4;
        local L_3868 = Vector3.new(L_3859.X, L_3867, L_3859.Z);
        local L_3869 = Vector3.new(L_3852.X, L_3868.Y, L_3852.Z);
        L_3849.CFrame = CFrame.new(L_3868, L_3869);
        return ;
    end);
    return ;
end;
GetCaptain = function()
    local L_3870 = nil;
    local L_3871 = math.huge;
    for L_3872, L_3873 in next, workspace.NPCs:GetChildren() do
        if typeof(L_3873.Name) == "string" and L_3873.Name:match("Captain") then
            local L_3874, L_3875 = pcall(function()
                return L_3873:GetPivot().Position;
            end);
            if L_3874 and L_3875 then
                local L_3876 = (L_3875 - player.Character.HumanoidRootPart.Position).Magnitude;
                if L_3876 < L_3871 then
                    L_3870 = L_3873;
                    L_3871 = L_3876;
                end;
            end;
        end;
    end;
    return L_3870;
end;
GetCannon = function()
    local L_3877 = nil;
    local L_3878 = math.huge;
    for L_3879, L_3880 in next, workspace.NPCs:GetChildren() do
        if typeof(L_3880.Name) == "string" and L_3880.Name:match("Cannoneer") then
            local L_3881, L_3882 = pcall(function()
                return L_3880:GetPivot().Position;
            end);
            if L_3881 and L_3882 then
                local L_3883 = (L_3882 - player.Character.HumanoidRootPart.Position).Magnitude;
                if L_3883 < L_3878 then
                    L_3877 = L_3880;
                    L_3878 = L_3883;
                end;
            end;
        end;
    end;
    return L_3877;
end;
local L_3887 = function()
    local L_3884 = false;
    pcall(function()
        for L_3885, L_3886 in player.PlayerGui.Notifications:GetDescendants() do
            if L_3886:IsA("TextLabel") and (L_3886.Text == "TP" or L_3886.Text == "Strike" or L_3886.Text:find("Strike")) then
                L_3884 = true;
                return ;
            end;
        end;
        return ;
    end);
    return L_3884;
end;
getgenv().CFrameTrackTween = function(L_3888, L_3889, L_3890)
    if not player or not player.Character then
        return ;
    end;
    if L_3887() then
        task.wait(5);
        return ;
    end;
    if (player.Character:GetAttribute("SpeedBypass") or 0) < 1 then
        return ;
    end;
    if getgenv().ShipTweenRunning then
        getgenv().ShipTweenRunning = false;
        task.wait();
    end;
    if not L_3888 then
        return ;
    end;
    getgenv().ShipTweenRunning = true;
    local L_3891 = player.Character:FindFirstChild(L_33);
    if not L_3891 then
        getgenv().ShipTweenRunning = false;
        return ;
    end;
    local L_3892 = function()
        return L_3888:FindFirstChild(L_33) or L_3888:FindFirstChild("HRP");
    end;
    local L_3893 = L_3889 or 110;
    local L_3894 = L_3890 or 0;
    local L_3895 = game:GetService("RunService");
    while (getgenv().ShipFarm or getgenv().BaalFarm) and getgenv().ShipTweenRunning and L_3888 and L_3888.Parent do
        local L_3896 = L_3892();
        if not L_3896 then
            getgenv().ShipTweenRunning = false;
            return ;
        end;
        local L_3897 = L_3896.Position;
        if L_3894 > 0 then
            L_3897 = L_3897 + L_3896.CFrame.LookVector * L_3894;
        end;
        local L_3898 = L_3891.Position;
        local L_3899 = L_3897 - L_3898;
        if L_3899.Magnitude <= 2 then
            break;
        end;
        local L_3900 = L_3899.Unit;
        local L_3901 = L_3895.Heartbeat:Wait();
        local L_3902 = L_3898 + L_3900 * L_3893 * L_3901;
        L_3891.AssemblyLinearVelocity = Vector3.zero;
        L_3891.Velocity = Vector3.zero;
        L_3891.CFrame = CFrame.new(L_3902);
    end;
    getgenv().ShipTweenRunning = false;
    return ;
end;
ShipSection.CreateToggle({ Title = "Ship Bounty Farm", Desc = "Does ship farming for you!", Default = false }, function(L_3903)
    getgenv().ShipFarm = L_3903;
    if not L_3903 then
        return ;
    end;
    if not HasGeppo() then
        Library.CreateNoti({ Title = "Uh Oh!", Desc = "You need geppo to use this!", ShowTime = 4 });
        return ;
    end;
    task.spawn(function()
        while getgenv().ShipFarm and task.wait(1) do
            pcall(function()
                FakeGeppo();
                return ;
            end);
        end;
        return ;
    end);
    task.spawn(function()
        while getgenv().ShipFarm and task.wait(0.1) do
            pcall(function()
                if GetShip() then
                    local L_3904 = GetCaptain();
                    local L_3905 = GetCannon();
                    if L_3904 then
                        getgenv().GlobalHit(L_3904);
                    elseif L_3905 and getgenv().KillCannon then
                        getgenv().GlobalHit(L_3905);
                    end;
                end;
                return ;
            end);
        end;
        return ;
    end);
    while getgenv().ShipFarm and task.wait() do
        if workspace.NPCs:FindFirstChild("Shark") then
            for L_3906 = 1, 2, 1 do
                pcall(function()
                    getgenv().GlobalHit(workspace.NPCs.Shark);
                    return ;
                end);
                task.wait(0.5);
            end;
        end;
        if player.Character.Humanoid.SeatPart ~= nil then
            player.Character.Humanoid.SeatPart:Destroy();
        end;
        if (Vector3.new(3730, 18, -11473) - player.Character.HumanoidRootPart.Position).Magnitude > 2000 then
            HoroTpPro({
                Position = Vector3.new(3730, 18, -11473),
                Speed = 75,
                Stop = function()
                    return getgenv().ShipFarm;
                end
            });
        elseif GetShip() then
            local L_3907 = GetCaptain();
            local L_3908 = GetCannon();
            if L_3907 then
                local L_3909 = L_3907:FindFirstChild(L_33) or L_3907:FindFirstChild("HRP");
                local L_3910 = 999;
                if L_3909 then
                    L_3910 = (L_3909.Position - player.Character.HumanoidRootPart.Position).Magnitude;
                end;
                if L_3910 > 30 then
                    getgenv().CFrameTrackTween(L_3907, 130, 10);
                else
                    getgenv().CFrameTrackTween(L_3907, 130, 0);
                end;
            elseif L_3908 and getgenv().KillCannon then
                local L_3911 = L_3908:FindFirstChild(L_33) or L_3908:FindFirstChild("HRP") or L_3908.PrimaryPart or L_3908:FindFirstChildWhichIsA("BasePart");
                local L_3912 = 999;
                if L_3911 then
                    L_3912 = (L_3911.Position - player.Character.HumanoidRootPart.Position).Magnitude;
                end;
                if L_3912 > 30 then
                    getgenv().CFrameTrackTween(L_3908, 110, 10);
                else
                    getgenv().CFrameTrackTween(L_3908, 110, 0);
                end;
            elseif (Vector3.new(3730, 18, -11473) - player.Character.HumanoidRootPart.Position).Magnitude > 20 then
                HoroTpPro({
                    Position = Vector3.new(3730, 18, -11473),
                    Speed = 75,
                    Stop = function()
                        return getgenv().ShipFarm;
                    end
                });
            else
                L_2156(Vector3.new(3730, 18, -11473));
            end;
        else
            HoroTpPro({
                Position = Vector3.new(3730, 18, -11473),
                Speed = 75,
                Stop = function()
                    return getgenv().ShipFarm;
                end
            });
            if (Vector3.new(3730, 18, -11473) - player.Character.HumanoidRootPart.Position).Magnitude < 20 then
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ShipEvents"):WaitForChild("Spawn"):InvokeServer("true");
            end;
        end;
    end;
    return ;
end);
ShipSection.CreateToggle({ Title = "Kill Cannoneers", Desc = "Targets ships subordinates when no captains.", Default = false }, function(L_3913)
    getgenv().KillCannon = L_3913;
    return ;
end);
local L_3920 = function(L_3914, L_3915, L_3916)
    if not player or (not player.Character or not player.Character:FindFirstChild(L_33)) then
        return false;
    end;
    local L_3917 = player.Character.HumanoidRootPart.Position;
    if typeof(L_3914) ~= "Vector3" then
        if typeof(L_3914) == "CFrame" then
            L_3914 = L_3914.Position;
        else
            if typeof(L_3914) ~= "Instance" then
                return false;
            end;
            if L_3914:IsA("Model") and L_3914.PrimaryPart then
                L_3914 = L_3914.PrimaryPart.Position;
            else
                if not L_3914:IsA("BasePart") then
                    return false;
                end;
                L_3914 = L_3914.Position;
            end;
        end;
    end;
    if L_3916 then
        local L_3918 = L_3917.X - L_3914.X;
        local L_3919 = L_3917.Z - L_3914.Z;
        return math.sqrt(L_3918 * L_3918 + L_3919 * L_3919) <= L_3915;
    end;
    return (L_3917 - L_3914).Magnitude <= L_3915;
end;
local L_3932 = function(L_3921, L_3922, L_3923, L_3924)
    local L_3925, L_3926 = L_3922 or 1000, nil;
    if not player or (not player.Character or not player.Character:FindFirstChild(L_33)) then
        return nil;
    end;
    local L_3927 = L_3923 or player.Character.HumanoidRootPart.Position;
    for L_3928, L_3929 in ipairs(workspace.NPCs:GetChildren()) do
        if L_3929.Name == L_3921 and L_3929:FindFirstChild(L_33) then
            local L_3930 = L_3929:FindFirstChild("Info") and L_3929.Info:FindFirstChild("Target") and L_3929.Info.Target.Value == player.Character.HumanoidRootPart;
            if (L_3924 ~= true or L_3930) and (L_3924 ~= false or not L_3930) then
                local L_3931 = (L_3929.HumanoidRootPart.Position - L_3927).Magnitude;
                if L_3931 <= L_3925 then
                    L_3926 = L_3929;
                    L_3925 = L_3931;
                end;
            end;
        end;
    end;
    return L_3926;
end;
if getgenv().TweenDummy and not getgenv().TweenDummy:IsA("Model") then
    getgenv().TweenDummy:Destroy();
    getgenv().TweenDummy = nil;
end;
if not getgenv().TweenDummy then
    local L_3933 = Instance.new("Model");
    L_3933.Name = "TweenDummy";
    local L_3934 = Instance.new("Part");
    L_3934.Name = L_33;
    L_3934.Anchored = true;
    L_3934.CanCollide = false;
    L_3934.Transparency = 1;
    L_3934.Size = Vector3.new(1, 1, 1);
    L_3934.Parent = L_3933;
    L_3933.PrimaryPart = L_3934;
    L_3933.Parent = game:GetService("Workspace");
    getgenv().TweenDummy = L_3933;
end;
getgenv().RaycastTrackTween = function(L_3935, L_3936, L_3937)
    local L_3938 = game:GetService("Players");
    local L_3939 = game:GetService("RunService");
    local L_3940 = game:GetService("Workspace");
    local L_3941 = L_3938.LocalPlayer;
    if not L_3941 or not L_3941.Character then
        return ;
    end;
    if (L_3941.Character:GetAttribute("SpeedBypass") or 0) < 1 then
        return ;
    end;
    if getgenv().ShipTweenRunning and getgenv().ActiveTweenTarget == L_3935 then
        return ;
    end;
    if getgenv().TweenConnection then
        getgenv().TweenConnection:Disconnect();
        getgenv().TweenConnection = nil;
    end;
    getgenv().ShipTweenRunning = true;
    getgenv().ActiveTweenTarget = L_3935;
    local L_3942 = L_3936 or 110;
    local L_3943 = L_3941.Character:FindFirstChild(L_33);
    if not L_3943 then
        return ;
    end;
    local L_3944 = RaycastParams.new();
    L_3944.FilterType = Enum.RaycastFilterType.Exclude;
    getgenv().TweenConnection = L_3939.Heartbeat:Connect(function(L_3945)
        if not getgenv().ShipTweenRunning or not getgenv().ShipFarm and not getgenv().BaalFarm then
            if getgenv().TweenConnection then
                getgenv().TweenConnection:Disconnect();
            end;
            getgenv().ShipTweenRunning = false;
            getgenv().ActiveTweenTarget = nil;
            return ;
        end;
        local L_3946 = nil;
        local L_3947 = nil;
        local L_3948 = typeof(L_3935);
        if L_3948 == "Instance" then
            if not L_3935 or not L_3935.Parent then
                if getgenv().TweenConnection then
                    getgenv().TweenConnection:Disconnect();
                end;
                return ;
            end;
            if L_3935:IsA("Model") then
                local L_3949 = L_3935.PrimaryPart or L_3935:FindFirstChild(L_33) or L_3935:FindFirstChild("HRP");
                if L_3949 then
                    L_3946 = L_3949.Position;
                    L_3947 = L_3949.CFrame;
                end;
            elseif L_3935:IsA("BasePart") then
                L_3946 = L_3935.Position;
                L_3947 = L_3935.CFrame;
            end;
        elseif L_3948 == "Vector3" then
            L_3946 = L_3935;
        elseif L_3948 == "CFrame" then
            L_3946 = L_3935.Position;
            L_3947 = L_3935;
        end;
        if not L_3946 then
            return ;
        end;
        for L_3950, L_3951 in pairs(L_3941.Character:GetDescendants()) do
            if L_3951:IsA("BasePart") and L_3951.CanCollide then
                L_3951.CanCollide = false;
            end;
        end;
        L_3943.AssemblyLinearVelocity = Vector3.zero;
        L_3943.AssemblyAngularVelocity = Vector3.zero;
        local L_3952 = L_3943.Position;
        local L_3953 = Vector3.new(L_3946.X, 0, L_3946.Z) - Vector3.new(L_3952.X, 0, L_3952.Z);
        if L_3953.Magnitude <= 10 then
            if L_3937 then
                local L_3954 = Vector3.new(L_3946.X, L_3946.Y + L_3937, L_3946.Z);
                L_3943.CFrame = CFrame.new(L_3954, L_3946);
            elseif L_3947 then
                L_3943.CFrame = L_3947;
            else
                L_3943.CFrame = CFrame.new(L_3946);
            end;
            if getgenv().TweenConnection then
                getgenv().TweenConnection:Disconnect();
            end;
            getgenv().ShipTweenRunning = false;
            getgenv().ActiveTweenTarget = nil;
            return ;
        end;
        local L_3955 = L_3952 + L_3953.Unit * (L_3942 * L_3945);
        local L_3956 = L_3952.Y;
        local L_3957;
        if L_3937 then
            L_3957 = L_3946.Y + L_3937;
        else
            local L_3958 = math.max(L_3952.Y, L_3946.Y) + 50;
            local L_3959 = Vector3.new(L_3955.X, L_3958, L_3955.Z);
            local L_3960 = Vector3.new(0, -500, 0);
            local L_3961 = { L_3941.Character };
            L_3944.FilterDescendantsInstances = L_3961;
            local L_3962 = L_3940:Raycast(L_3959, L_3960, L_3944);
            local L_3963 = 0;
            while L_3962 and L_3962.Instance.Name == "Leaves" and L_3963 < 10 do
                table.insert(L_3961, L_3962.Instance);
                L_3944.FilterDescendantsInstances = L_3961;
                L_3962 = L_3940:Raycast(L_3959, L_3960, L_3944);
                L_3963 = L_3963 + 1;
            end;
            if L_3962 then
                L_3957 = L_3962.Position.Y + 4;
            else
                L_3957 = L_3952.Y;
            end;
        end;
        local L_3964 = Vector3.new(L_3955.X, L_3957, L_3955.Z);
        local L_3965 = Vector3.new(L_3946.X, L_3964.Y, L_3946.Z);
        L_3943.CFrame = CFrame.new(L_3964, L_3965);
        return ;
    end);
    return ;
end;
getgenv().FarmThing = function(L_3966, L_3967, L_3968)
    if typeof(L_3968) ~= "Vector3" then
        return ;
    end;
    local L_3969 = game:GetService("Players");
    local L_3970 = game:GetService("Workspace");
    local L_3971 = L_3969.LocalPlayer.Character;
    if not L_3971 or not L_3971:FindFirstChild(L_33) then
        return ;
    end;
    local L_3972 = L_3971.HumanoidRootPart.Position;
    local L_3973 = L_3970:FindFirstChild("NPCs") or L_3970;
    local L_3974 = {};
    local L_3975 = {};
    for L_3976, L_3977 in pairs(L_3973:GetChildren()) do
        if L_3977.Name == L_3966 and L_3977:FindFirstChild(L_33) and L_3977:FindFirstChild("Humanoid") and L_3977.Humanoid.Health > 0 and (L_3977.HumanoidRootPart.Position - L_3968).Magnitude <= L_3967 then
            table.insert(L_3974, L_3977);
            if not L_3679(L_3977) then
                table.insert(L_3975, L_3977);
            end;
        end;
    end;
    local L_3981 = function()
        local L_3978 = {};
        for L_3979, L_3980 in pairs(L_3973:GetChildren()) do
            if L_3980:FindFirstChild(L_33) and L_3980:FindFirstChild("Humanoid") and L_3980.Humanoid.Health > 0 and (L_3980.HumanoidRootPart.Position - L_3972).Magnitude <= 20 then
                table.insert(L_3978, L_3980);
            end;
        end;
        if #L_3978 > 0 then
            pcall(function()
                getgenv().GlobalHit(L_3978);
                return ;
            end);
        end;
        return ;
    end;
    if #L_3974 > 0 then
        if #L_3975 == 0 then
            if getgenv().TweenDummy and getgenv().TweenDummy:FindFirstChild(L_33) then
                local L_3982 = os.clock() * 6;
                local L_3983 = 6;
                local L_3984 = math.cos(L_3982) * L_3983;
                local L_3985 = math.sin(L_3982) * L_3983;
                local L_3986 = Vector3.new(L_3968.X + L_3984, L_3968.Y, L_3968.Z + L_3985);
                getgenv().TweenDummy.HumanoidRootPart.Position = L_3986;
                getgenv().RaycastTrackTween(getgenv().TweenDummy, 50);
            end;
            L_3981();
        else
            local L_3987 = nil;
            local L_3988 = math.huge;
            for L_3989, L_3990 in pairs(L_3975) do
                local L_3991 = (L_3972 - L_3990.HumanoidRootPart.Position).Magnitude;
                if L_3991 < L_3988 then
                    L_3987 = L_3990;
                    L_3988 = L_3991;
                end;
            end;
            if L_3987 then
                getgenv().RaycastTrackTween(L_3987, 50);
                L_3981();
            end;
        end;
    else
        getgenv().RaycastTrackTween(L_3968, 50);
    end;
    return ;
end;
getgenv().IsPlayingBad = function(L_3992)
    if not L_3992 then
        return false;
    end;
    local L_3993 = L_3992:FindFirstChild("Humanoid");
    local L_3994 = L_3992:FindFirstChild(L_33);
    if L_3993 and L_3993.WalkSpeed == 4 then
        return true;
    end;
    if L_3994 and L_3994:FindFirstChildOfClass("BodyVelocity") and L_3994:FindFirstChildOfClass("BodyVelocity").Name ~= "geppo" and L_3994:FindFirstChildOfClass("BodyVelocity").Name ~= "knockback" then
        return true;
    end;
    local L_3995 = L_3993 and L_3993:FindFirstChild("Animator");
    if L_3995 then
        local L_3996 = { ["15112045405"] = true, ["15112109115"] = true };
        for L_3997, L_3998 in pairs(L_3995:GetPlayingAnimationTracks()) do
            if L_3996[L_3998.Animation.AnimationId:match("%d+")] then
                return true;
            end;
        end;
    end;
    return false;
end;
getgenv().IsPlayingBad2 = function(L_3999)
    if not L_3999 then
        return ;
    end;
    local L_4000 = nil;
    pcall(function()
        L_4000 = L_3999:FindFirstChild("Humanoid");
        return ;
    end);
    if not L_4000 then
        return false;
    end;
    local L_4001 = L_4000 and L_4000:FindFirstChild("Animator");
    if L_4001 then
        local L_4002 = { ["15171447546"] = true, ["15171535144"] = true, ["15172004593"] = true, ["15172484665"] = true, ["15171272212"] = true, ["15171985195"] = true };
        for L_4003, L_4004 in pairs(L_4001:GetPlayingAnimationTracks()) do
            if L_4002[L_4004.Animation.AnimationId:match("%d+")] then
                return true;
            end;
        end;
    end;
    return false;
end;
local L_4014 = function(L_4005, L_4006)
    local L_4007 = player.Character;
    if not L_4007 or not L_4007:FindFirstChild(L_33) then
        return ;
    end;
    local L_4008 = L_4007.HumanoidRootPart.Position;
    local L_4009 = (Vector3.new(L_4008.X, 0, L_4008.Z) - Vector3.new(L_4006.X, 0, L_4006.Z)).Magnitude;
    local L_4010 = math.random(-25, 25);
    local L_4011 = math.random(-25, 25);
    local L_4012 = Vector3.new(L_4006.X + L_4010, L_4006.Y + 70, L_4006.Z + L_4011);
    local L_4013 = L_4005:GetPivot().Position;
    L_4007.HumanoidRootPart.CFrame = CFrame.new(L_4012, L_4013);
    L_4007.HumanoidRootPart.Velocity = Vector3.zero;
    L_4007.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero;
    return ;
end;
Players = game:GetService("Players");
Workspace = game:GetService("Workspace");
LocalPlayer = player;
rayParams = RaycastParams.new();
rayParams.FilterType = Enum.RaycastFilterType.Include;
rayParams.FilterDescendantsInstances = { Workspace:FindFirstChild("Env"), Workspace:FindFirstChild("Islands"), Workspace:FindFirstChild("Ships"), Workspace:FindFirstChild("Map") };
local L_4030 = function(L_4015)
    if not L_4015 then
        return ;
    end;
    local L_4016 = LocalPlayer.Character;
    local L_4017 = L_4016 and L_4016:FindFirstChild(L_33);
    if not L_4017 then
        return ;
    end;
    local L_4018, L_4019 = L_4015:GetBoundingBox();
    local L_4020 = L_4018.Position;
    local L_4021 = L_4017.Position;
    if (L_4021 - L_4020).Magnitude > 100 then
        return ;
    end;
    local L_4022 = 1;
    local L_4023 = L_4021 - L_4020;
    local L_4024 = Vector3.new(L_4023.X, 0, L_4023.Z);
    local L_4025 = if not (L_4024.Magnitude < 0.5) then L_4024.Unit else Vector3.new(0, 0, 1);
    local L_4026 = L_4020 + L_4025 * L_4022;
    local L_4027 = L_4026 - L_4020;
    local L_4028 = Workspace:Raycast(L_4020, L_4027, rayParams);
    if L_4028 then
        local L_4029 = L_4028.Distance;
        L_4026 = L_4020 + L_4025 * math.max(2, L_4029 - 1);
    end;
    L_4017.CFrame = CFrame.new(Vector3.new(L_4026.X, L_4020.Y + 7.9, L_4026.Z), L_4020);
    L_4017.AssemblyLinearVelocity = Vector3.zero;
    L_4017.AssemblyAngularVelocity = Vector3.zero;
    return ;
end;
local L_4040 = function(L_4031)
    if not L_4031 then
        return ;
    end;
    local L_4032 = player.Character;
    if not L_4032 or not L_4032:FindFirstChild(L_33) then
        return ;
    end;
    local L_4033, L_4034 = L_4031:GetBoundingBox();
    local L_4035 = os.clock() * 10;
    local L_4036 = math.max(L_4034.X, L_4034.Z) / 2 + 5;
    local L_4037 = math.cos(L_4035) * L_4036;
    local L_4038 = math.sin(L_4035) * L_4036;
    local L_4039 = L_4033.Position + Vector3.new(L_4037, 0, L_4038);
    L_4032.HumanoidRootPart.CFrame = CFrame.new(L_4039, L_4033.Position);
    L_4032.HumanoidRootPart.Velocity = Vector3.zero;
    L_4032.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero;
    return ;
end;
local L_4043 = function(L_4041)
    local L_4042 = L_4041:FindFirstAncestorWhichIsA("Part");
    if L_4042 then
        if firetouchinterest then
            task.spawn(function()
                firetouchinterest(L_4042, L_1971, 1);
                wait();
                firetouchinterest(L_4042, L_1971, 0);
                return ;
            end);
        end;
        L_4042.CFrame = L_1971.CFrame;
    end;
    return ;
end;
getgenv().FarmMaterials = true;
getgenv().Debug = false;
getgenv().GlitchBaal = true;
local L_4045 = function(L_4044)
    if getgenv().Debug then
        print("[BaalFarm] " .. L_4044);
    end;
    return ;
end;
if getgenv().Real then
    getgenv().Real:Disconnect();
    getgenv().Real = nil;
end;
if getgenv().Nigga then
    getgenv().Nigga:Disconnect();
    getgenv().Nigga = nil;
end;
getgenv().Wait = false;
getgenv().Glitched = false;
getgenv().teleporting = false;
getgenv().Wait2 = false;
local L_4050 = function(L_4046)
    local L_4047 = player.Character;
    if not L_4047 then
        return ;
    end;
    local L_4048 = L_4047:FindFirstChild(L_33);
    if not L_4048 then
        return ;
    end;
    if typeof(L_4046) ~= "Vector3" then
        if typeof(L_4046) ~= "Instance" then
            return ;
        end;
        if L_4046:IsA("Model") then
            local L_4049 = L_4046.PrimaryPart or L_4046:FindFirstChild(L_33) or L_4046:FindFirstChild("HRP");
            if not L_4049 then
                return ;
            end;
            L_4046 = L_4049.Position;
        else
            L_4046 = L_4046.Position;
        end;
    end;
    L_4048.CFrame = CFrame.lookAt(L_4048.Position, Vector3.new(L_4046.X, L_4048.Position.Y, L_4046.Z));
    return ;
end;
getgenv().SkillLastRun = 0;
getgenv().SkillLastRun2 = 0;
getgenv().Skill = nil;
getgenv().made = false;
getgenv().DynamicMaterials = false;
getgenv().ShouldWait = nil;
NeedMaterials = function()
    local L_4051 = L_2631("Wandering Soul");
    local L_4052 = L_2631("Zombie Arm");
    local L_4053 = L_2631("Zombie Leg");
    if L_4051 < 10 then
        return true;
    end;
    if L_4052 < 10 then
        return true;
    end;
    if L_4053 < 10 then
        return true;
    end;
    return false;
end;
SafeTp = function(L_4054)
    local L_4055 = L_4054:GetPivot().Position + Vector3.new(2, 9, 3);
    L_2156(L_4055);
    return ;
end;
local L_4066 = function(L_4056, L_4057, L_4058)
    local L_4059 = L_4057 or 12;
    local L_4060 = L_4058 or 30;
    local L_4061 = tick() * L_4060 % 360;
    local L_4062 = math.rad(L_4061);
    local L_4063 = math.cos(L_4062) * L_4059;
    local L_4064 = math.sin(L_4062) * L_4059;
    if typeof(L_4056) ~= "Vector3" then
        if typeof(L_4056) == "CFrame" then
            L_4056 = L_4056.Position;
        else
            if typeof(L_4056) ~= "Instance" then
                return ;
            end;
            if L_4056:IsA("Model") and L_4056.PrimaryPart then
                L_4056 = L_4056.PrimaryPart.Position;
            elseif L_4056:IsA("Model") and L_4056:FindFirstChild(L_33) then
                L_4056 = L_4056.HumanoidRootPart.Position;
            else
                if not L_4056:IsA("BasePart") then
                    return ;
                end;
                L_4056 = L_4056.Position;
            end;
        end;
    end;
    local L_4065 = Vector3.new(L_4056.X + L_4063, L_4056.Y, L_4056.Z + L_4064);
    L_2156(L_4065);
    return ;
end;
GetRemote = function(L_4067)
    local L_4068 = {};
    for L_4069, L_4070 in next, game:GetService("ReplicatedStorage"):GetChildren() do
        if L_4070.Name:match(L_4067) then
            table.insert(L_4068, L_4070);
        end;
    end;
    return L_4068;
end;
local L_4073 = function(L_4071, L_4072)
    return ;
end;
BaalSection.CreateToggle({ Title = "Baal Farm (Suna)", Desc = "Auto Farm True Demon Ba'al & Resurrected Ba'al Using Suna!", Default = false }, function(L_4074)
    getgenv().BaalFarm = L_4074;
    local L_4075 = nil;
    if not L_4074 then
        return ;
    end;
    task.spawn(pcall, function()
        if L_4074 and not getgenv().made then
            getgenv().made = true;
            L_4075 = player.PlayerGui.Notifications.DescendantAdded:Connect(function(L_4076)
                if L_4076:IsA("TextLabel") then
                    local L_4077 = L_4076.Text:gsub("[<>]", "");
                    if table.find(TrueDemonBaalDrops, L_4077) and getgenv().BaalFarm then
                        SendBaalWebhook(L_4077);
                    end;
                end;
                return ;
            end);
        end;
        return ;
    end);
    warn("here");
    local L_4078, L_4079 = pcall(function()
        return statsFolder.Skills.skyWalk.Value;
    end);
    if not HasGeppo() then
        Library.CreateNoti({ Title = "Uh Oh!", Desc = "You need geppo to use this!", ShowTime = 4 });
        return ;
    end;
    task.spawn(function()
        local L_4080 = Vector3.new(18923, 5, -11909);
        while getgenv().BaalFarm and task.wait(1) do
            if not getgenv().Skill and L_3920(L_4080, 10) then
                warn("return");
            else
                pcall(FakeGeppo);
            end;
        end;
        return ;
    end);
    warn("passed");
    while getgenv().BaalFarm and task.wait() do
        local L_4081 = nil;
        local L_4082 = nil;
        local L_4083 = nil;
        local L_4084 = L_3920(Vector3.new(18951, 8152, -12374), 3000, true);
        task.spawn(pcall, function()
            L_4081 = workspace.AreaTeleporters.FirstSea.Haloween.Trans.Specs.Enabled;
            return ;
        end);
        task.spawn(pcall, function()
            L_4082 = workspace.NPCs:FindFirstChild("Resurrected Ba'al");
            return ;
        end);
        task.spawn(pcall, function()
            L_4083 = workspace.NPCs:FindFirstChild("True Demon Ba'al");
            return ;
        end);
        ResurrectedBaal = L_4082;
        if L_4084 then
            local L_4085 = Vector3.new(18923, 5, -11909);
            if not L_3920(L_4085, 10, true) then
                HoroTpPro({
                    Position = L_4085,
                    Speed = 50,
                    Stop = function()
                        return getgenv().BaalFarm;
                    end
                });
            else
                getgenv().Skill = #GetRemote("Suna") > 0;
                if not getgenv().Skill then
                    task.spawn(function()
                        game:GetService("ReplicatedStorage").Events.Skill:InvokeServer("Desert Spada", { cf = CFrame.new(0, 0, 0) });
                        return ;
                    end);
                    L_2156(L_4085);
                elseif getgenv().Skill and not workspace.NPCs:FindFirstChild("True Demon Ba'al") then
                    task.spawn(pcall, function()
                        FakeGeppo();
                        return ;
                    end);
                    player.Character.HumanoidRootPart.CFrame = CFrame.new(18923, 8122, -11909, -0.989, 0, -0.15, 0, 1, 0, 0.15, 0, -0.989);
                    local L_4086 = 0;
                    repeat
                        task.wait(0.1);
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(18923, 8122, -11909, -0.989, 0, -0.15, 0, 1, 0, 0.15, 0, -0.989);
                        L_4086 = L_4086 + 0.1;
                    until workspace.NPCs:FindFirstChild("True Demon Ba'al") or not getgenv().BaalFarm or not L_4084 or L_4086 >= 15;
                    task.wait();
                    for L_4087, L_4088 in next, GetRemote("Suna") do
                        L_4088:FireServer(CFrame.new(0, 0, 0));
                        L_4088:Destroy();
                    end;
                    if L_4086 >= 15 then
                        repeat
                            task.wait();
                            local L_4089 = L_3920(Vector3.new(18951, 8152, -12374), 3000, true);
                            local L_4090 = Vector3.new(18944, 8122, -12572);
                            if not L_3920(L_4090, 10, true) then
                                if not L_4089 then
                                    break;
                                end;
                                HoroTpPro({
                                    Position = L_4090,
                                    Speed = 50,
                                    Stop = function()
                                        return getgenv().BaalFarm;
                                    end
                                });
                            else
                                if not L_4089 then
                                    break;
                                end;
                                L_2156(L_4090);
                                task.wait(2);
                                Touch(workspace.AreaTeleporters.FirstSea.Haloween.Void);
                                task.wait(5);
                            end;
                        until not L_4089 or not getgenv().BaalFarm;
                    end;
                elseif getgenv().Skill and workspace.NPCs:FindFirstChild("True Demon Ba'al") then
                    L_2156(L_4085);
                end;
            end;
        elseif L_4081 then
            local L_4091 = Vector3.new(-10086, 427, -2573);
            if not L_3920(L_4091, 10, true) then
                HoroTpPro({
                    Position = L_4091,
                    Speed = 50,
                    Stop = function()
                        return getgenv().BaalFarm;
                    end
                });
            else
                L_2156(L_4091);
                task.wait(2);
                Touch(workspace.AreaTeleporters.FirstSea.Haloween.Trans);
                task.wait(5);
            end;
        elseif L_4082 then
            hrp = player.Character.HumanoidRootPart;
            local L_4092 = ResurrectedBaal:GetPivot().Position;
            if (hrp.Position - L_4092).Magnitude > 30 then
                L_4073("Initial TP", "Distance: " .. math.floor((hrp.Position - L_4092).Magnitude));
                HoroTpPro({
                    Position = L_4092,
                    Speed = 50,
                    Stop = function()
                        return getgenv().BaalFarm;
                    end
                });
                repeat
                    task.wait(0.1);
                    if not getgenv().BaalFarm then
                        L_4073("Farm disabled during initial TP");
                        break;
                    end;
                    hrp = player.Character and player.Character:FindFirstChild(L_33);
                    ResurrectedBaal = NPCs:FindFirstChild("Resurrected Ba'al");
                    if not hrp then
                        L_4073("No HRP during initial TP");
                        break;
                    end;
                    if not ResurrectedBaal then
                        L_4073("Baal despawned during initial TP");
                        break;
                    end;
                    local L_4093 = ResurrectedBaal:GetPivot().Position;
                until (hrp.Position - L_4093).Magnitude <= 30;
                L_4073("Initial TP complete");
            end;
            local L_4094 = Vector3.new(-9840, 50, -1956);
            local L_4097 = function(L_4095, L_4096)
                return (Vector3.new(L_4095.X, 0, L_4095.Z) - Vector3.new(L_4096.X, 0, L_4096.Z)).Magnitude;
            end;
            local L_4100 = function(L_4098, L_4099)
                HoroTpPro({
                    Position = L_4098,
                    Speed = L_4099 or 50,
                    Stop = function()
                        return getgenv().BaalFarm;
                    end
                });
                return ;
            end;
            while ResurrectedBaal and ResurrectedBaal.Parent and getgenv().BaalFarm do
                hrp = player.Character and player.Character:FindFirstChild(L_33);
                if not hrp then
                    L_4073("Waiting for HRP");
                    task.wait(0.1);
                    ResurrectedBaal = NPCs:FindFirstChild("Resurrected Ba'al");
                else
                    local L_4101 = ResurrectedBaal:GetPivot().Position;
                    local L_4102 = L_4097(L_4101, L_4094);
                    if L_4102 > 50 then
                        if (hrp.Position - L_4094).Magnitude <= 10 then
                            L_4073("Holding fight pos", "Baal XZ dist: " .. math.floor(L_4102));
                            hrp.CFrame = CFrame.new(L_4094);
                        else
                            L_4073("TP to fight pos", "Baal XZ dist: " .. math.floor(L_4102));
                            L_4100(L_4094, 40);
                        end;
                    elseif getgenv().IsPlayingBad(ResurrectedBaal) then
                        L_4073("Baal playing bad - hovering above");
                        hrp.CFrame = CFrame.new(L_4101 + Vector3.new(0, 20, 0), L_4101);
                        hrp.Velocity = Vector3.zero;
                        hrp.AssemblyLinearVelocity = Vector3.zero;
                    elseif L_3920(L_4101, 25) then
                        L_4073("In range - circle TP");
                        L_4040(ResurrectedBaal);
                    else
                        L_4073("Out of range - raycast track");
                        getgenv().RaycastTrackTween(ResurrectedBaal, 50);
                    end;
                    task.spawn(function()
                        getgenv().GlobalHit(ResurrectedBaal);
                        return ;
                    end);
                    task.wait();
                    ResurrectedBaal = NPCs:FindFirstChild("Resurrected Ba'al");
                end;
            end;
            if getgenv().BaalFarm then
                L_4073("Baal dead - waiting 35s for respawn");
                task.wait(35);
            end;
        elseif not L_4082 and NeedMaterials() then
            local L_4103 = L_2631("Wandering Soul");
            local L_4104 = L_2631("Zombie Arm");
            local L_4105 = L_2631("Zombie Leg");
            if L_4103 < 10 then
                for L_4106, L_4107 in next, workspace.Effects:GetChildren() do
                    if L_4107.Name == "Soul" then
                        local L_4108 = L_4107:FindFirstChildWhichIsA("ProximityPrompt", true);
                        if L_4108 then
                            fireproximityprompt(L_4108);
                        end;
                    end;
                end;
                local L_4109 = L_3932("Wandering Soul");
                if L_4109 then
                    if not L_3920(L_4109, 15, true) then
                        HoroTpPro({
                            Position = L_4109:GetPivot().Position,
                            Speed = 50,
                            Stop = function()
                                return getgenv().BaalFarm;
                            end
                        });
                    else
                        SafeTp(L_4109);
                        task.spawn(function()
                            getgenv().GlobalHit(L_4109);
                            return ;
                        end);
                    end;
                else
                    HoroTpPro({
                        Position = Vector3.new(-9879, 27, -1936),
                        Speed = 50,
                        Stop = function()
                            return getgenv().BaalFarm;
                        end
                    });
                end;
            elseif L_4104 < 10 or L_4105 < 10 then
                warn("no z arms");
                local L_4110 = Vector3.new(-10316, 37, -1984);
                local L_4111 = L_3932("Transylvania Zombie", 150, L_4110, true);
                local L_4112 = L_3932("Transylvania Zombie", 150, L_4110, false);
                if L_4112 then
                    if not L_3920(L_4112, 15, true) then
                        HoroTpPro({
                            Position = L_4112:GetPivot().Position,
                            Speed = 50,
                            Stop = function()
                                return getgenv().BaalFarm;
                            end
                        });
                    else
                        SafeTp(L_4112);
                        task.spawn(function()
                            getgenv().GlobalHit(L_4112);
                            return ;
                        end);
                    end;
                else
                    warn("all mobs agroed");
                    if not L_3920(L_4110, 20, true) then
                        warn("going to pos");
                        HoroTpPro({
                            Position = L_4110,
                            Speed = 50,
                            Stop = function()
                                return getgenv().BaalFarm;
                            end
                        });
                    else
                        warn("circling");
                        L_4066(L_4110 + Vector3.new(0, 8, 0), 5, 400);
                        local L_4113 = {};
                        for L_4114, L_4115 in next, workspace.NPCs:GetChildren() do
                            if L_4115.Name == "Transylvania Zombie" and L_3920(L_4115, 10, true) then
                                table.insert(L_4113, L_4115);
                            end;
                        end;
                        task.spawn(function()
                            getgenv().GlobalHit(L_4113);
                            return ;
                        end);
                    end;
                end;
            end;
        elseif not L_4082 and not NeedMaterials() then
            local L_4116 = Vector3.new(-9750, 36, -1956);
            if not L_3920(L_4116, 10, true) then
                HoroTpPro({
                    Position = L_4116,
                    Speed = 50,
                    Stop = function()
                        return getgenv().BaalFarm;
                    end
                });
            else
                repeat
                    task.wait(1);
                    for L_4117, L_4118 in next, workspace.Env.Shrine.Doors:GetChildren() do
                        local L_4119 = L_4118:FindFirstChildWhichIsA("ProximityPrompt", true);
                        if L_4119 then
                            fireproximityprompt(L_4119);
                        end;
                    end;
                until workspace.NPCs:FindFirstChild("Resurrected Ba'al") or not getgenv().BaalFarm;
            end;
        end;
    end;
    return ;
end);
BaalSection.CreateBox({ Title = "Webhook", Placeholder = "", Default = "", Number = false }, function(L_4120)
    getgenv().WebhookBaal = L_4120;
    return ;
end);
GetNpc = function(L_4121)
    for L_4122, L_4123 in next, workspace.NPCs:GetChildren() do
        if L_4123.Name == "Donmingo Family" and (L_4123:GetPivot().Position - L_4121:GetPivot().Position).Magnitude < 250 then
            return L_4123;
        end;
    end;
    return nil;
end;
getgenv().PicaWebhook = "";
local L_4124 = function()
    if getgenv().PicaWebhook == "" then
        return ;
    end;
    request({ Url = getgenv().PicaWebhook, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = game:GetService("HttpService"):JSONEncode({ embeds = { { title = "Pica Has Died", description = "**" .. game.Players.LocalPlayer.Name .. "** received **6,000** bounty", color = 16711680 } } }) });
    return ;
end;
PicaSection.CreateToggle({ Title = "Farm Pica (SUNA)", Desc = "so its real?", Default = false }, function(L_4125)
    getgenv().FarmPica = L_4125;
    task.spawn(function()
        while getgenv().FarmPica and task.wait(1) do
            FakeGeppo();
        end;
        return ;
    end);
    while getgenv().FarmPica and task.wait() do
        if player.Character and player.Character:FindFirstChild(L_33) and player.Character:FindFirstChild("Humanoid") and not (player.Character.Humanoid.Health <= 0) and not (player.Character:GetAttribute("SpeedBypass") < 15) then
            if not L_2170("Pica's Bounty Poster") then
                if #workspace.Islands["Rose Kingdom"].DonmingoFamilySpawn:GetChildren() > 0 then
                    warn("no tool ;c");
                    local L_4126 = nil;
                    local L_4127 = math.huge;
                    for L_4128, L_4129 in next, workspace.Islands["Rose Kingdom"].DonmingoFamilySpawn:GetChildren() do
                        if not player.Character or not player.Character:FindFirstChild(L_33) then
                            break;
                        end;
                        local L_4130 = (L_4129:GetPivot().Position - player.Character:GetPivot().Position).Magnitude;
                        if L_4130 < L_4127 then
                            L_4126 = L_4129;
                            L_4127 = L_4130;
                        end;
                    end;
                    if L_4126 then
                        if GetNpc(L_4126) then
                            repeat
                                task.wait();
                                if not player.Character or not player.Character:FindFirstChild(L_33) or not player.Character:FindFirstChild("Humanoid") or player.Character.Humanoid.Health <= 0 then
                                    break;
                                end;
                                local L_4131 = GetNpc(L_4126);
                                if not L_4131 or not L_4131.Parent or not L_4131:FindFirstChild("Humanoid") or L_2170("Pica's Bounty Poster") then
                                    break;
                                end;
                                if (L_4131:GetPivot().Position - player.Character.HumanoidRootPart.Position).Magnitude > 20 then
                                    HoroTpPro({
                                        Position = L_4131:GetPivot().Position + Vector3.new(0, 8.5, 0),
                                        Speed = 50,
                                        Stop = function()
                                            return getgenv().FarmPica;
                                        end
                                    });
                                else
                                    warn("circle?");
                                    L_4040(L_4131);
                                end;
                                task.spawn(function()
                                    getgenv().GlobalHit(L_4131);
                                    return ;
                                end);
                            until not L_4131 or not L_4131.Parent or not getgenv().FarmPica or L_2170("Pica's Bounty Poster");
                            L_4126:Destroy();
                        else
                            local L_4132 = 0;
                            repeat
                                task.wait(0.1);
                                if not player.Character or not player.Character:FindFirstChild(L_33) then
                                    break;
                                end;
                                local L_4133 = GetNpc(L_4126);
                                HoroTpPro({
                                    Position = L_4126.Position,
                                    Speed = 50,
                                    Stop = function()
                                        return getgenv().FarmPica;
                                    end
                                });
                            until L_4133 or L_4132 > 10 or not getgenv().FarmPica or L_2170("Pica's Bounty Poster");
                        end;
                    end;
                else
                    warn("here");
                    pcall(function()
                        local L_4134 = { "Activated", "MouseButton1Down", "MouseButton2Down", "MouseButton1Click", "MouseButton2Click" };
                        v = game:GetService("Players").LocalPlayer.PlayerGui.BountyHunt.Board.BoardUI.CanvasGroup.ScrollingFrame.Pica.Background;
                        for L_4135, L_4136 in pairs(L_4134) do
                            firesignal(v[L_4136]);
                        end;
                        return ;
                    end);
                    local L_4137 = Vector3.new(8496, 69, 10557);
                    if L_3920(L_4137, 10, true) then
                        L_2156(L_4137);
                    else
                        HoroTpPro({
                            Position = Vector3.new(8496, 69, 10557),
                            Speed = 50,
                            Stop = function()
                                return getgenv().FarmPica;
                            end
                        });
                    end;
                end;
            else
                local L_4138 = Vector3.new(6673, 21, 11183);
                if player.Character and player.Character:FindFirstChild(L_33) and player.Character:FindFirstChild("Humanoid") and not (player.Character.Humanoid.Health <= 0) then
                    if not L_3920(L_4138, 10, true) then
                        HoroTpPro({
                            Position = L_4138,
                            Speed = 50,
                            Stop = function()
                                return getgenv().FarmPica;
                            end,
                            Y = 1000,
                            noRaycasting = true
                        });
                    else
                        if not getgenv().pro then
                            getgenv().pro = game:GetService("Players").LocalPlayer.PlayerGui.BountyHunt.Tools.BoardUI.ChildRemoved:Connect(function(L_4139)
                                if L_4139.Name == "Pica" then
                                    L_4124();
                                    player:Kick("gg pica died enable auto rj");
                                end;
                                return ;
                            end);
                        end;
                        if not player.Character or not player.Character:FindFirstChild(L_33) or not player.Character:FindFirstChild("Humanoid") or player.Character.Humanoid.Health <= 0 then
                            return ;
                        end;
                        getgenv().Skill2 = #GetRemote("Suna") > 0;
                        if not getgenv().Skill2 then
                            task.spawn(function()
                                local L_4140 = { "Desert Spada", { cf = player.Character.HumanoidRootPart.CFrame } };
                                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer(unpack(L_4140));
                                return ;
                            end);
                            if player.Character and player.Character:FindFirstChild(L_33) then
                                L_2156(L_4138 + Vector3.new(0, 10000, 0));
                            end;
                        else
                            if player.Character and player.Character:FindFirstChild(L_33) then
                                player.Character.HumanoidRootPart.CFrame = CFrame.new(6673, 21, 11183, 0.175908044, -3.92465793E-08, 0.98440659, -1.45979033E-08, 1, 4.24768274E-08, -0.98440659, -2.1842288E-08, 0.175908044);
                            end;
                            repeat
                                task.wait();
                                if not player.Character or not player.Character:FindFirstChild(L_33) then
                                    break;
                                end;
                                player.Character.HumanoidRootPart.CFrame = CFrame.new(6673, 21, 11183, 0.175908044, -3.92465793E-08, 0.98440659, -1.45979033E-08, 1, 4.24768274E-08, -0.98440659, -2.1842288E-08, 0.175908044);
                            until workspace.NPCs:FindFirstChild("Pica");
                            for L_4141, L_4142 in next, GetRemote("Suna") do
                                L_4142:FireServer(CFrame.new(0, 0, 0));
                                L_4142:Destroy();
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
    return ;
end);
MegaPowAttack2 = function(L_4143)
    local L_4144 = player.Character:FindFirstChild("Mega-Pow");
    if not L_4144 then
        return ;
    end;
    local L_4145 = L_4144:FindFirstChild("MinigunHandleServer");
    if not L_4145 then
        return ;
    end;
    local L_4146 = nil;
    local L_4147 = math.huge;
    for L_4148, L_4149 in next, workspace.NPCs:GetChildren() do
        if L_4149.Name == L_4143 and L_4149:FindFirstChild(L_33) then
            local L_4150 = (L_4149:GetPivot().Position - player.Character.HumanoidRootPart.Position).Magnitude;
            if L_4150 < L_4147 then
                L_4146 = L_4149;
                L_4147 = L_4150;
            end;
        end;
    end;
    if not L_4146 then
        return ;
    end;
    local L_4151 = L_4145:FindFirstChild("input");
    local L_4152 = L_4145:FindFirstChild("UnreliableRemoteEvent");
    local L_4153 = L_4145:FindFirstChild("updateBarrelPosition");
    if not L_4152 then
        L_4151:InvokeServer(true, L_4146:GetPivot().Position);
        return ;
    end;
    if getgenv().MegaPowActive then
        return ;
    end;
    getgenv().MegaPowActive = true;
    task.spawn(function()
        local L_4154 = tick();
        local L_4155 = Vector3.new(6545, 185, 11204);
        while L_4152 and L_4152.Parent and L_4146 and L_4146.Parent and getgenv().FarmPica and not (tick() - L_4154 > 4.5) do
            local L_4156 = L_4146:GetPivot().Position;
            if (L_4156 - L_4155).Magnitude > 3000 then
                break;
            end;
            L_4153:FireServer(player.Character.HumanoidRootPart.Position);
            L_4152:FireServer(L_4156);
            task.wait(0.1);
        end;
        L_4151:InvokeServer(false);
        getgenv().MegaPowActive = false;
        return ;
    end);
    return ;
end;
PicaSection.CreateToggle({ Title = "Farm Pica (MEGAPOW)", Desc = "so its real?", Default = false }, function(L_4157)
    getgenv().FarmPica = L_4157;
    task.spawn(function()
        while getgenv().FarmPica and task.wait(1) do
            FakeGeppo();
        end;
        return ;
    end);
    while getgenv().FarmPica and task.wait() do
        if player.Character and player.Character:FindFirstChild(L_33) and player.Character:FindFirstChild("Humanoid") and not (player.Character.Humanoid.Health <= 0) and not (player.Character:GetAttribute("SpeedBypass") < 15) then
            if not L_2170("Pica's Bounty Poster") then
                if #workspace.Islands["Rose Kingdom"].DonmingoFamilySpawn:GetChildren() > 0 then
                    warn("no tool ;c");
                    local L_4158 = nil;
                    local L_4159 = math.huge;
                    for L_4160, L_4161 in next, workspace.Islands["Rose Kingdom"].DonmingoFamilySpawn:GetChildren() do
                        if not player.Character or not player.Character:FindFirstChild(L_33) then
                            break;
                        end;
                        local L_4162 = (L_4161:GetPivot().Position - player.Character:GetPivot().Position).Magnitude;
                        if L_4162 < L_4159 then
                            L_4158 = L_4161;
                            L_4159 = L_4162;
                        end;
                    end;
                    if L_4158 then
                        if GetNpc(L_4158) then
                            repeat
                                task.wait();
                                if not player.Character or not player.Character:FindFirstChild(L_33) or not player.Character:FindFirstChild("Humanoid") or player.Character.Humanoid.Health <= 0 then
                                    break;
                                end;
                                local L_4163 = GetNpc(L_4158);
                                if not L_4163 or not L_4163.Parent or not L_4163:FindFirstChild("Humanoid") or L_2170("Pica's Bounty Poster") then
                                    break;
                                end;
                                if (L_4163:GetPivot().Position - player.Character.HumanoidRootPart.Position).Magnitude > 20 then
                                    HoroTpPro({
                                        Position = L_4163:GetPivot().Position + Vector3.new(0, 8.5, 0),
                                        Speed = 50,
                                        Stop = function()
                                            return getgenv().FarmPica;
                                        end
                                    });
                                else
                                    warn("circle?");
                                    L_2156(L_4163:GetPivot().Position + Vector3.new(0, 15, 0));
                                end;
                                task.spawn(function()
                                    EquipShit("Mega-Pow");
                                    MegaPowAttack2(L_4163.Name);
                                    return ;
                                end);
                            until not L_4163 or not L_4163.Parent or not getgenv().FarmPica or L_2170("Pica's Bounty Poster");
                            L_4158:Destroy();
                        else
                            local L_4164 = 0;
                            repeat
                                task.wait(0.1);
                                if not player.Character or not player.Character:FindFirstChild(L_33) then
                                    break;
                                end;
                                local L_4165 = GetNpc(L_4158);
                                HoroTpPro({
                                    Position = L_4158.Position,
                                    Speed = 50,
                                    Stop = function()
                                        return getgenv().FarmPica;
                                    end
                                });
                            until L_4165 or L_4164 > 10 or not getgenv().FarmPica or L_2170("Pica's Bounty Poster");
                        end;
                    end;
                else
                    warn("here");
                    pcall(function()
                        local L_4166 = { "Activated", "MouseButton1Down", "MouseButton2Down", "MouseButton1Click", "MouseButton2Click" };
                        v = game:GetService("Players").LocalPlayer.PlayerGui.BountyHunt.Board.BoardUI.CanvasGroup.ScrollingFrame.Pica.Background;
                        for L_4167, L_4168 in pairs(L_4166) do
                            firesignal(v[L_4168]);
                        end;
                        return ;
                    end);
                    local L_4169 = Vector3.new(8496, 69, 10557);
                    if L_3920(L_4169, 10, true) then
                        L_2156(L_4169);
                    else
                        HoroTpPro({
                            Position = Vector3.new(8496, 69, 10557),
                            Speed = 50,
                            Stop = function()
                                return getgenv().FarmPica;
                            end
                        });
                    end;
                end;
            else
                local L_4170 = Vector3.new(6673, 21, 11183);
                if player.Character and player.Character:FindFirstChild(L_33) and player.Character:FindFirstChild("Humanoid") and not (player.Character.Humanoid.Health <= 0) then
                    if not L_3920(L_4170, 10, true) then
                        HoroTpPro({
                            Position = L_4170,
                            Speed = 50,
                            Stop = function()
                                return getgenv().FarmPica;
                            end,
                            Y = 1000,
                            noRaycasting = true
                        });
                    else
                        if not getgenv().pro then
                            getgenv().pro = game:GetService("Players").LocalPlayer.PlayerGui.BountyHunt.Tools.BoardUI.ChildRemoved:Connect(function(L_4171)
                                if L_4171.Name == "Pica" then
                                    L_4124();
                                    player:Kick("gg pica died enable auto rj");
                                end;
                                return ;
                            end);
                        end;
                        if not player.Character or not player.Character:FindFirstChild(L_33) or not player.Character:FindFirstChild("Humanoid") or player.Character.Humanoid.Health <= 0 then
                            return ;
                        end;
                        if player.Character and player.Character:FindFirstChild(L_33) then
                            L_2156(L_4170 + Vector3.new(0, 500, 0));
                            EquipShit("Mega-Pow");
                            MegaPowAttack2("Pica");
                        end;
                    end;
                end;
            end;
        end;
    end;
    return ;
end);
PicaSection.CreateBox({ Title = "Webhook", Placeholder = "", Default = "", Number = false }, function(L_4172)
    getgenv().PicaWebhook = L_4172;
    return ;
end);
getgenv().Lure = false;
getgenv().LerpTweenRunning = false;
local L_4185 = function(L_4173)
    if getgenv().LerpTweenRunning then
        return ;
    end;
    getgenv().LerpTweenRunning = true;
    local L_4174 = game:GetService("Players").LocalPlayer.Character;
    if not L_4174 then
        getgenv().LerpTweenRunning = false;
        return ;
    end;
    local L_4175 = L_4174:FindFirstChild(L_33);
    if not L_4175 then
        getgenv().LerpTweenRunning = false;
        return ;
    end;
    if L_4175.CFrame.Position.Y > 2000 then
        L_4175.CFrame = CFrame.new(L_4175.CFrame.Position.X, 5, L_4175.CFrame.Position.Z);
    end;
    local L_4176 = tick();
    while L_4174.Parent and L_4175.Parent do
        if L_4175.CFrame.Position.Y > 2000 then
            L_4175.CFrame = CFrame.new(L_4175.CFrame.Position.X, 5, L_4175.CFrame.Position.Z);
        end;
        local L_4177 = tick();
        local L_4178 = L_4177 - L_4176;
        local L_4179 = L_4175.CFrame.Position;
        local L_4180 = L_4173 - L_4179;
        local L_4181 = L_4180.Magnitude;
        if L_4181 < 0.5 then
            L_4175.CFrame = CFrame.new(L_4173);
            break;
        end;
        local L_4182 = L_2109() - 5;
        local L_4183 = math.min(L_4182 * L_4178, L_4181);
        local L_4184 = L_4179 + L_4180.Unit * L_4183;
        L_4175.CFrame = CFrame.new(L_4184);
        L_4175.Velocity = Vector3.zero;
        task.wait();
        L_4176 = L_4177;
    end;
    getgenv().LerpTweenRunning = false;
    return ;
end;
getgenv().lasttick = 0;
PikaFlight = function(L_4186)
    if not getgenv().Tuff or not getgenv().Tuff.Parent then
        local L_4187 = tick();
        if L_4187 - (getgenv().lasttick or 0) >= 0.5 then
            getgenv().lasttick = L_4187;
            local L_4188 = L_2170("Pika-Pika") and "Light Flight" or "Radiant Flight";
            getgenv().Tuff = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer(L_4188);
            warn("RESULT " .. tostring(getgenv().Tuff));
        end;
        if not getgenv().Tuff or not getgenv().Tuff.Parent then
            warn("HERE NIGGA");
            if L_3920(Vector3.new(-5877, 150, 7484), 1500, true) then
                warn("IN RANGEN IGGA");
                if L_3920(Vector3.new(-5877, 150, 7484), 10) then
                    L_2156(Vector3.new(-5877, 150, 7484));
                else
                    L_4185(Vector3.new(-5877, 150, 7484));
                end;
            end;
            return ;
        end;
    end;
    repeat
        task.wait();
        L_4185(L_4186, L_2109());
    until L_3920(L_4186, 10, true);
    if getgenv().Tuff and getgenv().Tuff.Parent then
        getgenv().Tuff:FireServer();
    end;
    return ;
end;
SpawnShip = function()
    task.spawn(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ShipEvents"):WaitForChild("Spawn"):InvokeServer("true");
        return ;
    end);
    return ;
end;
getgenv().lasttick2 = 0;
getgenv().RadiantKick = nil;
getgenv().RadiantRay = nil;
getgenv().TuffLoop = nil;
getgenv().RadiantJewels = nil;
getgenv().Delayedlol = nil;
PikaAttack = function(L_4189)
    if not L_4189 then
        return ;
    end;
    if L_2170("Pika-Pika") then
        if not getgenv().JewelsOfLight or not getgenv().JewelsOfLight.Parent then
            local L_4190 = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer("Jewels Of Light");
            getgenv().JewelsOfLight = L_4190;
        end;
        if getgenv().getgenv().JewelsOfLight and getgenv().JewelsOfLight.Parent then
            warn("ray");
            while getgenv().JewelsOfLight and getgenv().JewelsOfLight.Parent and task.wait() do
                local L_4191 = L_4189:GetPivot().Position;
                if L_3920(L_4191, L_2109() / 2, true) then
                    local L_4192 = L_4191 + Vector3.new(0, 100, 0);
                    player.Character:PivotTo(CFrame.lookAt(L_4192, L_4191));
                else
                    local L_4193 = player.Character:GetPivot().Position;
                    local L_4194 = Vector3.new(L_4193.X, L_4191.Y + 200, L_4193.Z);
                    player.Character:PivotTo(CFrame.lookAt(L_4194, L_4191));
                end;
                task.wait(0.05);
            end;
        end;
    end;
    return ;
end;
MegaPowAttack = function()
    local L_4195 = game:GetService("Players").LocalPlayer.Character;
    local L_4196 = L_4195 and L_4195:FindFirstChild("Mega-Pow");
    if not L_4196 then
        return ;
    end;
    local L_4197 = L_4196:FindFirstChild("MinigunHandleServer");
    if not L_4197 then
        return ;
    end;
    local L_4198 = L_4197:WaitForChild("input");
    local L_4199 = L_4197:WaitForChild("updateBarrelPosition");
    local L_4200 = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Block");
    local L_4207 = function(L_4201)
        local L_4202 = {};
        local L_4203 = workspace:FindFirstChild("NPCs");
        if not L_4203 then
            return L_4202;
        end;
        for L_4204, L_4205 in L_4203:GetChildren() do
            if L_4205.Name == L_4201 then
                local L_4206 = L_4205.PrimaryPart and L_4205.PrimaryPart.Position or L_4205:FindFirstChild(L_33) and L_4205.HumanoidRootPart.Position;
                if L_4206 then
                    table.insert(L_4202, { model = L_4205, position = L_4206 });
                end;
            end;
        end;
        return L_4202;
    end;
    local L_4211 = function()
        local L_4208 = L_4207("Megalodon");
        if #L_4208 == 0 then
            L_4208 = L_4207("Kraken");
        end;
        if #L_4208 == 0 then
            return nil;
        end;
        if #L_4208 == 1 then
            return L_4208[1].position;
        end;
        if #L_4208 >= 2 then
            local L_4209 = L_4208[1];
            local L_4210 = L_4208[2];
            if (L_4209.position - L_4210.position).Magnitude <= 50 then
                return (L_4209.position + L_4210.position) / 2;
            end;
        end;
        return L_4208[1].position;
    end;
    local L_4212 = L_4211();
    if not L_4212 then
        return ;
    end;
    L_4200:InvokeServer(false, "Melee", false);
    local L_4213 = L_4198:InvokeServer(true, L_4212);
    if not L_4213 then
        return ;
    end;
    local L_4214 = tick();
    task.spawn(function()
        while L_4213 and L_4213.Parent and tick() - L_4214 < 5 do
            local L_4215 = L_4211();
            if not L_4215 then
                break;
            end;
            L_4200:InvokeServer(true, "Melee", true);
            local L_4216 = L_4215 + Vector3.new(0, 5, 0);
            local L_4217 = L_4215 + Vector3.new(0, -2, 0);
            L_4199:FireServer(L_4216);
            L_4213:FireServer(L_4217);
            task.wait();
        end;
        L_4200:InvokeServer(false, "Melee", false);
        L_4198:InvokeServer(false);
        return ;
    end);
    return ;
end;
getgenv().Anchor = false;
getgenv().LastShip = nil;
getgenv().Weapon = "Mega-Pow";
getgenv().PartyAccount = nil;
getgenv().AnchorAccount = nil;
getgenv().AnchorPosition = nil;
GetPartyPosition = function(L_4218)
    local L_4219 = game.Players:FindFirstChild(L_4218);
    if L_4219 and L_4219.Party.Value then
        return game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("getPartyPosition"):InvokeServer(L_4219);
    end;
    return ;
end;
IsPositionInRange = function(L_4220, L_4221, L_4222)
    return (Vector3.new(L_4220.X, 0, L_4220.Z) - Vector3.new(L_4221.X, 0, L_4221.Z)).Magnitude <= L_4222;
end;
GetKraken = function()
    local L_4223 = workspace.NPCs:FindFirstChild("Kraken");
    if L_4223 and (player:FindFirstChild("AssistFolder") and player.AssistFolder:FindFirstChild("Kraken")) then
        return L_4223;
    end;
    return nil;
end;
local L_4229 = function()
    for L_4224, L_4225 in next, workspace.NPCs:GetChildren() do
        if L_4225.Name == "Kraken" then
            local L_4226 = L_4225:FindFirstChild("Animator", true);
            if L_4226 then
                for L_4227, L_4228 in next, L_4226:GetPlayingAnimationTracks() do
                    if L_4228.Animation and L_4228.Animation.AnimationId == "rbxassetid://6458373675" and L_4228.TimePosition > 1 then
                        return true;
                    end;
                end;
            end;
        end;
    end;
    return false;
end;
HoroAttack = function(L_4230)
    if not L_4230 then
        return ;
    end;
    getgenv().HoroCD = getgenv().HoroCD or 0;
    if tick() - getgenv().HoroCD < 1 then
        return ;
    end;
    getgenv().HoroCD = tick();
    task.spawn(function()
        local L_4231 = game:GetService("ReplicatedStorage"):FindFirstChild(player.Name .. "|ServerScriptService.Skills.Skills.SkillContainer.Horo-Horo.Mini Hollow Barrage");
        if not L_4231 then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer("Mini Hollow Barrage");
        else
            warn("got remote");
            for L_4232, L_4233 in next, game:GetService("ReplicatedStorage"):GetChildren() do
                if L_4233.Name:match("Mini Hollow Barrage") then
                    for L_4234 = 1, 100, 1 do
                        L_4231:FireServer({ Target = L_4230, cf = CFrame.new(L_4230:GetPivot().Position) });
                        task.wait();
                    end;
                    L_4233:Destroy();
                end;
            end;
        end;
        return ;
    end);
    return ;
end;
GkkSection.CreateToggle({ Title = "Gkk Farm", Desc = "chat this might be the one", Default = false }, function(L_4235)
    local L_4236 = false;
    getgenv().GkkFarm = L_4235;
    local L_4237 = Vector3.new(-291, 307, 1641);
    local L_4238 = Vector3.new(-5890, 250, 7484);
    local L_4239 = Vector3.new(-5877, 200, 7484);
    local L_4240 = Vector3.new(-5800, 150, 7600);
    if not L_4235 then
        return ;
    end;
    for L_4241, L_4242 in next, workspace.ZipLines:GetDescendants() do
        if L_4242.Name == "ZiplineRails" then
            for L_4243, L_4244 in next, L_4242:GetChildren() do
                L_4244:Destroy();
            end;
        end;
    end;
    task.spawn(function()
        while getgenv().GkkFarm and task.wait(1) do
            FakeGeppo();
            if getgenv().AnchorAccount then
                getgenv().AnchorPosition = GetPartyPosition(getgenv().AnchorAccount);
            end;
        end;
        return ;
    end);
    task.spawn(function()
        while getgenv().GkkFarm and task.wait(1) do
            for L_4245, L_4246 in next, player.Backpack:GetChildren() do
                local L_4250, L_4251 = pcall(function()
                    if L_4246:GetAttribute("verifiedFruit") and L_2631(L_4246.Name) < 1 then
                        warn(L_4246.Name);
                        player.Character.Humanoid:UnequipTools();
                        getgenv().Busy = true;
                        task.wait(0.5);
                        local L_4247 = 0;
                        repeat
                            task.wait();
                            if L_4246 and L_4246.Parent == player.Backpack then
                                L_4246.Parent = player.Character;
                                task.wait(1);
                            end;
                            local L_4248, L_4249 = pcall(function()
                                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FruitStorage"):InvokeServer(true);
                                return ;
                            end);
                            L_4247 = L_4247 + 1;
                        until not L_4246 or not L_4246.Parent or L_4247 > 100;
                    end;
                    return ;
                end);
                if not L_4250 then
                    warn("storing errored :", L_4251);
                end;
            end;
            getgenv().Busy = false;
        end;
        return ;
    end);
    while getgenv().GkkFarm and task.wait() do
        LPH_NO_VIRTUALIZE(function()
            local N_3, N_4 = pcall(function()
                if getgenv().GkkFarm and not getgenv().Lure and not getgenv().Anchor then
                    for N_0, N_1 in next, game.Players:GetPlayers() do
                        if not N_1.Party.Value then
                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PartySystem"):FireServer({ action = "invite", ply = N_1 });
                            task.wait(0.1);
                        end;
                    end;
                else
                    local N_2 = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("PartyInvite");
                    if N_2 then
                        N_2.Crew:FireServer(true);
                    end;
                end;
            end);
            if not N_3 then
                warn("party erroed: " .. tostring(N_4));
            end;
        end)();
        if not player.Character or not player.Character:GetAttribute("SpeedBypass") or not (player.Character:GetAttribute("SpeedBypass") < 15) then
            local L_4252 = GetKraken();
            local L_4253 = GetShip();
            if getgenv().Anchor then
                if not L_3920(L_4240, 10, true) then
                    HoroTpPro({
                        Position = L_4240,
                        Speed = L_2109() - 5,
                        Stop = function()
                            return getgenv().GkkFarm;
                        end
                    });
                elseif not L_3769() then
                    L_2156(L_4240 + Vector3.new(0, -25, 0));
                else
                    L_2156(L_4240 + Vector3.new(0, 600, 0));
                end;
            elseif getgenv().Lure then
                repeat
                    if not L_4236 and not (not getgenv().AnchorAccount or not getgenv().AnchorPosition) then
                        warn("here");
                        if IsPositionInRange(getgenv().AnchorPosition, L_4240, 100) then
                            L_4236 = true;
                        end;
                    elseif not L_4236 and not (not getgenv().AnchorAccount or getgenv().AnchorPosition or getgenv().AnchorAccount == "") then
                        warn("here2");
                    else
                        L_4236 = false;
                        if not L_3920(L_4239, 10, true) and (not getgenv().RadiantJewels or not getgenv().RadiantJewels.Parent) and (not getgenv().JewelsOfLight or not getgenv().JewelsOfLight.Parent) then
                            task.spawn(function()
                                PikaFlight(L_4239);
                                return ;
                            end);
                        else
                            if (not getgenv().RadiantJewels or not getgenv().RadiantJewels.Parent) and (not getgenv().JewelsOfLight or not getgenv().JewelsOfLight.Parent) then
                                L_2156(L_4239);
                            end;
                            if not L_4253 and L_3920(L_4239, 10, true) then
                                L_2156(L_4239 + Vector3.new(math.random(-10, 5), 0, math.random(1, 10)));
                                task.wait(0.1);
                                SpawnShip();
                                task.wait(0.1);
                            elseif L_4252 then
                                if not getgenv().Queued then
                                    queue_on_teleport(L_3753);
                                    getgenv().Queued = true;
                                    task.wait(1);
                                end;
                                task.wait(1);
                                game:GetService("TeleportService"):Teleport(1730877806, game.Players.LocalPlayer);
                            end;
                        end;
                    end;
                until not L_4236;
            elseif not L_3920(L_4238, L_2109() / 2, true) and (not getgenv().RadiantJewels or not getgenv().RadiantJewels.Parent) then
                HoroTpPro({
                    Position = L_4238,
                    Speed = L_2109() - 5,
                    Stop = function()
                        return getgenv().GkkFarm;
                    end
                });
            else
                if not getgenv().RadiantKick and not getgenv().RadiantJewels then
                    L_2156(L_4238);
                end;
                task.spawn(function()
                    if getgenv().Weapon == "Instant" then
                        EquipShit("Horo-Horo");
                        L_4252 = workspace.NPCs:FindFirstChild("Megalodon") or workspace.NPCs:FindFirstChild("Kraken");
                        HoroAttack(L_4252);
                    else
                        EquipShit("Mega-Pow");
                        MegaPowAttack(L_4252);
                    end;
                    return ;
                end);
            end;
        end;
    end;
    return ;
end);
GkkSection.CreateToggle({ Title = "Lure Account", Desc = "Enable this if ur a lure account", Default = false }, function(L_4254)
    getgenv().Lure = L_4254;
    return ;
end);
GkkSection.CreateDropdown({ Title = "Kill Method", List = { "Mega-Pow" }, Default = "Mega-Pow", Search = false, Selected = false }, function(L_4255)
    getgenv().Weapon = L_4255;
    return ;
end);
getgenv().Time = 1200;
Try2.CreateToggle({ Title = "Auto Rejoin", Desc = "Rejoins based on servertime", Default = false }, function(L_4256)
    getgenv().AutoRejoin = L_4256;
    if not L_4256 then
        return ;
    end;
    while getgenv().AutoRejoin and task.wait() do
        pcall(function()
            if workspace:GetAttribute("serverAge") and workspace:GetAttribute("serverAge") <= getgenv().Time then
                game.Players.LocalPlayer:Kick();
            end;
            return ;
        end);
    end;
    return ;
end);
Try2.CreateSlider({ Title = "Rejoin Time (In Seconds)", Min = 0, Max = 10000, Default = 1200, Precise = true }, function(L_4257)
    getgenv().Time = L_4257;
    return ;
end);
GetPresents = function()
    local L_4258 = {};
    for L_4259, L_4260 in next, workspace.Effects:GetChildren() do
        if L_4260.Name == "ChristmasGift" then
            local L_4261 = nil;
            for L_4262, L_4263 in next, workspace.Effects:GetChildren() do
                if L_4263:IsA("BasePart") and L_4263:FindFirstChildWhichIsA("ProximityPrompt") then
                    Distance = (L_4260:GetPivot().Position - L_4263:GetPivot().Position).Magnitude;
                    if Distance < 20 then
                        L_4261 = L_4263;
                    end;
                end;
            end;
            if L_4261 then
                table.insert(L_4258, L_4261);
            end;
        end;
    end;
    return L_4258;
end;
GetClosestPresent = function()
    local L_4264 = GetPresents();
    local L_4265 = nil;
    local L_4266 = math.huge;
    local L_4267 = player.Character;
    if not L_4267 then
        return nil;
    end;
    local L_4268 = L_4267:GetPivot().Position;
    for L_4269, L_4270 in next, L_4264, nil do
        local L_4271 = L_4270:FindFirstChildWhichIsA("ProximityPrompt");
        local L_4272 = (L_4270:GetPivot().Position - L_4268).Magnitude;
        if L_4272 < L_4266 then
            L_4265 = L_4270;
            L_4266 = L_4272;
        end;
    end;
    return L_4265;
end;
getgenv().AutoOpenGifts = false;
getgenv().Presents = 5;
getgenv().DropsWebhook = {};
getgenv().WebhookSanta = nil;
getgenv().AttackSanta = true;
getgenv().Die = false;
santaSection.CreateToggle({ Title = "Auto Santa", Desc = "Farms Santa", Default = false }, function(L_4273)
    getgenv().AutoSanta = L_4273;
    if L_4273 then
        getgenv().Zipl = false;
        for L_4274, L_4275 in next, workspace.ZipLines:GetDescendants() do
            if L_4275.Name == "ZiplineRails" then
                for L_4276, L_4277 in next, L_4275:GetChildren() do
                    L_4277:Destroy();
                end;
            end;
        end;
    end;
    task.spawn(pcall, function()
        if L_4273 and not getgenv().GG then
            local L_4278 = game.Players.LocalPlayer;
            local L_4279 = debug and debug.setconstant or setconstant;
            local L_4280 = debug and debug.getconstants or getconstants;
            if not L_4279 or not getgc or not L_4280 then
                return notify("Incompatible Exploit", "Your exploit does not support this command (missing setconstant or getconstants or getgc)");
            end;
            local L_4281 = L_4278.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper;
            for L_4282, L_4283 in pairs(getgc()) do
                if type(L_4283) == "function" and getfenv(L_4283).script == L_4281 then
                    for L_4284, L_4285 in pairs(L_4280(L_4283)) do
                        if tonumber(L_4285) == 0.25 then
                            L_4279(L_4283, L_4284, 0);
                        elseif tonumber(L_4285) == 0 then
                            L_4279(L_4283, L_4284, 0.25);
                        end;
                    end;
                end;
            end;
            getgenv().GG = true;
        end;
        if L_4273 and not getgenv().made then
            workspace.StreamingEnabled = false;
            getgenv().made = true;
            Connection = player.PlayerGui.Notifications.DescendantAdded:Connect(function(L_4286)
                if L_4286:IsA("TextLabel") then
                    if L_4286.Text == "heading" then
                        getgenv().Die = true;
                    end;
                    local L_4287 = L_4286.Text:gsub("[<>]", "");
                    warn(L_4287, table.find(SantaDrops, L_4287), table.find(getgenv().DropsWebhook, L_4287));
                    if table.find(SantaDrops, L_4287) and getgenv().AutoSanta and table.find(getgenv().DropsWebhook, L_4287) then
                        SantaWebhook(L_4287);
                    end;
                end;
                return ;
            end);
        end;
        return ;
    end);
    task.spawn(function()
        while getgenv().AutoSanta and task.wait(1) do
            task.spawn(function()
                warn("geppo");
                FakeGeppo();
                return ;
            end);
        end;
        return ;
    end);
    while getgenv().AutoSanta and task.wait() do
        if getgenv().Die then
            if getgenv().AutoOpenGifts then
                Presents = GetPresents();
                repeat
                    task.wait();
                    for L_4288, L_4289 in next, Presents, nil do
                        local L_4290 = GetClosestPresent();
                        if not L_4290 then
                            warn("break");
                            getgenv().Break = true;
                            break;
                        end;
                        local L_4291 = L_4290:GetPivot().Position;
                        if math.abs(L_4291.X) > 20000 or math.abs(L_4291.Y) > 20000 or math.abs(L_4291.Z) > 20000 then
                            warn("Present out of bounds, skipping");
                            L_4290:Destroy();
                        elseif not L_3920(L_4291, 10, true) then
                            HoroTpPro({
                                Position = L_4291,
                                Speed = 50,
                                Y = 1000,
                                Stop = function()
                                    return getgenv().AutoSanta;
                                end
                            });
                        else
                            L_2156(L_4291 + Vector3.new(0, 5, 0));
                            task.wait(0.1);
                            local L_4292 = L_4290:FindFirstChild("ProximityPrompt", true);
                            if L_4292 and L_4292.Enabled then
                                fireproximityprompt(L_4292);
                                task.wait(0.1);
                            else
                                L_4290:Destroy();
                            end;
                        end;
                    end;
                until #Presents < 1 or getgenv().Break;
            end;
            task.wait(10);
            player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position - Vector3.new(0, 1000, 0));
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ZiplineRemote"):InvokeServer(unpack({ "Exit" }));
            task.wait(5);
            if replicatesignal then
                replicatesignal(player.Kill);
            end;
            repeat
                task.wait();
            until player.Character and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("Humanoid").Health == player.Character:FindFirstChild("Humanoid").MaxHealth;
            warn("finish");
            getgenv().Die = false;
        end;
        if not getgenv().Zipl then
            local L_4293 = Vector3.new(-1290, 11, -5089);
            if not L_3920(L_4293, 10, true) then
                HoroTpPro({
                    Position = L_4293,
                    Speed = 50,
                    Stop = function()
                        return getgenv().AutoSanta or getgenv().Zipl;
                    end
                });
            elseif player.Character:GetAttribute("SpeedBypass") < 250 then
                if getgenv().Attempts < 5 then
                    getgenv().Busy = true;
                    player.Character.Humanoid:UnequipTools();
                    L_2156(L_4293);
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ZiplineRemote"):InvokeServer(unpack({ "Exit" }));
                    task.wait(1);
                    local L_4294 = { "Enter", -1, Vector3.new(-1290.2841796875, 18.644325256347656, -5087.14990234375) };
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ZiplineRemote"):InvokeServer(unpack(L_4294));
                    task.wait(3);
                    getgenv().Attempts = getgenv().Attempts + 1;
                else
                    getgenv().Busy = false;
                    getgenv().Zipl = true;
                end;
            elseif player.Character:GetAttribute("SpeedBypass") >= 250 then
                getgenv().Busy = false;
                getgenv().Zipl = true;
            end;
        else
            local L_4295 = workspace.NPCs:FindFirstChild("Santa's Sleigh");
            local L_4296 = GetPresents();
            if #L_4296 <= getgenv().Presents and getgenv().AutoOpenGifts then
                repeat
                    task.wait();
                    for L_4297, L_4298 in next, L_4296, nil do
                        local L_4299 = GetClosestPresent();
                        if not L_4299 then
                            warn("break");
                            getgenv().Break = true;
                            break;
                        end;
                        local L_4300 = L_4299:GetPivot().Position;
                        if math.abs(L_4300.X) > 20000 or math.abs(L_4300.Y) > 20000 or math.abs(L_4300.Z) > 20000 then
                            warn("Present out of bounds, skipping");
                            L_4299:Destroy();
                        elseif not L_3920(L_4300, 10, true) then
                            HoroTpPro({
                                Position = L_4300,
                                Speed = 50,
                                Y = 1000,
                                Stop = function()
                                    return getgenv().AutoSanta;
                                end
                            });
                        else
                            L_2156(L_4300 + Vector3.new(0, 5, 0));
                            task.wait(0.1);
                            local L_4301 = L_4299:FindFirstChild("ProximityPrompt", true);
                            if L_4301 and L_4301.Enabled then
                                fireproximityprompt(L_4301);
                                task.wait(0.1);
                            else
                                L_4299:Destroy();
                            end;
                        end;
                    end;
                until #L_4296 < 1 or getgenv().Break;
                getgenv().Break = false;
            elseif not L_4295 then
                Twunu(game:GetService("ReplicatedStorage").CompassGuider.Santa);
            elseif (L_4295:GetPivot().Position - Vector3.new(-5979, 57, -11496)).Magnitude < 1000 then
                warn("santa is in martine base we dont go");
            else
                local L_4302 = L_4295:GetPivot().Position;
                if not L_3920(L_4302, 10, true) then
                    Twunu(L_4295);
                else
                    if player.Character:GetAttribute("SpeedBypass") > 200 and getgenv().AttackSanta then
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ZiplineRemote"):InvokeServer(unpack({ "Exit" }));
                    end;
                    L_2156(L_4302);
                    if getgenv().AttackSanta then
                        task.spawn(function()
                            getgenv().GlobalHit(L_4295);
                            return ;
                        end);
                    end;
                end;
            end;
        end;
    end;
    return ;
end);
santaSection.CreateToggle({ Title = "Open Gifts/Presents", Desc = "Toggles wether to open presents", Default = false }, function(L_4303)
    getgenv().AutoOpenGifts = L_4303;
    return ;
end);
santaSection.CreateToggle({ Title = "Attack Santa", Desc = "Toggles wether to attack big boy santa", Default = true }, function(L_4304)
    getgenv().AttackSanta = L_4304;
    return ;
end);
santaSection.CreateSlider({ Title = "Open At X Presents", Min = 1, Max = 50, Default = 5, Precise = false }, function(L_4305)
    getgenv().Presents = L_4305;
    return ;
end);
santaSection.CreateBox({ Title = "Webhook", Placeholder = "https://discord.com/api/webhooks/...", Default = "", Number = false }, function(L_4306)
    getgenv().WebhookSanta = L_4306;
    return ;
end);
santaSection.CreateDropdown({ Title = "Drops", List = SantaDrops, Default = {}, Search = false, Selected = true }, function(L_4307, L_4308)
    local L_4309 = getgenv().DropsWebhook;
    if L_4308 then
        if not table.find(L_4309, L_4307) then
            table.insert(L_4309, L_4307);
        end;
    else
        for L_4310, L_4311 in ipairs(L_4309) do
            if L_4311 == L_4307 then
                table.remove(L_4309, L_4310);
                return ;
            end;
        end;
    end;
    return ;
end);
(function()
    return #(function()
        return (string.gsub("MIICWwIBAAKBgHvWktOQ5Tv0fArp1MB8guLrj+b7dun0WQ3Yj0HPJQ5HUkUXbf+C0KVD9exIiqPRVov1UO+dEqDsdLWJWwp3sSoP8oJMb9V8AOW8ldQ9wljlHvhGp6tUPjPiUWUTTDVmpmQyVH+lDJvsrx/iEsIm02Uwb/sqe1EzJmnekFU5fYxtAgMBAAECgYAbdSka9b6N+5hhRxVgFHtk2vwOJ+Vm3EG+myywV8CMmO252gcOpy+h5R6q5C6xQeIhqCPo7PfLbII4Ghtwh7dlHK/DVlpZMJi+YYrQlaihpvc7GgEaBMV1U/SehRxVApGPrpqZEzeW9xp8d2lOQQw+kaAF6aOgTb3/qVWhrR43VQJBAO9vXR5jTO0hriIDaY92FPjKsAXAmGeifApqq0Ihjze99zbQ91A3NvIyzHBWAP+IVgvKU8RKR4x5mRmywfwyky8CQQCEZ993IcVE3Km+Gl5pJTgt69gvNgkCAVEJtPczgpf3uEXMWMfPfhizNwI2NjcqvMlzWgez0onUXpqx6+plzCMjAkAuEszlYxBTdS6v5t4yN/OzKDWU9cmd75tU2c/YquKHRGvExZNBgU52bqX+W95XTaHZJPbXh7+a3W9Dja1cXVMLAkBwI9GeApojUojpG0gu4XkNW5yDj85dRmQuRni/xbGT+xwSkHbag7/DualD5PMgXTh5XBz97ikSFvYKDvc9NIHlAkEAvA+7KF6fjVaWUPNepwJ5tZhXFXeY7W7SnQ3B+V4nImvniFjQRcay/rpo5HPSIH2uTb2saCNl/GoHVosUbkM3og==", "==", ""));
    end)();
end)();
Twunu2 = function(L_4312, L_4313, L_4314, L_4315, L_4316, L_4317)
    local L_4318 = L_4313 or L_2109() - 15;
    local L_4319 = L_4314 or 150;
    local L_4320 = L_4315 or 500;
    if L_4316 == nil then
        L_4316 = true;
    end;
    if L_4317 == nil then
        L_4317 = true;
    end;
    local L_4321 = nil;
    local L_4322 = nil;
    if typeof(L_4312) == "Vector3" then
        L_4321 = L_4312;
    elseif typeof(L_4312) == "Instance" then
        if L_4312:IsA("ObjectValue") then
            L_4322 = L_4312;
            if not L_4312.Value then
                return ;
            end;
            L_4321 = L_4312.Value:GetPivot().Position;
        else
            L_4322 = L_4312;
            L_4321 = L_4312:GetPivot().Position;
        end;
    end;
    if not L_4321 then
        return ;
    end;
    if L_3113.running and L_3113.trackObject == L_4322 and L_4322 then
        return ;
    end;
    if L_3113.running and L_3113.target and not L_4322 and (Vector3.new(L_3113.target.X, 0, L_3113.target.Z) - Vector3.new(L_4321.X, 0, L_4321.Z)).Magnitude < 1 then
        return ;
    end;
    if L_3113.running then
        L_3113.target = L_4321;
        L_3113.trackObject = L_4322;
        L_3113.cancel = true;
        return ;
    end;
    (function()
        local L_4323 = false;
        local L_4324 = player.Character;
        local L_4325 = L_4324 and L_4324:FindFirstChild(L_33);
        local L_4326 = L_4324 and L_4324:FindFirstChild("Humanoid");
        if not L_4325 or not L_4326 then
            return ;
        end;
        L_3113.target = L_4321;
        L_3113.trackObject = L_4322;
        L_3113.running = true;
        L_3113.cancel = false;
        getgenv().Busy = true;
        L_4326:UnequipTools();
        local L_4327 = game:GetService("PathfindingService");
        local L_4328 = RaycastParams.new();
        L_4328.FilterType = Enum.RaycastFilterType.Exclude;
        L_4328.FilterDescendantsInstances = { L_4324 };
        local L_4329 = L_4325.Position.Y;
        local L_4330 = 0;
        local L_4331 = {};
        local L_4332 = 1;
        local L_4333 = nil;
        local L_4334 = 0;
        local L_4335 = {};
        local L_4338 = function()
            for L_4336, L_4337 in ipairs(L_4335) do
                if L_4337 and L_4337.Parent then
                    L_4337:Destroy();
                end;
            end;
            L_4335 = {};
            return ;
        end;
        local L_4346 = function(L_4339)
            L_4338();
            if not L_4317 then
                return ;
            end;
            for L_4340, L_4341 in ipairs(L_4339) do
                if L_4340 ~= 1 then
                    local L_4342 = Instance.new("Part");
                    L_4342.Name = "WaypointVisual_" .. L_4340;
                    L_4342.Anchored = true;
                    L_4342.CanCollide = false;
                    L_4342.CanQuery = false;
                    L_4342.CanTouch = false;
                    L_4342.Size = Vector3.new(1, 1, 1);
                    L_4342.Shape = Enum.PartType.Ball;
                    L_4342.Material = Enum.Material.Neon;
                    L_4342.Color = L_4341.Action == Enum.PathWaypointAction.Jump and Color3.fromRGB(255, 100, 100) or Color3.fromRGB(100, 255, 100);
                    L_4342.Position = L_4341.Position;
                    L_4342.Transparency = 0.3;
                    L_4342.Parent = workspace;
                    table.insert(L_4335, L_4342);
                    if L_4340 > 2 then
                        local L_4343 = L_4339[L_4340 - 1];
                        local L_4344 = (L_4341.Position - L_4343.Position).Magnitude;
                        local L_4345 = Instance.new("Part");
                        L_4345.Name = "WaypointLine_" .. L_4340;
                        L_4345.Anchored = true;
                        L_4345.CanCollide = false;
                        L_4345.CanQuery = false;
                        L_4345.CanTouch = false;
                        L_4345.Size = Vector3.new(0.2, 0.2, L_4344);
                        L_4345.Material = Enum.Material.Neon;
                        L_4345.Color = Color3.fromRGB(100, 200, 255);
                        L_4345.CFrame = CFrame.lookAt(L_4343.Position, L_4341.Position) * CFrame.new(0, 0, -L_4344 / 2);
                        L_4345.Transparency = 0.5;
                        L_4345.Parent = workspace;
                        table.insert(L_4335, L_4345);
                    end;
                end;
            end;
            return ;
        end;
        local L_4358 = function(L_4347, L_4348)
            local L_4349 = math.max(L_4348 + L_4319, L_4320 + L_4319);
            local L_4350 = Vector3.new(L_4347.X, L_4349, L_4347.Y);
            local L_4351 = Vector3.new(0, -(L_4349 + 1000), 0);
            local L_4352 = workspace:Raycast(L_4350, L_4351, L_4328);
            if L_4352 then
                local L_4353 = L_4352.Position.Y + 3;
                if L_4353 <= L_4320 then
                    return L_4353;
                end;
                local L_4354 = L_4352.Position.Y - 1;
                local L_4355 = Vector3.new(L_4347.X, L_4354, L_4347.Y);
                local L_4356 = workspace:Raycast(L_4355, Vector3.new(0, -2000, 0), L_4328);
                if L_4356 then
                    local L_4357 = L_4356.Position.Y + 3;
                    if L_4357 <= L_4320 then
                        return L_4357;
                    end;
                end;
            end;
            return nil;
        end;
        local L_4364 = function(L_4359, L_4360)
            local L_4361 = L_4327:CreatePath({ AgentRadius = 2, AgentHeight = 5, AgentCanJump = true, AgentCanClimb = false, WaypointSpacing = 4 });
            local L_4362, L_4363 = pcall(function()
                L_4361:ComputeAsync(L_4359, L_4360);
                return ;
            end);
            if L_4362 and L_4361.Status == Enum.PathStatus.Success then
                return L_4361:GetWaypoints();
            end;
            return nil;
        end;
        local L_4366 = function(L_4365)
            if not L_4316 then
                return false;
            end;
            if not L_4333 then
                return true;
            end;
            if (L_4365 - L_4333).Magnitude > 10 then
                return true;
            end;
            if #L_4331 == 0 then
                return true;
            end;
            if L_4332 < #L_4331 then
                return true;
            end;
            return false;
        end;
        local L_4367 = L_4329;
        while true do
            while true do
                L_4318 = L_2109() - 15;
                if L_3113.cancel then
                    break;
                end;
                if not getgenv().FishKaitun.Enabled and not getgenv().AutoSanta and not getgenv().AutoImpel then
                    L_4323 = true;
                end;
                if L_4323 then
                    break;
                end;
                if L_4322 then
                    if L_4322:IsA("ObjectValue") then
                        if not L_4322.Value then
                            L_4323 = true;
                        end;
                        if not L_4323 then
                            L_4321 = L_4322.Value:GetPivot().Position;
                        end;
                    else
                        L_4321 = L_4322:GetPivot().Position;
                    end;
                end;
                if L_4323 then
                    break;
                end;
                local L_4368 = task.wait();
                L_4334 = L_4334 + L_4368;
                local L_4369 = L_4325.Position;
                if (Vector3.new(L_4321.X, 0, L_4321.Z) - Vector3.new(L_4369.X, 0, L_4369.Z)).Magnitude <= 5 then
                    L_4325.CFrame = CFrame.new(L_4321);
                    L_4325.Velocity = Vector3.zero;
                    L_4325.AssemblyLinearVelocity = Vector3.zero;
                    L_4323 = true;
                end;
                if L_4323 then
                    break;
                end;
                if L_4316 and (L_4366(L_4321) or L_4334 > 1) then
                    local L_4370 = L_4364(L_4369, L_4321);
                    if L_4370 and #L_4370 > 1 then
                        L_4331 = L_4370;
                        L_4332 = 2;
                        L_4333 = L_4321;
                        L_4334 = 0;
                        L_4346(L_4331);
                    else
                        L_4331 = {};
                        L_4332 = 1;
                        L_4338();
                    end;
                end;
                local L_4371;
                if L_4316 and #L_4331 > 0 and L_4332 <= #L_4331 then
                    L_4371 = L_4331[L_4332].Position;
                    if (Vector3.new(L_4371.X, 0, L_4371.Z) - Vector3.new(L_4369.X, 0, L_4369.Z)).Magnitude <= 3 then
                        if L_4317 and L_4335[L_4332 - 1] then
                            L_4335[L_4332 - 1].Color = Color3.fromRGB(150, 150, 150);
                            L_4335[L_4332 - 1].Transparency = 0.7;
                        end;
                        L_4332 = L_4332 + 1;
                        if #L_4331 < L_4332 then
                            L_4371 = L_4321;
                        else
                            L_4371 = L_4331[L_4332].Position;
                        end;
                    end;
                else
                    L_4371 = L_4321;
                end;
                local L_4372 = Vector2.new(L_4369.X, L_4369.Z);
                local L_4373 = Vector2.new(L_4371.X, L_4371.Z) - L_4372;
                local L_4374 = L_4373.Magnitude;
                if not (L_4374 < 0.1) then
                    local L_4375 = L_4373.Unit;
                    local L_4376 = L_4372 + L_4375 * math.min(L_4318 * L_4368, L_4374);
                    local L_4377 = L_4358(L_4372 + L_4375 * math.min(L_4318 * 0.25, math.max(L_4374, 0.1)), L_4329);
                    if L_4377 then
                        L_4367 = L_4377;
                    end;
                    L_4330 = L_4330 + ((L_4367 - L_4329) * 200 - L_4330 * 25) * L_4368;
                    L_4329 = L_4329 + L_4330 * L_4368;
                    if L_4320 < L_4329 then
                        L_4329 = L_4320;
                        if L_4330 > 0 then
                            L_4330 = 0;
                        end;
                    end;
                    local L_4378 = Vector3.new(L_4375.X, 0, L_4375.Y);
                    L_4325.CFrame = CFrame.lookAt(Vector3.new(L_4376.X, L_4329, L_4376.Y), Vector3.new(L_4376.X, L_4329, L_4376.Y) + L_4378);
                    L_4325.Velocity = Vector3.zero;
                    L_4325.AssemblyLinearVelocity = Vector3.zero;
                end;
            end;
            if not L_4323 then
                if not L_4323 then
                    if not L_4323 then
                        L_3113.cancel = false;
                        L_4322 = L_3113.trackObject;
                    end;
                end;
            end;
            if L_4323 or (L_4323 or (L_4323 or not not L_4322)) then
                if L_4323 or (L_4323 or (L_4323 or not not L_4322:IsA("ObjectValue"))) then
                    if L_4323 or (L_4323 or (L_4323 or not L_4322.Value)) then
                        L_4323 = false;
                        L_4338();
                        getgenv().Busy = false;
                        L_3113.running = false;
                        L_3113.target = nil;
                        L_3113.trackObject = nil;
                        return ;
                    end;
                    L_4321 = L_4322.Value:GetPivot().Position;
                else
                    L_4321 = L_4322:GetPivot().Position;
                end;
            else
                L_4321 = L_3113.target;
            end;
            L_4331 = {};
            L_4332 = 1;
            L_4333 = nil;
            L_4338();
        end;
    end)();
    return ;
end;
LootChest = function()
    local L_4379 = nil;
    local L_4380 = math.huge;
    for L_4381, L_4382 in next, workspace.Effects:GetChildren() do
        if L_4382:FindFirstChildWhichIsA("ProximityPrompt", true) and L_4382:IsA("Model") and L_4382:FindFirstChildWhichIsA("ProximityPrompt", true).Parent:IsA("MeshPart") then
            Distance2 = (L_4382:GetPivot().Position - player.Character:GetPivot().Position).Magnitude;
            if Distance2 < L_4380 then
                L_4379 = L_4382;
                L_4380 = Distance2;
            end;
        end;
    end;
    if L_4379 then
        if not L_3920(L_4379:GetPivot().Position, 10, true) then
            Twunu2(L_4379:GetPivot().Position, 50, 30, 2090);
        else
            local L_4383 = L_4379:FindFirstChild("ProximityPrompt", true);
            local L_4384 = workspace.CurrentCamera;
            local L_4385 = game.Players.LocalPlayer.Character.HumanoidRootPart;
            local L_4386 = L_4383.Parent.Position;
            local L_4387 = L_4384.CFrame;
            L_4385.CFrame = CFrame.new(L_4386.X, L_4386.Y + 5, L_4386.Z) * CFrame.Angles(-math.pi / 2, 0, 0);
            L_4384.CameraSubject = L_4383.Parent;
            L_4384.CFrame = CFrame.lookAt(L_4385.Position, L_4386);
            task.wait();
            L_4383:InputHoldBegin();
            task.wait(L_4383.HoldDuration + 0.1);
            L_4383:InputHoldEnd();
            L_4384.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid");
            L_4384.CFrame = L_4387;
        end;
    end;
    return ;
end;
GetStat = function(L_4388)
    local L_4389 = 0;
    for L_4390, L_4391 in next, player.PlayerGui.Statistics.Main.Stats:GetChildren() do
        local L_4392 = L_4391:FindFirstChild("Stat", true);
        local L_4393 = L_4391:FindFirstChild("Amount", true);
        if L_4392 and L_4393 and L_4392.Text == L_4388 then
            L_4389 = tonumber(L_4393.Text);
        end;
    end;
    return L_4389;
end;
local L_4398 = function()
    local L_4394 = 1;
    for L_4395, L_4396 in next, game:GetService("Players").LocalPlayer.PlayerGui.ImpelDownUI.Info.Timers:GetChildren() do
        if L_4396.Name:match("Floor") then
            local L_4397 = L_4396.Name:match("%d+");
            if L_4397 then
                L_4394 = tonumber(L_4397);
                return L_4394;
            end;
        end;
    end;
    return L_4394;
end;
ZonesReally = { Vector3.new(2951, 2081, -13983) };
HasZone = function()
    for L_4399, L_4400 in next, workspace.NPCs:GetChildren() do
        if L_4400:IsA("Model") and L_4400:FindFirstChild("Humanoid") then
            for L_4401, L_4402 in next, ZonesReally, nil do
                Distance = (L_4400:GetPivot().Position - L_4402).Magnitude;
                if Distance < 150 then
                    return L_4402;
                end;
            end;
        end;
    end;
    return nil;
end;
PutMines = function()
    local L_4403 = ReplicatedStorage:FindFirstChild(player.Name .. "|ServerScriptService.Skills.Skills.SkillContainer.Bomb-Bomb.Explosive Mines");
    if not L_4403 then
        task.spawn(function()
            ReplicatedStorage:FindFirstChild("Events"):FindFirstChild("Skill"):InvokeServer("Explosive Mines");
            return ;
        end);
    else
        task.wait(1.5);
        L_4403:InvokeServer({ cf = player.Character.HumanoidRootPart.CFrame });
    end;
    return ;
end;
HasRange = function()
    return ;
end;
ImeplSection.CreateToggle({ Title = "Auto Impel Down", Desc = "Farms Impel Down", Default = false }, function(L_4404)
    if L_4404 then
        Library.CreateNoti({ Title = "Soon", Desc = "This feature is not finished yet", ShowTime = 4 });
        return ;
    end;
    getgenv().AutoImpel = L_4404;
    task.spawn(function()
        while getgenv().AutoImpel and task.wait(1) do
            FakeGeppo();
            if player.Character:FindFirstChild("Bomb-Bomb") or player.Backpack:FindFirstChild("Bomb-Bomb") then
                if GetStat("Devil Fruit") < 700 then
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(unpack({ "DevilFruitMastery", nil, 700 }));
                end;
                local L_4405 = game:GetService("ReplicatedStorage"):FindFirstChild(player.Name .. "|ServerScriptService.Skills.Skills.SkillContainer.Bomb-Bomb.Explosive Leap");
                if not L_4405 then
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Skill"):InvokeServer(unpack({ "Explosive Leap" }));
                else
                    L_4405:FireServer({ cf = CFrame.new(0, 0, 0), extra = 0 });
                end;
            end;
        end;
        return ;
    end);
    while getgenv().AutoImpel and task.wait() do
        if game.PlaceId ~= 11424731604 then
            local L_4406 = Vector3.new(5878, 9, -10214);
            if not L_3920(L_4406, 10, true) then
                HoroTpPro({
                    Position = L_4406,
                    Speed = 50,
                    Stop = function()
                        return getgenv().AutoImpel;
                    end
                });
            else
                L_2156(L_4406);
            end;
        elseif not player.PlayerGui:FindFirstChild("diffChooser") then
            if L_4398() == 1 then
                warn("FLOOR 1");
                if L_3920(Vector3.new(5906, 9, -10197), 300, true) then
                    local L_4407 = workspace.NPCs:FindFirstChild("Vera");
                    if L_4407 and not L_3920(L_4407:GetPivot().Position, 10, true) then
                        HoroTpPro({
                            Position = L_4407:GetPivot().Position,
                            Speed = 50,
                            Stop = function()
                                return getgenv().AutoImpel;
                            end
                        });
                    elseif L_4407 and L_3920(L_4407:GetPivot().Position, 10, true) then
                        L_2156(L_4407:GetPivot().Position);
                        task.spawn(function()
                            getgenv().GlobalHit(L_4407);
                            return ;
                        end);
                    end;
                elseif player.Character:FindFirstChild("LeftCuff") then
                    local L_4408 = workspace.Effects:FindFirstChild("Key");
                    if L_4408 then
                        if not L_3920(L_4408:GetPivot().Position, 10, true) then
                            HoroTpPro({
                                Position = L_4408:GetPivot().Position,
                                Y = L_4408:GetPivot().Position.Y,
                                Speed = 50,
                                Stop = function()
                                    return getgenv().AutoImpel;
                                end
                            });
                        else
                            L_2156(L_4408:GetPivot().Position);
                            local L_4409 = L_4408:FindFirstChild("ProximityPrompt", true);
                            task.wait();
                            L_4409:InputHoldBegin();
                            task.wait(L_4409.HoldDuration);
                            L_4409:InputHoldEnd();
                            task.wait();
                        end;
                    end;
                elseif not player.Backpack:FindFirstChild("Bomb-Bomb") then
                    warn("we dont have bomb");
                    if not player.Character:FindFirstChild("Bomb") then
                        if player.Backpack:FindFirstChild("Bomb") then
                            player.Backpack:FindFirstChild("Bomb").Parent = player.Character;
                            task.wait(1);
                        elseif workspace.Effects:FindFirstChild("Bomb") then
                            if not L_3920(workspace.Effects:FindFirstChild("Bomb"):GetPivot().Position, 10, true) then
                                Twunu2(workspace.Effects:FindFirstChild("Bomb"):GetPivot().Position, 50, 30, 2090);
                            else
                                local L_4410 = workspace.Effects:FindFirstChild("Bomb"):FindFirstChild("ProximityPrompt", true);
                                warn(L_4410:GetFullName());
                                L_4410:InputHoldBegin();
                                task.wait(L_4410.HoldDuration + 0.1);
                                L_4410:InputHoldEnd();
                            end;
                        else
                            LootChest();
                        end;
                    elseif not player.PlayerGui:FindFirstChild("ConfirmationPrompt") then
                        player.Character:FindFirstChild("Bomb"):Activate();
                    else
                        firesignal(game:GetService("Players").LocalPlayer.PlayerGui.ConfirmationPrompt.Main.OptionsFrame.Accept.MouseButton1Click);
                    end;
                elseif player.Backpack:FindFirstChild("Bomb-Bomb") then
                    warn("we do have bomb");
                    local L_4411 = workspace.Islands["Impel Base - Floor 1"].Barriers:FindFirstChild("StartBarrier");
                    if L_4411 and L_4411.CanCollide then
                        warn("twuning");
                        Twunu2(L_4411.Position, 50, 30, 2090, false);
                    end;
                    if HasZone() then
                        if not L_3920(HasZone(), 10, true) then
                            warn("twuning");
                            Twunu2(HasZone(), 50, 30, 2090, false);
                        else
                            L_2156(HasZone() + Vector3.new(0, 4, 0));
                            PutMines();
                        end;
                    else
                        local L_4412 = Vector3.new(0, 0, -40);
                        if workspace.Effects.Zones:FindFirstChild("End") then
                            local L_4413 = workspace.Effects.Zones:FindFirstChild("End").Position + L_4412;
                            if not L_3920(L_4413, 10, true) then
                                Twunu(L_4413, 50, 3000);
                            else
                                L_2156(L_4413 + Vector3.new(0, 4, 0));
                                PutMines();
                            end;
                        else
                            Twunu(Vector3.new(2880, 2783, -14473) + L_4412, 50, 3000);
                        end;
                    end;
                end;
            elseif L_4398() == 2 then
                if L_3920(Vector3.new(3199, 2405, -20056), 50, true) then
                    Twunu(Vector3.new(3201, 2384, -20276));
                end;
                if not HasRange() then
                end;
            end;
        end;
    end;
    return ;
end);
task.spawn(function()
    task.wait(0.5);
    local L_4414 = game:GetService("Players").LocalPlayer;
    local L_4415 = game:GetService("HttpService");
    local L_4416 = false;
    if isfile(FilePath) then
        local L_4417, L_4418 = pcall(function()
            return L_4415:JSONDecode(readfile(FilePath));
        end);
        if L_4417 and type(L_4418) == "table" then
            local L_4419 = (L_4418.accounts or {})[L_4414.Name];
            if L_4419 then
                local L_4420 = nil;
                if type(L_4419) == "table" and L_4419.config and L_4419.config ~= "" then
                    L_4420 = L_4419.config;
                end;
                if L_4420 then
                    local L_4421, L_4422 = getgenv().FeralConfig.Load(L_4420);
                    if L_4421 then
                        Library.CreateNoti({ Title = "Config", Desc = "Auto-loaded account config \"" .. L_4420 .. "\" for " .. L_4414.Name, ShowTime = 4 });
                        L_4416 = true;
                    else
                        Library.CreateNoti({ Title = "Config", Desc = "Account config load failed: " .. tostring(L_4422), ShowTime = 4 });
                    end;
                end;
            end;
        end;
    end;
    if not L_4416 then
        if not L_3725 then
            return ;
        end;
        if not L_3717() then
            return ;
        end;
        local L_4423 = L_3722();
        local L_4424, L_4425 = getgenv().FeralConfig.Load(L_4423);
        if L_4424 then
            Library.CreateNoti({ Title = "Config", Desc = "Auto-loaded \"" .. L_4423 .. "\"", ShowTime = 4 });
        else
            Library.CreateNoti({ Title = "Config", Desc = "Auto-load failed: " .. tostring(L_4425), ShowTime = 4 });
        end;
    end;
    return ;
end);
return ;
