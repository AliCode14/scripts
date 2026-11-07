repeat task.wait() until game:IsLoaded()
local FrameClass = "Frame"; local TextColorKey = "Text Color"; local HttpService = game:GetService("HttpService")
local ControlRegistry = {
    Toggles = {},
    Sliders = {},
    Dropdowns = {},
    Keybinds = {},
    Boxes = {},
}
local makeControlId = function(windowName, sectionName, controlName)
        return tostring(windowName) .. "||" .. tostring(sectionName) .. "||" .. tostring(controlName);
end;
local RequirementsTracker = {
    UserHas = {},
    Presets = {},
    ActiveConnections = {}
};
RequirementsTracker.Update = function(tracker, requirementName, isSatisfied)
    tracker.UserHas[requirementName] = isSatisfied;
    return
end;
RequirementsTracker.Check = function(tracker, requirementName)
    if tracker.Presets[requirementName] then
        return tracker.Presets[requirementName]();
    end;
    return false;
end;
RequirementsTracker.AddPreset = function(tracker, presetName, presetCheck)
    tracker.Presets[presetName] = presetCheck;
    return
end;
GetUi = function()
        if game.CoreGui:FindFirstChild("Script UI") or game.CoreGui:FindFirstChild("Script UI Notification") then
        for index_635, item_636 in ipairs(game.CoreGui:GetChildren()) do
                if item_636.Name == "Script UI" or item_636.Name == "Script UI Notification" then
                item_636:Destroy();
            end;
        end;
    end;
    getgenv().Tvk = true; getgenv().Chon = true;
    local defaultColors = { ["Border Color"] = Color3.fromRGB(131, 181, 255), ["Click Effect Color"] = Color3.fromRGB(230, 230, 230), ["Search Icon Color"] = Color3.fromRGB(255, 255, 255), ["Search Icon Highlight Color"] = Color3.fromRGB(131, 181, 255), ["GUI Text Color"] = Color3.fromRGB(230, 230, 230), [TextColorKey] = Color3.fromRGB(230, 230, 230), ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178), ["Title Text Color"] = Color3.fromRGB(131, 181, 255), ["Background 1 Color"] = Color3.fromRGB(43, 43, 43), ["Background 1 Transparency"] = 0.25, ["Background 2 Color"] = Color3.fromRGB(90, 90, 90), ["Background 3 Color"] = Color3.fromRGB(53, 53, 53), ["Background Blur Transparency"] = 0.7, ["Background Image"] = "", ["Page Selected Color"] = Color3.fromRGB(131, 181, 255), ["Section Text Color"] = Color3.fromRGB(131, 181, 255), ["Section Underline Color"] = Color3.fromRGB(131, 181, 255), ["Toggle Border Color"] = Color3.fromRGB(131, 181, 255), ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230), ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185), ["Button Color"] = Color3.fromRGB(131, 181, 255), ["Label Color"] = Color3.fromRGB(101, 152, 220), ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230), ["Dropdown Selected Color"] = Color3.fromRGB(131, 181, 255), ["Textbox Highlight Color"] = Color3.fromRGB(131, 181, 255), ["Box Highlight Color"] = Color3.fromRGB(131, 181, 255), ["Slider Line Color"] = Color3.fromRGB(75, 75, 75), ["Slider Highlight Color"] = Color3.fromRGB(59, 82, 115), ["Tween Animation 1 Speed"] = 0.25, ["Tween Animation 2 Speed"] = 0.5, ["Tween Animation 3 Speed"] = 0.1 };
    local colorValues = { ["Border Color"] = Color3.fromRGB(40, 40, 40), ["Click Effect Color"] = Color3.fromRGB(60, 60, 60), ["Search Icon Color"] = Color3.fromRGB(200, 200, 200), ["Search Icon Highlight Color"] = Color3.fromRGB(90, 160, 255), ["GUI Text Color"] = Color3.fromRGB(220, 220, 220), [TextColorKey] = Color3.fromRGB(220, 220, 220), ["Placeholder Text Color"] = Color3.fromRGB(150, 150, 150), ["Title Text Color"] = Color3.fromRGB(90, 160, 255), ["Background Main Color"] = Color3.fromRGB(20, 20, 20), ["Background 1 Color"] = Color3.fromRGB(30, 30, 30), ["Background 1 Transparency"] = 0.25, ["Background 2 Color"] = Color3.fromRGB(45, 45, 45), ["Background 3 Color"] = Color3.fromRGB(25, 25, 25), ["Background Blur Transparency"] = 0.7, ["Background Image"] = "", ["Page Selected Color"] = Color3.fromRGB(90, 160, 255), ["Section Text Color"] = Color3.fromRGB(90, 160, 255), ["Section Underline Color"] = Color3.fromRGB(90, 160, 255), ["Toggle Border Color"] = Color3.fromRGB(90, 160, 255), ["Toggle Checked Color"] = Color3.fromRGB(220, 220, 220), ["Toggle Desc Color"] = Color3.fromRGB(180, 180, 180), ["Button Color"] = Color3.fromRGB(90, 160, 255), ["Label Color"] = Color3.fromRGB(90, 160, 255), ["Dropdown Icon Color"] = Color3.fromRGB(200, 200, 200), ["Dropdown Selected Color"] = Color3.fromRGB(90, 160, 255), ["Textbox Highlight Color"] = Color3.fromRGB(90, 160, 255), ["Box Highlight Color"] = Color3.fromRGB(90, 160, 255), ["Slider Line Color"] = Color3.fromRGB(60, 60, 60), ["Slider Highlight Color"] = Color3.fromRGB(70, 130, 200), ["Tween Animation 1 Speed"] = 0.25, ["Tween Animation 2 Speed"] = 0.5, ["Tween Animation 3 Speed"] = 0.1 };
    local colorSubscribers = {};
    for key_640, value_641 in pairs(colorValues) do
        colorSubscribers[key_640] = {};
    end;
    local themeState = {};
    for key_643, value_644 in pairs(colorValues) do
        themeState[key_643] = { Color = value_644 };
    end;
    local serializeColor = function(color)
        return { math.floor(color.r * 255), math.floor(color.g * 255), math.floor(color.b * 255), "Dit" };
    end;
    CorrectTable = function(sourceTable)
        local uiTable_648 = {};
        for key_649, value_650 in pairs(sourceTable) do
            if typeof(value_650) == "Color3" then
                uiTable_648[key_649] = serializeColor(value_650);
            elseif type(value_650) == "table" then
                uiTable_648[key_649] = CorrectTable(value_650);
            else
                uiTable_648[key_649] = value_650;
            end;
        end;
        return uiTable_648;
    end;
    DCorrectTable = function(serializedTable)
        local uiTable_652 = {};
        for key_653, value_654 in pairs(serializedTable) do
            if type(value_654) == "table" and value_654[4] == "Dit" then
                uiTable_652[key_653] = Color3.fromRGB(unpack(value_654));
            elseif type(value_654) == "table" then
                uiTable_652[key_653] = DCorrectTable(value_654);
            else
                uiTable_652[key_653] = value_654;
            end;
        end;
        return uiTable_652;
    end;
    local settingsHttpService = game:GetService("HttpService"); local customSettingsFile = "!CustomUI.json";
    SaveCustomUISettings = function()
        local httpService_657 = game:GetService("HttpService");
        if not isfolder("ScriptUI") then
            makefolder("ScriptUI");
        end;
        writefile("ScriptUI/" .. customSettingsFile, httpService_657:JSONEncode(CorrectTable(themeState)));
        return
    end;
    ReadCustomUISetting = function()
        local ok_662, result_663 = pcall(function()
            local httpService_658 = game:GetService("HttpService");
            if not isfolder("ScriptUI") then
                makefolder("ScriptUI");
            end;
            local configValue_659 = httpService_658:JSONDecode(readfile("ScriptUI/" .. customSettingsFile));
            for key_660, value_661 in pairs(configValue_659) do
                if not (function()
                    if value_661.Color == nil then
                        return
                    end;
                    return true;
                end)() then
                    SaveCustomUISettings();
                    return ReadCustomUISetting();
                end;
            end;
            return configValue_659;
        end);
        if ok_662 then
            return result_663;
        end;
        SaveCustomUISettings();
        return ReadCustomUISetting();
    end;
    local configApi = {}; local configDirectory = "ScriptUI/Configs";
    local ensureConfigDirectory = function()
        if not isfolder("ScriptUI") then
            makefolder("ScriptUI");
        end;
        if not isfolder(configDirectory) then
            makefolder(configDirectory);
        end;
        return
    end;
    configApi.List = function()
        ensureConfigDirectory(); local configValue_667 = listfiles(configDirectory); local uiTable_668 = {};
        for index_669, item_670 in ipairs(configValue_667) do
            local configValue_671 = item_670:match(".+[/\\](.+)%.json$");
            if configValue_671 then
                table.insert(uiTable_668, configValue_671);
            end;
        end;
        return uiTable_668;
    end;
    configApi.Save = function(configName)
        if not configName or configName == "" then
            return false, "No config name";
        end;
        ensureConfigDirectory(); local configData = { Toggles = {}, Sliders = {}, Dropdowns = {}, Keybinds = {}, Boxes = {}, UITheme = CorrectTable(themeState) };
        for key_674, value_675 in pairs(ControlRegistry.Toggles) do
            local ok_676, result_677 = pcall(value_675.Get);
            if ok_676 then
                configData.Toggles[key_674] = result_677;
            end;
        end;
        for key_678, value_679 in pairs(ControlRegistry.Sliders) do
            local ok_680, result_681 = pcall(value_679.Get);
            if ok_680 then
                configData.Sliders[key_678] = result_681;
            end;
        end;
        for key_682, value_683 in pairs(ControlRegistry.Dropdowns) do
            local ok_684, result_685 = pcall(value_683.Get);
            if ok_684 then
                configData.Dropdowns[key_682] = result_685;
            end;
        end;
        for key_686, value_687 in pairs(ControlRegistry.Keybinds) do
            local ok_688, result_689 = pcall(value_687.Get);
            if ok_688 then
                configData.Keybinds[key_686] = result_689;
            end;
        end;
        for key_690, value_691 in pairs(ControlRegistry.Boxes) do
            local ok_692, result_693 = pcall(value_691.Get);
            if ok_692 then
                configData.Boxes[key_690] = result_693;
            end;
        end;
        local ok_694, result_695 = pcall(function()
            writefile(configDirectory .. "/" .. configName .. ".json", game.HttpService:JSONEncode(configData));
            return
        end);
        return ok_694, result_695;
    end;
    configApi.Load = function(configName)
        if not configName or configName == "" then
            return false, "No config name";
        end;
        ensureConfigDirectory(); local configValue_697 = configDirectory .. "/" .. configName .. ".json";
        if not isfile(configValue_697) then
            return false, "Config not found";
        end;
        local configValue_698 = readfile(configValue_697);
        local ok_699, result_700 = pcall(function()
            return game.HttpService:JSONDecode(configValue_698);
        end);
        if (not ok_699 or type(result_700) ~= "table") then
            return false, "Invalid config data";
        end;
        local callback_709 = function(parameter_701, parameter_702, parameter_703)
            if not parameter_703 then
                return
            end;
            for key_704, value_705 in pairs(parameter_703) do
                local configValue_706 = parameter_702 and parameter_702[key_704];
                if configValue_706 and configValue_706.Set then
                    task.spawn(function()
                        local ok_707, result_708 = pcall(configValue_706.Set, value_705);
                        if not ok_707 then
                            warn("[Config]", parameter_701, "Set failed for id:", key_704, result_708);
                        end;
                        return
                    end);
                end;
            end;
            return
        end;
        if result_700.UITheme then
            task.spawn(function()
                local ok_715, result_716 = pcall(function()
                        local configValue_710 = DCorrectTable(result_700.UITheme);
                        for key_711, value_712 in pairs(configValue_710) do
                            if type(value_712) == "table" and value_712.Color then
                                task.spawn(function()
                                        local ok_713, result_714 = pcall(function()
                                                getgenv().UIColor[key_711] = value_712.Color;
                                                return
                                        end);
                                        if not ok_713 then
                                            warn("[Config] UITheme apply failed for key:", key_711, result_714);
                                        end;
                                        return
                                end);
                            end;
                        end;
                        return
                end);
                if not ok_715 then
                    warn("[Config] UITheme decoding failed:", result_716);
                end;
                return
            end);
        end;
        task.spawn(function()
            callback_709("Toggle", ControlRegistry.Toggles, result_700.Toggles);
            return
        end);
        task.spawn(function()
            callback_709("Slider", ControlRegistry.Sliders, result_700.Sliders);
            return
        end);
        task.spawn(function()
            callback_709("Dropdown", ControlRegistry.Dropdowns, result_700.Dropdowns);
            return
        end);
        task.spawn(function()
            callback_709("Keybind", ControlRegistry.Keybinds, result_700.Keybinds);
            return
        end);
        task.spawn(function()
            callback_709("Box", ControlRegistry.Boxes, result_700.Boxes);
            return
        end);
        return true;
    end;
    configApi.Delete = function(configValue_717)
        if not configValue_717 or configValue_717 == "" then
                return false, "No config name";
        end;
        ensureConfigDirectory(); local configValue_718 = configDirectory .. "/" .. configValue_717 .. ".json";
        if not isfile(configValue_718) then
            return false, "Config not found";
        end;
        local ok_719, result_720 = pcall(function()
            delfile(configValue_718);
            return
        end);
        return ok_719, result_720;
    end;
    getgenv().ScriptUIConfig = configApi;
    if not getgenv().Chon then
        themeState = DCorrectTable(ReadCustomUISetting());
        for key_721, value_722 in pairs(themeState) do
            colorValues[key_721] = value_722.Color;
        end;
    end;
    if not getgenv().ractvkretarddumb then
        spawn(function()
            while wait(1) do
                SaveCustomUISettings();
            end;
            return
        end);
        getgenv().ractvkretarddumb = true;
    end;
    local configValue_729 = setmetatable({}, {
        __newindex = function(proxy, colorName, newColor)
            if colorName == nil then
                warn("[Script UI] UIColor __newindex got nil key, ignoring.");
                return
            end;
            rawset(colorValues, colorName, newColor); local configValue_726 = colorSubscribers[colorName];
            if configValue_726 then
                for key_727, value_728 in pairs(configValue_726) do
                    pcall(value_728);
                end;
            end;
            if not themeState[colorName] then
                themeState[colorName] = { Color = newColor };
            else
                themeState[colorName].Color = newColor;
            end;
            return
        end,
        __index = colorValues
    });
    getgenv().UIColor = configValue_729; local uiTable_730 = {}; local Library = {}; getgenv().SH_UI_Backgrounds = getgenv().SH_UI_Backgrounds or {
        { Name = "Default", Url = "" },
        { Name = "JoJo 1", Url = "bg1.jpg" },
        { Name = "JoJo 2", Url = "bg2.jpg" },
    };
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
    local UIContext = {}; local TweenService = game:GetService("TweenService"); local UserInputService = game:GetService("UserInputService");
    UIContext.ButtonEffect = function()
        return
    end;
    UIContext.GetIMG = function(imagePath)
        local text_736 = "SynAsset ["; local text_737 = "";
        if type(imagePath) == "string" and imagePath ~= "" and not string.find(imagePath, "rbxassetid://") and not string.find(imagePath, "^https?://") and isfile(imagePath) then
            local SH_ok, SH_uri = pcall(function()
                return getcustomasset(imagePath);
            end);
            if SH_ok and SH_uri then
                return SH_uri;
            end;
        end;
        if type(imagePath) == "string" and string.find(imagePath, "^https?://") then
            local SH_ok, SH_uri = pcall(function()
                local SH_data = game:HttpGet(imagePath);
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
                local SH_key = string.sub(string.gsub(imagePath, "[^%w]", "_"), -60); local SH_name = "SH_cache_" .. SH_key .. SH_ext; local SH_valid = false;
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
        if string.find(imagePath, "rbxassetid://") then
            text_737 = imagePath;
        else
            pcall(function()
                    if imagePath and type(imagePath) == "string" and tostring(game:HttpGet(imagePath)):find("PNG") then
                        for number_738 = 1, 5, 1 do
                            text_736 = tostring(text_736 .. string.char(math.random(65, 122)));
                        end;
                        text_736 = text_736 .. "].png"; writefile(text_736, game:HttpGet(imagePath));
                        spawn(function()
                            wait(5); delfile(text_736);
                            return
                        end);
                        text_737 = getsynasset(text_736);
                    end;
                    return
            end);
        end;
        return text_737;
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
    UIContext.Gui = Instance.new("ScreenGui"); UIContext.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling; UIContext.Gui.Name = "Script UI"; getgenv().ReadyForGuiLoaded = false;
    spawn(function()
        UIContext.Gui.Enabled = false;
        repeat
            wait();
        until getgenv().ReadyForGuiLoaded;
        UIContext.Gui.Enabled = true;
        return
    end);
    UIContext.NotiGui = Instance.new("ScreenGui"); UIContext.NotiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling; UIContext.NotiGui.Name = "Script UI Notification";
    local notiContainer_739 = Instance.new(FrameClass); local notiList_740 = Instance.new("UIListLayout"); notiContainer_739.Name = "NotiContainer";
    notiContainer_739.Parent = UIContext.NotiGui; notiContainer_739.AnchorPoint = Vector2.new(1, 1); notiContainer_739.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
    notiContainer_739.BackgroundTransparency = 1; notiContainer_739.Position = UDim2.new(1, -5, 1, -5); notiContainer_739.Size = UDim2.new(0, 350, 1, -10);
    notiList_740.Name = "NotiList"; notiList_740.Parent = notiContainer_739; notiList_740.SortOrder = Enum.SortOrder.LayoutOrder;
    notiList_740.VerticalAlignment = Enum.VerticalAlignment.Bottom; notiList_740.Padding = UDim.new(0, 5); wait(); getgenv().GUI = UIContext.Gui;
    SetUpTranslate = function()
            local text_741 = "vi"; local uiValue_742 = isfile("googlev.txt") and readfile("googlev.txt") or ""; local uiValue_743 = request or syn.request;
            local callback_745 = function(translator)
                return function(...)
                    return translator("[INLINE TRANSLATOR]", ...);
                end;
            end;
                googleConsent = function(parameter_746)
                    local uiTable_747 = {};
                    for parameter_748, parameter_749 in parameter_746:gmatch("<input type=\"hidden\" name=\".-\" value=\".-\">") do
                        local uiValue_750, uiValue_751 = parameter_748:match("<input type=\"hidden\" name=\"(.-)\" value=\"(.-)\">"); uiTable_747[uiValue_750] = uiValue_751;
                    end;
                    uiValue_742 = uiTable_747.v; writefile("googlev.txt", uiTable_747.v);
                    return
                end;
                local callback_757 = function(parameter_752, parameter_753, parameter_754)
                    local uiValue_755 = parameter_753 or "GET";
                    local uiValue_756 = uiValue_743({ Url = parameter_752, Method = uiValue_755, Headers = { cookie = "CONSENT=YES+" .. uiValue_742 }, Body = parameter_754 });
                    if uiValue_756.Body:match("https://consent.google.com/s") then
                        googleConsent(uiValue_756.Body); uiValue_756 = uiValue_743({ Url = parameter_752, Method = "GET", Headers = { cookie = "CONSENT=YES+" .. uiValue_742 } });
                    end;
                    return uiValue_756;
                end;
                getgenv().languages = { auto = "Automatic", ["zh-cn"] = "Chinese Simplified", ["zh-tw"] = "Chinese Traditional", en = "English", fr = "French", de = "German", el = "Greek", hu = "Hungarian", id = "Indonesian", it = "Italian", ja = "Japanese", ko = "Korean", mg = "Malagasy", pl = "Polish", pt = "Portuguese", ru = "Russian", es = "Spanish", tr = "Turkish", vi = "Vietnamese" };
                local uiTable_758 = {};
                for key_759, value_760 in pairs(languages) do
                    table.insert(uiTable_758, key_759);
                end;
                SetRandomLang = function()
                    text_741 = uiTable_758[math.random(1, #uiTable_758)];
                    return
                end;
                find = function(language)
                        for key_762, value_763 in pairs(languages) do
                            if key_762 == language or value_763 == language then
                                    return key_762;
                            end;
                        end;
                        return
                end;
                isSupported = function(parameter_764)
                    return find(parameter_764) and true or false;
                end;
                local callback_766 = function(parameter_765)
                    return (find(parameter_765));
                end;
                stringifyQuery = function(query)
                    local text_768 = "";
                    for key_769, value_770 in pairs(query) do
                        if type(value_770) == "table" then
                            for key_771, value_772 in pairs(value_770) do
                                text_768 = text_768 .. ("&%s=%s"):format(game.HttpService:UrlEncode(key_769), game.HttpService:UrlEncode(value_772));
                            end;
                        else
                            text_768 = text_768 .. ("&%s=%s"):format(game.HttpService:UrlEncode(key_769), game.HttpService:UrlEncode(value_770));
                        end;
                    end;
                    return (text_768:sub(2));
                end;
                local uiValue_773 = math.random(1000, 9999); local text_774 = "MkEWBc"; local text_775 = "https://translate.google.com/_/TranslateWebserverUi/data/batchexecute";
                local reference_776 = nil; local reference_777 = nil;
                jsonE = function(value)
                    return HttpService:JSONEncode(value);
                end;
                jsonD = function(jsonText)
                    return HttpService:JSONDecode(jsonText);
                end;
                local callback_792 = function(parameter_780, parameter_781, parameter_782)
                    uiValue_773 = uiValue_773 + 10000; local uiValue_783 = parameter_782 and callback_766(parameter_782) or "auto";
                    local uiValue_784 = parameter_781 and callback_766(parameter_781) or "en";
                    local uiTable_785 = { { { text_774, jsonE({ { parameter_780, uiValue_783, uiValue_784, true }, { nil } }), nil, "generic" } } };
                    local uiValue_786 = text_775 .. "?" .. stringifyQuery({ rpcids = text_774, ["f.sid"] = reference_776, bl = reference_777, hl = "en", _reqid = uiValue_773 - 10000, rt = "c" });
                    local uiValue_787 = stringifyQuery({ ["f.req"] = jsonE(uiTable_785) }); local uiValue_788 = callback_757(uiValue_786, "POST", uiValue_787);
                    local uiValue_789 = jsonD(uiValue_788.Body:match("%[.-%]\n")); local uiValue_790 = jsonD(uiValue_789[1][3]);
                    local uiTable_791 = { text = "", from = { language = "", text = "" }, raw = "", raw = uiValue_790, text = uiValue_790[2][1][1][6][1][1] };
                    uiTable_791.from.language = uiValue_790[3]; uiTable_791.from.text = uiValue_790[2][5][1];
                    return uiTable_791;
                end;
                translateFrom = function(text)
                    local uiValue_794 = callback_792(text, text_741); local reference_795 = nil;
                    if uiValue_794.from.language ~= text_741 then
                        reference_795 = uiValue_794.text;
                    end;
                    return { reference_795, uiValue_794.from.language };
                end;
                Translate = function(text)
                    local ok_797, result_798 = pcall(function()
                        return translateFrom(text)[1];
                    end);
                    if ok_797 then
                        return result_798;
                    end;
                    return
                end;
                return
    end;
    getgenv().TranslateCache = {};
    if not isfolder("ScriptUI") then
        makefolder("ScriptUI");
    end;
    local ok_799, result_800 = pcall(function()
        return game.HttpService:JSONDecode(readfile("ScriptUI/!UIText.json"));
    end);
    SaveFile = function()
        pcall(function()
            writefile("ScriptUI/!UIText.json", game.HttpService:JSONEncode(getgenv().TranslateCache));
            return
        end);
        return
    end;
    isnumber = function()
        return
    end;
    local enabled_801 = false;
    if ok_799 and result_800 then
        getgenv().TranslateCache = result_800;
    end;
    spawn(function()
        local uiValue_802 = tick();
        while wait(2) do
            if tick() - uiValue_802 > 30 then
                if enabled_801 then
                    SaveFile(); enabled_801 = false;
                end;
            else
                SaveFile();
            end;
        end;
        return
    end);
    UIContext.Gui.Parent = game:GetService("CoreGui"); UIContext.NotiGui.Parent = game:GetService("CoreGui");
    UIContext.Getcolor = function(parameter_803)
        return { math.floor(parameter_803.r * 255), math.floor(parameter_803.g * 255), math.floor(parameter_803.b * 255) };
    end;
    Library.CreateNoti = function(notificationConfig)
        getgenv().TitleNameNoti = notificationConfig.Title or ""; local description_805 = notificationConfig.Desc; local uiValue_806 = notificationConfig.ShowTime or 10;
        local notiFrame_807 = Instance.new(FrameClass); local noticontainer_808 = Instance.new(FrameClass); local uiObject_809 = Instance.new("UICorner");
        local topnoti_810 = Instance.new(FrameClass); local textLabelNoti_813 = Instance.new("TextLabel"); local closeContainer_814 = Instance.new(FrameClass);
        local closeImage_815 = Instance.new("ImageLabel"); local uiObject_816 = Instance.new("TextButton"); local uiObject_817 = Instance.new("TextLabel");
        notiFrame_807.Name = "NotiFrame"; notiFrame_807.Parent = notiContainer_739; notiFrame_807.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        notiFrame_807.BackgroundTransparency = 1; notiFrame_807.ClipsDescendants = true; notiFrame_807.Position = UDim2.new(0, 0, 0, 0); notiFrame_807.Size = UDim2.new(1, 0, 0, 0);
        notiFrame_807.AutomaticSize = Enum.AutomaticSize.Y; noticontainer_808.Name = "Noticontainer"; noticontainer_808.Parent = notiFrame_807;
        noticontainer_808.Position = UDim2.new(1, 0, 0, 0); noticontainer_808.Size = UDim2.new(1, 0, 1, 6); noticontainer_808.AutomaticSize = Enum.AutomaticSize.Y;
        noticontainer_808.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
        table.insert(colorSubscribers["Background 3 Color"], function()
            noticontainer_808.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
            return
        end);
        uiObject_809.CornerRadius = UDim.new(0, 10); uiObject_809.Parent = noticontainer_808; topnoti_810.Name = "Topnoti"; topnoti_810.Parent = noticontainer_808;
        topnoti_810.BackgroundColor3 = Color3.fromRGB(230, 230, 230); topnoti_810.BackgroundTransparency = 1; topnoti_810.Position = UDim2.new(0, 0, 0, 5);
        topnoti_810.Size = UDim2.new(1, 0, 0, 25);
        textLabelNoti_813.Text = "<font color=\"rgb(" .. (tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().TitleNameNoti;
        table.insert(colorSubscribers["Title Text Color"], function()
            textLabelNoti_813.Text = "<font color=\"rgb(" .. (tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().TitleNameNoti;
            return
        end);
        textLabelNoti_813.Name = "TextLabelNoti"; textLabelNoti_813.Parent = topnoti_810; textLabelNoti_813.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        textLabelNoti_813.BackgroundTransparency = 1; textLabelNoti_813.Position = UDim2.new(0, 10, 0, 0); textLabelNoti_813.Size = UDim2.new(1, -15, 1, 0);
        textLabelNoti_813.Font = Enum.Font.GothamBold; textLabelNoti_813.TextSize = 14; textLabelNoti_813.TextWrapped = true; textLabelNoti_813.TextXAlignment = Enum.TextXAlignment.Left;
        textLabelNoti_813.RichText = true; textLabelNoti_813.TextColor3 = getgenv().UIColor["GUI Text Color"];
        table.insert(colorSubscribers["GUI Text Color"], function()
            textLabelNoti_813.TextColor3 = getgenv().UIColor["GUI Text Color"];
            return
        end);
        closeContainer_814.Name = "CloseContainer"; closeContainer_814.Parent = topnoti_810; closeContainer_814.AnchorPoint = Vector2.new(1, 0.5);
        closeContainer_814.BackgroundColor3 = Color3.fromRGB(230, 230, 230); closeContainer_814.BackgroundTransparency = 1; closeContainer_814.Position = UDim2.new(1, -4, 0.5, 0);
        closeContainer_814.Size = UDim2.new(0, 22, 0, 22); closeImage_815.Name = "CloseImage"; closeImage_815.Parent = closeContainer_814;
        closeImage_815.BackgroundColor3 = Color3.fromRGB(230, 230, 230); closeImage_815.BackgroundTransparency = 1; closeImage_815.Size = UDim2.new(1, 0, 1, 0);
        closeImage_815.Image = "rbxassetid://3926305904"; closeImage_815.ImageRectOffset = Vector2.new(284, 4); closeImage_815.ImageRectSize = Vector2.new(24, 24);
        closeImage_815.ImageColor3 = getgenv().UIColor["Search Icon Color"];
        table.insert(colorSubscribers["Search Icon Color"], function()
            closeImage_815.ImageColor3 = getgenv().UIColor["Search Icon Color"];
            return
        end);
        uiObject_816.Parent = closeContainer_814; uiObject_816.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_816.BackgroundTransparency = 1;
        uiObject_816.Size = UDim2.new(1, 0, 1, 0); uiObject_816.Font = Enum.Font.SourceSans; uiObject_816.Text = ""; uiObject_816.TextColor3 = Color3.fromRGB(0, 0, 0);
        uiObject_816.TextSize = 14;
        if description_805 then
            uiObject_817.Name = "TextColor"; uiObject_817.Parent = noticontainer_808; uiObject_817.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_817.BackgroundTransparency = 1;
            uiObject_817.Position = UDim2.new(0, 10, 0, 35); uiObject_817.Size = UDim2.new(1, -15, 0, 0); uiObject_817.Font = Enum.Font.GothamBold; uiObject_817.Text = description_805;
            uiObject_817.TextSize = 14; uiObject_817.TextXAlignment = Enum.TextXAlignment.Left; uiObject_817.RichText = true; uiObject_817.TextColor3 = getgenv().UIColor[TextColorKey];
            uiObject_817.AutomaticSize = Enum.AutomaticSize.Y; uiObject_817.TextWrapped = true;
            table.insert(colorSubscribers[TextColorKey], function()
                uiObject_817.TextColor3 = getgenv().UIColor[TextColorKey];
                return
            end);
        end;
        local callback_818 = function()
            TweenService:Create(noticontainer_808, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Position = UDim2.new(1, 0, 0, 0) }):Play(); wait(0.25);
            notiFrame_807:Destroy();
            return
        end;
        TweenService:Create(noticontainer_808, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Position = UDim2.new(0, 0, 0, 0) }):Play();
        uiObject_816.MouseEnter:Connect(function()
            TweenService:Create(closeImage_815, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"] }):Play();
            return
        end);
        uiObject_816.MouseLeave:Connect(function()
            TweenService:Create(closeImage_815, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { ImageColor3 = getgenv().UIColor["Search Icon Color"] }):Play();
            return
        end);
        uiObject_816.MouseButton1Click:Connect(function()
            spawn(function()
                UIContext.ButtonEffect();
                return
            end);
            wait(0.25); callback_818();
            return
        end);
        spawn(function()
            wait(uiValue_806); callback_818();
            return
        end);
        return
    end;
    Library.CreateMain = function(windowConfig)
        local title_820 = tostring(windowConfig.Title) or "ScriptUI"; getgenv().MainDesc = windowConfig.Desc or ""; local enabled_821 = false; cac = false;
        local makeDraggable = function(dragHandle, dragFrame)
            local reference_824 = nil; local reference_825 = nil; local reference_826 = nil; local reference_827 = nil;
            dragHandle.InputBegan:Connect(function(dragInput)
                if dragInput.UserInputType == Enum.UserInputType.MouseButton1 or dragInput.UserInputType == Enum.UserInputType.Touch then
                    reference_824 = true; reference_826 = dragInput.Position; reference_827 = dragFrame.Position;
                    dragInput.Changed:Connect(function()
                        if dragInput.UserInputState == Enum.UserInputState.End then
                            reference_824 = false;
                            if getgenv().SH_UI_DragMode then pcall(getgenv().SH_UI_DragMode, false); end;
                        end;
                        return
                    end);
                end;
                return
            end);
            dragHandle.InputChanged:Connect(function(dragInput)
                if dragInput.UserInputType == Enum.UserInputType.MouseMovement or dragInput.UserInputType == Enum.UserInputType.Touch then
                    reference_825 = dragInput;
                end;
                return
            end);
            UserInputService.InputChanged:Connect(function(inputChanged)
                if inputChanged == reference_825 and reference_824 then
                    local position_831 = inputChanged.Position - reference_826;
                    if getgenv().SH_UI_DragMode and (position_831.X * position_831.X + position_831.Y * position_831.Y) > 16 then pcall(getgenv().SH_UI_DragMode, true); end;
                    local SH_cam = workspace.CurrentCamera; local SH_vp = SH_cam and SH_cam.ViewportSize or Vector2.new(1920, 1080); local SH_size = dragFrame.AbsoluteSize;
                    local SH_ap = dragFrame.AnchorPoint; local SH_px = reference_827.X.Scale * SH_vp.X + reference_827.X.Offset + position_831.X;
                    local SH_py = reference_827.Y.Scale * SH_vp.Y + reference_827.Y.Offset + position_831.Y; local SH_minX, SH_maxX = SH_size.X * SH_ap.X, SH_vp.X - SH_size.X * (1 - SH_ap.X);
                    local SH_minY, SH_maxY = SH_size.Y * SH_ap.Y, SH_vp.Y - SH_size.Y * (1 - SH_ap.Y);
                    if SH_maxX < SH_minX then SH_maxX = SH_minX end;
                    if SH_maxY < SH_minY then SH_maxY = SH_minY end;
                    SH_px = math.clamp(SH_px, SH_minX, SH_maxX); SH_py = math.clamp(SH_py, SH_minY, SH_maxY);
                    local SH_target = UDim2.new(reference_827.X.Scale, SH_px - reference_827.X.Scale * SH_vp.X, reference_827.Y.Scale, SH_py - reference_827.Y.Scale * SH_vp.Y);
                    if not enabled_821 and cac then
                        TweenService:Create(dragFrame, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = SH_target }):Play();
                    elseif not enabled_821 and not cac then
                        dragFrame.Position = SH_target;
                    end;
                end;
                return
            end);
        end;
        local MainWindow = Instance.new(FrameClass); local maingui_834 = Instance.new("ImageLabel"); local uiObject_835 = Instance.new("UICorner");
        local uiObject_836 = Instance.new(FrameClass); local uiObject_838 = Instance.new("TextLabel"); local uiObject_839 = Instance.new(FrameClass);
        local uiObject_840 = Instance.new("UICorner"); local uiObject_841 = Instance.new("ScrollingFrame"); local uiObject_842 = Instance.new("UIListLayout");
        local uiObject_843 = Instance.new("TextLabel"); local uiObject_844 = Instance.new(FrameClass); local uiObject_845 = Instance.new("UIPageLayout"); local windowValue_846;
        local windowValue_847; local windowValue_848; local uiObject_849 = Instance.new(FrameClass); local uiObject_850 = Instance.new(FrameClass); local windowValue_851;
        local windowValue_852; MainWindow.Name = "Main"; MainWindow.Parent = UIContext.Gui; MainWindow.BackgroundColor3 = Color3.fromRGB(42, 42, 42); MainWindow.BackgroundTransparency = 1;
        MainWindow.Position = UDim2.new(0.5, 0, 0.5, 0); MainWindow.AnchorPoint = Vector2.new(0.5, 0.5); MainWindow.Size = UDim2.new(0, 629, 0, 359); makeDraggable(MainWindow, MainWindow);
        maingui_834.Name = "maingui"; maingui_834.Parent = MainWindow; maingui_834.AnchorPoint = Vector2.new(0.5, 0.5); maingui_834.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
        maingui_834.BackgroundTransparency = 1; maingui_834.Position = UDim2.new(0.5, 0, 0.5, 0); maingui_834.Selectable = true; maingui_834.Size = UDim2.new(1, 30, 1, 30);
        maingui_834.Image = "rbxassetid://8068653048"; maingui_834.ScaleType = Enum.ScaleType.Slice; maingui_834.SliceCenter = Rect.new(15, 15, 175, 175); maingui_834.SliceScale = 1.3;
        maingui_834.ImageColor3 = getgenv().UIColor["Border Color"];
        table.insert(colorSubscribers["Border Color"], function()
            maingui_834.ImageColor3 = getgenv().UIColor["Border Color"];
            return
        end);
        UIContext.ReloadMain = function(backgroundUrl)
            maingui_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
            uiObject_838.Text = "<font color=\"rgb(" .. (tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
            table.insert(colorSubscribers["Title Text Color"], function()
                maingui_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
                uiObject_838.Text = "<font color=\"rgb(" .. (tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
                return
            end);
            local mainContainer_854 = nil;
            if backgroundUrl ~= "" and (type(backgroundUrl) == "string" and string.find(backgroundUrl:lower(), ".webm") and pcall(function()
                writefile("seahub.webm", syn.request({ Url = backgroundUrl }).Body);
                return
            end)) then
                wait(0.25); local windowValue_855 = isfile("seahub.webm"); wait(0.25);
                if windowValue_855 then
                    mainContainer_854 = Instance.new("VideoFrame"); mainContainer_854.Name = "MainContainer"; mainContainer_854.Parent = MainWindow;
                    mainContainer_854.BackgroundColor3 = getgenv().UIColor["Background Main Color"]; mainContainer_854.Size = UDim2.new(1, 0, 1, 0);
                    mainContainer_854.Video = getsynasset("seahub.webm"); mainContainer_854.Looped = true; mainContainer_854:Play(); wait(0.5); delfile("seahub.webm");
                end;
            else
                mainContainer_854 = Instance.new("ImageLabel"); mainContainer_854.Name = "MainContainer"; mainContainer_854.Parent = MainWindow;
                mainContainer_854.BackgroundColor3 = getgenv().UIColor["Background Main Color"]; mainContainer_854.Size = UDim2.new(1, 0, 1, 0); mainContainer_854.ScaleType = Enum.ScaleType.Crop;
                mainContainer_854.Image = UIContext.GetIMG(backgroundUrl);
            end;
            MainCorner_ = Instance.new("UICorner"); MainCorner_.CornerRadius = UDim.new(0, 12); MainCorner_.Name = "MainCorner"; MainCorner_.Parent = mainContainer_854;
            for parameter_856, parameter_857 in next, MainWindow:GetChildren() do
                if parameter_857.Name == "MainContainer" then
                    for parameter_858, parameter_859 in next, parameter_857:GetChildren() do
                        parameter_859.Parent = mainContainer_854;
                    end;
                    wait(); parameter_857:Destroy(); break;
                end;
            end;
            local SH_blurLayer = mainContainer_854:FindFirstChild("SH_BlurLayer");
            if not SH_blurLayer then
                SH_blurLayer = Instance.new("ImageLabel"); SH_blurLayer.Name = "SH_BlurLayer"; SH_blurLayer.Parent = mainContainer_854; SH_blurLayer.AnchorPoint = Vector2.new(0.5, 0.5);
                SH_blurLayer.Position = UDim2.new(0.5, 0, 0.5, 0); SH_blurLayer.Size = UDim2.new(1, 0, 1, 0); SH_blurLayer.BackgroundTransparency = 1; SH_blurLayer.BorderSizePixel = 0;
                SH_blurLayer.ZIndex = 0; SH_blurLayer.ScaleType = Enum.ScaleType.Crop; local SH_blurCorner = Instance.new("UICorner"); SH_blurCorner.CornerRadius = UDim.new(0, 12);
                SH_blurCorner.Parent = SH_blurLayer;
                table.insert(colorSubscribers["Background Blur Transparency"], function()
                    if SH_blurLayer and SH_blurLayer.Image ~= "" then
                        SH_blurLayer.ImageTransparency = getgenv().UIColor["Background Blur Transparency"];
                    end;
                    return
                end);
            end;
            local SH_blurPath = SH_GetBlurPath(backgroundUrl);
            local SH_blurOk, SH_blurImg = pcall(function()
                return UIContext.GetIMG(SH_blurPath);
            end);
            if SH_blurOk and SH_blurImg and SH_blurImg ~= "" then
                SH_blurLayer.Image = SH_blurImg; SH_blurLayer.ImageTransparency = (getgenv().UIColor["Background Blur Transparency"] or 0.7);
            else
                SH_blurLayer.Image = ""; SH_blurLayer.ImageTransparency = 1;
            end;
            local SH_whiteGlow = SH_blurLayer.Parent:FindFirstChild("SH_WhiteGlow");
            if not SH_whiteGlow then
                SH_whiteGlow = Instance.new("ImageLabel"); SH_whiteGlow.Name = "SH_WhiteGlow"; SH_whiteGlow.Parent = SH_blurLayer.Parent; SH_whiteGlow.AnchorPoint = Vector2.new(0.5, 0.5);
                SH_whiteGlow.Position = UDim2.new(0.5, 0, 0.5, 0); SH_whiteGlow.Size = UDim2.new(1, 40, 1, 40); SH_whiteGlow.BackgroundTransparency = 1; SH_whiteGlow.BorderSizePixel = 0;
                SH_whiteGlow.ZIndex = 0; SH_whiteGlow.Image = "rbxassetid://8068653048"; SH_whiteGlow.ImageColor3 = Color3.fromRGB(255, 255, 255); SH_whiteGlow.ImageTransparency = 0.62;
                SH_whiteGlow.ScaleType = Enum.ScaleType.Slice; SH_whiteGlow.SliceCenter = Rect.new(15, 15, 175, 175);
            end;
            local SH_whiteHaze = SH_blurLayer.Parent:FindFirstChild("SH_WhiteHaze");
            if not SH_whiteHaze then
                SH_whiteHaze = Instance.new("Frame"); SH_whiteHaze.Name = "SH_WhiteHaze"; SH_whiteHaze.Parent = SH_blurLayer.Parent; SH_whiteHaze.Size = UDim2.new(1, 0, 1, 0);
                SH_whiteHaze.Position = UDim2.new(0, 0, 0, 0); SH_whiteHaze.BackgroundColor3 = Color3.fromRGB(255, 255, 255); SH_whiteHaze.BackgroundTransparency = 0.9;
                SH_whiteHaze.BorderSizePixel = 0; SH_whiteHaze.ZIndex = 0; local SH_hazeCorner = Instance.new("UICorner"); SH_hazeCorner.CornerRadius = UDim.new(0, 12);
                SH_hazeCorner.Parent = SH_whiteHaze;
            end;
            table.insert(colorSubscribers["Background 3 Color"], function()
                mainContainer_854.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                return
            end);
            return
        end;
        maingui_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
        uiObject_838.Text = "<font color=\"rgb(" .. (tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
        table.insert(colorSubscribers["Title Text Color"], function()
            maingui_834.ImageColor3 = getgenv().UIColor["Title Text Color"];
            uiObject_838.Text = "<font color=\"rgb(" .. (tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
            return
        end);
        local mainContainer_860 = nil; local windowValue_861 = getgenv().UIColor["Background Image"];
        if windowValue_861 ~= "" and (type(windowValue_861) == "string" and string.find(windowValue_861:lower(), ".webm") and pcall(function()
            writefile("seahub.webm", syn.request({ Url = windowValue_861 }).Body);
            return
        end)) then
            wait(0.25); local windowValue_862 = isfile("seahub.webm"); wait(0.25);
            if windowValue_862 then
                mainContainer_860 = Instance.new("VideoFrame"); mainContainer_860.Name = "MainContainer"; mainContainer_860.Parent = MainWindow;
                mainContainer_860.BackgroundColor3 = getgenv().UIColor["Background Main Color"]; mainContainer_860.Size = UDim2.new(1, 0, 1, 0);
                mainContainer_860.Video = getsynasset("seahub.webm"); mainContainer_860.Looped = true; mainContainer_860:Play(); wait(0.5); delfile("seahub.webm");
            end;
        else
            mainContainer_860 = Instance.new("ImageLabel"); mainContainer_860.Name = "MainContainer"; mainContainer_860.Parent = MainWindow;
            mainContainer_860.BackgroundColor3 = getgenv().UIColor["Background Main Color"]; mainContainer_860.Size = UDim2.new(1, 0, 1, 0); mainContainer_860.ScaleType = Enum.ScaleType.Crop;
            mainContainer_860.Image = UIContext.GetIMG(windowValue_861);
        end;
            local SH_blurLayer = mainContainer_860:FindFirstChild("SH_BlurLayer");
            if not SH_blurLayer then
                SH_blurLayer = Instance.new("ImageLabel"); SH_blurLayer.Name = "SH_BlurLayer"; SH_blurLayer.Parent = mainContainer_860; SH_blurLayer.AnchorPoint = Vector2.new(0.5, 0.5);
                SH_blurLayer.Position = UDim2.new(0.5, 0, 0.5, 0); SH_blurLayer.Size = UDim2.new(1, 0, 1, 0); SH_blurLayer.BackgroundTransparency = 1; SH_blurLayer.BorderSizePixel = 0;
                SH_blurLayer.ZIndex = 0; SH_blurLayer.ScaleType = Enum.ScaleType.Crop; local SH_blurCorner = Instance.new("UICorner"); SH_blurCorner.CornerRadius = UDim.new(0, 12);
                SH_blurCorner.Parent = SH_blurLayer;
                table.insert(colorSubscribers["Background Blur Transparency"], function()
                    if SH_blurLayer and SH_blurLayer.Image ~= "" then
                        SH_blurLayer.ImageTransparency = getgenv().UIColor["Background Blur Transparency"];
                    end;
                    return
                end);
            end;
            local SH_blurPath = SH_GetBlurPath(windowValue_861);
            local SH_blurOk, SH_blurImg = pcall(function()
                return UIContext.GetIMG(SH_blurPath);
            end);
            if SH_blurOk and SH_blurImg and SH_blurImg ~= "" then
                SH_blurLayer.Image = SH_blurImg; SH_blurLayer.ImageTransparency = (getgenv().UIColor["Background Blur Transparency"] or 0.7);
            else
                SH_blurLayer.Image = ""; SH_blurLayer.ImageTransparency = 1;
            end;
            local SH_whiteGlow = SH_blurLayer.Parent:FindFirstChild("SH_WhiteGlow");
            if not SH_whiteGlow then
                SH_whiteGlow = Instance.new("ImageLabel"); SH_whiteGlow.Name = "SH_WhiteGlow"; SH_whiteGlow.Parent = SH_blurLayer.Parent; SH_whiteGlow.AnchorPoint = Vector2.new(0.5, 0.5);
                SH_whiteGlow.Position = UDim2.new(0.5, 0, 0.5, 0); SH_whiteGlow.Size = UDim2.new(1, 40, 1, 40); SH_whiteGlow.BackgroundTransparency = 1; SH_whiteGlow.BorderSizePixel = 0;
                SH_whiteGlow.ZIndex = 0; SH_whiteGlow.Image = "rbxassetid://8068653048"; SH_whiteGlow.ImageColor3 = Color3.fromRGB(255, 255, 255); SH_whiteGlow.ImageTransparency = 0.62;
                SH_whiteGlow.ScaleType = Enum.ScaleType.Slice; SH_whiteGlow.SliceCenter = Rect.new(15, 15, 175, 175);
            end;
            local SH_whiteHaze = SH_blurLayer.Parent:FindFirstChild("SH_WhiteHaze");
            if not SH_whiteHaze then
                SH_whiteHaze = Instance.new("Frame"); SH_whiteHaze.Name = "SH_WhiteHaze"; SH_whiteHaze.Parent = SH_blurLayer.Parent; SH_whiteHaze.Size = UDim2.new(1, 0, 1, 0);
                SH_whiteHaze.Position = UDim2.new(0, 0, 0, 0); SH_whiteHaze.BackgroundColor3 = Color3.fromRGB(255, 255, 255); SH_whiteHaze.BackgroundTransparency = 0.9;
                SH_whiteHaze.BorderSizePixel = 0; SH_whiteHaze.ZIndex = 0; local SH_hazeCorner = Instance.new("UICorner"); SH_hazeCorner.CornerRadius = UDim.new(0, 12);
                SH_hazeCorner.Parent = SH_whiteHaze;
            end;
        table.insert(colorSubscribers["Background 3 Color"], function()
            mainContainer_860.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
            return
        end);
        getgenv().ReadyForGuiLoaded = true; uiObject_835.CornerRadius = UDim.new(0, 12); uiObject_835.Name = "MainCorner"; uiObject_835.Parent = mainContainer_860;
        uiObject_849.Name = "Concacontainer"; uiObject_849.Parent = mainContainer_860; uiObject_849.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        uiObject_849.BackgroundTransparency = 1; uiObject_849.ClipsDescendants = true; uiObject_849.Position = UDim2.new(0, 0, 0, 30); uiObject_849.Size = UDim2.new(1, 0, 1, -30);
        uiObject_850.Name = "Concacmain"; uiObject_850.Parent = uiObject_849; uiObject_850.BackgroundColor3 = Color3.fromRGB(255, 255, 255); uiObject_850.BackgroundTransparency = 1;
        uiObject_850.Selectable = true; uiObject_850.Size = UDim2.new(1, 0, 1, 0); uiObject_836.Name = "TopMain"; uiObject_836.Parent = mainContainer_860;
        uiObject_836.BackgroundColor3 = Color3.fromRGB(255, 255, 255); uiObject_836.BackgroundTransparency = 1; uiObject_836.Size = UDim2.new(1, 0, 0, 30);
        uiObject_838.Name = "TextLabelMain"; uiObject_838.Parent = uiObject_836; uiObject_838.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_838.BackgroundTransparency = 1;
        uiObject_838.Position = UDim2.new(0, 10, 0, 0); uiObject_838.Size = UDim2.new(1, -10, 1, 0); uiObject_838.Font = Enum.Font.GothamBold; uiObject_838.RichText = true;
        uiObject_838.TextSize = 16; uiObject_838.TextWrapped = true; uiObject_838.TextXAlignment = Enum.TextXAlignment.Left; uiObject_838.TextColor3 = getgenv().UIColor["GUI Text Color"];
        table.insert(colorSubscribers["GUI Text Color"], function()
            uiObject_838.TextColor3 = getgenv().UIColor["GUI Text Color"];
            return
        end);
        uiObject_838.Text = "<font color=\"rgb(" .. (tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
        table.insert(colorSubscribers["Title Text Color"], function()
            uiObject_838.Text = "<font color=\"rgb(" .. (tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(UIContext.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Script Hub</font> " .. getgenv().MainDesc;
            return
        end);
        local SH_MainScale = Instance.new("UIScale"); SH_MainScale.Name = "SH_MainScale"; SH_MainScale.Scale = 1; SH_MainScale.Parent = MainWindow;
        local SH_tween = game:GetService("TweenService"); local SH_isOpen = true; local SH_closeToken = 0;
        local function SH_ClampToScreen(SH_frame)
            local SH_cam = workspace.CurrentCamera;
            if not SH_cam then
                return
            end;
            local SH_vp = SH_cam.ViewportSize; local SH_size = SH_frame.AbsoluteSize; local SH_ap = SH_frame.AnchorPoint; local SH_pos = SH_frame.Position;
            local SH_px = SH_pos.X.Scale * SH_vp.X + SH_pos.X.Offset; local SH_py = SH_pos.Y.Scale * SH_vp.Y + SH_pos.Y.Offset;
            local SH_minX, SH_maxX = SH_size.X * SH_ap.X, SH_vp.X - SH_size.X * (1 - SH_ap.X); local SH_minY, SH_maxY = SH_size.Y * SH_ap.Y, SH_vp.Y - SH_size.Y * (1 - SH_ap.Y);
            if SH_maxX < SH_minX then
                SH_maxX = SH_minX;
            end;
            if SH_maxY < SH_minY then
                SH_maxY = SH_minY;
            end;
            SH_px = math.clamp(SH_px, SH_minX, SH_maxX); SH_py = math.clamp(SH_py, SH_minY, SH_maxY);
            SH_frame.Position = UDim2.new(SH_pos.X.Scale, SH_px - SH_pos.X.Scale * SH_vp.X, SH_pos.Y.Scale, SH_py - SH_pos.Y.Scale * SH_vp.Y);
            return
        end;
        local SH_cursorConn = nil; local SH_cursorLoop = nil; local SH_origBehavior = nil; local SH_origIcon = nil; local SH_cameraMode = false; local SH_rmbHeld = false;
        local SH_uisRef = game:GetService("UserInputService");
        local function SH_applyCursorState()
            if SH_cameraMode or SH_rmbHeld then
                SH_uisRef.MouseBehavior = Enum.MouseBehavior.LockCenter; SH_uisRef.MouseIconEnabled = false;
            else
                SH_uisRef.MouseBehavior = Enum.MouseBehavior.Default; SH_uisRef.MouseIconEnabled = true;
            end;
            return
        end;
        local function SH_forceCursor(SH_on)
            if SH_on then
                if SH_origBehavior == nil then
                    SH_origBehavior = SH_uisRef.MouseBehavior; SH_origIcon = SH_uisRef.MouseIconEnabled;
                end;
                SH_cursorLoop = true;
                SH_applyCursorState();
            else
                SH_cursorLoop = nil;
                SH_uisRef.MouseBehavior = SH_origBehavior or Enum.MouseBehavior.Default;
                if SH_origIcon ~= nil then
                    SH_uisRef.MouseIconEnabled = SH_origIcon;
                else
                    SH_uisRef.MouseIconEnabled = true;
                end;
            end;
            return
        end;
        SH_uisRef.InputBegan:Connect(function(SH_i)
            if SH_i.UserInputType == Enum.UserInputType.MouseButton2 then
                SH_rmbHeld = true; SH_applyCursorState();
            elseif SH_i.UserInputType == Enum.UserInputType.MouseButton1 or SH_i.UserInputType == Enum.UserInputType.Touch then
                if not (SH_cameraMode or SH_rmbHeld) then
                    SH_applyCursorState();
                end;
            elseif SH_i.KeyCode == Enum.KeyCode.LeftAlt or SH_i.KeyCode == Enum.KeyCode.RightAlt or SH_i.KeyCode == Enum.KeyCode.Insert then
                SH_cameraMode = not SH_cameraMode; SH_applyCursorState();
            end;
            return
        end);
        SH_uisRef.InputEnded:Connect(function(SH_i)
            if SH_i.UserInputType == Enum.UserInputType.MouseButton2 then
                SH_rmbHeld = false; SH_applyCursorState();
            end;
            return
        end);
        -- if the game locks the mouse outside of camera use, keep it free
        SH_uisRef:GetPropertyChangedSignal("MouseBehavior"):Connect(function()
            if SH_cursorLoop and not SH_cameraMode and not SH_rmbHeld and SH_uisRef.MouseBehavior ~= Enum.MouseBehavior.Default then
                SH_uisRef.MouseBehavior = Enum.MouseBehavior.Default;
            end;
        end);
        local function SH_SetOpen(SH_open, SH_instant)
            if not MainWindow or not MainWindow.Parent then return end;
            SH_isOpen = SH_open; SH_closeToken = SH_closeToken + 1; local SH_token = SH_closeToken;
            if SH_open then
                SH_forceCursor(true); SH_ClampToScreen(MainWindow); MainWindow.Visible = true;
                if SH_instant then
                    SH_MainScale.Scale = 1;
                    return
                end;
                SH_MainScale.Scale = 0.82; SH_tween:Create(SH_MainScale, TweenInfo.new(0.30, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play();
            else
                if SH_instant then
                    MainWindow.Visible = false; SH_MainScale.Scale = 1;
                    return
                end;
                SH_tween:Create(SH_MainScale, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Scale = 0.82 }):Play(); SH_forceCursor(false);
                task.delay(0.19, function()
                    if SH_token == SH_closeToken then
                        MainWindow.Visible = false; SH_MainScale.Scale = 1;
                    end;
                    return
                end);
            end;
            return
        end;
        Library.UnloadUI = function()
            getgenv().SH_UI_Unloaded = true;
            if SH_cursorLoop then pcall(function() game:GetService("RunService"):UnbindFromRenderStep("SH_CursorForce") end); SH_cursorLoop = nil; end;
            if UIContext.Gui then
                UIContext.Gui:Destroy();
            end;
            if UIContext.NotiGui then
                UIContext.NotiGui:Destroy();
            end;
            return
        end;
        Library.OpenUI = function()
            SH_SetOpen(true);
            return
        end;
        Library.CloseUI = function()
            SH_SetOpen(false);
            return
        end;
        Library.ToggleUI = function()
            SH_SetOpen(not SH_isOpen);
            return
        end;
        Library.IsUIOpen = function()
            return SH_isOpen;
        end;
        Library.Main = MainWindow; getgenv().SH_UI_Open = Library.OpenUI; getgenv().SH_UI_Close = Library.CloseUI; getgenv().SH_UI_Toggle = Library.ToggleUI;
        local SH_CloseBtn = Instance.new("TextButton"); SH_CloseBtn.Name = "SH_CloseButton"; SH_CloseBtn.Parent = uiObject_836; SH_CloseBtn.AnchorPoint = Vector2.new(1, 0);
        SH_CloseBtn.Position = UDim2.new(1, 0, 0, 0); SH_CloseBtn.Size = UDim2.new(0, 22, 0, 22); SH_CloseBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
        SH_CloseBtn.BackgroundTransparency = 1; local SH_CloseCorner = Instance.new("UICorner"); SH_CloseCorner.CornerRadius = UDim.new(0, 10); SH_CloseCorner.Parent = SH_CloseBtn;
        table.insert(colorSubscribers["Title Text Color"], function()
            SH_CloseBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
            return
        end);
        SH_CloseBtn.Text = "X"; SH_CloseBtn.Font = Enum.Font.GothamBold; SH_CloseBtn.TextSize = 12; SH_CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
        SH_CloseBtn.TextStrokeTransparency = 0.55; SH_CloseBtn.TextStrokeColor3 = Color3.fromRGB(0, 0, 0); SH_CloseBtn.AutoButtonColor = false; SH_CloseBtn.ZIndex = 7;
        table.insert(colorSubscribers["Title Text Color"], function()
            SH_CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
            return
        end);
        SH_CloseBtn.MouseEnter:Connect(function()
            SH_tween:Create(SH_CloseBtn, TweenInfo.new(0.15), { TextColor3 = Color3.fromRGB(255, 90, 90), Rotation = 90 }):Play();
            return
        end);
        SH_CloseBtn.MouseLeave:Connect(function()
            SH_tween:Create(SH_CloseBtn, TweenInfo.new(0.15), { TextColor3 = getgenv().UIColor["Title Text Color"], Rotation = 0 }):Play();
            return
        end);
        SH_CloseBtn.MouseButton1Click:Connect(function()
            Library.UnloadUI();
            return
        end);
        local SH_MinBtn = Instance.new("TextButton"); SH_MinBtn.Name = "SH_MinimizeButton"; SH_MinBtn.Parent = uiObject_836; SH_MinBtn.AnchorPoint = Vector2.new(1, 0);
        SH_MinBtn.Position = UDim2.new(1, -25, 0, 0); SH_MinBtn.Size = UDim2.new(0, 22, 0, 22); SH_MinBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
        SH_MinBtn.BackgroundTransparency = 1; local SH_MinCorner = Instance.new("UICorner"); SH_MinCorner.CornerRadius = UDim.new(0, 10); SH_MinCorner.Parent = SH_MinBtn;
        table.insert(colorSubscribers["Title Text Color"], function()
            SH_MinBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
            return
        end);
        SH_MinBtn.Text = "−"; SH_MinBtn.Font = Enum.Font.GothamBold; SH_MinBtn.TextSize = 18; SH_MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255); SH_MinBtn.TextStrokeTransparency = 0.55;
        SH_MinBtn.TextStrokeColor3 = Color3.fromRGB(0, 0, 0); SH_MinBtn.AutoButtonColor = false; SH_MinBtn.ZIndex = 7; local SH_MinScale = Instance.new("UIScale"); SH_MinScale.Scale = 1;
        SH_MinScale.Parent = SH_MinBtn;
        table.insert(colorSubscribers["Title Text Color"], function()
            SH_MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
            return
        end);
        SH_MinBtn.MouseEnter:Connect(function()
            SH_tween:Create(SH_MinScale, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1.18 }):Play();
            SH_tween:Create(SH_MinBtn, TweenInfo.new(0.15), { TextColor3 = getgenv().UIColor["Title Text Color"] }):Play();
            return
        end);
        SH_MinBtn.MouseLeave:Connect(function()
            SH_tween:Create(SH_MinScale, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play();
            SH_tween:Create(SH_MinBtn, TweenInfo.new(0.15), { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play();
            return
        end);
        SH_MinBtn.MouseButton1Click:Connect(function()
            SH_tween:Create(SH_MinScale, TweenInfo.new(0.08), { Scale = 0.85 }):Play(); task.wait(0.09); SH_SetOpen(false);
            return
        end);
        local SH_DragOutline = Instance.new("Frame"); SH_DragOutline.Name = "SH_DragOutline"; SH_DragOutline.Parent = mainContainer_860; SH_DragOutline.Size = UDim2.new(1, 0, 1, 0);
        SH_DragOutline.BackgroundTransparency = 1; SH_DragOutline.BorderSizePixel = 0; SH_DragOutline.ZIndex = 50; SH_DragOutline.Visible = false;
        local SH_DragCorner = Instance.new("UICorner"); SH_DragCorner.CornerRadius = UDim.new(0, 12); SH_DragCorner.Parent = SH_DragOutline; local SH_DragStroke = Instance.new("UIStroke");
        SH_DragStroke.Color = getgenv().UIColor["Title Text Color"]; SH_DragStroke.Thickness = 2; SH_DragStroke.Transparency = 0.05;
        SH_DragStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border; SH_DragStroke.Parent = SH_DragOutline;
        table.insert(colorSubscribers["Title Text Color"], function()
            SH_DragStroke.Color = getgenv().UIColor["Title Text Color"];
            return
        end);
        local SH_dragActive = false; local SH_dragBase = {}; local SH_dragFadeInfo = TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
        local function SH_collectFade(SH_d)
            local SH_t = {};
            if SH_d:IsA("TextLabel") or SH_d:IsA("TextButton") or SH_d:IsA("TextBox") then
                SH_t.TextTransparency = SH_d.TextTransparency; SH_t.TextStrokeTransparency = SH_d.TextStrokeTransparency;
            elseif SH_d:IsA("ImageLabel") or SH_d:IsA("ImageButton") then
                SH_t.ImageTransparency = SH_d.ImageTransparency;
            elseif SH_d:IsA("ScrollingFrame") then
                SH_t.BackgroundTransparency = SH_d.BackgroundTransparency; SH_t.ScrollBarImageTransparency = SH_d.ScrollBarImageTransparency;
            elseif SH_d:IsA("Frame") then
                SH_t.BackgroundTransparency = SH_d.BackgroundTransparency;
            end;
            return SH_t;
        end;
        local function SH_applyFade(SH_d, SH_t, SH_target, SH_info)
            for SH_prop in pairs(SH_t) do
                pcall(function()
                    TweenService:Create(SH_d, SH_info, { [SH_prop] = SH_target }):Play();
                end);
            end;
        end;
        local SH_dragGen = 0;
        getgenv().SH_UI_DragMode = function(SH_on)
            SH_on = SH_on == true;
            if SH_on == SH_dragActive then
                return
            end;
            SH_dragGen = SH_dragGen + 1; local SH_gen = SH_dragGen; SH_dragActive = SH_on;
            if SH_on then
                if uiObject_836 then uiObject_836.Visible = true end;
                if uiObject_849 then uiObject_849.Visible = true end;
                for _, SH_root in ipairs({ uiObject_836, uiObject_849 }) do
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
                    SH_DragOutline.Visible = true; SH_DragStroke.Transparency = 1; TweenService:Create(SH_DragStroke, TweenInfo.new(0.25), { Transparency = 0.05 }):Play();
                end;
                task.delay(0.19, function()
                    if SH_dragActive and SH_gen == SH_dragGen then
                        if uiObject_836 then uiObject_836.Visible = false end;
                        if uiObject_849 then uiObject_849.Visible = false end;
                    end;
                end);
            else
                if uiObject_836 then uiObject_836.Visible = true end;
                if uiObject_849 then uiObject_849.Visible = true end;
                for SH_d, SH_t in pairs(SH_dragBase) do
                    if SH_d and SH_d.Parent then
                        for SH_prop, SH_val in pairs(SH_t) do
                            pcall(function()
                                TweenService:Create(SH_d, TweenInfo.new(0.2), { [SH_prop] = SH_val }):Play();
                            end);
                        end;
                    end;
                end;
                if SH_DragOutline then
                    TweenService:Create(SH_DragStroke, TweenInfo.new(0.2), { Transparency = 1 }):Play();
                    task.delay(0.2, function()
                        if not SH_dragActive and SH_gen == SH_dragGen and SH_DragOutline then
                            SH_DragOutline.Visible = false;
                        end;
                    end);
                end;
            end;
            return
        end;
        task.spawn(function()
            while true do
                task.wait(0.5);
                if not SH_dragActive then
                    if uiObject_836 and not uiObject_836.Visible then uiObject_836.Visible = true end;
                    if uiObject_849 and not uiObject_849.Visible then uiObject_849.Visible = true end;
                end;
            end;
        end);
        UserInputService.InputEnded:Connect(function(SH_input)
            if SH_input.UserInputType == Enum.UserInputType.MouseButton1 or SH_input.UserInputType == Enum.UserInputType.Touch then
                if getgenv().SH_UI_DragMode then pcall(getgenv().SH_UI_DragMode, false); end;
            end;
            return
        end);
        UserInputService.InputBegan:Connect(function(SH_input, SH_processed)
            if SH_input.KeyCode == (getgenv().SH_UI_ToggleKey or Enum.KeyCode.RightShift) then
                SH_SetOpen(not SH_isOpen);
            end;
            return
        end);
        uiObject_839.Name = "Background1"; uiObject_839.Parent = uiObject_850; uiObject_839.Position = UDim2.new(0, 5, 0, 0); uiObject_839.Size = UDim2.new(0, 180, 0, 325);
        uiObject_839.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
        table.insert(colorSubscribers["Background 1 Transparency"], function()
            uiObject_839.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
            return
        end);
        uiObject_839.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
        table.insert(colorSubscribers["Background 1 Color"], function()
            uiObject_839.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
            return
        end);
        local uiObject_863 = Instance.new("UIStroke"); uiObject_863.Color = getgenv().UIColor["Border Color"]; uiObject_863.Thickness = 1.5; uiObject_863.Transparency = 0.5;
        uiObject_863.ApplyStrokeMode = Enum.ApplyStrokeMode.Border; uiObject_863.Parent = uiObject_839;
        table.insert(colorSubscribers["Border Color"], function()
            uiObject_863.Color = getgenv().UIColor["Border Color"];
            return
        end);
        local glow_864 = Instance.new("ImageLabel"); glow_864.Name = "Glow"; glow_864.Parent = uiObject_839; glow_864.AnchorPoint = Vector2.new(0.5, 0.5);
        glow_864.BackgroundTransparency = 1; glow_864.Position = UDim2.new(0.5, 0, 0.5, 0); glow_864.Size = UDim2.new(1, 20, 1, 20); glow_864.ZIndex = -1;
        glow_864.Image = "rbxassetid://8068653048"; glow_864.ImageColor3 = getgenv().UIColor["Border Color"]; glow_864.ImageTransparency = 0.8; glow_864.ScaleType = Enum.ScaleType.Slice;
        glow_864.SliceCenter = Rect.new(15, 15, 175, 175);
        table.insert(colorSubscribers["Border Color"], function()
            glow_864.ImageColor3 = getgenv().UIColor["Border Color"];
            return
        end);
        uiObject_840.CornerRadius = UDim.new(0, 10); uiObject_840.Parent = uiObject_839; uiObject_841.Name = "ControlList"; uiObject_841.Parent = uiObject_839; uiObject_841.Active = true;
        uiObject_841.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_841.BackgroundTransparency = 1; uiObject_841.BorderColor3 = Color3.fromRGB(27, 42, 53);
        uiObject_841.BorderSizePixel = 0; uiObject_841.Position = UDim2.new(0, 0, 0, 30); uiObject_841.Size = UDim2.new(1, -5, 1, -30);
        uiObject_841.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"; uiObject_841.CanvasSize = UDim2.new(0, 0, 0, 0); uiObject_841.ScrollBarThickness = 5;
        uiObject_841.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"; uiObject_842.Parent = uiObject_841; uiObject_842.SortOrder = Enum.SortOrder.LayoutOrder;
        uiObject_842.Padding = UDim.new(0, 5); uiObject_842.SortOrder = Enum.SortOrder.LayoutOrder; uiObject_842.Padding = UDim.new(0, 5); uiObject_843.Name = "GUITextColor";
        uiObject_843.Parent = uiObject_839; uiObject_843.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_843.BackgroundTransparency = 1;
        uiObject_843.Position = UDim2.new(0, 5, 0, 0); uiObject_843.Size = UDim2.new(1, 0, 0, 25); uiObject_843.Font = Enum.Font.GothamBold; uiObject_843.Text = title_820;
        uiObject_843.TextSize = 14; uiObject_843.TextXAlignment = Enum.TextXAlignment.Left; uiObject_843.TextColor3 = getgenv().UIColor["GUI Text Color"];
        table.insert(colorSubscribers["GUI Text Color"], function()
            uiObject_843.TextColor3 = getgenv().UIColor["GUI Text Color"];
            return
        end);
        uiObject_844.Name = "MainPage"; uiObject_844.Parent = uiObject_850; uiObject_844.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_844.BackgroundTransparency = 1;
        uiObject_844.ClipsDescendants = true; uiObject_844.Position = UDim2.new(0, 190, 0, 0); uiObject_844.Size = UDim2.new(0, 435, 0, 325); uiObject_845.Name = "UIPage";
        uiObject_845.Parent = uiObject_844; uiObject_845.FillDirection = Enum.FillDirection.Vertical; uiObject_845.SortOrder = Enum.SortOrder.LayoutOrder;
        uiObject_845.EasingDirection = Enum.EasingDirection.InOut; uiObject_845.EasingStyle = Enum.EasingStyle.Quart; uiObject_845.Padding = UDim.new(0, 10);
        uiObject_845.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]; uiObject_845.ScrollWheelInputEnabled = false;
        table.insert(colorSubscribers["Tween Animation 1 Speed"], function()
            uiObject_845.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"];
            return
        end);
        uiObject_842:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            uiObject_841.CanvasSize = UDim2.new(0, 0, 0, uiObject_842.AbsoluteContentSize.Y + 5);
            return
        end);
        local PageFactory = {}; local pageOrder = -1; local tabOrder = -1; local sectionOrder = 1;
        PageFactory.CreatePage = function(pageConfig)
            local pageName_1100 = tostring(pageConfig.Page_Name); local pageValue_1101 = pageName_1100; local pageTitle_1102 = tostring(pageConfig.Page_Title); tabOrder = tabOrder + 1;
            pageOrder = pageOrder + 1; local uiObject_1103 = Instance.new(FrameClass); local uiObject_1104 = Instance.new(FrameClass); local tabNameCorner_1105 = Instance.new("UICorner");
            local line_1106 = Instance.new(FrameClass); local pageInLine_1107 = Instance.new(FrameClass); local lineCorner_1108 = Instance.new("UICorner");
            local tabTitleContainer_1109 = Instance.new(FrameClass); local gUITextColor_1110 = Instance.new("TextLabel"); local pageButton_1111 = Instance.new("TextButton");
            uiObject_1103.Name = pageName_1100 .. "_Control"; uiObject_1103.Parent = uiObject_841; uiObject_1103.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            uiObject_1103.BackgroundTransparency = 1; uiObject_1103.Size = UDim2.new(1, -10, 0, 25);
            uiObject_1103.LayoutOrder = (string.lower(pageName_1100) == "settings") and 9999 or pageOrder; uiObject_1104.Parent = uiObject_1103;
            uiObject_1104.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_1104.BackgroundTransparency = 1; uiObject_1104.Position = UDim2.new(0, 5, 0, 0);
            uiObject_1104.Size = UDim2.new(1, -5, 1, 0); tabNameCorner_1105.CornerRadius = UDim.new(0, 10); tabNameCorner_1105.Name = "TabNameCorner";
            tabNameCorner_1105.Parent = uiObject_1104; line_1106.Name = "Line"; line_1106.Parent = uiObject_1104; line_1106.AnchorPoint = Vector2.new(0, 0.5);
            line_1106.BackgroundColor3 = Color3.fromRGB(230, 230, 230); line_1106.BackgroundTransparency = 1; line_1106.Position = UDim2.new(0, 0, 0.5, 0);
            line_1106.Size = UDim2.new(0, 14, 1, 0); pageInLine_1107.Name = "PageInLine"; pageInLine_1107.Parent = line_1106; pageInLine_1107.AnchorPoint = Vector2.new(0.5, 0.5);
            pageInLine_1107.BorderSizePixel = 0; pageInLine_1107.Position = UDim2.new(0.5, 0, 0.5, 0); pageInLine_1107.Size = UDim2.new(1, -10, 0, 0);
            pageInLine_1107.BackgroundColor3 = getgenv().UIColor["Page Selected Color"];
            table.insert(colorSubscribers["Page Selected Color"], function()
                pageInLine_1107.BackgroundColor3 = getgenv().UIColor["Page Selected Color"];
                return
            end);
            lineCorner_1108.Name = "LineCorner"; lineCorner_1108.Parent = pageInLine_1107; tabTitleContainer_1109.Name = "TabTitleContainer"; tabTitleContainer_1109.Parent = uiObject_1104;
            tabTitleContainer_1109.BackgroundColor3 = Color3.fromRGB(230, 230, 230); tabTitleContainer_1109.BackgroundTransparency = 1;
            tabTitleContainer_1109.Position = UDim2.new(0, 15, 0, 0); tabTitleContainer_1109.Size = UDim2.new(1, -15, 1, 0); gUITextColor_1110.Name = "GUITextColor";
            gUITextColor_1110.Parent = tabTitleContainer_1109; gUITextColor_1110.BackgroundColor3 = Color3.fromRGB(230, 230, 230); gUITextColor_1110.BackgroundTransparency = 1;
            gUITextColor_1110.Size = UDim2.new(1, 0, 1, 0); gUITextColor_1110.Font = Enum.Font.GothamBold; gUITextColor_1110.Text = pageName_1100;
            gUITextColor_1110.TextColor3 = Color3.fromRGB(230, 230, 230); gUITextColor_1110.TextSize = 14; gUITextColor_1110.TextXAlignment = Enum.TextXAlignment.Left;
            gUITextColor_1110.TextColor3 = getgenv().UIColor["GUI Text Color"];
            table.insert(colorSubscribers["GUI Text Color"], function()
                gUITextColor_1110.TextColor3 = getgenv().UIColor["GUI Text Color"];
                return
            end);
            pageButton_1111.Name = "PageButton"; pageButton_1111.Parent = uiObject_1103; pageButton_1111.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            pageButton_1111.BackgroundTransparency = 1; pageButton_1111.Size = UDim2.new(1, 0, 1, 0); pageButton_1111.Font = Enum.Font.SourceSans; pageButton_1111.Text = "";
            pageButton_1111.TextColor3 = Color3.fromRGB(0, 0, 0); pageButton_1111.TextSize = 14; local page_1112 = Instance.new(FrameClass); local uiObject_1113 = Instance.new("UICorner");
            local gUITextColor_1114 = Instance.new("TextLabel"); local pageList_1115 = Instance.new("ScrollingFrame"); local pagelistlayout_1116 = Instance.new("UIListLayout");
            local pageValue_1117 = sectionOrder; sectionOrder = sectionOrder + 1; page_1112.Name = "Page" .. pageValue_1117; page_1112.Parent = uiObject_844;
            page_1112.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]; page_1112.Position = UDim2.new(0, 190, 0, 30); page_1112.Size = UDim2.new(0, 435, 0, 325);
            page_1112.LayoutOrder = tabOrder;
            table.insert(colorSubscribers["Background 1 Color"], function()
                page_1112.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                return
            end);
            page_1112.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
            table.insert(colorSubscribers["Background 1 Transparency"], function()
                page_1112.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                return
            end);
            uiObject_1113.CornerRadius = UDim.new(0, 10); uiObject_1113.Parent = page_1112; gUITextColor_1114.Name = "GUITextColor"; gUITextColor_1114.Parent = page_1112;
            gUITextColor_1114.BackgroundColor3 = Color3.fromRGB(230, 230, 230); gUITextColor_1114.BackgroundTransparency = 1; gUITextColor_1114.Position = UDim2.new(0, 5, 0, 0);
            gUITextColor_1114.Size = UDim2.new(1, 0, 0, 25); gUITextColor_1114.Font = Enum.Font.GothamBold; gUITextColor_1114.Text = pageTitle_1102; gUITextColor_1114.TextSize = 16;
            gUITextColor_1114.TextXAlignment = Enum.TextXAlignment.Left; gUITextColor_1114.TextColor3 = getgenv().UIColor["GUI Text Color"];
            table.insert(colorSubscribers["GUI Text Color"], function()
                gUITextColor_1114.TextColor3 = getgenv().UIColor["GUI Text Color"];
                return
            end);
            pageList_1115.Name = "PageList"; pageList_1115.Parent = page_1112; pageList_1115.Active = true; pageList_1115.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
            pageList_1115.BackgroundTransparency = 1; pageList_1115.BorderColor3 = Color3.fromRGB(27, 42, 53); pageList_1115.BorderSizePixel = 0;
            pageList_1115.Position = UDim2.new(0, 5, 0, 30); pageList_1115.Size = UDim2.new(1, -10, 1, -30); pageList_1115.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
            pageList_1115.ScrollBarThickness = 5; pageList_1115.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"; pagelistlayout_1116.Name = "Pagelistlayout";
            pagelistlayout_1116.Parent = pageList_1115; pagelistlayout_1116.SortOrder = Enum.SortOrder.LayoutOrder; pagelistlayout_1116.Padding = UDim.new(0, 5);
            pagelistlayout_1116:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                pageList_1115.CanvasSize = UDim2.new(0, 0, 0, pagelistlayout_1116.AbsoluteContentSize.Y + 5);
                return
            end);
            pageButton_1111.MouseButton1Click:Connect(function()
                UIContext.ButtonEffect();
                if tostring(uiObject_845.CurrentPage) == page_1112.Name then
                    return
                end;
                local pageValue_1134 = getgenv().UIColor["Tween Animation 1 Speed"] or 0.25; local pageValue_1135 = TweenInfo.new(pageValue_1134, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
                for index_1136, item_1137 in ipairs(uiObject_841:GetChildren()) do
                    if item_1137:IsA(FrameClass) and item_1137:FindFirstChild(FrameClass) then
                        local pageValue_1138 = item_1137.Frame:FindFirstChild("Line");
                        if pageValue_1138 and pageValue_1138:FindFirstChild("PageInLine") then
                            local pageValue_1139 = pageValue_1138.PageInLine;
                            TweenService:Create(pageValue_1139, pageValue_1135, { Size = UDim2.new(1, -10, 0, 0), Position = UDim2.new(0.5, 0, 1, 0), AnchorPoint = Vector2.new(0.5, 1) }):Play();
                        end;
                    end;
                end;
                TweenService:Create(pageInLine_1107, pageValue_1135, { Size = UDim2.new(1, -10, 1, -10), Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5) }):Play();
                for index_1140, item_1141 in ipairs(uiObject_844:GetChildren()) do
                    if item_1141:IsA(FrameClass) then
                        item_1141.Visible = item_1141 == page_1112;
                    end;
                end;
                local pageValue_1142 = page_1112:FindFirstChild("PageList");
                if pageValue_1142 and pageValue_1142:IsA("ScrollingFrame") then
                    pageValue_1142.CanvasPosition = Vector2.new(0, 0);
                end;
                uiObject_845:JumpTo(page_1112);
                return
            end);
            -- the first tab is shown on startup: highlight its selected indicator
            if pageOrder == 0 then
                pageInLine_1107.Size = UDim2.new(1, -10, 1, -10);
                page_1112.Visible = true;
            end;
            return {
                CreateSection = function(sectionTitle, requirements)
                    local pageValue_1145 = tostring(sectionTitle); local enabled_1146 = true;
                    if requirements ~= nil then
                        enabled_1146 = game.PlaceId == 11424731604;
                    end;
                    if not enabled_1146 then
                        return {
                            CreateToggle = function()
                                return {
                                    SetStage = function()
                                        return
                                    end,
                                    SetKeybind = function()
                                        return
                                    end,
                                    GetKeybind = function()
                                        return nil;
                                    end
                                };
                            end,
                            CreateButton = function()
                                return
                            end,
                            CreateLabel = function()
                                return {
                                    SetText = function()
                                        return
                                    end,
                                    SetColor = function()
                                        return
                                    end
                                };
                            end,
                            CreateDropdown = function()
                                return {
                                    ClearText = function()
                                        return
                                    end,
                                    GetNewList = function()
                                        return
                                    end,
                                    rf = function()
                                        return
                                    end
                                };
                            end,
                            CreateBind = function()
                                return
                            end,
                            CreateBox = function()
                                return {
                                    SetValue = function()
                                        return
                                    end
                                };
                            end,
                            CreateSlider = function()
                                return {
                                    SetValue = function()
                                        return
                                    end
                                };
                            end
                        };
                    end;
                    local uiObject_1147 = Instance.new(FrameClass); local uiObject_1148 = Instance.new("UICorner"); local topsec_1149 = Instance.new(FrameClass);
                    local sectiontitle_1150 = Instance.new("TextLabel"); local linesec_1151 = Instance.new(FrameClass); local uiObject_1152 = Instance.new("UIGradient");
                    local sectionList_1153 = Instance.new("UIListLayout"); uiObject_1147.Name = sectionTitle .. "_Dot"; uiObject_1147.Parent = pageList_1115;
                    uiObject_1147.Size = UDim2.new(0, 415, 0, 100); uiObject_1147.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                    table.insert(colorSubscribers["Background 3 Color"], function()
                        uiObject_1147.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                        return
                    end);
                    uiObject_1147.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                    table.insert(colorSubscribers["Background 1 Transparency"], function()
                        uiObject_1147.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                        return
                    end);
                    uiObject_1148.CornerRadius = UDim.new(0, 10); uiObject_1148.Parent = uiObject_1147; topsec_1149.Name = "Topsec"; topsec_1149.Parent = uiObject_1147;
                    topsec_1149.BackgroundColor3 = Color3.fromRGB(230, 230, 230); topsec_1149.BackgroundTransparency = 1; topsec_1149.Size = UDim2.new(0, 415, 0, 30);
                    sectiontitle_1150.Name = "Sectiontitle"; sectiontitle_1150.Parent = topsec_1149; sectiontitle_1150.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                    sectiontitle_1150.BackgroundTransparency = 1; sectiontitle_1150.Size = UDim2.new(1, 0, 1, 0); sectiontitle_1150.Font = Enum.Font.GothamBold; sectiontitle_1150.Text = sectionTitle;
                    sectiontitle_1150.TextSize = 14; sectiontitle_1150.TextColor3 = getgenv().UIColor["Section Text Color"];
                    table.insert(colorSubscribers["Section Text Color"], function()
                        sectiontitle_1150.TextColor3 = getgenv().UIColor["Section Text Color"];
                        return
                    end);
                    linesec_1151.Name = "Linesec"; linesec_1151.Parent = topsec_1149; linesec_1151.AnchorPoint = Vector2.new(0.5, 1); linesec_1151.BorderSizePixel = 0;
                    linesec_1151.Position = UDim2.new(0.5, 0, 1, -2); linesec_1151.Size = UDim2.new(1, -10, 0, 2); linesec_1151.BackgroundColor3 = getgenv().UIColor["Section Underline Color"];
                    table.insert(colorSubscribers["Section Underline Color"], function()
                        linesec_1151.BackgroundColor3 = getgenv().UIColor["Section Underline Color"];
                        return
                    end);
                    uiObject_1152.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(0.51, 0.02), NumberSequenceKeypoint.new(1, 1) });
                    uiObject_1152.Parent = linesec_1151; sectionList_1153.Name = "SectionList"; sectionList_1153.Parent = uiObject_1147; sectionList_1153.SortOrder = Enum.SortOrder.LayoutOrder;
                    sectionList_1153.Padding = UDim.new(0, 5);
                    sectionList_1153:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                        uiObject_1147.Size = UDim2.new(1, -5, 0, sectionList_1153.AbsoluteContentSize.Y + 5);
                        return
                    end);
                    return {
                        CreateToggle = function(toggleConfig, onToggle)
                            local title_1156 = tostring(toggleConfig.Title); local description_1157 = toggleConfig.Desc; local defaultValue_1158 = toggleConfig.Default;
                            local toggleValue_1159 = toggleConfig.Keybind or false; local toggleValue_1160 = toggleConfig.DefaultKey or nil; local toggleValue_1161 = toggleConfig.Textbox or false;
                            local toggleValue_1162 = toggleConfig.TextboxPlaceholder or "Enter value..."; local toggleValue_1163 = toggleConfig.TextboxDefault or "";
                            local toggleValue_1164 = toggleConfig.TextboxCallback or function()
                                return
                            end;
                            local toggleValue_1165 = toggleConfig.Requirements ~= nil; local toggleValue_1166 = toggleConfig.Requirements or {};
                            local toggleValue_1167 = toggleConfig.RequirementUpdateInterval or 1;
                            local toggleValue_1168 = onToggle or function()
                                return
                            end;
                            local toggleFrame_1169 = Instance.new(FrameClass); local togFrame1_1170 = Instance.new(FrameClass); local checkbox_1171 = Instance.new("ImageLabel");
                            local check_1172 = Instance.new("ImageLabel"); local uiObject_1173 = Instance.new("TextLabel"); local uiObject_1174 = Instance.new("TextLabel");
                            local uiObject_1175 = Instance.new(FrameClass); local uiObject_1176 = Instance.new("UICorner"); local uiObject_1177 = Instance.new("TextButton");
                            local uiObject_1178 = Instance.new("UIListLayout"); local keybindFrame_1179 = Instance.new(FrameClass); local uiObject_1180 = Instance.new("TextButton");
                            local uiObject_1181 = Instance.new("UICorner"); local keybindBorder_1182 = Instance.new("UIStroke"); local uiObject_1183 = Instance.new(FrameClass);
                            local uiObject_1184 = Instance.new("TextBox"); local uiObject_1185 = Instance.new("UICorner"); local uiObject_1186 = Instance.new("UIStroke");
                            local uiObject_1187 = Instance.new(FrameClass); local uiObject_1188 = Instance.new(FrameClass); local uiObject_1189 = Instance.new("UIListLayout"); local uiTable_1190 = {};
                            toggleFrame_1169.Name = "ToggleFrame"; toggleFrame_1169.Parent = uiObject_1147; toggleFrame_1169.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            toggleFrame_1169.BackgroundTransparency = 1; toggleFrame_1169.Position = UDim2.new(0, 0, 0.300000012, 0); toggleFrame_1169.Size = UDim2.new(1, 0, 0, 0);
                            toggleFrame_1169.AutomaticSize = Enum.AutomaticSize.Y; togFrame1_1170.Name = "TogFrame1"; togFrame1_1170.Parent = toggleFrame_1169;
                            togFrame1_1170.AnchorPoint = Vector2.new(0.5, 0.5); togFrame1_1170.BackgroundColor3 = Color3.fromRGB(230, 230, 230); togFrame1_1170.BackgroundTransparency = 1;
                            togFrame1_1170.Position = UDim2.new(0.5, 0, 0.5, 0); togFrame1_1170.Size = UDim2.new(1, -10, 0, 0); togFrame1_1170.AutomaticSize = Enum.AutomaticSize.Y;
                            checkbox_1171.Name = "checkbox"; checkbox_1171.Parent = togFrame1_1170; checkbox_1171.AnchorPoint = Vector2.new(1, 0.5);
                            checkbox_1171.BackgroundColor3 = Color3.fromRGB(230, 230, 230); checkbox_1171.BackgroundTransparency = 1; checkbox_1171.Position = UDim2.new(1, -5, 0.5, 3);
                            checkbox_1171.Size = UDim2.new(0, 25, 0, 25); checkbox_1171.Image = "rbxassetid://4552505888"; checkbox_1171.ImageColor3 = getgenv().UIColor["Toggle Border Color"];
                            checkbox_1171.ZIndex = 3;
                            table.insert(colorSubscribers["Toggle Border Color"], function()
                                checkbox_1171.ImageColor3 = getgenv().UIColor["Toggle Border Color"];
                                return
                            end);
                            check_1172.Name = "check"; check_1172.Parent = checkbox_1171; check_1172.AnchorPoint = Vector2.new(0, 1); check_1172.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            check_1172.BackgroundTransparency = 1; check_1172.Position = UDim2.new(0, 0, 1, 0); check_1172.Image = "rbxassetid://4555411759";
                            check_1172.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]; check_1172.ZIndex = 3;
                            table.insert(colorSubscribers["Toggle Checked Color"], function()
                                check_1172.ImageColor3 = getgenv().UIColor["Toggle Checked Color"];
                                return
                            end);
                            if toggleValue_1159 then
                                keybindFrame_1179.Name = "KeybindFrame"; keybindFrame_1179.Parent = togFrame1_1170; keybindFrame_1179.AnchorPoint = Vector2.new(1, 0.5);
                                keybindFrame_1179.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]; keybindFrame_1179.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                keybindFrame_1179.Position = UDim2.new(1, -35, 0.5, 3); keybindFrame_1179.Size = UDim2.new(0, 45, 0, 20); keybindFrame_1179.ZIndex = 2;
                                table.insert(colorSubscribers["Background 1 Color"], function()
                                    keybindFrame_1179.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                    return
                                end);
                                table.insert(colorSubscribers["Background 1 Transparency"], function()
                                    keybindFrame_1179.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                    return
                                end);
                                uiObject_1181.CornerRadius = UDim.new(0, 10); uiObject_1181.Parent = keybindFrame_1179; keybindBorder_1182.Name = "KeybindBorder"; keybindBorder_1182.Parent = keybindFrame_1179;
                                keybindBorder_1182.Color = getgenv().UIColor["Toggle Border Color"]; keybindBorder_1182.Thickness = 1; keybindBorder_1182.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                                table.insert(colorSubscribers["Toggle Border Color"], function()
                                    keybindBorder_1182.Color = getgenv().UIColor["Toggle Border Color"];
                                    return
                                end);
                                uiObject_1180.Name = "KeybindButton"; uiObject_1180.Parent = keybindFrame_1179; uiObject_1180.BackgroundTransparency = 1; uiObject_1180.Size = UDim2.new(1, 0, 1, 0);
                                uiObject_1180.Font = Enum.Font.GothamBold; uiObject_1180.Text = toggleValue_1160 or "..."; uiObject_1180.TextColor3 = getgenv().UIColor[TextColorKey]; uiObject_1180.TextSize = 10;
                                uiObject_1180.TextWrapped = true; uiObject_1180.ZIndex = 2;
                                table.insert(colorSubscribers[TextColorKey], function()
                                    uiObject_1180.TextColor3 = getgenv().UIColor[TextColorKey];
                                    return
                                end);
                            end;
                            if toggleValue_1161 then
                                uiObject_1183.Name = "TextboxFrame"; uiObject_1183.Parent = togFrame1_1170; uiObject_1183.AnchorPoint = Vector2.new(1, 0.5);
                                uiObject_1183.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]; uiObject_1183.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                uiObject_1183.Position = UDim2.new(1, toggleValue_1159 and -85 or -35, 0.5, 3); uiObject_1183.Size = UDim2.new(0, 60, 0, 20); uiObject_1183.ZIndex = 2;
                                table.insert(colorSubscribers["Background 1 Color"], function()
                                    uiObject_1183.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                    return
                                end);
                                table.insert(colorSubscribers["Background 1 Transparency"], function()
                                    uiObject_1183.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                    return
                                end);
                                uiObject_1185.CornerRadius = UDim.new(0, 10); uiObject_1185.Parent = uiObject_1183; uiObject_1186.Name = "TextboxBorder"; uiObject_1186.Parent = uiObject_1183;
                                uiObject_1186.Color = getgenv().UIColor["Toggle Border Color"]; uiObject_1186.Thickness = 1; uiObject_1186.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                                table.insert(colorSubscribers["Toggle Border Color"], function()
                                    uiObject_1186.Color = getgenv().UIColor["Toggle Border Color"];
                                    return
                                end);
                                uiObject_1184.Name = "TextboxInput"; uiObject_1184.Parent = uiObject_1183; uiObject_1184.BackgroundTransparency = 1; uiObject_1184.Position = UDim2.new(0, 6, 0, 0);
                                uiObject_1184.Size = UDim2.new(1, -12, 1, 0); uiObject_1184.Font = Enum.Font.Gotham; uiObject_1184.PlaceholderText = toggleValue_1162; uiObject_1184.Text = toggleValue_1163;
                                uiObject_1184.TextColor3 = getgenv().UIColor[TextColorKey]; uiObject_1184.PlaceholderColor3 = getgenv().UIColor["Toggle Desc Color"]; uiObject_1184.TextSize = 12;
                                uiObject_1184.TextXAlignment = Enum.TextXAlignment.Left; uiObject_1184.ClearTextOnFocus = false; uiObject_1184.ZIndex = 2;
                                table.insert(colorSubscribers[TextColorKey], function()
                                    uiObject_1184.TextColor3 = getgenv().UIColor[TextColorKey];
                                    return
                                end);
                                table.insert(colorSubscribers["Toggle Desc Color"], function()
                                    uiObject_1184.PlaceholderColor3 = getgenv().UIColor["Toggle Desc Color"];
                                    return
                                end);
                                uiObject_1184.FocusLost:Connect(function(parameter_1191)
                                    if parameter_1191 then
                                        toggleValue_1164(uiObject_1184.Text);
                                    end;
                                    return
                                end);
                            end;
                            local number_1192 = 5;
                            if description_1157 then
                                number_1192 = 0; uiObject_1173.Name = "ToggleDesc"; uiObject_1173.Parent = togFrame1_1170; uiObject_1173.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                                uiObject_1173.BackgroundTransparency = 1; uiObject_1173.Position = UDim2.new(0, 15, 0, 20);
                                uiObject_1173.Size = UDim2.new(1, (toggleValue_1159 and -90 or -50) - (toggleValue_1161 and 70 or 0), 0, 0); uiObject_1173.Font = Enum.Font.GothamBlack;
                                uiObject_1173.Text = description_1157; uiObject_1173.TextSize = 13; uiObject_1173.TextWrapped = true; uiObject_1173.TextXAlignment = Enum.TextXAlignment.Left;
                                uiObject_1173.RichText = true; uiObject_1173.AutomaticSize = Enum.AutomaticSize.Y; uiObject_1173.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                table.insert(colorSubscribers["Toggle Desc Color"], function()
                                    uiObject_1173.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                    return
                                end);
                            else
                                uiObject_1173.Text = "";
                            end;
                            uiObject_1174.Name = "TextColor"; uiObject_1174.Parent = togFrame1_1170; uiObject_1174.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_1174.BackgroundTransparency = 1;
                            uiObject_1174.Position = UDim2.new(0, 10, 0, number_1192); uiObject_1174.Size = UDim2.new(1, -10, 0, 20); uiObject_1174.Font = Enum.Font.GothamBlack;
                            uiObject_1174.Text = title_1156; uiObject_1174.TextSize = 14; uiObject_1174.TextXAlignment = Enum.TextXAlignment.Left; uiObject_1174.TextYAlignment = Enum.TextYAlignment.Center;
                            uiObject_1174.RichText = true; uiObject_1174.AutomaticSize = Enum.AutomaticSize.Y; uiObject_1174.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                uiObject_1174.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            uiObject_1175.Name = "Background1"; uiObject_1175.Parent = togFrame1_1170; uiObject_1175.Size = UDim2.new(1, 0, 1, 6); uiObject_1175.ZIndex = 0;
                            uiObject_1175.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(colorSubscribers["Background 1 Color"], function()
                                uiObject_1175.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return
                            end);
                            uiObject_1175.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                uiObject_1175.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            uiObject_1176.CornerRadius = UDim.new(0, 10); uiObject_1176.Name = "ToggleCorner"; uiObject_1176.Parent = uiObject_1175; uiObject_1177.Name = "ToggleButton";
                            uiObject_1177.Parent = togFrame1_1170; uiObject_1177.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_1177.BackgroundTransparency = 1;
                            uiObject_1177.Size = UDim2.new(1, 0, 1, 6); uiObject_1177.Font = Enum.Font.SourceSans; uiObject_1177.Text = ""; uiObject_1177.TextColor3 = Color3.fromRGB(0, 0, 0);
                            uiObject_1177.TextSize = 14; uiObject_1178.Name = "ToggleList"; uiObject_1178.Parent = toggleFrame_1169; uiObject_1178.HorizontalAlignment = Enum.HorizontalAlignment.Center;
                            uiObject_1178.SortOrder = Enum.SortOrder.LayoutOrder; uiObject_1178.VerticalAlignment = Enum.VerticalAlignment.Center; uiObject_1178.Padding = UDim.new(0, 0);
                            local enabled_1193 = true; local reference_1194 = nil;
                            if toggleValue_1165 and #toggleValue_1166 > 0 then
                                uiObject_1176.CornerRadius = UDim.new(0, 10); uiObject_1187.Name = "RequirementsContainer"; uiObject_1187.Parent = togFrame1_1170;
                                uiObject_1187.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]; uiObject_1187.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                uiObject_1187.Size = UDim2.new(1, 0, 0, 0); uiObject_1187.AutomaticSize = Enum.AutomaticSize.Y; uiObject_1187.Position = UDim2.new(0, 0, 1, 4); uiObject_1187.ZIndex = 0;
                                table.insert(colorSubscribers["Background 1 Color"], function()
                                    uiObject_1187.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                    return
                                end);
                                table.insert(colorSubscribers["Background 1 Transparency"], function()
                                    uiObject_1187.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                    return
                                end);
                                local uiObject_1195 = Instance.new("UICorner"); uiObject_1195.CornerRadius = UDim.new(0, 10); uiObject_1195.Parent = uiObject_1187; uiObject_1188.Name = "RequirementsInner";
                                uiObject_1188.Parent = uiObject_1187; uiObject_1188.BackgroundColor3 = Color3.fromRGB(0, 0, 0); uiObject_1188.BackgroundTransparency = 0.85;
                                uiObject_1188.Size = UDim2.new(1, -12, 0, 0); uiObject_1188.AutomaticSize = Enum.AutomaticSize.Y; uiObject_1188.Position = UDim2.new(0, 6, 0, 6); uiObject_1188.ZIndex = 1;
                                local uiObject_1196 = Instance.new("UICorner"); uiObject_1196.CornerRadius = UDim.new(0, 10); uiObject_1196.Parent = uiObject_1188; local uiObject_1197 = Instance.new("UIPadding");
                                uiObject_1197.PaddingTop = UDim.new(0, 6); uiObject_1197.PaddingBottom = UDim.new(0, 6); uiObject_1197.PaddingLeft = UDim.new(0, 8); uiObject_1197.PaddingRight = UDim.new(0, 8);
                                uiObject_1197.Parent = uiObject_1188; local uiObject_1198 = Instance.new("UIPadding"); uiObject_1198.PaddingBottom = UDim.new(0, 6); uiObject_1198.Parent = uiObject_1187;
                                uiObject_1189.Name = "RequirementsLayout"; uiObject_1189.Parent = uiObject_1188; uiObject_1189.FillDirection = Enum.FillDirection.Vertical;
                                uiObject_1189.HorizontalAlignment = Enum.HorizontalAlignment.Left; uiObject_1189.SortOrder = Enum.SortOrder.LayoutOrder; uiObject_1189.Padding = UDim.new(0, 4);
                                for index_1199, item_1200 in ipairs(toggleValue_1166) do
                                    local req_1201 = Instance.new(FrameClass); req_1201.Name = "Req_" .. item_1200; req_1201.Parent = uiObject_1188; req_1201.BackgroundTransparency = 1;
                                    req_1201.Size = UDim2.new(1, 0, 0, 16); req_1201.LayoutOrder = index_1199; local icon_1202 = Instance.new("ImageLabel"); icon_1202.Name = "Icon"; icon_1202.Parent = req_1201;
                                    icon_1202.BackgroundTransparency = 1; icon_1202.Size = UDim2.new(0, 14, 0, 14); icon_1202.Position = UDim2.new(0, 0, 0.5, 0); icon_1202.AnchorPoint = Vector2.new(0, 0.5);
                                    icon_1202.Image = "rbxassetid://7072725342"; icon_1202.ImageColor3 = Color3.fromRGB(255, 85, 85); icon_1202.ZIndex = 2; local text_1203 = Instance.new("TextLabel");
                                    text_1203.Name = "Text"; text_1203.Parent = req_1201; text_1203.BackgroundTransparency = 1; text_1203.Size = UDim2.new(1, -22, 1, 0); text_1203.Position = UDim2.new(0, 20, 0, 0);
                                    text_1203.Font = Enum.Font.Gotham; text_1203.Text = item_1200; text_1203.TextSize = 11; text_1203.TextXAlignment = Enum.TextXAlignment.Left;
                                    text_1203.TextColor3 = getgenv().UIColor["Toggle Desc Color"]; text_1203.ZIndex = 2;
                                    table.insert(colorSubscribers["Toggle Desc Color"], function()
                                        text_1203.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                        return
                                    end);
                                    uiTable_1190[item_1200] = { Frame = req_1201, Icon = icon_1202, Text = text_1203, Met = false };
                                end;
                                local callback_1208 = function()
                                    local enabled_1204 = true;
                                    for key_1205, value_1206 in pairs(uiTable_1190) do
                                        local toggleValue_1207 = RequirementsTracker:Check(key_1205); value_1206.Met = toggleValue_1207;
                                        if toggleValue_1207 then
                                            value_1206.Icon.Image = "rbxassetid://7072706620"; value_1206.Icon.ImageColor3 = Color3.fromRGB(85, 255, 127);
                                        else
                                            value_1206.Icon.Image = "rbxassetid://7072725342"; value_1206.Icon.ImageColor3 = Color3.fromRGB(255, 85, 85); enabled_1204 = false;
                                        end;
                                    end;
                                    enabled_1193 = enabled_1204;
                                    if not enabled_1204 then
                                        checkbox_1171.ImageTransparency = 0.5; check_1172.ImageTransparency = 0.5;
                                    else
                                        checkbox_1171.ImageTransparency = 0; check_1172.ImageTransparency = 0;
                                    end;
                                    return
                                end;
                                callback_1208();
                                reference_1194 = task.spawn(function()
                                    while true do
                                        task.wait(toggleValue_1167);
                                        if not toggleFrame_1169 or not toggleFrame_1169.Parent then
                                            break;
                                        end;
                                        callback_1208();
                                    end;
                                    return
                                end);
                            end;
                            local toggleValue_1209 = toggleValue_1160; local enabled_1210 = false;
                            local callback_1215 = function(parameter_1211)
                                if toggleValue_1165 and (#toggleValue_1166 > 0 and parameter_1211 and not enabled_1193) then
                                    return
                                end;
                                local toggleValue_1212 = parameter_1211 and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0);
                                local toggleValue_1213 = parameter_1211 and UDim2.new(0.5, 0, 0.5, 0) or UDim2.new(0, 0, 1, 0);
                                local toggleValue_1214 = parameter_1211 and Vector2.new(0.5, 0.5) or Vector2.new(0, 1);
                                game.TweenService:Create(check_1172, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), { Size = toggleValue_1212, Position = toggleValue_1213, AnchorPoint = toggleValue_1214 }):Play();
                                toggleValue_1168(parameter_1211);
                                return
                            end;
                            if toggleValue_1168 then
                                callback_1215(defaultValue_1158);
                            end;
                            uiObject_1177.MouseButton1Click:Connect(function()
                                UIContext.ButtonEffect();
                                return
                            end);
                            uiObject_1177.MouseButton1Down:Connect(function()
                                if toggleValue_1165 and (#toggleValue_1166 > 0 and not defaultValue_1158 and not enabled_1193) then
                                    return
                                end;
                                defaultValue_1158 = not defaultValue_1158; callback_1215(defaultValue_1158);
                                return
                            end);
                            if toggleValue_1159 then
                                local userInputService_1216 = game:GetService("UserInputService");
                                uiObject_1180.MouseButton1Click:Connect(function()
                                    if not enabled_1210 then
                                        enabled_1210 = true; uiObject_1180.Text = "..."; local reference_1217 = nil;
                                        reference_1217 = userInputService_1216.InputBegan:Connect(function(parameter_1218, parameter_1219)
                                            if not parameter_1219 and parameter_1218.UserInputType == Enum.UserInputType.Keyboard then
                                                local name_1220 = parameter_1218.KeyCode.Name; toggleValue_1209 = name_1220; uiObject_1180.Text = name_1220; enabled_1210 = false; reference_1217:Disconnect();
                                            end;
                                            return
                                        end);
                                    end;
                                    return
                                end);
                                userInputService_1216.InputBegan:Connect(function(parameter_1221, parameter_1222)
                                    if not parameter_1222 and (not enabled_1210 and parameter_1221.UserInputType == Enum.UserInputType.Keyboard and toggleValue_1209 and parameter_1221.KeyCode.Name == toggleValue_1209) then
                                        if toggleValue_1165 and #toggleValue_1166 > 0 and not defaultValue_1158 and not enabled_1193 then
                                            return
                                        end;
                                        defaultValue_1158 = not defaultValue_1158; callback_1215(defaultValue_1158);
                                    end;
                                    return
                                end);
                            end;
                            local uiTable_1229 = {
                                SetStage = function(parameter_1223)
                                    callback_1215(parameter_1223);
                                    return
                                end,
                                SetKeybind = function(parameter_1224)
                                    if toggleValue_1159 then
                                        toggleValue_1209 = parameter_1224; uiObject_1180.Text = parameter_1224 or "NONE";
                                    end;
                                    return
                                end,
                                GetKeybind = function()
                                    return toggleValue_1209;
                                end,
                                SetTextboxValue = function(parameter_1225)
                                    if toggleValue_1161 then
                                        uiObject_1184.Text = parameter_1225;
                                    end;
                                    return
                                end,
                                GetTextboxValue = function()
                                    if toggleValue_1161 then
                                        return uiObject_1184.Text;
                                    end;
                                    return nil;
                                end,
                                AreRequirementsMet = function()
                                    return enabled_1193;
                                end,
                                GetRequirements = function()
                                    local uiTable_1226 = {};
                                    for key_1227, value_1228 in pairs(uiTable_1190) do
                                        uiTable_1226[key_1227] = value_1228.Met;
                                    end;
                                    return uiTable_1226;
                                end,
                                Destroy = function()
                                    if reference_1194 then
                                        task.cancel(reference_1194);
                                    end;
                                    toggleFrame_1169:Destroy();
                                    return
                                end
                            };
                            local toggleValue_1230 = makeControlId(pageValue_1101, pageValue_1145, title_1156); ControlRegistry.Toggles[toggleValue_1230] = {
                                Get = function()
                                    return defaultValue_1158;
                                end,
                                Set = function(parameter_1231)
                                    local toggleValue_1232 = not not parameter_1231;
                                    if defaultValue_1158 == toggleValue_1232 then
                                        return
                                    end;
                                    if toggleValue_1165 and #toggleValue_1166 > 0 and toggleValue_1232 and not enabled_1193 then
                                        return
                                    end;
                                    defaultValue_1158 = toggleValue_1232; callback_1215(defaultValue_1158);
                                    return
                                end
                            };
                            return uiTable_1229;
                        end,
                        CreateAccountTable = function(parameter_1233, parameter_1234)
                            local title_1235 = tostring(parameter_1233.Title) or "Account Manager"; local defaultValue_1236 = parameter_1233.Default or {};
                            local toggleValue_1237 = parameter_1234 or function()
                                return
                            end;
                            local toggleValue_1238 = parameter_1233.EnableConfigBinding ~= false; local toggleValue_1239 = parameter_1233.OnAccountSelect;
                            local toggleValue_1240 = makeControlId(pageValue_1101, pageValue_1145, title_1235); local uiTable_1241 = {};
                            if type(defaultValue_1236) == "table" then
                                for key_1242, value_1243 in pairs(defaultValue_1236) do
                                    if type(value_1243) == "table" then
                                        table.insert(uiTable_1241, { username = key_1242, link = value_1243.link or "", config = value_1243.config or "" });
                                    else
                                        table.insert(uiTable_1241, { username = key_1242, link = value_1243, config = "" });
                                    end;
                                end;
                            end;
                            local tweenService_1244 = game:GetService("TweenService"); local toggleValue_1245 = getgenv().UIColor["Tween Animation 2 Speed"]; local uiObject_1246 = Instance.new(FrameClass);
                            local uiObject_1247 = Instance.new("UICorner"); uiObject_1246.Name = title_1235 .. "_Wrapper"; uiObject_1246.Parent = uiObject_1147;
                            uiObject_1246.BackgroundColor3 = Color3.fromRGB(60, 60, 60); uiObject_1246.BackgroundTransparency = 1; uiObject_1246.Position = UDim2.new(0, 0, 0, 0);
                            uiObject_1246.Size = UDim2.new(1, 0, 0, 280); uiObject_1246.ClipsDescendants = true; local background1_1248 = Instance.new(FrameClass);
                            local uiObject_1249 = Instance.new("UICorner"); background1_1248.Name = "Background1"; background1_1248.Parent = uiObject_1246;
                            background1_1248.AnchorPoint = Vector2.new(0.5, 0.5); background1_1248.Position = UDim2.new(0.5, 0, 0.5, 0); background1_1248.Size = UDim2.new(1, -10, 1, 0);
                            background1_1248.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]; background1_1248.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Color"], function()
                                background1_1248.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return
                            end);
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                background1_1248.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            uiObject_1249.CornerRadius = UDim.new(0, 10); uiObject_1249.Parent = background1_1248; local title_1250 = Instance.new("TextLabel");
                            local minimize_1251 = Instance.new("TextButton"); title_1250.Name = "Title"; title_1250.Parent = background1_1248; title_1250.BackgroundTransparency = 1;
                            title_1250.Position = UDim2.new(0, 10, 0, 5); title_1250.Size = UDim2.new(1, -40, 0, 25); title_1250.Font = Enum.Font.GothamBlack; title_1250.Text = title_1235;
                            title_1250.TextSize = 14; title_1250.TextXAlignment = Enum.TextXAlignment.Left; title_1250.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                title_1250.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            minimize_1251.Name = "Minimize"; minimize_1251.Parent = background1_1248; minimize_1251.BackgroundTransparency = 1; minimize_1251.Position = UDim2.new(1, -30, 0, 5);
                            minimize_1251.Size = UDim2.new(0, 25, 0, 25); minimize_1251.Font = Enum.Font.GothamBold; minimize_1251.Text = "-"; minimize_1251.TextSize = 18;
                            minimize_1251.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                minimize_1251.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            local contentArea_1252 = Instance.new(FrameClass); local uiObject_1253 = Instance.new("UICorner"); contentArea_1252.Name = "ContentArea";
                            contentArea_1252.Parent = background1_1248; contentArea_1252.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]; contentArea_1252.Position = UDim2.new(0, 5, 0, 35);
                            contentArea_1252.Size = UDim2.new(1, -10, 1, -40);
                            table.insert(colorSubscribers["Background 3 Color"], function()
                                contentArea_1252.BackgroundColor3 = getgenv().UIColor["Background 3 Color"];
                                return
                            end);
                            uiObject_1253.CornerRadius = UDim.new(0, 10); uiObject_1253.Parent = contentArea_1252; local list_1254 = Instance.new("ScrollingFrame");
                            local uiObject_1255 = Instance.new("UIListLayout"); list_1254.Name = "List"; list_1254.Parent = contentArea_1252; list_1254.Active = true; list_1254.BackgroundTransparency = 1;
                            list_1254.BorderSizePixel = 0; list_1254.Position = UDim2.new(0, 5, 0, 5); list_1254.Size = UDim2.new(1, -10, 1, -80); list_1254.ScrollBarThickness = 2;
                            list_1254.CanvasSize = UDim2.new(0, 0, 0, 0); list_1254.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
                            list_1254.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"; uiObject_1255.Parent = list_1254; uiObject_1255.SortOrder = Enum.SortOrder.LayoutOrder;
                            uiObject_1255.Padding = UDim.new(0, 4);
                            uiObject_1255:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                                list_1254.CanvasSize = UDim2.new(0, 0, 0, uiObject_1255.AbsoluteContentSize.Y + 5);
                                return
                            end);
                            local uiObject_1256 = Instance.new(FrameClass); uiObject_1256.Parent = contentArea_1252; uiObject_1256.BackgroundTransparency = 1; uiObject_1256.AnchorPoint = Vector2.new(0, 1);
                            uiObject_1256.Position = UDim2.new(0, 5, 1, -5); uiObject_1256.Size = UDim2.new(1, -10, 0, 65);
                            local callback_1265 = function(parameter_1257, parameter_1258, parameter_1259, parameter_1260)
                                local uiObject_1261 = Instance.new(FrameClass); local uiObject_1262 = Instance.new("UICorner"); local uiObject_1263 = Instance.new("TextBox");
                                local uiObject_1264 = Instance.new(FrameClass); uiObject_1261.Name = parameter_1257 .. FrameClass; uiObject_1261.Parent = uiObject_1256;
                                uiObject_1261.BackgroundColor3 = getgenv().UIColor["Background Main Color"]; uiObject_1261.Position = parameter_1259; uiObject_1261.Size = parameter_1260;
                                table.insert(colorSubscribers["Background Main Color"], function()
                                    uiObject_1261.BackgroundColor3 = getgenv().UIColor["Background Main Color"];
                                    return
                                end);
                                uiObject_1262.CornerRadius = UDim.new(0, 10); uiObject_1262.Parent = uiObject_1261; uiObject_1263.Parent = uiObject_1261; uiObject_1263.BackgroundTransparency = 1;
                                uiObject_1263.Size = UDim2.new(1, -10, 1, 0); uiObject_1263.Position = UDim2.new(0, 5, 0, 0); uiObject_1263.Font = Enum.Font.GothamBold; uiObject_1263.Text = "";
                                uiObject_1263.PlaceholderText = parameter_1258; uiObject_1263.TextSize = 12; uiObject_1263.TextXAlignment = Enum.TextXAlignment.Left;
                                uiObject_1263.TextColor3 = getgenv().UIColor[TextColorKey]; uiObject_1263.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                table.insert(colorSubscribers[TextColorKey], function()
                                    uiObject_1263.TextColor3 = getgenv().UIColor[TextColorKey];
                                    return
                                end);
                                table.insert(colorSubscribers["Placeholder Text Color"], function()
                                    uiObject_1263.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                    return
                                end);
                                uiObject_1264.Parent = uiObject_1261; uiObject_1264.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"]; uiObject_1264.BackgroundTransparency = 1;
                                uiObject_1264.Position = UDim2.new(0, 0, 1, -2); uiObject_1264.Size = UDim2.new(1, 0, 0, 2);
                                table.insert(colorSubscribers["Box Highlight Color"], function()
                                    uiObject_1264.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"];
                                    return
                                end);
                                uiObject_1263.Focused:Connect(function()
                                    UIContext.ButtonEffect(); tweenService_1244:Create(uiObject_1264, TweenInfo.new(0.3), { BackgroundTransparency = 0 }):Play();
                                    return
                                end);
                                uiObject_1263.FocusLost:Connect(function()
                                    tweenService_1244:Create(uiObject_1264, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play();
                                    return
                                end);
                                return uiObject_1263;
                            end;
                            local toggleValue_1266 = callback_1265("User", "Username", UDim2.new(0, 0, 0, 0), UDim2.new(0.35, 0, 0, 30));
                            local toggleValue_1267 = callback_1265("Link", "PS Code", UDim2.new(0.35, 5, 0, 0), UDim2.new(0.65, -45, 0, 30));
                            local toggleValue_1268 = callback_1265("Config", "Config Name (optional)", UDim2.new(0, 0, 0, 35), UDim2.new(1, -45, 0, 30)); local addBtn_1269 = Instance.new("TextButton");
                            local uiObject_1270 = Instance.new("UICorner"); addBtn_1269.Name = "AddBtn"; addBtn_1269.Parent = uiObject_1256; addBtn_1269.AnchorPoint = Vector2.new(1, 0);
                            addBtn_1269.Position = UDim2.new(1, 0, 0, 0); addBtn_1269.Size = UDim2.new(0, 35, 0, 65); addBtn_1269.BackgroundColor3 = getgenv().UIColor["Button Color"]; addBtn_1269.Text = "+";
                            addBtn_1269.Font = Enum.Font.GothamBold; addBtn_1269.TextSize = 18; addBtn_1269.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers["Button Color"], function()
                                addBtn_1269.BackgroundColor3 = getgenv().UIColor["Button Color"];
                                return
                            end);
                            table.insert(colorSubscribers[TextColorKey], function()
                                addBtn_1269.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            uiObject_1270.CornerRadius = UDim.new(0, 10); uiObject_1270.Parent = addBtn_1269;
                            addBtn_1269.MouseEnter:Connect(function()
                                tweenService_1244:Create(addBtn_1269, TweenInfo.new(0.2), { BackgroundTransparency = 0.2 }):Play();
                                return
                            end);
                            addBtn_1269.MouseLeave:Connect(function()
                                tweenService_1244:Create(addBtn_1269, TweenInfo.new(0.2), { BackgroundTransparency = 0 }):Play();
                                return
                            end);
                            local callback_1291 = function(parameter_1271, parameter_1272, parameter_1273, parameter_1274)
                                local uiObject_1275 = Instance.new(FrameClass); local uiObject_1276 = Instance.new("UICorner"); local uiObject_1277 = Instance.new("TextLabel");
                                local uiObject_1278 = Instance.new("TextLabel"); local uiObject_1279 = Instance.new("TextLabel"); local uiObject_1280 = Instance.new("TextButton");
                                local uiObject_1281 = Instance.new("UICorner"); local uiObject_1282 = Instance.new("TextButton"); local uiObject_1283 = Instance.new("UICorner");
                                uiObject_1275.Name = parameter_1271; uiObject_1275.Parent = list_1254; uiObject_1275.LayoutOrder = parameter_1274; uiObject_1275.Size = UDim2.new(1, 0, 0, 50);
                                uiObject_1275.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                table.insert(colorSubscribers["Background 1 Color"], function()
                                    uiObject_1275.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                    return
                                end);
                                uiObject_1276.CornerRadius = UDim.new(0, 10); uiObject_1276.Parent = uiObject_1275; uiObject_1277.Parent = uiObject_1275; uiObject_1277.BackgroundTransparency = 1;
                                uiObject_1277.Position = UDim2.new(0, 8, 0, 4); uiObject_1277.Size = UDim2.new(1, -80, 0, 16); uiObject_1277.Font = Enum.Font.GothamBold; uiObject_1277.Text = parameter_1271;
                                uiObject_1277.TextSize = 13; uiObject_1277.TextXAlignment = Enum.TextXAlignment.Left; uiObject_1277.TextColor3 = getgenv().UIColor[TextColorKey];
                                table.insert(colorSubscribers[TextColorKey], function()
                                    uiObject_1277.TextColor3 = getgenv().UIColor[TextColorKey];
                                    return
                                end);
                                uiObject_1278.Parent = uiObject_1275; uiObject_1278.BackgroundTransparency = 1; uiObject_1278.Position = UDim2.new(0, 8, 0, 20); uiObject_1278.Size = UDim2.new(0.5, -10, 0, 14);
                                uiObject_1278.Font = Enum.Font.Gotham; uiObject_1278.Text = parameter_1272 and parameter_1272 ~= "" and "PS: " .. parameter_1272 or "No PS Code"; uiObject_1278.TextSize = 10;
                                uiObject_1278.TextXAlignment = Enum.TextXAlignment.Left; uiObject_1278.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                table.insert(colorSubscribers["Toggle Desc Color"], function()
                                    uiObject_1278.TextColor3 = getgenv().UIColor["Toggle Desc Color"];
                                    return
                                end);
                                uiObject_1279.Parent = uiObject_1275; uiObject_1279.BackgroundTransparency = 1; uiObject_1279.Position = UDim2.new(0, 8, 0, 34); uiObject_1279.Size = UDim2.new(0.6, -10, 0, 14);
                                uiObject_1279.Font = Enum.Font.Gotham; uiObject_1279.Text = parameter_1273 and parameter_1273 ~= "" and "Config: " .. parameter_1273 or "No Config"; uiObject_1279.TextSize = 10;
                                uiObject_1279.TextXAlignment = Enum.TextXAlignment.Left;
                                uiObject_1279.TextColor3 = parameter_1273 and parameter_1273 ~= "" and Color3.fromRGB(100, 200, 100) or getgenv().UIColor["Toggle Desc Color"];
                                if toggleValue_1238 and (parameter_1273 and parameter_1273 ~= "") then
                                    uiObject_1282.Parent = uiObject_1275; uiObject_1282.AnchorPoint = Vector2.new(1, 0.5); uiObject_1282.Position = UDim2.new(1, -40, 0.5, 0);
                                    uiObject_1282.Size = UDim2.new(0, 30, 0, 30); uiObject_1282.BackgroundColor3 = Color3.fromRGB(60, 140, 60); uiObject_1282.Text = "+"; uiObject_1282.Font = Enum.Font.GothamBold;
                                    uiObject_1282.TextSize = 16; uiObject_1282.TextColor3 = Color3.fromRGB(255, 255, 255); uiObject_1283.CornerRadius = UDim.new(0, 10); uiObject_1283.Parent = uiObject_1282;
                                    uiObject_1282.MouseEnter:Connect(function()
                                        tweenService_1244:Create(uiObject_1282, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(80, 180, 80) }):Play();
                                        return
                                    end);
                                    uiObject_1282.MouseLeave:Connect(function()
                                        tweenService_1244:Create(uiObject_1282, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(60, 140, 60) }):Play();
                                        return
                                    end);
                                    uiObject_1282.MouseButton1Click:Connect(function()
                                        UIContext.ButtonEffect();
                                        if getgenv().ScriptUIConfig and getgenv().ScriptUIConfig.Load then
                                            local toggleValue_1284, toggleValue_1285 = getgenv().ScriptUIConfig.Load(parameter_1273);
                                            if toggleValue_1284 then
                                                if Library and Library.CreateNoti then
                                                    Library.CreateNoti({ Title = "Config", Desc = "Loaded \"" .. parameter_1273 .. "\" for " .. parameter_1271, ShowTime = 4 });
                                                end;
                                            elseif Library and Library.CreateNoti then
                                                Library.CreateNoti({ Title = "Config", Desc = "Failed to load: " .. tostring(toggleValue_1285), ShowTime = 4 });
                                            end;
                                        end;
                                        if toggleValue_1239 then
                                            toggleValue_1239(parameter_1271, parameter_1272, parameter_1273);
                                        end;
                                        return
                                    end);
                                end;
                                uiObject_1280.Parent = uiObject_1275; uiObject_1280.AnchorPoint = Vector2.new(1, 0.5); uiObject_1280.Position = UDim2.new(1, -5, 0.5, 0);
                                uiObject_1280.Size = UDim2.new(0, 30, 0, 30); uiObject_1280.BackgroundColor3 = Color3.fromRGB(200, 60, 60); uiObject_1280.Text = "X"; uiObject_1280.Font = Enum.Font.GothamBold;
                                uiObject_1280.TextSize = 14; uiObject_1280.TextColor3 = Color3.fromRGB(255, 255, 255); uiObject_1281.CornerRadius = UDim.new(0, 10); uiObject_1281.Parent = uiObject_1280;
                                uiObject_1280.MouseEnter:Connect(function()
                                    tweenService_1244:Create(uiObject_1280, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(230, 80, 80) }):Play();
                                    return
                                end);
                                uiObject_1280.MouseLeave:Connect(function()
                                    tweenService_1244:Create(uiObject_1280, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(200, 60, 60) }):Play();
                                    return
                                end);
                                uiObject_1280.MouseButton1Click:Connect(function()
                                    UIContext.ButtonEffect(); uiObject_1275:Destroy();
                                    for index_1286, item_1287 in ipairs(uiTable_1241) do
                                        if item_1287.username == parameter_1271 then
                                            table.remove(uiTable_1241, index_1286); break;
                                        end;
                                    end;
                                    local uiTable_1288 = {};
                                    for index_1289, item_1290 in ipairs(uiTable_1241) do
                                        uiTable_1288[item_1290.username] = { link = item_1290.link, config = item_1290.config };
                                    end;
                                    toggleValue_1237(uiTable_1288);
                                    return
                                end);
                                return
                            end;
                            local callback_1298 = function()
                                for key_1292, value_1293 in pairs(list_1254:GetChildren()) do
                                    if value_1293:IsA(FrameClass) then
                                        value_1293:Destroy();
                                    end;
                                end;
                                table.sort(uiTable_1241, function(parameter_1294, parameter_1295)
                                    return parameter_1294.username:lower() < parameter_1295.username:lower();
                                end);
                                for index_1296, item_1297 in ipairs(uiTable_1241) do
                                    callback_1291(item_1297.username, item_1297.link, item_1297.config, index_1296);
                                end;
                                return
                            end;
                            addBtn_1269.MouseButton1Click:Connect(function()
                                UIContext.ButtonEffect(); local text_1299 = toggleValue_1266.Text; local text_1300 = toggleValue_1267.Text; local text_1301 = toggleValue_1268.Text;
                                if text_1299:gsub(" ", "") ~= "" then
                                    for index_1302, item_1303 in ipairs(uiTable_1241) do
                                        if item_1303.username == text_1299 then
                                            return
                                        end;
                                    end;
                                    table.insert(uiTable_1241, { username = text_1299, link = text_1300, config = text_1301 }); callback_1298(); toggleValue_1266.Text = ""; toggleValue_1267.Text = "";
                                    toggleValue_1268.Text = ""; local uiTable_1304 = {};
                                    for index_1305, item_1306 in ipairs(uiTable_1241) do
                                        uiTable_1304[item_1306.username] = { link = item_1306.link, config = item_1306.config };
                                    end;
                                    toggleValue_1237(uiTable_1304);
                                end;
                                return
                            end);
                            local enabled_1307 = false; local toggleValue_1308 = UDim2.new(1, 0, 0, 280); local toggleValue_1309 = UDim2.new(1, 0, 0, 35);
                            minimize_1251.MouseButton1Click:Connect(function()
                                UIContext.ButtonEffect(); enabled_1307 = not enabled_1307; minimize_1251.Text = enabled_1307 and "+" or "-";
                                local toggleValue_1310 = enabled_1307 and toggleValue_1309 or toggleValue_1308;
                                tweenService_1244:Create(uiObject_1246, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = toggleValue_1310 }):Play();
                                if enabled_1307 then
                                    contentArea_1252.Visible = false;
                                else
                                    contentArea_1252.Visible = true;
                                end;
                                return
                            end);
                            minimize_1251.MouseEnter:Connect(function()
                                tweenService_1244:Create(minimize_1251, TweenInfo.new(0.2), { TextColor3 = getgenv().UIColor["Button Color"] }):Play();
                                return
                            end);
                            minimize_1251.MouseLeave:Connect(function()
                                tweenService_1244:Create(minimize_1251, TweenInfo.new(0.2), { TextColor3 = getgenv().UIColor[TextColorKey] }):Play();
                                return
                            end);
                            callback_1298();
                            if toggleValue_1238 then
                                task.spawn(function()
                                    task.wait(0.5); local players_1311 = game:GetService("Players").LocalPlayer;
                                    if players_1311 then
                                        for index_1312, item_1313 in ipairs(uiTable_1241) do
                                            if item_1313.username == players_1311.Name and item_1313.config and item_1313.config ~= "" then
                                                if getgenv().ScriptUIConfig and getgenv().ScriptUIConfig.Load then
                                                    local toggleValue_1314, toggleValue_1315 = getgenv().ScriptUIConfig.Load(item_1313.config);
                                                    if toggleValue_1314 and Library and Library.CreateNoti then
                                                        Library.CreateNoti({ Title = "Config", Desc = "Auto-loaded \"" .. item_1313.config .. "\" for " .. item_1313.username, ShowTime = 4 });
                                                    end;
                                                end;
                                                return
                                            end;
                                        end;
                                    end;
                                    return
                                end);
                            end;
                            ControlRegistry.Toggles[toggleValue_1240] = {
                                Get = function()
                                    local uiTable_1316 = {};
                                    for index_1317, item_1318 in ipairs(uiTable_1241) do
                                        uiTable_1316[item_1318.username] = { link = item_1318.link, config = item_1318.config };
                                    end;
                                    return uiTable_1316;
                                end,
                                Set = function(parameter_1319)
                                    if type(parameter_1319) == "table" then
                                        uiTable_1241 = {};
                                        for key_1320, value_1321 in pairs(parameter_1319) do
                                            if type(value_1321) == "table" then
                                                table.insert(uiTable_1241, { username = key_1320, link = value_1321.link or "", config = value_1321.config or "" });
                                            else
                                                table.insert(uiTable_1241, { username = key_1320, link = value_1321, config = "" });
                                            end;
                                        end;
                                        callback_1298();
                                    end;
                                    return
                                end
                            };
                            return {
                                Add = function(parameter_1322, parameter_1323, parameter_1324)
                                    table.insert(uiTable_1241, { username = parameter_1322, link = parameter_1323, config = parameter_1324 or "" }); callback_1298();
                                    return
                                end,
                                Get = function()
                                    return uiTable_1241;
                                end,
                                GetAccountConfig = function(parameter_1325)
                                    for index_1326, item_1327 in ipairs(uiTable_1241) do
                                        if item_1327.username == parameter_1325 then
                                            return item_1327.config;
                                        end;
                                    end;
                                    return nil;
                                end,
                                LoadConfigForCurrentPlayer = function()
                                    local players_1328 = game:GetService("Players").LocalPlayer;
                                    if players_1328 then
                                        for index_1329, item_1330 in ipairs(uiTable_1241) do
                                            if item_1330.username == players_1328.Name and item_1330.config and item_1330.config ~= "" and getgenv().ScriptUIConfig and getgenv().ScriptUIConfig.Load then
                                                return getgenv().ScriptUIConfig.Load(item_1330.config);
                                            end;
                                        end;
                                    end;
                                    return false, "No config found for current player";
                                end
                            };
                        end,
                        CreateButton = function(buttonConfig, onClick)
                            local title_1333 = buttonConfig.Title;
                            local buttonValue_1334 = onClick or function()
                                return
                            end;
                            local uiObject_1335 = Instance.new(FrameClass); local buttonBG_1336 = Instance.new(FrameClass); local buttonCorner_1337 = Instance.new("UICorner");
                            local textColor_1338 = Instance.new("TextLabel"); local button_1339 = Instance.new("TextButton"); uiObject_1335.Name = title_1333 .. "dot"; uiObject_1335.Parent = uiObject_1147;
                            uiObject_1335.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_1335.BackgroundTransparency = 1; uiObject_1335.Position = UDim2.new(0, 0, 0.300000012, 0);
                            uiObject_1335.Size = UDim2.new(1, 0, 0, 25); buttonBG_1336.Name = "ButtonBG"; buttonBG_1336.Parent = uiObject_1335; buttonBG_1336.AnchorPoint = Vector2.new(0.5, 0.5);
                            buttonBG_1336.Position = UDim2.new(0.5, 0, 0.5, 0); buttonBG_1336.Size = UDim2.new(1, -10, 1, 0); buttonBG_1336.BackgroundColor3 = getgenv().UIColor["Button Color"];
                            table.insert(colorSubscribers["Button Color"], function()
                                buttonBG_1336.BackgroundColor3 = getgenv().UIColor["Button Color"];
                                return
                            end);
                            buttonBG_1336.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                buttonBG_1336.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            buttonCorner_1337.CornerRadius = UDim.new(0, 10); buttonCorner_1337.Name = "ButtonCorner"; buttonCorner_1337.Parent = buttonBG_1336; textColor_1338.Name = "TextColor";
                            textColor_1338.Parent = buttonBG_1336; textColor_1338.BackgroundColor3 = Color3.fromRGB(230, 230, 230); textColor_1338.BackgroundTransparency = 1;
                            textColor_1338.Position = UDim2.new(0, 10, 0, 0); textColor_1338.Size = UDim2.new(1, -10, 1, 0); textColor_1338.Font = Enum.Font.GothamBlack; textColor_1338.Text = title_1333;
                            textColor_1338.TextSize = 14; textColor_1338.TextXAlignment = Enum.TextXAlignment.Left; textColor_1338.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                textColor_1338.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            button_1339.Name = "Button"; button_1339.Parent = buttonBG_1336; button_1339.BackgroundColor3 = Color3.fromRGB(230, 230, 230); button_1339.BackgroundTransparency = 1;
                            button_1339.Size = UDim2.new(1, 0, 1, 0); button_1339.Font = Enum.Font.SourceSans; button_1339.Text = ""; button_1339.TextColor3 = Color3.fromRGB(0, 0, 0);
                            button_1339.TextSize = 14;
                            button_1339.MouseButton1Click:Connect(function()
                                UIContext.ButtonEffect();
                                return
                            end);
                            local SH_btnTween = game:GetService("TweenService"); local SH_btnScale = Instance.new("UIScale"); SH_btnScale.Scale = 1; SH_btnScale.Parent = buttonBG_1336;
                            local SH_btnScaleObj = SH_btnScale;
                            local function SH_btnRelease()
                                SH_btnTween:Create(SH_btnScaleObj, TweenInfo.new(0.16, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play();
                                SH_btnTween:Create(textColor_1338, TweenInfo.new(0.16), { TextTransparency = 0 }):Play();
                                return
                            end;
                            button_1339.MouseButton1Down:Connect(function()
                                SH_btnTween:Create(SH_btnScaleObj, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.95 }):Play();
                                SH_btnTween:Create(textColor_1338, TweenInfo.new(0.07), { TextTransparency = 0.3 }):Play();
                                return
                            end);
                            button_1339.MouseButton1Up:Connect(SH_btnRelease); button_1339.MouseLeave:Connect(SH_btnRelease);
                            button_1339.MouseButton1Down:Connect(function()
                                buttonValue_1334();
                                return
                            end);
                            return
                        end,
                        CreateTextInput = function(inputConfig)
                            local cfg = inputConfig or {}; local title = tostring(cfg.Title or "Input"); local placeholder = tostring(cfg.Placeholder or ""); local row = Instance.new(FrameClass);
                            local corner = Instance.new("UICorner"); local bg = Instance.new(FrameClass); local box = Instance.new("TextBox"); row.Name = "TextInputFrame"; row.Parent = uiObject_1147;
                            row.BackgroundTransparency = 1; row.Size = UDim2.new(1, 0, 0, 45); corner.CornerRadius = UDim.new(0, 10); corner.Parent = row; bg.Name = "Background1"; bg.Parent = row;
                            bg.AnchorPoint = Vector2.new(0.5, 0.5); bg.Position = UDim2.new(0.5, 0, 0.5, 0); bg.Size = UDim2.new(1, -10, 1, 0); bg.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            bg.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                bg.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            table.insert(colorSubscribers["Background 2 Color"], function()
                                bg.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return
                            end);
                            local bgCorner = Instance.new("UICorner"); bgCorner.CornerRadius = UDim.new(0, 10); bgCorner.Parent = bg; local lbl = Instance.new("TextLabel"); lbl.Parent = bg;
                            lbl.BackgroundTransparency = 1; lbl.Position = UDim2.new(0, 10, 0, 2); lbl.Size = UDim2.new(1, -20, 0, 16); lbl.Font = Enum.Font.GothamBold; lbl.TextSize = 13;
                            lbl.TextXAlignment = Enum.TextXAlignment.Left; lbl.Text = title; lbl.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                lbl.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            box.Parent = bg; box.BackgroundTransparency = 1; box.Position = UDim2.new(0, 10, 0, 18); box.Size = UDim2.new(1, -20, 0, 22); box.Font = Enum.Font.Gotham; box.TextSize = 14;
                            box.TextXAlignment = Enum.TextXAlignment.Left; box.PlaceholderText = placeholder; box.Text = tostring(cfg.Default or ""); box.TextColor3 = getgenv().UIColor[TextColorKey];
                            box.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                            table.insert(colorSubscribers[TextColorKey], function()
                                box.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            local changed = cfg.Callback;
                            box.FocusLost:Connect(function()
                                if changed then
                                    pcall(changed, box.Text);
                                end;
                                return
                            end);
                            return {
                                Value = box.Text,
                                GetValue = function() return box.Text end,
                                SetValue = function(v) box.Text = tostring(v or "") end,
                                TextBox = box,
                            };
                        end,
                        CreateLabel = function(labelConfig)
                            local title_1341 = tostring(labelConfig.Title); local labelFrame_1342 = Instance.new(FrameClass); local labelBG_1343 = Instance.new(FrameClass);
                            local labelCorner_1344 = Instance.new("UICorner"); local textColor_1345 = Instance.new("TextLabel"); labelFrame_1342.Name = "LabelFrame"; labelFrame_1342.Parent = uiObject_1147;
                            labelFrame_1342.BackgroundColor3 = Color3.fromRGB(230, 230, 230); labelFrame_1342.BackgroundTransparency = 1; labelFrame_1342.Position = UDim2.new(0, 0, 0, 0);
                            labelFrame_1342.Size = UDim2.new(1, 0, 0, 0); labelFrame_1342.AutomaticSize = Enum.AutomaticSize.Y; labelBG_1343.Name = "LabelBG"; labelBG_1343.Parent = labelFrame_1342;
                            labelBG_1343.AnchorPoint = Vector2.new(0.5, 0); labelBG_1343.Position = UDim2.new(0.5, 0, 0, 0); labelBG_1343.Size = UDim2.new(1, -10, 0, -10);
                            labelBG_1343.BackgroundColor3 = getgenv().UIColor["Label Color"]; labelBG_1343.AutomaticSize = Enum.AutomaticSize.Y;
                            table.insert(colorSubscribers["Label Color"], function()
                                labelBG_1343.BackgroundColor3 = getgenv().UIColor["Label Color"];
                                return
                            end);
                            labelBG_1343.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                labelBG_1343.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            labelCorner_1344.CornerRadius = UDim.new(0, 10); labelCorner_1344.Name = "LabelCorner"; labelCorner_1344.Parent = labelBG_1343; textColor_1345.Name = "TextColor";
                            textColor_1345.Parent = labelBG_1343; textColor_1345.BackgroundColor3 = Color3.fromRGB(230, 230, 230); textColor_1345.BackgroundTransparency = 1;
                            textColor_1345.Position = UDim2.new(0, 10, 0, 3); textColor_1345.Size = UDim2.new(1, -20, 1, 0); textColor_1345.Font = Enum.Font.GothamBlack; textColor_1345.Text = title_1341;
                            textColor_1345.TextSize = 14; textColor_1345.TextXAlignment = Enum.TextXAlignment.Left; textColor_1345.AutomaticSize = Enum.AutomaticSize.Y; textColor_1345.TextWrapped = true;
                            textColor_1345.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                textColor_1345.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            return {
                                SetText = function(parameter_1346)
                                    textColor_1345.Text = parameter_1346;
                                    return
                                end,
                                SetColor = function(parameter_1347)
                                    textColor_1345.TextColor3 = parameter_1347;
                                    return
                                end
                            };
                        end,
                        CreateDropdown = function(dropdownConfig, onSelect)
                            local title_1350 = tostring(dropdownConfig.Title); local options_1351 = dropdownConfig.List or {}; local searchEnabled_1352 = dropdownConfig.Search or false;
                            local multiSelect_1353 = dropdownConfig.Selected or false; local defaultValue_1354 = dropdownConfig.Default;
                            local dropdownValue_1355 = onSelect or function()
                                return
                            end;
                            local callback_1360 = function(parameter_1356)
                                if type(parameter_1356) ~= "table" then
                                    return false;
                                end;
                                local number_1357 = 0;
                                for key_1358, value_1359 in pairs(parameter_1356) do
                                    if type(key_1358) ~= "number" then
                                        return false;
                                    end;
                                    number_1357 = number_1357 + 1;
                                end;
                                return number_1357 == #parameter_1356;
                            end;
                            local uiObject_1361 = Instance.new(FrameClass); local background1_1362 = Instance.new(FrameClass); local dropdowncorner_1363 = Instance.new("UICorner");
                            local background2_1364 = Instance.new(FrameClass); local uiObject_1365 = Instance.new("UICorner"); local imgDrop_1366 = Instance.new("ImageLabel");
                            local uiObject_1367 = Instance.new("TextButton"); local uiObject_1368 = Instance.new(FrameClass); local uiObject_1369 = Instance.new("ScrollingFrame");
                            local uiObject_1370 = Instance.new(FrameClass); local uiObject_1371 = Instance.new("UIListLayout"); local textColorPlaceholder_1372;
                            if searchEnabled_1352 then
                                textColorPlaceholder_1372 = Instance.new("TextBox"); uiObject_1367.Visible = false;
                            else
                                textColorPlaceholder_1372 = Instance.new("TextLabel");
                            end;
                            uiObject_1361.Name = title_1350 .. "DropdownFrame"; uiObject_1361.Parent = uiObject_1147; uiObject_1361.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            uiObject_1361.BackgroundTransparency = 1; uiObject_1361.Position = UDim2.new(0, 0, 0.473684222, 0); uiObject_1361.Size = UDim2.new(1, 0, 0, 25);
                            background1_1362.Name = "Background1"; background1_1362.Parent = uiObject_1361; background1_1362.AnchorPoint = Vector2.new(0.5, 0.5);
                            background1_1362.Position = UDim2.new(0.5, 0, 0.5, 0); background1_1362.Size = UDim2.new(1, -10, 1, 0); background1_1362.ClipsDescendants = true;
                            background1_1362.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(colorSubscribers["Background 1 Color"], function()
                                background1_1362.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return
                            end);
                            background1_1362.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                background1_1362.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            dropdowncorner_1363.CornerRadius = UDim.new(0, 10); dropdowncorner_1363.Name = "Dropdowncorner"; dropdowncorner_1363.Parent = background1_1362;
                            background2_1364.Name = "Background2"; background2_1364.Parent = background1_1362; background2_1364.Size = UDim2.new(1, 0, 0, 25);
                            background2_1364.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(colorSubscribers["Background 2 Color"], function()
                                background2_1364.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return
                            end);
                            background2_1364.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                background2_1364.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            uiObject_1365.CornerRadius = UDim.new(0, 10); uiObject_1365.Parent = background2_1364; textColorPlaceholder_1372.Name = "TextColorPlaceholder";
                            textColorPlaceholder_1372.Parent = background2_1364; textColorPlaceholder_1372.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            textColorPlaceholder_1372.BackgroundTransparency = 1; textColorPlaceholder_1372.Position = UDim2.new(0, 10, 0, 0); textColorPlaceholder_1372.Size = UDim2.new(1, -40, 1, 0);
                            textColorPlaceholder_1372.Font = Enum.Font.GothamBlack; textColorPlaceholder_1372.Text = ""; textColorPlaceholder_1372.TextSize = 14;
                            textColorPlaceholder_1372.TextXAlignment = Enum.TextXAlignment.Left; textColorPlaceholder_1372.ClipsDescendants = true;
                            textColorPlaceholder_1372.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                textColorPlaceholder_1372.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            if searchEnabled_1352 then
                                textColorPlaceholder_1372.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                table.insert(colorSubscribers["Placeholder Text Color"], function()
                                    textColorPlaceholder_1372.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                    return
                                end);
                            end;
                            imgDrop_1366.Name = "ImgDrop"; imgDrop_1366.Parent = background2_1364; imgDrop_1366.AnchorPoint = Vector2.new(1, 0.5); imgDrop_1366.BackgroundTransparency = 1;
                            imgDrop_1366.Position = UDim2.new(1, -6, 0.5, 0); imgDrop_1366.Size = UDim2.new(0, 15, 0, 15); imgDrop_1366.Image = "rbxassetid://6954383209";
                            imgDrop_1366.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"];
                            table.insert(colorSubscribers["Dropdown Icon Color"], function()
                                imgDrop_1366.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"];
                                return
                            end);
                            uiObject_1367.Name = "DropdownButton"; uiObject_1367.Parent = background2_1364; uiObject_1367.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            uiObject_1367.BackgroundTransparency = 1; uiObject_1367.Size = UDim2.new(1, 0, 1, 0); uiObject_1367.Font = Enum.Font.GothamBold; uiObject_1367.Text = "";
                            uiObject_1367.TextColor3 = Color3.fromRGB(230, 230, 230); uiObject_1367.TextSize = 14; uiObject_1368.Name = "Dropdownlisttt"; uiObject_1368.Parent = background1_1362;
                            uiObject_1368.BackgroundTransparency = 1; uiObject_1368.BorderSizePixel = 0; uiObject_1368.Position = UDim2.new(0, 0, 0, 25); uiObject_1368.Size = UDim2.new(1, 0, 0, 25);
                            uiObject_1369.Name = "DropdownScroll"; uiObject_1369.Parent = uiObject_1368; uiObject_1369.Active = true; uiObject_1369.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            uiObject_1369.BackgroundTransparency = 1; uiObject_1369.BorderSizePixel = 0; uiObject_1369.Size = UDim2.new(1, 0, 1, 0); uiObject_1369.ScrollBarThickness = 5;
                            uiObject_1370.Name = "ScrollContainer"; uiObject_1370.Parent = uiObject_1369; uiObject_1370.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            uiObject_1370.BackgroundTransparency = 1; uiObject_1370.Position = UDim2.new(0, 5, 0, 5); uiObject_1370.Size = UDim2.new(1, -15, 1, -5); uiObject_1371.Name = "ScrollContainerList";
                            uiObject_1371.Parent = uiObject_1370; uiObject_1371.SortOrder = Enum.SortOrder.LayoutOrder;
                            uiObject_1371:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                                uiObject_1369.CanvasSize = UDim2.new(0, 0, 0, 10 + uiObject_1371.AbsoluteContentSize.Y + 5);
                                return
                            end);
                            local enabled_1373 = false; local uiTable_1374 = {}; local uiTable_1375 = {}; local dropdownValue_1376 = options_1351; local reference_1377 = nil;
                            if multiSelect_1353 then
                                if callback_1360(dropdownValue_1376) then
                                    local uiTable_1378 = {};
                                    for index_1379, item_1380 in ipairs(dropdownValue_1376) do
                                        uiTable_1378[item_1380] = false;
                                    end;
                                    dropdownValue_1376 = uiTable_1378;
                                else
                                    for key_1381, value_1382 in pairs(dropdownValue_1376) do
                                        dropdownValue_1376[key_1381] = not not value_1382;
                                    end;
                                end;
                            end;
                            local dropdownValue_1383;
                            dropdownValue_1383 = function()
                                for index_1384, item_1385 in ipairs(uiObject_1370:GetChildren()) do
                                    if item_1385:IsA(FrameClass) then
                                        item_1385:Destroy();
                                    end;
                                end;
                                uiTable_1375 = {};
                                if not multiSelect_1353 then
                                    for index_1386, item_1387 in ipairs(dropdownValue_1376) do
                                        local dropdownValue_1388 = tostring(item_1387); local dropdownValue_1389 = dropdownValue_1388:lower(); table.insert(uiTable_1375, dropdownValue_1389);
                                        local uiObject_1390 = Instance.new(FrameClass); local uiObject_1391 = Instance.new("UICorner"); local line_1392 = Instance.new(FrameClass);
                                        local inLine_1393 = Instance.new(FrameClass); local uiObject_1394 = Instance.new("UICorner"); local dropvalcontainer_1395 = Instance.new(FrameClass);
                                        local textColor_1396 = Instance.new("TextButton"); uiObject_1390.Name = dropdownValue_1389; uiObject_1390.Parent = uiObject_1370; uiObject_1390.BackgroundTransparency = 1;
                                        uiObject_1390.Size = UDim2.new(1, 0, 0, 25); uiObject_1391.CornerRadius = UDim.new(0, 10); uiObject_1391.Parent = uiObject_1390; line_1392.Name = "Line";
                                        line_1392.Parent = uiObject_1390; line_1392.AnchorPoint = Vector2.new(0, 0.5); line_1392.BackgroundTransparency = 1; line_1392.Position = UDim2.new(0, 0, 0.5, 0);
                                        line_1392.Size = UDim2.new(0, 14, 1, 0); inLine_1393.Name = "InLine"; inLine_1393.Parent = line_1392; inLine_1393.AnchorPoint = Vector2.new(0.5, 0.5);
                                        inLine_1393.BorderSizePixel = 0; inLine_1393.Position = UDim2.new(0.5, 0, 0.5, 0); inLine_1393.Size = UDim2.new(1, -10, 1, -10);
                                        inLine_1393.BackgroundTransparency = reference_1377 == dropdownValue_1388 and 0 or 1; inLine_1393.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"];
                                        table.insert(colorSubscribers["Dropdown Selected Color"], function()
                                            inLine_1393.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"];
                                            return
                                        end);
                                        uiObject_1394.CornerRadius = UDim.new(0, 10); uiObject_1394.Parent = inLine_1393; dropvalcontainer_1395.Name = "Dropvalcontainer"; dropvalcontainer_1395.Parent = uiObject_1390;
                                        dropvalcontainer_1395.BackgroundTransparency = 1; dropvalcontainer_1395.Position = UDim2.new(0, 15, 0, 0); dropvalcontainer_1395.Size = UDim2.new(1, -15, 1, 0);
                                        textColor_1396.Name = "TextColor"; textColor_1396.Parent = dropvalcontainer_1395; textColor_1396.BackgroundTransparency = 1; textColor_1396.Size = UDim2.new(1, 0, 1, 0);
                                        textColor_1396.Font = Enum.Font.GothamBold; textColor_1396.Text = dropdownValue_1388; textColor_1396.TextSize = 14; textColor_1396.TextXAlignment = Enum.TextXAlignment.Left;
                                        textColor_1396.TextColor3 = getgenv().UIColor[TextColorKey];
                                        table.insert(colorSubscribers[TextColorKey], function()
                                            textColor_1396.TextColor3 = getgenv().UIColor[TextColorKey];
                                            return
                                        end);
                                        textColor_1396.MouseButton1Click:Connect(function()
                                            UIContext.ButtonEffect(); reference_1377 = dropdownValue_1388;
                                            if searchEnabled_1352 then
                                                textColorPlaceholder_1372.PlaceholderText = title_1350 .. ": " .. dropdownValue_1388;
                                            else
                                                textColorPlaceholder_1372.Text = title_1350 .. ": " .. dropdownValue_1388;
                                            end;
                                            dropdownValue_1383(); pcall(dropdownValue_1355, dropdownValue_1388);
                                            return
                                        end);
                                    end;
                                else
                                    for key_1397, value_1398 in pairs(dropdownValue_1376) do
                                        local dropdownValue_1399 = tostring(key_1397); local dropdownValue_1400 = dropdownValue_1399:lower(); table.insert(uiTable_1375, dropdownValue_1400);
                                        local uiObject_1401 = Instance.new(FrameClass); local uiObject_1402 = Instance.new("UICorner"); local line_1403 = Instance.new(FrameClass);
                                        local inLine_1404 = Instance.new(FrameClass); local uiObject_1405 = Instance.new("UICorner"); local dropvalcontainer_1406 = Instance.new(FrameClass);
                                        local textColor_1407 = Instance.new("TextButton"); uiObject_1401.Name = dropdownValue_1400; uiObject_1401.Parent = uiObject_1370; uiObject_1401.BackgroundTransparency = 1;
                                        uiObject_1401.Size = UDim2.new(1, 0, 0, 25); uiObject_1402.CornerRadius = UDim.new(0, 10); uiObject_1402.Parent = uiObject_1401; line_1403.Name = "Line";
                                        line_1403.Parent = uiObject_1401; line_1403.AnchorPoint = Vector2.new(0, 0.5); line_1403.BackgroundTransparency = 1; line_1403.Position = UDim2.new(0, 0, 0.5, 0);
                                        line_1403.Size = UDim2.new(0, 14, 1, 0); inLine_1404.Name = "InLine"; inLine_1404.Parent = line_1403; inLine_1404.AnchorPoint = Vector2.new(0.5, 0.5);
                                        inLine_1404.BorderSizePixel = 0; inLine_1404.Position = UDim2.new(0.5, 0, 0.5, 0); inLine_1404.Size = UDim2.new(1, -10, 1, -10);
                                        inLine_1404.BackgroundTransparency = value_1398 and 0 or 1; inLine_1404.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"];
                                        table.insert(colorSubscribers["Dropdown Selected Color"], function()
                                            inLine_1404.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"];
                                            return
                                        end);
                                        uiObject_1405.CornerRadius = UDim.new(0, 10); uiObject_1405.Parent = inLine_1404; dropvalcontainer_1406.Name = "Dropvalcontainer"; dropvalcontainer_1406.Parent = uiObject_1401;
                                        dropvalcontainer_1406.BackgroundTransparency = 1; dropvalcontainer_1406.Position = UDim2.new(0, 15, 0, 0); dropvalcontainer_1406.Size = UDim2.new(1, -15, 1, 0);
                                        textColor_1407.Name = "TextColor"; textColor_1407.Parent = dropvalcontainer_1406; textColor_1407.BackgroundTransparency = 1; textColor_1407.Size = UDim2.new(1, 0, 1, 0);
                                        textColor_1407.Font = Enum.Font.GothamBold; textColor_1407.Text = dropdownValue_1399; textColor_1407.TextSize = 14; textColor_1407.TextXAlignment = Enum.TextXAlignment.Left;
                                        textColor_1407.TextColor3 = getgenv().UIColor[TextColorKey];
                                        table.insert(colorSubscribers[TextColorKey], function()
                                            textColor_1407.TextColor3 = getgenv().UIColor[TextColorKey];
                                            return
                                        end);
                                        textColor_1407.MouseButton1Click:Connect(function()
                                            UIContext.ButtonEffect(); dropdownValue_1376[key_1397] = not dropdownValue_1376[key_1397]; inLine_1404.BackgroundTransparency = dropdownValue_1376[key_1397] and 0 or 1;
                                            pcall(dropdownValue_1355, key_1397, dropdownValue_1376[key_1397]);
                                            return
                                        end);
                                    end;
                                end;
                                return
                            end;
                            if not multiSelect_1353 then
                                if defaultValue_1354 ~= nil then
                                    local dropdownValue_1408 = tostring(defaultValue_1354); reference_1377 = dropdownValue_1408;
                                    if searchEnabled_1352 then
                                        textColorPlaceholder_1372.PlaceholderText = title_1350 .. ": " .. dropdownValue_1408;
                                    else
                                        textColorPlaceholder_1372.Text = title_1350 .. ": " .. dropdownValue_1408;
                                    end;
                                    pcall(dropdownValue_1355, dropdownValue_1408);
                                elseif searchEnabled_1352 then
                                    textColorPlaceholder_1372.PlaceholderText = title_1350 .. ": ";
                                else
                                    textColorPlaceholder_1372.Text = title_1350 .. ": ";
                                end;
                            else
                                if type(defaultValue_1354) == "table" then
                                    if callback_1360(defaultValue_1354) then
                                        for index_1409, item_1410 in ipairs(defaultValue_1354) do
                                            if dropdownValue_1376[item_1410] ~= nil then
                                                dropdownValue_1376[item_1410] = true; pcall(dropdownValue_1355, item_1410, true);
                                            end;
                                        end;
                                    else
                                        for key_1411, value_1412 in pairs(defaultValue_1354) do
                                            if dropdownValue_1376[key_1411] ~= nil then
                                                dropdownValue_1376[key_1411] = not not value_1412; pcall(dropdownValue_1355, key_1411, dropdownValue_1376[key_1411]);
                                            end;
                                        end;
                                    end;
                                end;
                                textColorPlaceholder_1372.Text = title_1350 .. ": ";
                            end;
                            dropdownValue_1383();
                            if searchEnabled_1352 then
                                textColorPlaceholder_1372.Changed:Connect(function()
                                    local text_1413 = textColorPlaceholder_1372.Text:lower();
                                    for index_1414, item_1415 in ipairs(uiObject_1370:GetChildren()) do
                                        if item_1415:IsA(FrameClass) then
                                            item_1415.Visible = text_1413 == "" or item_1415.Name:find(text_1413, 1, true);
                                        end;
                                    end;
                                    return
                                end);
                            end;
                            local callback_1419 = function()
                                enabled_1373 = not enabled_1373; local dropdownValue_1416 = enabled_1373 and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0);
                                local dropdownValue_1417 = enabled_1373 and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25); local dropdownValue_1418 = enabled_1373 and 90 or 0;
                                TweenService:Create(uiObject_1368, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = dropdownValue_1416 }):Play();
                                TweenService:Create(uiObject_1361, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = dropdownValue_1417 }):Play();
                                TweenService:Create(imgDrop_1366, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Rotation = dropdownValue_1418 }):Play();
                                return
                            end;
                            uiObject_1367.MouseButton1Click:Connect(function()
                                UIContext.ButtonEffect(); callback_1419();
                                return
                            end);
                            if searchEnabled_1352 then
                                textColorPlaceholder_1372.Focused:Connect(function()
                                    UIContext.ButtonEffect(); callback_1419();
                                    return
                                end);
                            end;
                            local uiTable_1430 = {
                                rf = dropdownValue_1383,
                                ClearText = function(parameter_1420)
                                    if not multiSelect_1353 then
                                        if searchEnabled_1352 then
                                            textColorPlaceholder_1372.PlaceholderText = title_1350 .. ": ";
                                        else
                                            textColorPlaceholder_1372.Text = title_1350 .. ": ";
                                        end;
                                        reference_1377 = nil;
                                    else
                                        textColorPlaceholder_1372.Text = title_1350 .. ": ";
                                        for key_1421, value_1422 in pairs(dropdownValue_1376) do
                                            dropdownValue_1376[key_1421] = false;
                                        end;
                                        dropdownValue_1383();
                                    end;
                                    return
                                end,
                                GetNewList = function(parameter_1423, parameter_1424)
                                    enabled_1373 = false; TweenService:Create(uiObject_1368, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = UDim2.new(1, 0, 0, 0) }):Play();
                                    TweenService:Create(uiObject_1361, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Size = UDim2.new(1, 0, 0, 25) }):Play();
                                    TweenService:Create(imgDrop_1366, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { Rotation = 0 }):Play();
                                    if multiSelect_1353 then
                                        if callback_1360(parameter_1424) then
                                            local uiTable_1425 = {};
                                            for index_1426, item_1427 in ipairs(parameter_1424) do
                                                uiTable_1425[item_1427] = false;
                                            end;
                                            dropdownValue_1376 = uiTable_1425;
                                        else
                                            for key_1428, value_1429 in pairs(parameter_1424) do
                                                parameter_1424[key_1428] = false;
                                            end;
                                            dropdownValue_1376 = parameter_1424;
                                        end;
                                    else
                                        dropdownValue_1376 = parameter_1424 or {};
                                    end;
                                    reference_1377 = nil; dropdownValue_1383();
                                    return
                                end
                            };
                            local dropdownValue_1431 = makeControlId(pageValue_1101, pageValue_1145, title_1350);
                            if not multiSelect_1353 then
                                ControlRegistry.Dropdowns[dropdownValue_1431] = {
                                    Get = function()
                                        return reference_1377;
                                    end,
                                    Set = function(parameter_1432)
                                        if not parameter_1432 then
                                            return
                                        end;
                                        local dropdownValue_1433 = tostring(parameter_1432); local enabled_1434 = false;
                                        for index_1435, item_1436 in ipairs(dropdownValue_1376) do
                                            if tostring(item_1436) == dropdownValue_1433 then
                                                enabled_1434 = true; break;
                                            end;
                                        end;
                                        if not enabled_1434 then
                                            return
                                        end;
                                        reference_1377 = dropdownValue_1433;
                                        if searchEnabled_1352 then
                                            textColorPlaceholder_1372.PlaceholderText = title_1350 .. ": " .. dropdownValue_1433;
                                        else
                                            textColorPlaceholder_1372.Text = title_1350 .. ": " .. dropdownValue_1433;
                                        end;
                                        dropdownValue_1383(); pcall(dropdownValue_1355, dropdownValue_1433);
                                        return
                                    end
                                };
                            else
                                ControlRegistry.Dropdowns[dropdownValue_1431] = {
                                    Get = function()
                                        local uiTable_1437 = {};
                                        for key_1438, value_1439 in pairs(dropdownValue_1376) do
                                            uiTable_1437[key_1438] = not not value_1439;
                                        end;
                                        return uiTable_1437;
                                    end,
                                    Set = function(parameter_1440)
                                        if type(parameter_1440) ~= "table" then
                                            return
                                        end;
                                        for key_1441, value_1442 in pairs(parameter_1440) do
                                            if dropdownValue_1376[key_1441] ~= nil then
                                                dropdownValue_1376[key_1441] = not not value_1442;
                                            end;
                                        end;
                                        dropdownValue_1383();
                                        for key_1443, value_1444 in pairs(dropdownValue_1376) do
                                            pcall(dropdownValue_1355, key_1443, value_1444);
                                        end;
                                        return
                                    end
                                };
                            end;
                            return uiTable_1430;
                        end,
                        CreateBind = function(parameter_1445, parameter_1446)
                            local title_1447 = tostring(parameter_1445.Title) or ""; local keyCode_1448 = parameter_1445.Key; local defaultValue_1449 = parameter_1445.Default or parameter_1445.Key;
                            local dropdownValue_1450 = tostring(defaultValue_1449):match("UserInputType") and "UserInputType" or "KeyCode";
                            local dropdownValue_1451 = parameter_1446 or function()
                                return
                            end;
                            local dropdownValue_1452 = tostring(keyCode_1448):gsub("Enum.UserInputType.", ""); local dropdownValue_1453 = tostring(dropdownValue_1452):gsub("Enum.KeyCode.", "");
                            local uiObject_1454 = Instance.new(FrameClass); local bindCorner_1455 = Instance.new("UICorner"); local background1_1456 = Instance.new(FrameClass);
                            local buttonCorner_1457 = Instance.new("UICorner"); local textColor_1458 = Instance.new("TextLabel"); local uiObject_1459 = Instance.new("TextButton");
                            local background2_1460 = Instance.new(FrameClass); local buttonCorner_1461 = Instance.new("UICorner"); local bindkey_1462 = Instance.new("TextButton");
                            uiObject_1454.Name = title_1447 .. "bguvl"; uiObject_1454.Parent = uiObject_1147; uiObject_1454.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            uiObject_1454.BackgroundTransparency = 1; uiObject_1454.Position = UDim2.new(0, 0, 0.208333328, 0); uiObject_1454.Size = UDim2.new(1, 0, 0, 35);
                            bindCorner_1455.CornerRadius = UDim.new(0, 10); bindCorner_1455.Name = "BindCorner"; bindCorner_1455.Parent = uiObject_1454; background1_1456.Name = "Background1";
                            background1_1456.Parent = uiObject_1454; background1_1456.AnchorPoint = Vector2.new(0.5, 0.5); background1_1456.Position = UDim2.new(0.5, 0, 0.5, 0);
                            background1_1456.Size = UDim2.new(1, -10, 1, 0); background1_1456.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(colorSubscribers["Background 1 Color"], function()
                                background1_1456.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return
                            end);
                            background1_1456.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                background1_1456.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            buttonCorner_1457.CornerRadius = UDim.new(0, 10); buttonCorner_1457.Name = "ButtonCorner"; buttonCorner_1457.Parent = background1_1456; textColor_1458.Name = "TextColor";
                            textColor_1458.Parent = background1_1456; textColor_1458.BackgroundColor3 = Color3.fromRGB(230, 230, 230); textColor_1458.BackgroundTransparency = 1;
                            textColor_1458.Position = UDim2.new(0, 10, 0, 0); textColor_1458.Size = UDim2.new(1, -10, 1, 0); textColor_1458.Font = Enum.Font.GothamBlack; textColor_1458.Text = title_1447;
                            textColor_1458.TextSize = 14; textColor_1458.TextXAlignment = Enum.TextXAlignment.Left; textColor_1458.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                textColor_1458.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            background2_1460.Name = "Background2"; background2_1460.Parent = background1_1456; background2_1460.AnchorPoint = Vector2.new(1, 0.5);
                            background2_1460.Position = UDim2.new(1, -5, 0.5, 0); background2_1460.Size = UDim2.new(0, 150, 0, 25); background2_1460.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(colorSubscribers["Background 2 Color"], function()
                                background2_1460.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return
                            end);
                            buttonCorner_1461.CornerRadius = UDim.new(0, 10); buttonCorner_1461.Name = "ButtonCorner"; buttonCorner_1461.Parent = background2_1460; bindkey_1462.Name = "Bindkey";
                            bindkey_1462.Parent = background2_1460; bindkey_1462.BackgroundColor3 = Color3.fromRGB(230, 230, 230); bindkey_1462.BackgroundTransparency = 1;
                            bindkey_1462.Size = UDim2.new(1, 0, 1, 0); bindkey_1462.Font = Enum.Font.GothamBold; bindkey_1462.Text = tostring(defaultValue_1449):gsub("Enum.KeyCode.", "");
                            bindkey_1462.TextSize = 14; bindkey_1462.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                bindkey_1462.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            local uiTable_1463 = { [Enum.UserInputType.MouseButton1] = "Mouse1", [Enum.UserInputType.MouseButton2] = "Mouse2", [Enum.UserInputType.MouseButton3] = "Mouse3" };
                            bindkey_1462.MouseButton1Click:Connect(function()
                                UIContext.ButtonEffect();
                                return
                            end);
                            bindkey_1462.MouseButton1Click:Connect(function()
                                local reference_1464 = nil; bindkey_1462.Text = "...";
                                reference_1464 = game:GetService("UserInputService").InputBegan:Connect(function(parameter_1465)
                                    if uiTable_1463[parameter_1465.UserInputType] then
                                        bindkey_1462.Text = uiTable_1463[parameter_1465.UserInputType];
                                        spawn(function()
                                            wait(0.1); defaultValue_1449 = parameter_1465.UserInputType; dropdownValue_1450 = "UserInputType";
                                            return
                                        end);
                                    elseif parameter_1465.KeyCode ~= Enum.KeyCode.Unknown then
                                        bindkey_1462.Text = tostring(parameter_1465.KeyCode):gsub("Enum.KeyCode.", "");
                                        spawn(function()
                                            wait(0.1); defaultValue_1449 = parameter_1465.KeyCode; dropdownValue_1450 = "KeyCode";
                                            return
                                        end);
                                    end;
                                    reference_1464:Disconnect();
                                    return
                                end);
                                return
                            end);
                            game:GetService("UserInputService").InputBegan:Connect(function(parameter_1466)
                                if defaultValue_1449 == parameter_1466.UserInputType or defaultValue_1449 == parameter_1466.KeyCode then
                                    dropdownValue_1451(defaultValue_1449);
                                end;
                                return
                            end);
                            return
                        end,
                        CreateBox = function(parameter_1467, parameter_1468)
                            local title_1469 = tostring(parameter_1467.Title) or ""; local placeholder_1470 = tostring(parameter_1467.Placeholder) or "";
                            local defaultValue_1471 = parameter_1467.Default or false; local dropdownValue_1472 = parameter_1467.Number or false;
                            local dropdownValue_1473 = parameter_1468 or function()
                                return
                            end;
                            local boxFrame_1474 = Instance.new(FrameClass); local boxCorner_1475 = Instance.new("UICorner"); local background1_1476 = Instance.new(FrameClass);
                            local buttonCorner_1477 = Instance.new("UICorner"); local textColor_1478 = Instance.new("TextLabel"); local background2_1479 = Instance.new(FrameClass);
                            local buttonCorner_1480 = Instance.new("UICorner"); local textColorPlaceholder_1481 = Instance.new("TextBox"); local textNSBoxLineeeee_1482 = Instance.new(FrameClass);
                            local uiObject_1483 = Instance.new("UICorner"); boxFrame_1474.Name = "BoxFrame"; boxFrame_1474.Parent = uiObject_1147; boxFrame_1474.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
                            boxFrame_1474.BackgroundTransparency = 1; boxFrame_1474.Position = UDim2.new(0, 0, 0.208333328, 0); boxFrame_1474.Size = UDim2.new(1, 0, 0, 60);
                            boxCorner_1475.CornerRadius = UDim.new(0, 10); boxCorner_1475.Name = "BoxCorner"; boxCorner_1475.Parent = boxFrame_1474; background1_1476.Name = "Background1";
                            background1_1476.Parent = boxFrame_1474; background1_1476.AnchorPoint = Vector2.new(0.5, 0.5); background1_1476.Position = UDim2.new(0.5, 0, 0.5, 0);
                            background1_1476.Size = UDim2.new(1, -10, 1, 0); background1_1476.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(colorSubscribers["Background 1 Color"], function()
                                background1_1476.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return
                            end);
                            background1_1476.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                background1_1476.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            buttonCorner_1477.CornerRadius = UDim.new(0, 10); buttonCorner_1477.Name = "ButtonCorner"; buttonCorner_1477.Parent = background1_1476; textColor_1478.Name = "TextColor";
                            textColor_1478.Parent = background1_1476; textColor_1478.BackgroundColor3 = Color3.fromRGB(230, 230, 230); textColor_1478.BackgroundTransparency = 1;
                            textColor_1478.Position = UDim2.new(0, 10, 0, 0); textColor_1478.Size = UDim2.new(1, -10, 0.5, 0); textColor_1478.Font = Enum.Font.GothamBlack; textColor_1478.Text = title_1469;
                            textColor_1478.TextSize = 14; textColor_1478.TextXAlignment = Enum.TextXAlignment.Left; textColor_1478.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                textColor_1478.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            background2_1479.Name = "Background2"; background2_1479.Parent = background1_1476; background2_1479.AnchorPoint = Vector2.new(1, 0.5); background2_1479.ClipsDescendants = true;
                            background2_1479.Position = UDim2.new(1, -5, 0, 40); background2_1479.Size = UDim2.new(1, -10, 0, 25); background2_1479.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(colorSubscribers["Background 2 Color"], function()
                                background2_1479.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return
                            end);
                            buttonCorner_1480.CornerRadius = UDim.new(0, 10); buttonCorner_1480.Name = "ButtonCorner"; buttonCorner_1480.Parent = background2_1479;
                            textColorPlaceholder_1481.Name = "TextColorPlaceholder"; textColorPlaceholder_1481.Parent = background2_1479;
                            textColorPlaceholder_1481.BackgroundColor3 = Color3.fromRGB(230, 230, 230); textColorPlaceholder_1481.BackgroundTransparency = 1;
                            textColorPlaceholder_1481.Position = UDim2.new(0, 5, 0, 0); textColorPlaceholder_1481.Size = UDim2.new(1, -5, 1, 0); textColorPlaceholder_1481.Font = Enum.Font.GothamBold;
                            textColorPlaceholder_1481.PlaceholderText = placeholder_1470; textColorPlaceholder_1481.Text = ""; textColorPlaceholder_1481.TextSize = 14;
                            textColorPlaceholder_1481.TextXAlignment = Enum.TextXAlignment.Left; textColorPlaceholder_1481.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                            textColorPlaceholder_1481.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers["Placeholder Text Color"], function()
                                textColorPlaceholder_1481.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"];
                                return
                            end);
                            table.insert(colorSubscribers[TextColorKey], function()
                                textColorPlaceholder_1481.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            textNSBoxLineeeee_1482.Name = "TextNSBoxLineeeee"; textNSBoxLineeeee_1482.Parent = background2_1479; textNSBoxLineeeee_1482.BackgroundTransparency = 1;
                            textNSBoxLineeeee_1482.Position = UDim2.new(0, 0, 1, -2); textNSBoxLineeeee_1482.Size = UDim2.new(1, 0, 0, 6);
                            textNSBoxLineeeee_1482.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"];
                            table.insert(colorSubscribers["Box Highlight Color"], function()
                                textNSBoxLineeeee_1482.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"];
                                return
                            end);
                            uiObject_1483.CornerRadius = UDim.new(1, 0); uiObject_1483.Parent = textNSBoxLineeeee_1482;
                            textColorPlaceholder_1481.Focused:Connect(function()
                                TweenService:Create(textNSBoxLineeeee_1482, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundTransparency = 0 }):Play();
                                return
                            end);
                            textColorPlaceholder_1481.Focused:Connect(function()
                                UIContext.ButtonEffect();
                                return
                            end);
                            if dropdownValue_1472 then
                                textColorPlaceholder_1481:GetPropertyChangedSignal("Text"):Connect(function()
                                    if not tonumber(textColorPlaceholder_1481.Text) then
                                        textColorPlaceholder_1481.PlaceholderText = placeholder_1470; textColorPlaceholder_1481.Text = "";
                                    end;
                                    return
                                end);
                            end;
                            textColorPlaceholder_1481.FocusLost:Connect(function()
                                TweenService:Create(textNSBoxLineeeee_1482, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundTransparency = 1 }):Play();
                                if textColorPlaceholder_1481.Text ~= "" then
                                    dropdownValue_1473(textColorPlaceholder_1481.Text);
                                end;
                                return
                            end);
                            local uiTable_1484 = {};
                            if defaultValue_1471 then
                                textColorPlaceholder_1481.Text = defaultValue_1471; dropdownValue_1473(defaultValue_1471);
                            end;
                            uiTable_1484.SetValue = function(parameter_1485)
                                textColorPlaceholder_1481.Text = parameter_1485; dropdownValue_1473(parameter_1485);
                                return
                            end;
                            local dropdownValue_1486 = makeControlId(pageValue_1101, pageValue_1145, title_1469); ControlRegistry.Boxes[dropdownValue_1486] = {
                                Get = function()
                                    return textColorPlaceholder_1481.Text;
                                end,
                                Set = function(parameter_1487)
                                    textColorPlaceholder_1481.Text = tostring(parameter_1487 or "");
                                    if textColorPlaceholder_1481.Text ~= "" then
                                        dropdownValue_1473(textColorPlaceholder_1481.Text);
                                    end;
                                    return
                                end
                            };
                            return uiTable_1484;
                        end,
                        CreateSlider = function(sliderConfig, onValueChanged)
                            local title_1490 = tostring(sliderConfig.Title) or ""; local minValue_1491 = tonumber(sliderConfig.Min) or 0; local maxValue_1492 = tonumber(sliderConfig.Max) or 100;
                            local precision_1493 = sliderConfig.Precise or false; local defaultValue_1494 = tonumber(sliderConfig.Default) or 0; local number_1495 = 400;
                            local userInputService_1496 = game:GetService("UserInputService"); local tweenService_1497 = TweenService or game:GetService("TweenService");
                            local sliderValue_1498 = game.Players.LocalPlayer:GetMouse();
                            local sliderValue_1499 = typeof(onValueChanged) == "function" and onValueChanged or function()
                                return
                            end;
                            local callback_1501 = function(parameter_1500)
                                task.spawn(sliderValue_1499, parameter_1500);
                                return
                            end;
                            local uiObject_1502 = Instance.new(FrameClass); local sliderCorner_1503 = Instance.new("UICorner"); local background1_1504 = Instance.new(FrameClass);
                            local sliderBGCorner_1505 = Instance.new("UICorner"); local textColor_1506 = Instance.new("TextLabel"); local sliderBar_1507 = Instance.new(FrameClass);
                            local sliderButton_1508 = Instance.new("TextButton"); local sliderBarCorner_1509 = Instance.new("UICorner"); local bar_1510 = Instance.new(FrameClass);
                            local barCorner_1511 = Instance.new("UICorner"); local background2_1512 = Instance.new(FrameClass); local uiObject_1513 = Instance.new("UICorner");
                            local uiObject_1514 = Instance.new("TextBox"); uiObject_1502.Name = title_1490 .. "buda"; uiObject_1502.Parent = uiObject_1147;
                            uiObject_1502.BackgroundColor3 = Color3.fromRGB(60, 60, 60); uiObject_1502.BackgroundTransparency = 1; uiObject_1502.Position = UDim2.new(0, 0, 0.208333328, 0);
                            uiObject_1502.Size = UDim2.new(1, 0, 0, 50); sliderCorner_1503.CornerRadius = UDim.new(0, 10); sliderCorner_1503.Name = "SliderCorner"; sliderCorner_1503.Parent = uiObject_1502;
                            background1_1504.Name = "Background1"; background1_1504.Parent = uiObject_1502; background1_1504.AnchorPoint = Vector2.new(0.5, 0.5);
                            background1_1504.Position = UDim2.new(0.5, 0, 0.5, 0); background1_1504.Size = UDim2.new(1, -10, 1, 0); background1_1504.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(colorSubscribers["Background 1 Color"], function()
                                background1_1504.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return
                            end);
                            background1_1504.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                background1_1504.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            sliderBGCorner_1505.CornerRadius = UDim.new(0, 10); sliderBGCorner_1505.Name = "SliderBGCorner"; sliderBGCorner_1505.Parent = background1_1504; textColor_1506.Name = "TextColor";
                            textColor_1506.Parent = background1_1504; textColor_1506.BackgroundColor3 = Color3.fromRGB(230, 230, 230); textColor_1506.BackgroundTransparency = 1;
                            textColor_1506.Position = UDim2.new(0, 10, 0, 0); textColor_1506.Size = UDim2.new(1, -10, 0, 25); textColor_1506.Font = Enum.Font.GothamBlack; textColor_1506.Text = title_1490;
                            textColor_1506.TextSize = 14; textColor_1506.TextXAlignment = Enum.TextXAlignment.Left; textColor_1506.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                textColor_1506.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            sliderBar_1507.Name = "SliderBar"; sliderBar_1507.Parent = uiObject_1502; sliderBar_1507.AnchorPoint = Vector2.new(0.5, 0.5); sliderBar_1507.Position = UDim2.new(0.5, 0, 0.5, 14);
                            sliderBar_1507.Size = UDim2.new(0, 400, 0, 6); sliderBar_1507.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(colorSubscribers["Background 2 Color"], function()
                                sliderBar_1507.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return
                            end);
                            sliderButton_1508.Name = "SliderButton"; sliderButton_1508.Parent = sliderBar_1507; sliderButton_1508.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            sliderButton_1508.BackgroundTransparency = 1; sliderButton_1508.Size = UDim2.new(1, 0, 1, 0); sliderButton_1508.Font = Enum.Font.GothamBold; sliderButton_1508.Text = "";
                            sliderButton_1508.TextColor3 = Color3.fromRGB(230, 230, 230); sliderButton_1508.TextSize = 14; sliderBarCorner_1509.CornerRadius = UDim.new(1, 0);
                            sliderBarCorner_1509.Name = "SliderBarCorner"; sliderBarCorner_1509.Parent = sliderBar_1507; bar_1510.Name = "Bar"; bar_1510.BorderSizePixel = 0; bar_1510.Parent = sliderBar_1507;
                            bar_1510.Size = UDim2.new(0, 0, 1, 0); bar_1510.BackgroundColor3 = getgenv().UIColor["Slider Line Color"];
                            table.insert(colorSubscribers["Slider Line Color"], function()
                                bar_1510.BackgroundColor3 = getgenv().UIColor["Slider Line Color"];
                                return
                            end);
                            barCorner_1511.CornerRadius = UDim.new(1, 0); barCorner_1511.Name = "BarCorner"; barCorner_1511.Parent = bar_1510; background2_1512.Name = "Background2";
                            background2_1512.Parent = uiObject_1502; background2_1512.AnchorPoint = Vector2.new(1, 0); background2_1512.Position = UDim2.new(1, -10, 0, 5);
                            background2_1512.Size = UDim2.new(0, 150, 0, 25); background2_1512.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(colorSubscribers["Background 2 Color"], function()
                                background2_1512.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return
                            end);
                            uiObject_1513.CornerRadius = UDim.new(0, 10); uiObject_1513.Name = "Sliderbox"; uiObject_1513.Parent = background2_1512; uiObject_1514.Name = "TextColor";
                            uiObject_1514.Parent = background2_1512; uiObject_1514.BackgroundColor3 = Color3.fromRGB(230, 230, 230); uiObject_1514.BackgroundTransparency = 1;
                            uiObject_1514.Size = UDim2.new(1, 0, 1, 0); uiObject_1514.Font = Enum.Font.GothamBold; uiObject_1514.Text = ""; uiObject_1514.TextSize = 14;
                            uiObject_1514.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                uiObject_1514.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            sliderButton_1508.MouseEnter:Connect(function()
                                tweenService_1497:Create(bar_1510, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"] }):Play();
                                return
                            end);
                            sliderButton_1508.MouseLeave:Connect(function()
                                tweenService_1497:Create(bar_1510, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), { BackgroundColor3 = getgenv().UIColor["Slider Line Color"] }):Play();
                                return
                            end);
                            if defaultValue_1494 then
                                if defaultValue_1494 <= minValue_1491 then
                                    defaultValue_1494 = minValue_1491;
                                elseif maxValue_1492 <= defaultValue_1494 then
                                    defaultValue_1494 = maxValue_1492;
                                end;
                                bar_1510.Size = UDim2.new(1 - (maxValue_1492 - defaultValue_1494) / (maxValue_1492 - minValue_1491), 0, 0, 6); uiObject_1514.Text = defaultValue_1494;
                                callback_1501(defaultValue_1494);
                            end;
                            local reference_1515 = nil; local reference_1516 = nil;
                            sliderButton_1508.MouseButton1Down:Connect(function()
                                local sliderValue_1517 = precision_1493 and tonumber(string.format("%.1f", (maxValue_1492 - minValue_1491) / number_1495 * bar_1510.AbsoluteSize.X + minValue_1491)) or math.floor((maxValue_1492 - minValue_1491) / number_1495 * bar_1510.AbsoluteSize.X + minValue_1491);
                                uiObject_1514.Text = sliderValue_1517; callback_1501(sliderValue_1517);
                                bar_1510.Size = UDim2.new(0, math.clamp(sliderValue_1498.X - bar_1510.AbsolutePosition.X, 0, number_1495), 0, 6);
                                reference_1515 = sliderValue_1498.Move:Connect(function()
                                    local sliderValue_1518 = precision_1493 and tonumber(string.format("%.1f", (maxValue_1492 - minValue_1491) / number_1495 * bar_1510.AbsoluteSize.X + minValue_1491)) or math.floor((maxValue_1492 - minValue_1491) / number_1495 * bar_1510.AbsoluteSize.X + minValue_1491);
                                    uiObject_1514.Text = sliderValue_1518; callback_1501(sliderValue_1518);
                                    bar_1510.Size = UDim2.new(0, math.clamp(sliderValue_1498.X - bar_1510.AbsolutePosition.X, 0, number_1495), 0, 6);
                                    return
                                end);
                                reference_1516 = userInputService_1496.InputEnded:Connect(function(parameter_1519)
                                    if parameter_1519.UserInputType == Enum.UserInputType.MouseButton1 then
                                        local sliderValue_1520 = precision_1493 and tonumber(string.format("%.1f", (maxValue_1492 - minValue_1491) / number_1495 * bar_1510.AbsoluteSize.X + minValue_1491)) or math.floor((maxValue_1492 - minValue_1491) / number_1495 * bar_1510.AbsoluteSize.X + minValue_1491);
                                        uiObject_1514.Text = sliderValue_1520; callback_1501(sliderValue_1520);
                                        bar_1510.Size = UDim2.new(0, math.clamp(sliderValue_1498.X - bar_1510.AbsolutePosition.X, 0, number_1495), 0, 6);
                                        if reference_1515 then
                                            reference_1515:Disconnect();
                                        end;
                                        if reference_1516 then
                                            reference_1516:Disconnect();
                                        end;
                                    end;
                                    return
                                end);
                                return
                            end);
                            local callback_1523 = function(parameter_1521)
                                local sliderValue_1522 = tonumber(parameter_1521);
                                if not sliderValue_1522 then
                                    return
                                end;
                                if sliderValue_1522 <= minValue_1491 then
                                    bar_1510.Size = UDim2.new(0, 0 * number_1495, 0, 6); uiObject_1514.Text = minValue_1491; callback_1501(minValue_1491);
                                elseif maxValue_1492 <= sliderValue_1522 then
                                    bar_1510.Size = UDim2.new(0, maxValue_1492 / maxValue_1492 * number_1495, 0, 6); uiObject_1514.Text = maxValue_1492; callback_1501(maxValue_1492);
                                else
                                    bar_1510.Size = UDim2.new(1 - (maxValue_1492 - sliderValue_1522) / (maxValue_1492 - minValue_1491), 0, 0, 6); uiObject_1514.Text = sliderValue_1522;
                                    callback_1501(sliderValue_1522);
                                end;
                                return
                            end;
                            uiObject_1514.FocusLost:Connect(function()
                                callback_1523(uiObject_1514.Text);
                                return
                            end);
                            local uiTable_1525 = {
                                SetValue = function(parameter_1524)
                                    callback_1523(parameter_1524);
                                    return
                                end
                            };
                            local sliderValue_1526 = makeControlId(pageValue_1101, pageValue_1145, title_1490); ControlRegistry.Sliders[sliderValue_1526] = {
                                Get = function()
                                    return tonumber(uiObject_1514.Text) or minValue_1491;
                                end,
                                Set = function(parameter_1527)
                                    callback_1523(tonumber(parameter_1527) or minValue_1491);
                                    return
                                end
                            };
                            return uiTable_1525;
                        end,
                        CreateKeybind = function(keybindConfig, onKeyChanged)
                            local title_1530 = tostring(keybindConfig.Title) or "Keybind"; local selectedKey = keybindConfig.Default or Enum.KeyCode.E;
                            local keybindValue_1532 = tostring(selectedKey):match("UserInputType") and "UserInputType" or "KeyCode";
                            local keybindValue_1533 = onKeyChanged or function()
                                return
                            end;
                            local uiObject_1534 = Instance.new(FrameClass); local keybindCorner_1535 = Instance.new("UICorner"); local background1_1536 = Instance.new(FrameClass);
                            local keybindBGCorner_1537 = Instance.new("UICorner"); local textColor_1538 = Instance.new("TextLabel"); local background2_1539 = Instance.new(FrameClass);
                            local keybindButtonCorner_1540 = Instance.new("UICorner"); local keybindButton_1541 = Instance.new("TextButton"); uiObject_1534.Name = title_1530 .. "KeybindFrame";
                            uiObject_1534.Parent = uiObject_1147; uiObject_1534.BackgroundColor3 = Color3.fromRGB(60, 60, 60); uiObject_1534.BackgroundTransparency = 1;
                            uiObject_1534.Position = UDim2.new(0, 0, 0.208333328, 0); uiObject_1534.Size = UDim2.new(1, 0, 0, 35); keybindCorner_1535.CornerRadius = UDim.new(0, 10);
                            keybindCorner_1535.Name = "KeybindCorner"; keybindCorner_1535.Parent = uiObject_1534; background1_1536.Name = "Background1"; background1_1536.Parent = uiObject_1534;
                            background1_1536.AnchorPoint = Vector2.new(0.5, 0.5); background1_1536.Position = UDim2.new(0.5, 0, 0.5, 0); background1_1536.Size = UDim2.new(1, -10, 1, 0);
                            background1_1536.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                            table.insert(colorSubscribers["Background 1 Color"], function()
                                background1_1536.BackgroundColor3 = getgenv().UIColor["Background 1 Color"];
                                return
                            end);
                            background1_1536.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                            table.insert(colorSubscribers["Background 1 Transparency"], function()
                                background1_1536.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"];
                                return
                            end);
                            keybindBGCorner_1537.CornerRadius = UDim.new(0, 10); keybindBGCorner_1537.Name = "KeybindBGCorner"; keybindBGCorner_1537.Parent = background1_1536;
                            textColor_1538.Name = "TextColor"; textColor_1538.Parent = background1_1536; textColor_1538.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            textColor_1538.BackgroundTransparency = 1; textColor_1538.Position = UDim2.new(0, 10, 0, 0); textColor_1538.Size = UDim2.new(1, -10, 1, 0);
                            textColor_1538.Font = Enum.Font.GothamBlack; textColor_1538.Text = title_1530; textColor_1538.TextSize = 14; textColor_1538.TextXAlignment = Enum.TextXAlignment.Left;
                            textColor_1538.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                textColor_1538.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            background2_1539.Name = "Background2"; background2_1539.Parent = background1_1536; background2_1539.AnchorPoint = Vector2.new(1, 0.5);
                            background2_1539.Position = UDim2.new(1, -5, 0.5, 0); background2_1539.Size = UDim2.new(0, 150, 0, 25); background2_1539.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                            table.insert(colorSubscribers["Background 2 Color"], function()
                                background2_1539.BackgroundColor3 = getgenv().UIColor["Background 2 Color"];
                                return
                            end);
                            keybindButtonCorner_1540.CornerRadius = UDim.new(0, 10); keybindButtonCorner_1540.Name = "KeybindButtonCorner"; keybindButtonCorner_1540.Parent = background2_1539;
                            keybindButton_1541.Name = "KeybindButton"; keybindButton_1541.Parent = background2_1539; keybindButton_1541.BackgroundColor3 = Color3.fromRGB(230, 230, 230);
                            keybindButton_1541.BackgroundTransparency = 1; keybindButton_1541.Size = UDim2.new(1, 0, 1, 0); keybindButton_1541.Font = Enum.Font.GothamBold;
                            keybindButton_1541.Text = tostring(selectedKey):gsub("Enum.KeyCode.", ""):gsub("Enum.UserInputType.", ""); keybindButton_1541.TextSize = 14;
                            keybindButton_1541.TextColor3 = getgenv().UIColor[TextColorKey];
                            table.insert(colorSubscribers[TextColorKey], function()
                                keybindButton_1541.TextColor3 = getgenv().UIColor[TextColorKey];
                                return
                            end);
                            local uiTable_1542 = { [Enum.UserInputType.MouseButton1] = "Mouse1", [Enum.UserInputType.MouseButton2] = "Mouse2", [Enum.UserInputType.MouseButton3] = "Mouse3" };
                            keybindButton_1541.MouseButton1Click:Connect(function()
                                UIContext.ButtonEffect();
                                return
                            end);
                            keybindButton_1541.MouseButton1Click:Connect(function()
                                local reference_1543 = nil; keybindButton_1541.Text = "...";
                                reference_1543 = game:GetService("UserInputService").InputBegan:Connect(function(parameter_1544)
                                    if uiTable_1542[parameter_1544.UserInputType] then
                                        keybindButton_1541.Text = uiTable_1542[parameter_1544.UserInputType];
                                        spawn(function()
                                            wait(0.1); selectedKey = parameter_1544.UserInputType; keybindValue_1532 = "UserInputType";
                                            return
                                        end);
                                    elseif parameter_1544.KeyCode ~= Enum.KeyCode.Unknown then
                                        keybindButton_1541.Text = tostring(parameter_1544.KeyCode):gsub("Enum.KeyCode.", "");
                                        spawn(function()
                                            wait(0.1); selectedKey = parameter_1544.KeyCode; keybindValue_1532 = "KeyCode";
                                            return
                                        end);
                                    end;
                                    reference_1543:Disconnect();
                                    return
                                end);
                                return
                            end);
                            game:GetService("UserInputService").InputBegan:Connect(function(parameter_1545)
                                if selectedKey == parameter_1545.UserInputType or selectedKey == parameter_1545.KeyCode then
                                    keybindValue_1533(selectedKey);
                                end;
                                return
                            end);
                            local uiTable_1547 = {
                                SetKey = function(parameter_1546)
                                    selectedKey = parameter_1546; keybindButton_1541.Text = tostring(parameter_1546):gsub("Enum.KeyCode.", ""):gsub("Enum.UserInputType.", "");
                                    return
                                end,
                                GetKey = function()
                                    return selectedKey;
                                end
                            };
                            local keybindValue_1548 = makeControlId(pageValue_1101, pageValue_1145, title_1530); ControlRegistry.Keybinds[keybindValue_1548] = {
                                Get = function()
                                    return tostring(selectedKey);
                                end,
                                Set = function(parameter_1549)
                                    if not parameter_1549 then
                                        return
                                    end;
                                    local keybindValue_1550 = tostring(parameter_1549);
                                    for index_1551, item_1552 in ipairs(Enum.KeyCode:GetEnumItems()) do
                                        if item_1552.Name == keybindValue_1550 or "Enum.KeyCode." .. item_1552.Name == keybindValue_1550 then
                                            selectedKey = item_1552; keybindButton_1541.Text = item_1552.Name;
                                            return
                                        end;
                                    end;
                                    for index_1553, item_1554 in ipairs(Enum.UserInputType:GetEnumItems()) do
                                        if item_1554.Name == keybindValue_1550 or "Enum.UserInputType." .. item_1554.Name == keybindValue_1550 then
                                            selectedKey = item_1554; keybindButton_1541.Text = item_1554.Name;
                                            return
                                        end;
                                    end;
                                    return
                                end
                            };
                            return uiTable_1547;
                        end
                    };
                end
            };
        end;
        for _, SH_d in ipairs(mainContainer_860:GetDescendants()) do
            if SH_d:IsA("GuiObject") and (SH_d.Name == "Background1" or SH_d.Name == "Background2" or SH_d.Name == "Background3") and not SH_d:FindFirstChildOfClass("UICorner") then
                local SH_c = Instance.new("UICorner"); SH_c.CornerRadius = UDim.new(0, 10); SH_c.Parent = SH_d;
            end;
        end;
        local function SH_buildThemeSection(SH_page)
            local SH_bgSec = SH_page.CreateSection("UI Theme"); local SH_themeNames = {};
            for _, SH_t in ipairs(getgenv().SH_UI_Themes or {}) do
                SH_themeNames[#SH_themeNames + 1] = SH_t.Name;
            end;
            SH_bgSec.CreateDropdown({ Title = "Theme", List = SH_themeNames, Default = SH_themeNames[1], Search = false, Selected = false }, function(SH_pick)
                Library.SetThemePreset(tostring(SH_pick));
                return
            end);
            local SH_keySec = SH_page.CreateSection("UI Interface");
            SH_keySec.CreateKeybind({ Title = "Toggle UI Key", Default = Enum.KeyCode.RightShift }, function(SH_kc)
                if typeof(SH_kc) == "EnumItem" and SH_kc.EnumType == Enum.KeyCode then
                    getgenv().SH_UI_ToggleKey = SH_kc;
                end;
                return
            end);
            return
        end;
        Library.AddThemeSection = SH_buildThemeSection; local SH_settingsPageObj = nil;
        local function SH_getSettingsPage()
            if SH_settingsPageObj then
                return SH_settingsPageObj;
            end;
            getgenv().SH_THEME_SECTION_ADDED = true; SH_settingsPageObj = PageFactory.CreatePage({ Page_Name = "Settings", Page_Title = "Settings" }); SH_buildThemeSection(SH_settingsPageObj);
            return SH_settingsPageObj;
        end;
        Library.GetSettingsPage = SH_getSettingsPage;
        task.delay(0.25, function()
            if getgenv().SH_THEME_SECTION_ADDED then
                return
            end;
            SH_getSettingsPage();
            return
        end);
        SH_forceCursor(true); local SH_firstTheme = getgenv().SH_UI_Themes and getgenv().SH_UI_Themes[1];
        if SH_firstTheme then
            pcall(function() Library.SetThemePreset(SH_firstTheme.Name) end);
        end;
        return PageFactory;
    end;
    Library.SetBackground = function(SH_url)
        SH_url = tostring(SH_url or ""); local SH_base = getgenv().SH_UI_BaseURL;
        if SH_base and SH_base ~= "" and SH_url ~= "" and not string.find(SH_url, "^https?://") and not string.find(SH_url, "rbxassetid://") and not isfile(SH_url) then
            if string.sub(SH_base, -1) ~= "/" then
                SH_base = SH_base .. "/";
            end;
            SH_url = SH_base .. SH_url;
        end;
        getgenv().UIColor["Background Image"] = SH_url; local SH_container;
        if Library.Main then
            for _, SH_d in ipairs(Library.Main:GetChildren()) do
                if SH_d.Name == "MainContainer" then
                    SH_container = SH_d; break;
                end;
            end;
        end;
        if SH_container and SH_container:IsA("ImageLabel") then
            local SH_ok, SH_img = pcall(function()
                return UIContext.GetIMG(SH_url);
            end);
            SH_container.Image = (SH_ok and SH_img) or ""; local SH_blur = SH_container:FindFirstChild("SH_BlurLayer"); local SH_blurPath = SH_GetBlurPath(SH_url);
            if SH_blur and SH_blurPath then
                local SH_blurOk, SH_blurImg = pcall(function()
                    return UIContext.GetIMG(SH_blurPath);
                end);
                if SH_blurOk and SH_blurImg and SH_blurImg ~= "" then
                    SH_blur.Image = SH_blurImg; SH_blur.ImageTransparency = (getgenv().UIColor["Background Blur Transparency"] or 0.7);
                else
                    SH_blur.Image = ""; SH_blur.ImageTransparency = 1;
                end;
            end;
            return
        end;
        if UIContext.ReloadMain then
            UIContext.ReloadMain(SH_url);
        end;
        return
    end;
    Library.SetBackgroundPreset = function(SH_index)
        local SH_list = getgenv().SH_UI_Backgrounds or {}; local SH_item = SH_list[SH_index];
        if SH_item then
            Library.SetBackground(SH_item.Url or "");
        end;
        return
    end;
    Library.SetThemePreset = function(SH_name)
        local SH_theme;
        for _, SH_t in ipairs(getgenv().SH_UI_Themes or {}) do
            if SH_t.Name == SH_name then
                SH_theme = SH_t; break;
            end;
        end;
        if not SH_theme then
            return
        end;
        Library.SetBackground(SH_theme.Url or ""); local SH_c = getgenv().UIColor; SH_c["Title Text Color"] = SH_theme.Accent; SH_c["Border Color"] = SH_theme.Accent;
        SH_c["Button Color"] = SH_theme.Accent; SH_c["Label Color"] = SH_theme.Accent; SH_c["Page Selected Color"] = SH_theme.Accent; SH_c["Section Text Color"] = SH_theme.Accent;
        SH_c["Section Underline Color"] = SH_theme.Accent; SH_c["Toggle Border Color"] = SH_theme.Accent; SH_c["Dropdown Selected Color"] = SH_theme.Accent;
        SH_c["Textbox Highlight Color"] = SH_theme.Accent; SH_c["Box Highlight Color"] = SH_theme.Accent; SH_c["Slider Highlight Color"] = SH_theme.Accent2;
        SH_c["Toggle Checked Color"] = SH_theme.Text; SH_c["GUI Text Color"] = SH_theme.Text; SH_c["Toggle Desc Color"] = SH_theme.Desc;
        SH_c["Placeholder Text Color"] = SH_theme.Placeholder; SH_c["Search Icon Color"] = SH_theme.Text; SH_c["Dropdown Icon Color"] = SH_theme.Text;
        SH_c["Background Main Color"] = SH_theme.BgMain; SH_c["Background 1 Color"] = SH_theme.Bg1; SH_c["Background 2 Color"] = SH_theme.Bg2; SH_c["Background 3 Color"] = SH_theme.Bg3;
        SH_c["Slider Line Color"] = SH_theme.Line; SH_c["Click Effect Color"] = SH_theme.Click; SH_c["Background 1 Transparency"] = (SH_theme.Url ~= "" and 0.3 or 0);
        SH_c["Background Blur Transparency"] = 0.7; getgenv().SH_UI_CurrentTheme = SH_theme.Name;
        return
    end;
    return Library;
end;
return GetUi()
