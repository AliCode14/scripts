-- Script UI Library
-- Contains the UI library and the integrated King Legacy script.

repeat task.wait() until game:IsLoaded()

-- Constantes restaurees depuis la version decompilee.
local L_32 = "Frame"
local L_34 = "Text Color"
local L_35 = true
local L_36 = true
local L_502 = 2444
local L_503 = 1353
local L_618 = game:GetService("HttpService")

local L_506_VALUES = {
    [2773] = 11269,
    [4833] = 14529,
    [6683] = 25499,
    [7464] = 25752,
    [8065] = 26545,
    [8732] = 28556,
    [9057] = 28761,
}
local L_507_VALUES = {
    [4755] = 2880,
    [4768] = 2768,
    [6015] = 6640,
    [6121] = 6496,
    [6966] = 9216,
    [9937] = 1312,
}
local L_508_VALUES = {
    [1412] = 170,
    [1761] = 332,
    [3356] = 234,
    [3837] = 59,
    [3904] = 130,
    [3995] = 85,
    [6911] = 66,
    [7591] = 39,
    [8915] = 148,
}

local function L_506(value)
    return L_506_VALUES[value]
end

local function L_507(value)
    return L_507_VALUES[value]
end

local function L_508(value)
    return L_508_VALUES[value]
end

local L_622 = {
    Toggles = {},
    Sliders = {},
    Dropdowns = {},
    Keybinds = {},
    Boxes = {},
}
local L_626 = function(L_623, L_624, L_625)
    if L_507(6015) == 6640 then
        return tostring(L_623) .. "||" .. tostring(L_624) .. "||" .. tostring(L_625);
    end;
    while true do
    end;
end;
local RequirementsTracker = {
    UserHas = {},
    Presets = {},
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
        if game.CoreGui:FindFirstChild("Script UI") or game.CoreGui:FindFirstChild("Script UI Notification") then
        for L_635, L_636 in ipairs(game.CoreGui:GetChildren()) do
                if L_636.Name == "Script UI" or L_636.Name == "Script UI Notification" then
                L_636:Destroy();
            end;
        end;
    end;
    getgenv().Tvk = true;
    getgenv().Chon = true;
    local L_637 = { ["Border Color"] = Color3.fromRGB(131, 181, 255), ["Click Effect Color"] = Color3.fromRGB(230, 230, 230), ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230), ["Logo Image"] = "", ["Search Icon Color"] = Color3.fromRGB(255, 255, 255), ["Search Icon Highlight Color"] = Color3.fromRGB(131, 181, 255), ["GUI Text Color"] = Color3.fromRGB(230, 230, 230), [L_34] = Color3.fromRGB(230, 230, 230), ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178), ["Title Text Color"] = Color3.fromRGB(131, 181, 255), ["Background 1 Color"] = Color3.fromRGB(43, 43, 43), ["Background 1 Transparency"] = 0.25, ["Background 2 Color"] = Color3.fromRGB(90, 90, 90), ["Background 3 Color"] = Color3.fromRGB(53, 53, 53), ["Background Blur Transparency"] = 0.7, ["Background Image"] = "", ["Page Selected Color"] = Color3.fromRGB(131, 181, 255), ["Section Text Color"] = Color3.fromRGB(131, 181, 255), ["Section Underline Color"] = Color3.fromRGB(131, 181, 255), ["Toggle Border Color"] = Color3.fromRGB(131, 181, 255), ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230), ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185), ["Button Color"] = Color3.fromRGB(131, 181, 255), ["Label Color"] = Color3.fromRGB(101, 152, 220), ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230), ["Dropdown Selected Color"] = Color3.fromRGB(131, 181, 255), ["Textbox Highlight Color"] = Color3.fromRGB(131, 181, 255), ["Box Highlight Color"] = Color3.fromRGB(131, 181, 255), ["Slider Line Color"] = Color3.fromRGB(75, 75, 75), ["Slider Highlight Color"] = Color3.fromRGB(59, 82, 115), ["Tween Animation 1 Speed"] = 0.25, ["Tween Animation 2 Speed"] = 0.5, ["Tween Animation 3 Speed"] = 0.1 };
    local L_638 = { ["Border Color"] = Color3.fromRGB(40, 40, 40), ["Click Effect Color"] = Color3.fromRGB(60, 60, 60), ["Setting Icon Color"] = Color3.fromRGB(200, 200, 200), ["Logo Image"] = "", ["Search Icon Color"] = Color3.fromRGB(200, 200, 200), ["Search Icon Highlight Color"] = Color3.fromRGB(90, 160, 255), ["GUI Text Color"] = Color3.fromRGB(220, 220, 220), [L_34] = Color3.fromRGB(220, 220, 220), ["Placeholder Text Color"] = Color3.fromRGB(150, 150, 150), ["Title Text Color"] = Color3.fromRGB(90, 160, 255), ["Background Main Color"] = Color3.fromRGB(20, 20, 20), ["Background 1 Color"] = Color3.fromRGB(30, 30, 30), ["Background 1 Transparency"] = 0.25, ["Background 2 Color"] = Color3.fromRGB(45, 45, 45), ["Background 3 Color"] = Color3.fromRGB(25, 25, 25), ["Background Blur Transparency"] = 0.7, ["Background Image"] = "", ["Page Selected Color"] = Color3.fromRGB(90, 160, 255), ["Section Text Color"] = Color3.fromRGB(90, 160, 255), ["Section Underline Color"] = Color3.fromRGB(90, 160, 255), ["Toggle Border Color"] = Color3.fromRGB(90, 160, 255), ["Toggle Checked Color"] = Color3.fromRGB(220, 220, 220), ["Toggle Desc Color"] = Color3.fromRGB(180, 180, 180), ["Button Color"] = Color3.fromRGB(90, 160, 255), ["Label Color"] = Color3.fromRGB(90, 160, 255), ["Dropdown Icon Color"] = Color3.fromRGB(200, 200, 200), ["Dropdown Selected Color"] = Color3.fromRGB(90, 160, 255), ["Textbox Highlight Color"] = Color3.fromRGB(90, 160, 255), ["Box Highlight Color"] = Color3.fromRGB(90, 160, 255), ["Slider Line Color"] = Color3.fromRGB(60, 60, 60), ["Slider Highlight Color"] = Color3.fromRGB(70, 130, 200), ["Tween Animation 1 Speed"] = 0.25, ["Tween Animation 2 Speed"] = 0.5, ["Tween Animation 3 Speed"] = 0.1 };
    L_637["Logo Image"] = "";
    L_638["Logo Image"] = "";
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
        if not isfolder("ScriptUI") then
            makefolder("ScriptUI");
        end;
        writefile("ScriptUI/" .. L_656, L_657:JSONEncode(CorrectTable(L_642)));
        return ;
    end;
    ReadCustomUISetting = function()
        local L_662, L_663 = pcall(function()
            local L_658 = game:GetService("HttpService");
            if not isfolder("ScriptUI") then
                makefolder("ScriptUI");
            end;
            if L_502 + 489 ~= 2933 then
                while true do
                end;
            end;
            local L_659 = L_658:JSONDecode(readfile("ScriptUI/" .. L_656));
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
    local L_665 = "ScriptUI/Configs";
    if L_502 - 683 ~= 1761 then
        while true do
        end;
    end;
    local L_666 = function()
        if not isfolder("ScriptUI") then
            makefolder("ScriptUI");
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
    getgenv().ScriptUIConfig = L_664;
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
                warn("[Script UI] UIColor __newindex got nil key, ignoring.");
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
    getgenv().SH_UI_Backgrounds = getgenv().SH_UI_Backgrounds or {
        { Name = "Default", Url = "" },
        { Name = "JoJo 1", Url = "bg1.jpg" },
        { Name = "JoJo 2", Url = "bg2.jpg" },
    };
    -- >>> SH UI : mets ici l URL de base de tes images (GitHub raw, etc.)
    -- ex: "https://raw.githubusercontent.com/USER/REPO/main/"
    if getgenv().SH_UI_BaseURL == nil or getgenv().SH_UI_BaseURL == "" then
        getgenv().SH_UI_BaseURL = "https://raw.githubusercontent.com/AliCode14/scripts/main/";
    end;

    getgenv().SH_UI_Themes = getgenv().SH_UI_Themes or {
        {
            Name = "JoJo 1",
            Url = "bg1.jpg",
            Accent = Color3.fromRGB(247, 196, 32),
            Accent2 = Color3.fromRGB(46, 140, 60),
            BgMain = Color3.fromRGB(18, 16, 8),
            Bg1 = Color3.fromRGB(30, 27, 12),
            Bg2 = Color3.fromRGB(46, 41, 18),
            Bg3 = Color3.fromRGB(14, 12, 6),
            Text = Color3.fromRGB(255, 250, 230),
            Desc = Color3.fromRGB(215, 205, 160),
            Placeholder = Color3.fromRGB(170, 160, 120),
            Line = Color3.fromRGB(72, 64, 30),
            Click = Color3.fromRGB(62, 54, 18),
        },
        {
            Name = "JoJo 2",
            Url = "bg2.jpg",
            Accent = Color3.fromRGB(255, 111, 165),
            Accent2 = Color3.fromRGB(127, 231, 224),
            BgMain = Color3.fromRGB(22, 14, 26),
            Bg1 = Color3.fromRGB(34, 22, 40),
            Bg2 = Color3.fromRGB(52, 34, 60),
            Bg3 = Color3.fromRGB(16, 10, 20),
            Text = Color3.fromRGB(255, 240, 250),
            Desc = Color3.fromRGB(225, 200, 225),
            Placeholder = Color3.fromRGB(180, 160, 190),
            Line = Color3.fromRGB(70, 50, 80),
            Click = Color3.fromRGB(60, 40, 66),
        },
        {
            Name = "Zoro",
            Url = "bg3.jpg",
            Accent = Color3.fromRGB(70, 200, 110),
            Accent2 = Color3.fromRGB(30, 120, 70),
            BgMain = Color3.fromRGB(10, 18, 12),
            Bg1 = Color3.fromRGB(18, 30, 22),
            Bg2 = Color3.fromRGB(28, 46, 34),
            Bg3 = Color3.fromRGB(8, 14, 10),
            Text = Color3.fromRGB(235, 255, 240),
            Desc = Color3.fromRGB(180, 215, 190),
            Placeholder = Color3.fromRGB(140, 175, 150),
            Line = Color3.fromRGB(40, 70, 52),
            Click = Color3.fromRGB(30, 55, 40),
        },
        {
            Name = "Luffy Gear 5",
            Url = "bg4.jpg",
            Accent = Color3.fromRGB(255, 235, 180),
            Accent2 = Color3.fromRGB(230, 60, 60),
            BgMain = Color3.fromRGB(20, 16, 12),
            Bg1 = Color3.fromRGB(32, 26, 20),
            Bg2 = Color3.fromRGB(48, 40, 30),
            Bg3 = Color3.fromRGB(14, 11, 8),
            Text = Color3.fromRGB(255, 250, 240),
            Desc = Color3.fromRGB(225, 210, 190),
            Placeholder = Color3.fromRGB(180, 165, 145),
            Line = Color3.fromRGB(70, 58, 42),
            Click = Color3.fromRGB(60, 48, 30),
        },
    };
    local L_732 = {};
    local L_733 = game:GetService("TweenService");
    local L_734 = game:GetService("UserInputService");
    L_732.ButtonEffect = function()
        return ;
    end;
    L_732.GetIMG = function(L_735)
        local L_736 = "SynAsset [";
        local L_737 = "";
        if type(L_735) == "string" and L_735 ~= "" and not string.find(L_735, "rbxassetid://") and not string.find(L_735, "^https?://") and isfile(L_735) then
            local SH_ok, SH_uri = pcall(function()
                return getcustomasset(L_735);
            end);
            if SH_ok and SH_uri then
                return SH_uri;
            end;
        end;
        if type(L_735) == "string" and string.find(L_735, "^https?://") then
            local SH_ok, SH_uri = pcall(function()
                local SH_data = game:HttpGet(L_735);
                if type(SH_data) ~= "string" or #SH_data == 0 then
                    return nil;
                end;
                local SH_sig = string.sub(SH_data, 1, 3);
                if SH_sig ~= string.char(255, 216, 255) and string.sub(SH_data, 1, 3) ~= string.char(137, 80, 78) then
                    return nil;
                end;
                local SH_ext = ".png";
                if string.sub(SH_data, 1, 2) == string.char(255, 216) then
                    SH_ext = ".jpg";
                end;
                local SH_key = string.sub(string.gsub(L_735, "[^%w]", "_"), -60);
                local SH_name = "SH_cache_" .. SH_key .. SH_ext;
                local SH_valid = false;
                if isfile(SH_name) then
                    local SH_old = readfile(SH_name);
                    if type(SH_old) == "string" and #SH_old > 16 and string.sub(SH_old, 1, 3) == string.sub(SH_data, 1, 3) then
                        SH_valid = true;
                    end;
                end;
                if not SH_valid then
                    writefile(SH_name, SH_data);
                end;
                return getcustomasset(SH_name);
            end);
            if SH_ok and SH_uri then
                return SH_uri;
            end;
        end;
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
    local SH_GetBlurPath = function(SH_path)
        if type(SH_path) ~= "string" or SH_path == "" then
            return nil;
        end;
        local SH_base, SH_ext = string.match(SH_path, "^(.-)(%.[%w]+)$");
        if not SH_base then
            return nil;
        end;
        return SH_base .. "_blur" .. SH_ext;
    end;
    L_732.Gui = Instance.new("ScreenGui");
    L_732.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
    L_732.Gui.Name = "Script UI";
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
    L_732.NotiGui.Name = "Script UI Notification";
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
    if not isfolder("ScriptUI") then
        makefolder("ScriptUI");
    end;
    local L_799, L_800 = pcall(function()
        return game.HttpService:JSONDecode(readfile("ScriptUI/!UIText.json"));
    end);
    SaveFile = function()
        pcall(function()
            writefile("ScriptUI/!UIText.json", game.HttpService:JSONEncode(getgenv().TranslateCache));
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
        L_809.CornerRadius = UDim.new(0, 10);
        L_809.Parent = L_808;
        L_810.Name = "Topnoti";
        L_810.Parent = L_808;
        L_810.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_810.BackgroundTransparency = 1;
        L_810.Position = UDim2.new(0, 0, 0, 5);
        L_810.Size = UDim2.new(1, 0, 0, 25);
        L_811.Name = "Ruafimg";
        L_811.Parent = L_810;
        L_811.Visible = false;
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
        L_813.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().TitleNameNoti;
        table.insert(L_639["Title Text Color"], function()
            L_813.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().TitleNameNoti;
            return ;
        end);
        L_813.Name = "TextLabelNoti";
        L_813.Parent = L_810;
        L_813.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_813.BackgroundTransparency = 1;
        L_813.Position = UDim2.new(0, 10, 0, 0);
        L_813.Size = UDim2.new(1, -15, 1, 0);
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
        local L_820 = tostring(L_819.Title) or "ScriptUI";
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
                            if getgenv().SH_UI_DragMode then pcall(getgenv().SH_UI_DragMode, false); end;
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
                    if getgenv().SH_UI_DragMode and (L_831.X * L_831.X + L_831.Y * L_831.Y) > 16 then pcall(getgenv().SH_UI_DragMode, true); end;
                    local SH_cam = workspace.CurrentCamera;
                    local SH_vp = SH_cam and SH_cam.ViewportSize or Vector2.new(1920, 1080);
                    local SH_size = L_823.AbsoluteSize;
                    local SH_ap = L_823.AnchorPoint;
                    local SH_px = L_827.X.Scale * SH_vp.X + L_827.X.Offset + L_831.X;
                    local SH_py = L_827.Y.Scale * SH_vp.Y + L_827.Y.Offset + L_831.Y;
                    local SH_minX, SH_maxX = SH_size.X * SH_ap.X, SH_vp.X - SH_size.X * (1 - SH_ap.X);
                    local SH_minY, SH_maxY = SH_size.Y * SH_ap.Y, SH_vp.Y - SH_size.Y * (1 - SH_ap.Y);
                    if SH_maxX < SH_minX then SH_maxX = SH_minX end;
                    if SH_maxY < SH_minY then SH_maxY = SH_minY end;
                    SH_px = math.clamp(SH_px, SH_minX, SH_maxX);
                    SH_py = math.clamp(SH_py, SH_minY, SH_maxY);
                    local SH_target = UDim2.new(L_827.X.Scale, SH_px - L_827.X.Scale * SH_vp.X, L_827.Y.Scale, SH_py - L_827.Y.Scale * SH_vp.Y);
                    if not L_821 and cac then
                        L_733:Create(L_823, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = SH_target }):Play();
                    elseif not L_821 and not cac then
                        L_823.Position = SH_target;
                    end;
                end;
                return ;
            end);
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
        local L_846;
        local L_847;
        local L_848;
        local L_849 = Instance.new(L_32);
        local L_850 = Instance.new(L_32);
        local L_851;
        local L_852;
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
            L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
            table.insert(L_639["Title Text Color"], function()
                L_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
                L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
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
                L_854.ScaleType = Enum.ScaleType.Crop;
                L_854.Image = L_732.GetIMG(L_853);
            end;
            MainCorner_ = Instance.new("UICorner");
            MainCorner_.CornerRadius = UDim.new(0, 12);
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
            local SH_blurLayer = L_854:FindFirstChild("SH_BlurLayer");
            if not SH_blurLayer then
                SH_blurLayer = Instance.new("ImageLabel");
                SH_blurLayer.Name = "SH_BlurLayer";
                SH_blurLayer.Parent = L_854;
                SH_blurLayer.AnchorPoint = Vector2.new(0.5, 0.5);
                SH_blurLayer.Position = UDim2.new(0.5, 0, 0.5, 0);
                SH_blurLayer.Size = UDim2.new(1, 0, 1, 0);
                SH_blurLayer.BackgroundTransparency = 1;
                SH_blurLayer.BorderSizePixel = 0;
                SH_blurLayer.ZIndex = 0;
                SH_blurLayer.ScaleType = Enum.ScaleType.Crop;
                local SH_blurCorner = Instance.new("UICorner");
                SH_blurCorner.CornerRadius = UDim.new(0, 12);
                SH_blurCorner.Parent = SH_blurLayer;
                table.insert(L_639["Background Blur Transparency"], function()
                    if SH_blurLayer and SH_blurLayer.Image ~= "" then
                        SH_blurLayer.ImageTransparency = getgenv().UIColor["Background Blur Transparency"];
                    end;
                    return ;
                end);
            end;
            local SH_blurPath = SH_GetBlurPath(L_853);
            local SH_blurOk, SH_blurImg = pcall(function()
                return L_732.GetIMG(SH_blurPath);
            end);
            if SH_blurOk and SH_blurImg and SH_blurImg ~= "" then
                SH_blurLayer.Image = SH_blurImg;
                SH_blurLayer.ImageTransparency = (getgenv().UIColor["Background Blur Transparency"] or 0.7);
            else
                SH_blurLayer.Image = "";
                SH_blurLayer.ImageTransparency = 1;
            end;
            local SH_whiteGlow = SH_blurLayer.Parent:FindFirstChild("SH_WhiteGlow");
            if not SH_whiteGlow then
                SH_whiteGlow = Instance.new("ImageLabel");
                SH_whiteGlow.Name = "SH_WhiteGlow";
                SH_whiteGlow.Parent = SH_blurLayer.Parent;
                SH_whiteGlow.AnchorPoint = Vector2.new(0.5, 0.5);
                SH_whiteGlow.Position = UDim2.new(0.5, 0, 0.5, 0);
                SH_whiteGlow.Size = UDim2.new(1, 40, 1, 40);
                SH_whiteGlow.BackgroundTransparency = 1;
                SH_whiteGlow.BorderSizePixel = 0;
                SH_whiteGlow.ZIndex = 0;
                SH_whiteGlow.Image = "rbxassetid://8068653048";
                SH_whiteGlow.ImageColor3 = Color3.fromRGB(255, 255, 255);
                SH_whiteGlow.ImageTransparency = 0.62;
                SH_whiteGlow.ScaleType = Enum.ScaleType.Slice;
                SH_whiteGlow.SliceCenter = Rect.new(15, 15, 175, 175);
            end;
            local SH_whiteHaze = SH_blurLayer.Parent:FindFirstChild("SH_WhiteHaze");
            if not SH_whiteHaze then
                SH_whiteHaze = Instance.new("Frame");
                SH_whiteHaze.Name = "SH_WhiteHaze";
                SH_whiteHaze.Parent = SH_blurLayer.Parent;
                SH_whiteHaze.Size = UDim2.new(1, 0, 1, 0);
                SH_whiteHaze.Position = UDim2.new(0, 0, 0, 0);
                SH_whiteHaze.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                SH_whiteHaze.BackgroundTransparency = 0.9;
                SH_whiteHaze.BorderSizePixel = 0;
                SH_whiteHaze.ZIndex = 0;
                local SH_hazeCorner = Instance.new("UICorner");
                SH_hazeCorner.CornerRadius = UDim.new(0, 12);
                SH_hazeCorner.Parent = SH_whiteHaze;
            end;
            table.insert(L_639["Background 3 Color"], function()
                L_854.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                return ;
            end);
            return ;
        end;
        L_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
        L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
        table.insert(L_639["Title Text Color"], function()
            L_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
            L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
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
            L_860.ScaleType = Enum.ScaleType.Crop;
            L_860.Image = L_732.GetIMG(L_861);
        end;
            local SH_blurLayer = L_860:FindFirstChild("SH_BlurLayer");
            if not SH_blurLayer then
                SH_blurLayer = Instance.new("ImageLabel");
                SH_blurLayer.Name = "SH_BlurLayer";
                SH_blurLayer.Parent = L_860;
                SH_blurLayer.AnchorPoint = Vector2.new(0.5, 0.5);
                SH_blurLayer.Position = UDim2.new(0.5, 0, 0.5, 0);
                SH_blurLayer.Size = UDim2.new(1, 0, 1, 0);
                SH_blurLayer.BackgroundTransparency = 1;
                SH_blurLayer.BorderSizePixel = 0;
                SH_blurLayer.ZIndex = 0;
                SH_blurLayer.ScaleType = Enum.ScaleType.Crop;
                local SH_blurCorner = Instance.new("UICorner");
                SH_blurCorner.CornerRadius = UDim.new(0, 12);
                SH_blurCorner.Parent = SH_blurLayer;
                table.insert(L_639["Background Blur Transparency"], function()
                    if SH_blurLayer and SH_blurLayer.Image ~= "" then
                        SH_blurLayer.ImageTransparency = getgenv().UIColor["Background Blur Transparency"];
                    end;
                    return ;
                end);
            end;
            local SH_blurPath = SH_GetBlurPath(L_861);
            local SH_blurOk, SH_blurImg = pcall(function()
                return L_732.GetIMG(SH_blurPath);
            end);
            if SH_blurOk and SH_blurImg and SH_blurImg ~= "" then
                SH_blurLayer.Image = SH_blurImg;
                SH_blurLayer.ImageTransparency = (getgenv().UIColor["Background Blur Transparency"] or 0.7);
            else
                SH_blurLayer.Image = "";
                SH_blurLayer.ImageTransparency = 1;
            end;
            local SH_whiteGlow = SH_blurLayer.Parent:FindFirstChild("SH_WhiteGlow");
            if not SH_whiteGlow then
                SH_whiteGlow = Instance.new("ImageLabel");
                SH_whiteGlow.Name = "SH_WhiteGlow";
                SH_whiteGlow.Parent = SH_blurLayer.Parent;
                SH_whiteGlow.AnchorPoint = Vector2.new(0.5, 0.5);
                SH_whiteGlow.Position = UDim2.new(0.5, 0, 0.5, 0);
                SH_whiteGlow.Size = UDim2.new(1, 40, 1, 40);
                SH_whiteGlow.BackgroundTransparency = 1;
                SH_whiteGlow.BorderSizePixel = 0;
                SH_whiteGlow.ZIndex = 0;
                SH_whiteGlow.Image = "rbxassetid://8068653048";
                SH_whiteGlow.ImageColor3 = Color3.fromRGB(255, 255, 255);
                SH_whiteGlow.ImageTransparency = 0.62;
                SH_whiteGlow.ScaleType = Enum.ScaleType.Slice;
                SH_whiteGlow.SliceCenter = Rect.new(15, 15, 175, 175);
            end;
            local SH_whiteHaze = SH_blurLayer.Parent:FindFirstChild("SH_WhiteHaze");
            if not SH_whiteHaze then
                SH_whiteHaze = Instance.new("Frame");
                SH_whiteHaze.Name = "SH_WhiteHaze";
                SH_whiteHaze.Parent = SH_blurLayer.Parent;
                SH_whiteHaze.Size = UDim2.new(1, 0, 1, 0);
                SH_whiteHaze.Position = UDim2.new(0, 0, 0, 0);
                SH_whiteHaze.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                SH_whiteHaze.BackgroundTransparency = 0.9;
                SH_whiteHaze.BorderSizePixel = 0;
                SH_whiteHaze.ZIndex = 0;
                local SH_hazeCorner = Instance.new("UICorner");
                SH_hazeCorner.CornerRadius = UDim.new(0, 12);
                SH_hazeCorner.Parent = SH_whiteHaze;
            end;
        table.insert(L_639["Background 3 Color"], function()
            L_860.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
            return ;
        end);
        getgenv().ReadyForGuiLoaded = true;
        L_835.CornerRadius = UDim.new(0, 12);
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
        L_836.Name = "TopMain";
        L_836.Parent = L_860;
        L_836.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_836.BackgroundTransparency = 1;
        L_836.Size = UDim2.new(1, 0, 0, 30);
        L_837.Name = "Ruafimg";
        L_837.Parent = L_836;
        L_837.Visible = false;
        L_837.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        L_837.BackgroundTransparency = 1;
        L_837.Position = UDim2.new(0, 3, 0, 2);
        L_837.Size = UDim2.new(0, 44, 0, 44);
        L_837.Image = getgenv().UIColor["Logo Image"];
        table.insert(L_639["Logo Image"], function()
            L_837.Image = getgenv().UIColor["Logo Image"];
            return ;
        end);
        L_838.Name = "TextLabelMain";
        L_838.Parent = L_836;
        L_838.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        L_838.BackgroundTransparency = 1;
        L_838.Position = UDim2.new(0, 10, 0, 0);
        L_838.Size = UDim2.new(1, -10, 1, 0);
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
        L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
        table.insert(L_639["Title Text Color"], function()
            L_838.Text = "<font color=\"rgb(" .. (tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(L_732.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
            return ;
        end);
        -- ============================================================
        -- SH UI : close button + mascot + open/close animation
        -- ============================================================
        local SH_MainScale = Instance.new("UIScale");
        SH_MainScale.Name = "SH_MainScale";
        SH_MainScale.Scale = 1;
        SH_MainScale.Parent = L_833;

        local SH_tween = game:GetService("TweenService");
        local SH_isOpen = true;
        local SH_closeToken = 0;

        local function SH_ClampToScreen(SH_frame)
            local SH_cam = workspace.CurrentCamera;
            if not SH_cam then
                return ;
            end;
            local SH_vp = SH_cam.ViewportSize;
            local SH_size = SH_frame.AbsoluteSize;
            local SH_ap = SH_frame.AnchorPoint;
            local SH_pos = SH_frame.Position;
            local SH_px = SH_pos.X.Scale * SH_vp.X + SH_pos.X.Offset;
            local SH_py = SH_pos.Y.Scale * SH_vp.Y + SH_pos.Y.Offset;
            local SH_minX, SH_maxX = SH_size.X * SH_ap.X, SH_vp.X - SH_size.X * (1 - SH_ap.X);
            local SH_minY, SH_maxY = SH_size.Y * SH_ap.Y, SH_vp.Y - SH_size.Y * (1 - SH_ap.Y);
            if SH_maxX < SH_minX then
                SH_maxX = SH_minX;
            end;
            if SH_maxY < SH_minY then
                SH_maxY = SH_minY;
            end;
            SH_px = math.clamp(SH_px, SH_minX, SH_maxX);
            SH_py = math.clamp(SH_py, SH_minY, SH_maxY);
            SH_frame.Position = UDim2.new(SH_pos.X.Scale, SH_px - SH_pos.X.Scale * SH_vp.X, SH_pos.Y.Scale, SH_py - SH_pos.Y.Scale * SH_vp.Y);
            return ;
        end;

        local SH_cursorConn = nil;
        local SH_cursorLoop = nil;
        local SH_origBehavior = nil;
        local SH_origIcon = nil;
        local SH_rmbHeld = false;
        local SH_cameraMode = false;
        local SH_uisRef = game:GetService("UserInputService");
        local function SH_applyCursorState()
            if SH_cameraMode or SH_rmbHeld then
                SH_uisRef.MouseBehavior = Enum.MouseBehavior.LockCenter;
                SH_uisRef.MouseIconEnabled = false;
            else
                SH_uisRef.MouseBehavior = Enum.MouseBehavior.Default;
                SH_uisRef.MouseIconEnabled = true;
            end;
            return ;
        end;
        local function SH_forceCursor(SH_on)
            if SH_on then
                if SH_origBehavior == nil then
                    SH_origBehavior = SH_uisRef.MouseBehavior;
                    SH_origIcon = SH_uisRef.MouseIconEnabled;
                end;
                SH_applyCursorState();
                -- keep the cursor visible while the menu is open: some games
                -- re-lock the mouse every frame, so re-assert it continuously
                if not SH_cursorLoop then
                    SH_cursorLoop = game:GetService("RunService").RenderStepped:Connect(function()
                        SH_applyCursorState();
                        return ;
                    end);
                end;
            else
                if SH_cursorLoop then
                    SH_cursorLoop:Disconnect();
                    SH_cursorLoop = nil;
                end;
                SH_uisRef.MouseBehavior = SH_origBehavior or Enum.MouseBehavior.Default;
                if SH_origIcon ~= nil then
                    SH_uisRef.MouseIconEnabled = SH_origIcon;
                else
                    SH_uisRef.MouseIconEnabled = true;
                end;
            end;
            return ;
        end;
        SH_uisRef.InputBegan:Connect(function(SH_i)
            if SH_i.UserInputType == Enum.UserInputType.MouseButton2 then
                SH_rmbHeld = true;
                SH_applyCursorState();
            elseif SH_i.UserInputType == Enum.UserInputType.MouseButton1 or SH_i.UserInputType == Enum.UserInputType.Touch then
                if not (SH_cameraMode or SH_rmbHeld) then
                    SH_applyCursorState();
                end;
            elseif SH_i.KeyCode == Enum.KeyCode.LeftAlt or SH_i.KeyCode == Enum.KeyCode.RightAlt or SH_i.KeyCode == Enum.KeyCode.Insert then
                SH_cameraMode = not SH_cameraMode;
                SH_applyCursorState();
            end;
            return ;
        end);
        SH_uisRef.InputEnded:Connect(function(SH_i)
            if SH_i.UserInputType == Enum.UserInputType.MouseButton2 then
                SH_rmbHeld = false;
                SH_applyCursorState();
            end;
            return ;
        end);
        local function SH_SetOpen(SH_open, SH_instant)
            if not L_833 or not L_833.Parent then return ; end;
            SH_isOpen = SH_open;
            SH_closeToken = SH_closeToken + 1;
            local SH_token = SH_closeToken;
            if SH_open then
                SH_forceCursor(true);
                SH_ClampToScreen(L_833);
                L_833.Visible = true;
                if SH_instant then
                    SH_MainScale.Scale = 1;
                    return ;
                end;
                SH_MainScale.Scale = 0.82;
                SH_tween:Create(SH_MainScale, TweenInfo.new(0.30, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play();
            else
                if SH_instant then
                    L_833.Visible = false;
                    SH_MainScale.Scale = 1;
                    return ;
                end;
                SH_tween:Create(SH_MainScale, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Scale = 0.82 }):Play();
                SH_forceCursor(false);
                task.delay(0.19, function()
                    if SH_token == SH_closeToken then
                        L_833.Visible = false;
                        SH_MainScale.Scale = 1;
                    end;
                    return ;
                end);
            end;
            return ;
        end;

        L_731.UnloadUI = function()
            getgenv().SH_UI_Unloaded = true;
            if SH_cursorConn then SH_cursorConn:Disconnect(); SH_cursorConn = nil; end;
            if L_732.Gui then
                L_732.Gui:Destroy();
            end;
            if L_732.NotiGui then
                L_732.NotiGui:Destroy();
            end;
            return ;
        end;
        L_731.OpenUI = function()
            SH_SetOpen(true);
            return ;
        end;
        L_731.CloseUI = function()
            SH_SetOpen(false);
            return ;
        end;
        L_731.ToggleUI = function()
            SH_SetOpen(not SH_isOpen);
            return ;
        end;
        L_731.IsUIOpen = function()
            return SH_isOpen;
        end;
        L_731.Main = L_833;
        getgenv().SH_UI_Open = L_731.OpenUI;
        getgenv().SH_UI_Close = L_731.CloseUI;
        getgenv().SH_UI_Toggle = L_731.ToggleUI;

        local SH_CloseBtn = Instance.new("TextButton");
        SH_CloseBtn.Name = "SH_CloseButton";
        SH_CloseBtn.Parent = L_836;
        SH_CloseBtn.AnchorPoint = Vector2.new(1, 0);
        SH_CloseBtn.Position = UDim2.new(1, 0, 0, 0);
        SH_CloseBtn.Size = UDim2.new(0, 22, 0, 22);
        SH_CloseBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
        SH_CloseBtn.BackgroundTransparency = 1;
        local SH_CloseCorner = Instance.new("UICorner");
        SH_CloseCorner.CornerRadius = UDim.new(0, 10);
        SH_CloseCorner.Parent = SH_CloseBtn;
        table.insert(L_639["Title Text Color"], function()
            SH_CloseBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
            return ;
        end);
        SH_CloseBtn.Text = "X";
        SH_CloseBtn.Font = Enum.Font.GothamBold;
        SH_CloseBtn.TextSize = 12;
        SH_CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
        SH_CloseBtn.TextStrokeTransparency = 0.55;
        SH_CloseBtn.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
        SH_CloseBtn.AutoButtonColor = false;
        SH_CloseBtn.ZIndex = 7;
        table.insert(L_639["Title Text Color"], function()
            SH_CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
            return ;
        end);
        SH_CloseBtn.MouseEnter:Connect(function()
            SH_tween:Create(SH_CloseBtn, TweenInfo.new(0.15), { TextColor3 = Color3.fromRGB(255, 90, 90), Rotation = 90 }):Play();
            return ;
        end);
        SH_CloseBtn.MouseLeave:Connect(function()
            SH_tween:Create(SH_CloseBtn, TweenInfo.new(0.15), { TextColor3 = getgenv().UIColor["Title Text Color"], Rotation = 0 }):Play();
            return ;
        end);
        SH_CloseBtn.MouseButton1Click:Connect(function()
            L_731.UnloadUI();
            return ;
        end);

        local SH_MinBtn = Instance.new("TextButton");
        SH_MinBtn.Name = "SH_MinimizeButton";
        SH_MinBtn.Parent = L_836;
        SH_MinBtn.AnchorPoint = Vector2.new(1, 0);
        SH_MinBtn.Position = UDim2.new(1, -25, 0, 0);
        SH_MinBtn.Size = UDim2.new(0, 22, 0, 22);
        SH_MinBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
        SH_MinBtn.BackgroundTransparency = 1;
        local SH_MinCorner = Instance.new("UICorner");
        SH_MinCorner.CornerRadius = UDim.new(0, 10);
        SH_MinCorner.Parent = SH_MinBtn;
        table.insert(L_639["Title Text Color"], function()
            SH_MinBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
            return ;
        end);
        SH_MinBtn.Text = "−";
        SH_MinBtn.Font = Enum.Font.GothamBold;
        SH_MinBtn.TextSize = 18;
        SH_MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
        SH_MinBtn.TextStrokeTransparency = 0.55;
        SH_MinBtn.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
        SH_MinBtn.AutoButtonColor = false;
        SH_MinBtn.ZIndex = 7;
        local SH_MinScale = Instance.new("UIScale");
        SH_MinScale.Scale = 1;
        SH_MinScale.Parent = SH_MinBtn;
        table.insert(L_639["Title Text Color"], function()
            SH_MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
            return ;
        end);
        SH_MinBtn.MouseEnter:Connect(function()
            SH_tween:Create(SH_MinScale, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1.18 }):Play();
            SH_tween:Create(SH_MinBtn, TweenInfo.new(0.15), { TextColor3 = getgenv().UIColor["Title Text Color"] }):Play();
            return ;
        end);
        SH_MinBtn.MouseLeave:Connect(function()
            SH_tween:Create(SH_MinScale, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play();
            SH_tween:Create(SH_MinBtn, TweenInfo.new(0.15), { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play();
            return ;
        end);
        SH_MinBtn.MouseButton1Click:Connect(function()
            SH_tween:Create(SH_MinScale, TweenInfo.new(0.08), { Scale = 0.85 }):Play();
            task.wait(0.09);
            SH_SetOpen(false);
            return ;
        end);

        local SH_DragOutline = Instance.new("Frame");
        SH_DragOutline.Name = "SH_DragOutline";
        SH_DragOutline.Parent = L_860;
        SH_DragOutline.Size = UDim2.new(1, 0, 1, 0);
        SH_DragOutline.BackgroundTransparency = 1;
        SH_DragOutline.BorderSizePixel = 0;
        SH_DragOutline.ZIndex = 50;
        SH_DragOutline.Visible = false;
        local SH_DragCorner = Instance.new("UICorner");
        SH_DragCorner.CornerRadius = UDim.new(0, 12);
        SH_DragCorner.Parent = SH_DragOutline;
        local SH_DragStroke = Instance.new("UIStroke");
        SH_DragStroke.Color = getgenv().UIColor["Title Text Color"];
        SH_DragStroke.Thickness = 2;
        SH_DragStroke.Transparency = 0.05;
        SH_DragStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
        SH_DragStroke.Parent = SH_DragOutline;
        table.insert(L_639["Title Text Color"], function()
            SH_DragStroke.Color = getgenv().UIColor["Title Text Color"];
            return ;
        end);
        local SH_dragActive = false;
        local SH_dragBase = {};
        local SH_dragFadeInfo = TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
        local function SH_collectFade(SH_d)
            local SH_t = {};
            if SH_d:IsA("TextLabel") or SH_d:IsA("TextButton") or SH_d:IsA("TextBox") then
                SH_t.TextTransparency = SH_d.TextTransparency;
                SH_t.TextStrokeTransparency = SH_d.TextStrokeTransparency;
            elseif SH_d:IsA("ImageLabel") or SH_d:IsA("ImageButton") then
                SH_t.ImageTransparency = SH_d.ImageTransparency;
            elseif SH_d:IsA("ScrollingFrame") then
                SH_t.BackgroundTransparency = SH_d.BackgroundTransparency;
                SH_t.ScrollBarImageTransparency = SH_d.ScrollBarImageTransparency;
            elseif SH_d:IsA("Frame") then
                SH_t.BackgroundTransparency = SH_d.BackgroundTransparency;
            end;
            return SH_t;
        end;
        local function SH_applyFade(SH_d, SH_t, SH_target, SH_info)
            for SH_prop in pairs(SH_t) do
                pcall(function()
                    L_733:Create(SH_d, SH_info, { [SH_prop] = SH_target }):Play();
                end);
            end;
        end;
        local SH_dragGen = 0;
        getgenv().SH_UI_DragMode = function(SH_on)
            SH_on = SH_on == true;
            if SH_on == SH_dragActive then
                return ;
            end;
            SH_dragGen = SH_dragGen + 1;
            local SH_gen = SH_dragGen;
            SH_dragActive = SH_on;
            if SH_on then
                if L_836 then L_836.Visible = true end;
                if L_849 then L_849.Visible = true end;
                for _, SH_root in ipairs({ L_836, L_849 }) do
                    if SH_root then
                        for _, SH_d in ipairs(SH_root:GetDescendants()) do
                            local SH_t = SH_collectFade(SH_d);
                            if next(SH_t) ~= nil then
                                if SH_dragBase[SH_d] == nil then
                                    SH_dragBase[SH_d] = SH_t;
                                end;
                                SH_applyFade(SH_d, SH_t, 1, SH_dragFadeInfo);
                            end;
                        end;
                    end;
                end;
                if SH_DragOutline then
                    SH_DragOutline.Visible = true;
                    SH_DragStroke.Transparency = 1;
                    L_733:Create(SH_DragStroke, TweenInfo.new(0.25), { Transparency = 0.05 }):Play();
                end;
                task.delay(0.19, function()
                    if SH_dragActive and SH_gen == SH_dragGen then
                        if L_836 then L_836.Visible = false end;
                        if L_849 then L_849.Visible = false end;
                    end;
                end);
            else
                if L_836 then L_836.Visible = true end;
                if L_849 then L_849.Visible = true end;
                for SH_d, SH_t in pairs(SH_dragBase) do
                    if SH_d and SH_d.Parent then
                        for SH_prop, SH_val in pairs(SH_t) do
                            pcall(function()
                                L_733:Create(SH_d, TweenInfo.new(0.2), { [SH_prop] = SH_val }):Play();
                            end);
                        end;
                    end;
                end;
                if SH_DragOutline then
                    L_733:Create(SH_DragStroke, TweenInfo.new(0.2), { Transparency = 1 }):Play();
                    task.delay(0.2, function()
                        if not SH_dragActive and SH_gen == SH_dragGen and SH_DragOutline then
                            SH_DragOutline.Visible = false;
                        end;
                    end);
                end;
            end;
            return ;
        end;
        task.spawn(function()
            while true do
                task.wait(0.5);
                if not SH_dragActive then
                    if L_836 and not L_836.Visible then L_836.Visible = true end;
                    if L_849 and not L_849.Visible then L_849.Visible = true end;
                end;
            end;
        end);
        L_734.InputEnded:Connect(function(SH_input)
            if SH_input.UserInputType == Enum.UserInputType.MouseButton1 or SH_input.UserInputType == Enum.UserInputType.Touch then
                if getgenv().SH_UI_DragMode then pcall(getgenv().SH_UI_DragMode, false); end;
            end;
            return ;
        end);
        L_734.InputBegan:Connect(function(SH_input, SH_processed)
            if SH_input.KeyCode == (getgenv().SH_UI_ToggleKey or Enum.KeyCode.RightShift) then
                SH_SetOpen(not SH_isOpen);
            end;
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
        L_840.CornerRadius = UDim.new(0, 10);
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
            L_1103.LayoutOrder = (string.lower(L_1100) == "settings") and 9999 or L_1096;
            L_1104.Parent = L_1103;
            L_1104.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            L_1104.BackgroundTransparency = 1;
            L_1104.Position = UDim2.new(0, 5, 0, 0);
            L_1104.Size = UDim2.new(1, -5, 1, 0);
            L_1105.CornerRadius = UDim.new(0, 10);
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
            L_1113.CornerRadius = UDim.new(0, 10);
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
            L_1118.Visible = false;
            L_1118.AnchorPoint = Vector2.new(1, 0);
            L_1118.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
            L_1118.Position = UDim2.new(1, -5, 0, 5);
            L_1118.Size = UDim2.new(0, 20, 0, 20);
            L_1118.ClipsDescendants = true;
            table.insert(L_639["Background 2 Color"], function()
                L_1118.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                return ;
            end);
            L_1119.CornerRadius = UDim.new(0, 10);
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
                    L_1148.CornerRadius = UDim.new(0, 10);
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
                                L_1181.CornerRadius = UDim.new(0, 10);
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
                                L_1185.CornerRadius = UDim.new(0, 10);
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
                            L_1176.CornerRadius = UDim.new(0, 10);
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
                                L_1176.CornerRadius = UDim.new(0, 10);
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
                                L_1195.CornerRadius = UDim.new(0, 10);
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
                                L_1196.CornerRadius = UDim.new(0, 10);
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
                            L_1249.CornerRadius = UDim.new(0, 10);
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
                            L_1253.CornerRadius = UDim.new(0, 10);
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
                                L_1262.CornerRadius = UDim.new(0, 10);
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
                            L_1270.CornerRadius = UDim.new(0, 10);
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
                                L_1276.CornerRadius = UDim.new(0, 10);
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
                                    L_1283.CornerRadius = UDim.new(0, 10);
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
                                        if getgenv().ScriptUIConfig and getgenv().ScriptUIConfig.Load then
                                            local L_1284, L_1285 = getgenv().ScriptUIConfig.Load(L_1273);
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
                                L_1281.CornerRadius = UDim.new(0, 10);
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
                                                if getgenv().ScriptUIConfig and getgenv().ScriptUIConfig.Load then
                                                    local L_1314, L_1315 = getgenv().ScriptUIConfig.Load(L_1313.config);
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
                                            if L_1330.username == L_1328.Name and L_1330.config and L_1330.config ~= "" and getgenv().ScriptUIConfig and getgenv().ScriptUIConfig.Load then
                                                return getgenv().ScriptUIConfig.Load(L_1330.config);
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
                            L_1337.CornerRadius = UDim.new(0, 10);
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
                            local SH_btnTween = game:GetService("TweenService");
                            local SH_btnScale = Instance.new("UIScale");
                            SH_btnScale.Scale = 1;
                            SH_btnScale.Parent = L_1336;
                            local SH_btnScaleObj = SH_btnScale;
                            local function SH_btnRelease()
                                SH_btnTween:Create(SH_btnScaleObj, TweenInfo.new(0.16, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play();
                                SH_btnTween:Create(L_1338, TweenInfo.new(0.16), { TextTransparency = 0 }):Play();
                                return ;
                            end;
                            L_1339.MouseButton1Down:Connect(function()
                                SH_btnTween:Create(SH_btnScaleObj, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.95 }):Play();
                                SH_btnTween:Create(L_1338, TweenInfo.new(0.07), { TextTransparency = 0.3 }):Play();
                                return ;
                            end);
                            L_1339.MouseButton1Up:Connect(SH_btnRelease);
                            L_1339.MouseLeave:Connect(SH_btnRelease);
                            L_1339.MouseButton1Down:Connect(function()
                                L_1334();
                                return ;
                            end);
                            return ;
                        end,
                        CreateTextInput = function(L_cfg)
                            local cfg = L_cfg or {};
                            local title = tostring(cfg.Title or "Input");
                            local placeholder = tostring(cfg.Placeholder or "");
                            local row = Instance.new(L_32);
                            local corner = Instance.new("UICorner");
                            local bg = Instance.new(L_32);
                            local box = Instance.new("TextBox");
                            row.Name = "TextInputFrame";
                            row.Parent = L_1147;
                            row.BackgroundTransparency = 1;
                            row.Size = UDim2.new(1, 0, 0, 45);
                            corner.CornerRadius = UDim.new(0, 10);
                            corner.Parent = row;
                            bg.Name = "Background1";
                            bg.Parent = row;
                            bg.AnchorPoint = Vector2.new(0.5, 0.5);
                            bg.Position = UDim2.new(0.5, 0, 0.5, 0);
                            bg.Size = UDim2.new(1, -10, 1, 0);
                            bg.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            bg.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(L_639["Background 1 Transparency"], function()
                                bg.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return ;
                            end);
                            table.insert(L_639["Background 2 Color"], function()
                                bg.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return ;
                            end);
                            local bgCorner = Instance.new("UICorner");
                            bgCorner.CornerRadius = UDim.new(0, 10);
                            bgCorner.Parent = bg;
                            local lbl = Instance.new("TextLabel");
                            lbl.Parent = bg;
                            lbl.BackgroundTransparency = 1;
                            lbl.Position = UDim2.new(0, 10, 0, 2);
                            lbl.Size = UDim2.new(1, -20, 0, 16);
                            lbl.Font = Enum.Font.GothamBold;
                            lbl.TextSize = 13;
                            lbl.TextXAlignment = Enum.TextXAlignment.Left;
                            lbl.Text = title;
                            lbl.TextColor3 = getgenv().UIColor[L_34];
                            table.insert(L_639[L_34], function()
                                lbl.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            box.Parent = bg;
                            box.BackgroundTransparency = 1;
                            box.Position = UDim2.new(0, 10, 0, 18);
                            box.Size = UDim2.new(1, -20, 0, 22);
                            box.Font = Enum.Font.Gotham;
                            box.TextSize = 14;
                            box.TextXAlignment = Enum.TextXAlignment.Left;
                            box.PlaceholderText = placeholder;
                            box.Text = tostring(cfg.Default or "");
                            box.TextColor3 = getgenv().UIColor[L_34];
                            box.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                            table.insert(L_639[L_34], function()
                                box.TextColor3 = getgenv().UIColor[L_34];
                                return ;
                            end);
                            local changed = cfg.Callback;
                            box.FocusLost:Connect(function()
                                if changed then
                                    pcall(changed, box.Text);
                                end;
                                return ;
                            end);
                            return {
                                Value = box.Text,
                                GetValue = function() return box.Text end,
                                SetValue = function(v) box.Text = tostring(v or "") end,
                                TextBox = box,
                            };
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
                            L_1344.CornerRadius = UDim.new(0, 10);
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
                            L_1363.CornerRadius = UDim.new(0, 10);
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
                            L_1365.CornerRadius = UDim.new(0, 10);
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
                                        L_1391.CornerRadius = UDim.new(0, 10);
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
                                        L_1394.CornerRadius = UDim.new(0, 10);
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
                                        L_1402.CornerRadius = UDim.new(0, 10);
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
                                        L_1405.CornerRadius = UDim.new(0, 10);
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
                            L_1455.CornerRadius = UDim.new(0, 10);
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
                            L_1457.CornerRadius = UDim.new(0, 10);
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
                            L_1461.CornerRadius = UDim.new(0, 10);
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
                            L_1475.CornerRadius = UDim.new(0, 10);
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
                            L_1477.CornerRadius = UDim.new(0, 10);
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
                            L_1480.CornerRadius = UDim.new(0, 10);
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
                            L_1503.CornerRadius = UDim.new(0, 10);
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
                            L_1505.CornerRadius = UDim.new(0, 10);
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
                            L_1513.CornerRadius = UDim.new(0, 10);
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
                            L_1535.CornerRadius = UDim.new(0, 10);
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
                            L_1537.CornerRadius = UDim.new(0, 10);
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
                            L_1540.CornerRadius = UDim.new(0, 10);
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
        -- SH UI: round the inner background panels
        for _, SH_d in ipairs(L_860:GetDescendants()) do
            if SH_d:IsA("GuiObject") and (SH_d.Name == "Background1" or SH_d.Name == "Background2" or SH_d.Name == "Background3") and not SH_d:FindFirstChildOfClass("UICorner") then
                local SH_c = Instance.new("UICorner");
                SH_c.CornerRadius = UDim.new(0, 10);
                SH_c.Parent = SH_d;
            end;
        end;
        local function SH_buildThemeSection(SH_page)
            local SH_bgSec = SH_page.CreateSection("UI Theme");
            local SH_themeNames = {};
            for _, SH_t in ipairs(getgenv().SH_UI_Themes or {}) do
                SH_themeNames[#SH_themeNames + 1] = SH_t.Name;
            end;
            SH_bgSec.CreateDropdown({ Title = "Theme", List = SH_themeNames, Default = SH_themeNames[1], Search = false, Selected = false }, function(SH_pick)
                L_731.SetThemePreset(tostring(SH_pick));
                return ;
            end);
            local SH_keySec = SH_page.CreateSection("UI Interface");
            SH_keySec.CreateKeybind({ Title = "Toggle UI Key", Default = Enum.KeyCode.RightShift }, function(SH_kc)
                if typeof(SH_kc) == "EnumItem" and SH_kc.EnumType == Enum.KeyCode then
                    getgenv().SH_UI_ToggleKey = SH_kc;
                end;
                return ;
            end);
            return ;
        end;
        L_731.AddThemeSection = SH_buildThemeSection;
        local SH_settingsPageObj = nil;
        local function SH_getSettingsPage()
            if SH_settingsPageObj then
                return SH_settingsPageObj;
            end;
            getgenv().SH_THEME_SECTION_ADDED = true;
            SH_settingsPageObj = L_1095.CreatePage({ Page_Name = "Settings", Page_Title = "Settings" });
            SH_buildThemeSection(SH_settingsPageObj);
            return SH_settingsPageObj;
        end;
        L_731.GetSettingsPage = SH_getSettingsPage;
        task.delay(0.25, function()
            if getgenv().SH_THEME_SECTION_ADDED then
                return ;
            end;
            SH_getSettingsPage();
            return ;
        end);
        SH_forceCursor(true);
        local SH_firstTheme = getgenv().SH_UI_Themes and getgenv().SH_UI_Themes[1];
        if SH_firstTheme then
            pcall(function() L_731.SetThemePreset(SH_firstTheme.Name) end);
        end;
        return L_1095;
    end;
    L_731.SetBackground = function(SH_url)
        SH_url = tostring(SH_url or "");
        local SH_base = getgenv().SH_UI_BaseURL;
        if SH_base and SH_base ~= "" and SH_url ~= "" and not string.find(SH_url, "^https?://") and not string.find(SH_url, "rbxassetid://") and not isfile(SH_url) then
            if string.sub(SH_base, -1) ~= "/" then
                SH_base = SH_base .. "/";
            end;
            SH_url = SH_base .. SH_url;
        end;
        getgenv().UIColor["Background Image"] = SH_url;
        local SH_container;
        if L_731.Main then
            for _, SH_d in ipairs(L_731.Main:GetChildren()) do
                if SH_d.Name == "MainContainer" then
                    SH_container = SH_d;
                    break;
                end;
            end;
        end;
        if SH_container and SH_container:IsA("ImageLabel") then
            local SH_ok, SH_img = pcall(function()
                return L_732.GetIMG(SH_url);
            end);
            SH_container.Image = (SH_ok and SH_img) or "";
            local SH_blur = SH_container:FindFirstChild("SH_BlurLayer");
            local SH_blurPath = SH_GetBlurPath(SH_url);
            if SH_blur and SH_blurPath then
                local SH_blurOk, SH_blurImg = pcall(function()
                    return L_732.GetIMG(SH_blurPath);
                end);
                if SH_blurOk and SH_blurImg and SH_blurImg ~= "" then
                    SH_blur.Image = SH_blurImg;
                    SH_blur.ImageTransparency = (getgenv().UIColor["Background Blur Transparency"] or 0.7);
                else
                    SH_blur.Image = "";
                    SH_blur.ImageTransparency = 1;
                end;
            end;
            return ;
        end;
        if L_732.ReloadMain then
            L_732.ReloadMain(SH_url);
        end;
        return ;
    end;
    L_731.SetBackgroundPreset = function(SH_index)
        local SH_list = getgenv().SH_UI_Backgrounds or {};
        local SH_item = SH_list[SH_index];
        if SH_item then
            L_731.SetBackground(SH_item.Url or "");
        end;
        return ;
    end;
    L_731.SetThemePreset = function(SH_name)
        local SH_theme;
        for _, SH_t in ipairs(getgenv().SH_UI_Themes or {}) do
            if SH_t.Name == SH_name then
                SH_theme = SH_t;
                break;
            end;
        end;
        if not SH_theme then
            return ;
        end;
        L_731.SetBackground(SH_theme.Url or "");
        local SH_c = getgenv().UIColor;
        SH_c["Title Text Color"] = SH_theme.Accent;
        SH_c["Border Color"] = SH_theme.Accent;
        SH_c["Button Color"] = SH_theme.Accent;
        SH_c["Label Color"] = SH_theme.Accent;
        SH_c["Page Selected Color"] = SH_theme.Accent;
        SH_c["Section Text Color"] = SH_theme.Accent;
        SH_c["Section Underline Color"] = SH_theme.Accent;
        SH_c["Toggle Border Color"] = SH_theme.Accent;
        SH_c["Dropdown Selected Color"] = SH_theme.Accent;
        SH_c["Textbox Highlight Color"] = SH_theme.Accent;
        SH_c["Box Highlight Color"] = SH_theme.Accent;
        SH_c["Slider Highlight Color"] = SH_theme.Accent2;
        SH_c["Toggle Checked Color"] = SH_theme.Text;
        SH_c["GUI Text Color"] = SH_theme.Text;
        SH_c["Toggle Desc Color"] = SH_theme.Desc;
        SH_c["Placeholder Text Color"] = SH_theme.Placeholder;
        SH_c["Search Icon Color"] = SH_theme.Text;
        SH_c["Setting Icon Color"] = SH_theme.Text;
        SH_c["Dropdown Icon Color"] = SH_theme.Text;
        SH_c["Background Main Color"] = SH_theme.BgMain;
        SH_c["Background 1 Color"] = SH_theme.Bg1;
        SH_c["Background 2 Color"] = SH_theme.Bg2;
        SH_c["Background 3 Color"] = SH_theme.Bg3;
        SH_c["Slider Line Color"] = SH_theme.Line;
        SH_c["Click Effect Color"] = SH_theme.Click;
        SH_c["Background 1 Transparency"] = (SH_theme.Url ~= "" and 0.3 or 0);
        SH_c["Background Blur Transparency"] = 0.7;
        getgenv().SH_UI_CurrentTheme = SH_theme.Name;
        return ;
    end;
    return L_731;
end;

return GetUi()
