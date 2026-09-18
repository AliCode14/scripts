local Library = {}

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")

local ConfigFolder = "Feral"
local ConfigsFolder = "Feral/Configs"
local Controls = { Toggles = {}, Sliders = {}, Dropdowns = {}, Keybinds = {}, Boxes = {} }

local function ensureFolder()
    if not isfolder("Feral") then makefolder("Feral") end
    if not isfolder(ConfigsFolder) then makefolder(ConfigsFolder) end
end

local function configKey(pageName, sectionName, controlTitle)
    return tostring(pageName) .. "||" .. tostring(sectionName) .. "||" .. tostring(controlTitle)
end

local DefaultColors = {
    ["Border Color"] = Color3.fromRGB(131, 181, 255),
    ["Click Effect Color"] = Color3.fromRGB(230, 230, 230),
    ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Logo Image"] = "rbxassetid://6248942117",
    ["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
    ["Search Icon Highlight Color"] = Color3.fromRGB(131, 181, 255),
    ["GUI Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
    ["Title Text Color"] = Color3.fromRGB(131, 181, 255),
    ["Background 1 Color"] = Color3.fromRGB(43, 43, 43),
    ["Background 1 Transparency"] = 0,
    ["Background 2 Color"] = Color3.fromRGB(90, 90, 90),
    ["Background 3 Color"] = Color3.fromRGB(53, 53, 53),
    ["Background Image"] = "",
    ["Page Selected Color"] = Color3.fromRGB(131, 181, 255),
    ["Section Text Color"] = Color3.fromRGB(131, 181, 255),
    ["Section Underline Color"] = Color3.fromRGB(131, 181, 255),
    ["Toggle Border Color"] = Color3.fromRGB(131, 181, 255),
    ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230),
    ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
    ["Button Color"] = Color3.fromRGB(131, 181, 255),
    ["Label Color"] = Color3.fromRGB(101, 152, 220),
    ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Dropdown Selected Color"] = Color3.fromRGB(131, 181, 255),
    ["Textbox Highlight Color"] = Color3.fromRGB(131, 181, 255),
    ["Box Highlight Color"] = Color3.fromRGB(131, 181, 255),
    ["Slider Line Color"] = Color3.fromRGB(75, 75, 75),
    ["Slider Highlight Color"] = Color3.fromRGB(59, 82, 115),
    ["Tween Animation 1 Speed"] = 0.25,
    ["Tween Animation 2 Speed"] = 0.5,
    ["Tween Animation 3 Speed"] = 0.1,
}

local UIColor = setmetatable({}, {
    __index = DefaultColors,
    __newindex = function(_, key, value) rawset(DefaultColors, key, value) end,
})
getgenv().UIColor = UIColor

local ConfigAPI = {}
function ConfigAPI.List()
    ensureFolder()
    local files = listfiles(ConfigsFolder)
    local names = {}
    for _, path in ipairs(files) do
        local name = path:match(".+[/\\](.+)%.json$")
        if name then table.insert(names, name) end
    end
    return names
end
function ConfigAPI.Save(name)
    if not name or name == "" then return false, "No config name" end
    ensureFolder()
    local data = { Toggles = {}, Sliders = {}, Dropdowns = {}, Keybinds = {}, Boxes = {}, UITheme = DefaultColors }
    for id, ctrl in pairs(Controls.Toggles) do local ok, v = pcall(ctrl.Get); if ok then data.Toggles[id] = v end end
    for id, ctrl in pairs(Controls.Sliders) do local ok, v = pcall(ctrl.Get); if ok then data.Sliders[id] = v end end
    for id, ctrl in pairs(Controls.Dropdowns) do local ok, v = pcall(ctrl.Get); if ok then data.Dropdowns[id] = v end end
    for id, ctrl in pairs(Controls.Keybinds) do local ok, v = pcall(ctrl.Get); if ok then data.Keybinds[id] = v end end
    for id, ctrl in pairs(Controls.Boxes) do local ok, v = pcall(ctrl.Get); if ok then data.Boxes[id] = v end end
    local ok, err = pcall(function()
        writefile(ConfigsFolder .. "/" .. name .. ".json", HttpService:JSONEncode(data))
    end)
    return ok, err
end
function ConfigAPI.Load(name)
    if not name or name == "" then return false, "No config name" end
    local path = ConfigsFolder .. "/" .. name .. ".json"
    if not isfile(path) then return false, "Config not found" end
    local ok, data = pcall(function() return HttpService:JSONDecode(readfile(path)) end)
    if not ok or type(data) ~= "table" then return false, "Invalid config" end
    local function apply(store, dataTable)
        if not dataTable then return end
        for id, value in pairs(dataTable) do
            local ctrl = store[id]
            if ctrl and ctrl.Set then pcall(ctrl.Set, value) end
        end
    end
    apply(Controls.Toggles, data.Toggles)
    apply(Controls.Sliders, data.Sliders)
    apply(Controls.Dropdowns, data.Dropdowns)
    apply(Controls.Keybinds, data.Keybinds)
    apply(Controls.Boxes, data.Boxes)
    return true
end
function ConfigAPI.Delete(name)
    if not name or name == "" then return false, "No config name" end
    local path = ConfigsFolder .. "/" .. name .. ".json"
    if not isfile(path) then return false, "Config not found" end
    local ok, err = pcall(delfile, path)
    return ok, err
end
getgenv().FeralConfig = ConfigAPI

-- Notifications
local NotiGui = Instance.new("ScreenGui")
NotiGui.Name = "Feral Notification"
NotiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
NotiGui.Parent = CoreGui

local NotiContainer = Instance.new("Frame")
NotiContainer.Name = "NotiContainer"
NotiContainer.AnchorPoint = Vector2.new(1, 1)
NotiContainer.Position = UDim2.new(1, -5, 1, -5)
NotiContainer.Size = UDim2.new(0, 350, 1, -10)
NotiContainer.BackgroundTransparency = 1
NotiContainer.Parent = NotiGui

local NotiLayout = Instance.new("UIListLayout")
NotiLayout.SortOrder = Enum.SortOrder.LayoutOrder
NotiLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
NotiLayout.Padding = UDim.new(0, 5)
NotiLayout.Parent = NotiContainer

function Library:CreateNoti(opts)
    opts = opts or {}
    local title = opts.Title or ""
    local desc = opts.Desc
    local showTime = opts.ShowTime or 10

    local frame = Instance.new("Frame")
    frame.Name = "NotiFrame"
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1, 0, 0, 0)
    frame.AutomaticSize = Enum.AutomaticSize.Y
    frame.Parent = NotiContainer

    local container = Instance.new("Frame")
    container.Name = "NotiContainer"
    container.Position = UDim2.new(1, 0, 0, 0)
    container.Size = UDim2.new(1, 0, 1, 6)
    container.AutomaticSize = Enum.AutomaticSize.Y
    container.BackgroundColor3 = UIColor["Background 3 Color"]
    container.Parent = frame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 4)
    corner.Parent = container

    local top = Instance.new("Frame")
    top.Name = "Topnoti"
    top.BackgroundTransparency = 1
    top.Position = UDim2.new(0, 0, 0, 5)
    top.Size = UDim2.new(1, 0, 0, 25)
    top.Parent = container

    local icon = Instance.new("ImageLabel")
    icon.Name = "NotiIcon"
    icon.BackgroundTransparency = 1
    icon.Position = UDim2.new(0, 10, 0, 0)
    icon.Size = UDim2.new(0, 25, 0, 25)
    icon.Image = UIColor["Logo Image"]
    icon.Parent = top

    local iconCorner = Instance.new("UICorner")
    iconCorner.CornerRadius = UDim.new(1, 0)
    iconCorner.Parent = icon

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "NotiTitle"
    titleLabel.BackgroundTransparency = 1
    titleLabel.Position = UDim2.new(0, 40, 0, 0)
    titleLabel.Size = UDim2.new(1, -40, 1, 0)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextSize = 14
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.RichText = true
    titleLabel.TextColor3 = UIColor["GUI Text Color"]
    titleLabel.Text = "Feral " .. title
    titleLabel.Parent = top

    local close = Instance.new("TextButton")
    close.Name = "NotiClose"
    close.BackgroundTransparency = 1
    close.AnchorPoint = Vector2.new(1, 0.5)
    close.Position = UDim2.new(1, -4, 0.5, 0)
    close.Size = UDim2.new(0, 22, 0, 22)
    close.Text = "X"
    close.Font = Enum.Font.GothamBold
    close.TextColor3 = UIColor["GUI Text Color"]
    close.Parent = top

    if desc then
        local descLabel = Instance.new("TextLabel")
        descLabel.Name = "NotiDesc"
        descLabel.BackgroundTransparency = 1
        descLabel.Position = UDim2.new(0, 10, 0, 35)
        descLabel.Size = UDim2.new(1, -15, 0, 0)
        descLabel.Font = Enum.Font.GothamBold
        descLabel.Text = desc
        descLabel.TextSize = 14
        descLabel.TextXAlignment = Enum.TextXAlignment.Left
        descLabel.TextColor3 = UIColor["GUI Text Color"]
        descLabel.AutomaticSize = Enum.AutomaticSize.Y
        descLabel.TextWrapped = true
        descLabel.Parent = container
    end

    local function dismiss()
        TweenService:Create(container, TweenInfo.new(UIColor["Tween Animation 1 Speed"]), {
            Position = UDim2.new(1, 0, 0, 0),
        }):Play()
        task.wait(0.25)
        frame:Destroy()
    end

    TweenService:Create(container, TweenInfo.new(UIColor["Tween Animation 1 Speed"]), {
        Position = UDim2.new(0, 0, 0, 0),
    }):Play()

    close.MouseButton1Click:Connect(dismiss)
    task.spawn(function()
        task.wait(showTime)
        dismiss()
    end)
end

-- ============================================================
-- MAIN WINDOW
-- ============================================================
function Library:CreateMain(opts)
    opts = opts or {}
    local title = tostring(opts.Title) or "Feral"
    local desc = opts.Desc or ""

    local gui = Instance.new("ScreenGui")
    gui.Name = "Feral GUI"
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.Parent = CoreGui
    getgenv().GUI = gui

    local function makeDraggable(handle, target)
        local dragging, dragInput, dragStart, startPos
        handle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1
                or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = target.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then dragging = false end
                end)
            end
        end)
        handle.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement
                or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                local delta = input.Position - dragStart
                target.Position = UDim2.new(
                    startPos.X.Scale, startPos.X.Offset + delta.X,
                    startPos.Y.Scale, startPos.Y.Offset + delta.Y
                )
            end
        end)
    end

    local main = Instance.new("Frame")
    main.Name = "Main"
    main.BackgroundTransparency = 1
    main.Position = UDim2.new(0.5, 0, 0.5, 0)
    main.AnchorPoint = Vector2.new(0.5, 0.5)
    main.Size = UDim2.new(0, 629, 0, 359)
    main.Parent = gui
    makeDraggable(main, main)

    local border = Instance.new("ImageLabel")
    border.Name = "MainBorder"
    border.AnchorPoint = Vector2.new(0.5, 0.5)
    border.BackgroundTransparency = 1
    border.Position = UDim2.new(0.5, 0, 0.5, 0)
    border.Size = UDim2.new(1, 30, 1, 30)
    border.Image = "rbxassetid://8068653048"
    border.ScaleType = Enum.ScaleType.Slice
    border.SliceCenter = Rect.new(15, 15, 175, 175)
    border.ImageColor3 = UIColor["Border Color"]
    border.Parent = main

    local mainBg = Instance.new("ImageLabel")
    mainBg.Name = "MainContainer"
    mainBg.BackgroundColor3 = UIColor["Background 3 Color"]
    mainBg.Size = UDim2.new(1, 0, 1, 0)
    mainBg.Image = ""
    mainBg.Parent = main

    local mainCorner = Instance.new("UICorner")
    mainCorner.CornerRadius = UDim.new(0, 4)
    mainCorner.Parent = mainBg

    local topBar = Instance.new("Frame")
    topBar.Name = "TopMain"
    topBar.BackgroundTransparency = 1
    topBar.Size = UDim2.new(1, 0, 0, 25)
    topBar.Parent = mainBg

    local logo = Instance.new("ImageLabel")
    logo.Name = "Logo"
    logo.BackgroundTransparency = 1
    logo.Position = UDim2.new(0, 5, 0, 0)
    logo.Size = UDim2.new(0, 25, 0, 25)
    logo.Image = UIColor["Logo Image"]
    logo.Parent = topBar

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "TitleLabel"
    titleLabel.BackgroundTransparency = 1
    titleLabel.Position = UDim2.new(0, 35, 0, 0)
    titleLabel.Size = UDim2.new(1, -35, 1, 0)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextSize = 16
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.TextColor3 = UIColor["GUI Text Color"]
    titleLabel.RichText = true
    titleLabel.Text = "Feral " .. desc
    titleLabel.Parent = topBar

    local pagesContainer = Instance.new("Frame")
    pagesContainer.Name = "PagesContainer"
    pagesContainer.BackgroundTransparency = 1
    pagesContainer.Position = UDim2.new(0, 0, 0, 30)
    pagesContainer.Size = UDim2.new(1, 0, 1, -30)
    pagesContainer.Parent = mainBg

    local sidebar = Instance.new("Frame")
    sidebar.Name = "Sidebar"
    sidebar.Position = UDim2.new(0, 5, 0, 0)
    sidebar.Size = UDim2.new(0, 180, 1, 0)
    sidebar.BackgroundColor3 = UIColor["Background 1 Color"]
    sidebar.BackgroundTransparency = UIColor["Background 1 Transparency"]
    sidebar.Parent = pagesContainer

    local sidebarCorner = Instance.new("UICorner")
    sidebarCorner.CornerRadius = UDim.new(0, 4)
    sidebarCorner.Parent = sidebar

    local sidebarScroll = Instance.new("ScrollingFrame")
    sidebarScroll.Name = "ControlList"
    sidebarScroll.Active = true
    sidebarScroll.BackgroundTransparency = 1
    sidebarScroll.Position = UDim2.new(0, 0, 0, 5)
    sidebarScroll.Size = UDim2.new(1, -5, 1, -10)
    sidebarScroll.ScrollBarThickness = 5
    sidebarScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    sidebarScroll.Parent = sidebar

    local sidebarLayout = Instance.new("UIListLayout")
    sidebarLayout.SortOrder = Enum.SortOrder.LayoutOrder
    sidebarLayout.Padding = UDim.new(0, 5)
    sidebarLayout.Parent = sidebarScroll

    sidebarLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        sidebarScroll.CanvasSize = UDim2.new(0, 0, 0, sidebarLayout.AbsoluteContentSize.Y + 5)
    end)

    local pageDisplay = Instance.new("Frame")
    pageDisplay.Name = "PageDisplay"
    pageDisplay.BackgroundTransparency = 1
    pageDisplay.ClipsDescendants = true
    pageDisplay.Position = UDim2.new(0, 190, 0, 0)
    pageDisplay.Size = UDim2.new(0, 435, 1, 0)
    pageDisplay.Parent = pagesContainer

    local pageCount = 0
    local pages = {}
    local currentPage = nil

    -- ========================================================
    -- CREATE PAGE
    -- ========================================================
    function main:CreatePage(opts)
        opts = opts or {}
        local pageName = tostring(opts.Page_Name)
        local pageTitle = tostring(opts.Page_Title or pageName)
        pageCount = pageCount + 1

        local btnFrame = Instance.new("Frame")
        btnFrame.Name = pageName .. "_Control"
        btnFrame.BackgroundTransparency = 1
        btnFrame.Size = UDim2.new(1, -10, 0, 25)
        btnFrame.LayoutOrder = pageCount
        btnFrame.Parent = sidebarScroll

        local btnLabel = Instance.new("TextLabel")
        btnLabel.BackgroundTransparency = 1
        btnLabel.Position = UDim2.new(0, 15, 0, 0)
        btnLabel.Size = UDim2.new(1, -15, 1, 0)
        btnLabel.Font = Enum.Font.GothamBold
        btnLabel.Text = pageName
        btnLabel.TextSize = 14
        btnLabel.TextXAlignment = Enum.TextXAlignment.Left
        btnLabel.TextColor3 = UIColor["GUI Text Color"]
        btnLabel.Parent = btnFrame

        local btnClick = Instance.new("TextButton")
        btnClick.BackgroundTransparency = 1
        btnClick.Size = UDim2.new(1, 0, 1, 0)
        btnClick.Text = ""
        btnClick.Parent = btnFrame

        local pageFrame = Instance.new("Frame")
        pageFrame.Name = "Page_" .. pageCount
        pageFrame.BackgroundColor3 = UIColor["Background 1 Color"]
        pageFrame.BackgroundTransparency = UIColor["Background 1 Transparency"]
        pageFrame.Size = UDim2.new(0, 435, 0, 325)
        pageFrame.Visible = false
        pageFrame.Parent = pageDisplay

        local pageCorner = Instance.new("UICorner")
        pageCorner.CornerRadius = UDim.new(0, 4)
        pageCorner.Parent = pageFrame

        local pageHeader = Instance.new("TextLabel")
        pageHeader.BackgroundTransparency = 1
        pageHeader.Position = UDim2.new(0, 5, 0, 0)
        pageHeader.Size = UDim2.new(1, 0, 0, 25)
        pageHeader.Font = Enum.Font.GothamBold
        pageHeader.Text = pageTitle
        pageHeader.TextSize = 16
        pageHeader.TextXAlignment = Enum.TextXAlignment.Left
        pageHeader.TextColor3 = UIColor["GUI Text Color"]
        pageHeader.Parent = pageFrame

        local pageScroll = Instance.new("ScrollingFrame")
        pageScroll.Active = true
        pageScroll.BackgroundTransparency = 1
        pageScroll.Position = UDim2.new(0, 5, 0, 30)
        pageScroll.Size = UDim2.new(1, -10, 1, -30)
        pageScroll.ScrollBarThickness = 5
        pageScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
        pageScroll.Parent = pageFrame

        local pageListLayout = Instance.new("UIListLayout")
        pageListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        pageListLayout.Padding = UDim.new(0, 5)
        pageListLayout.Parent = pageScroll

        pageListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            pageScroll.CanvasSize = UDim2.new(0, 0, 0, pageListLayout.AbsoluteContentSize.Y + 5)
        end)

        btnClick.MouseButton1Click:Connect(function()
            for _, p in pairs(pages) do p.Frame.Visible = false end
            pageFrame.Visible = true
            currentPage = pageName
        end)

        if not currentPage then
            pageFrame.Visible = true
            currentPage = pageName
        end

        local pageObj = {}
        pages[pageName] = { Frame = pageFrame }

        function pageObj.CreateSection(sectionTitle)
            local sectionName = tostring(sectionTitle)

            local sectionFrame = Instance.new("Frame")
            sectionFrame.Name = sectionName .. "_Section"
            sectionFrame.Size = UDim2.new(1, -5, 0, 100)
            sectionFrame.BackgroundColor3 = UIColor["Background 3 Color"]
            sectionFrame.BackgroundTransparency = UIColor["Background 1 Transparency"]
            sectionFrame.Parent = pageScroll

            local sectionCorner = Instance.new("UICorner")
            sectionCorner.CornerRadius = UDim.new(0, 4)
            sectionCorner.Parent = sectionFrame

            local sectionHeader = Instance.new("Frame")
            sectionHeader.Name = "Topsec"
            sectionHeader.BackgroundTransparency = 1
            sectionHeader.Size = UDim2.new(1, 0, 0, 30)
            sectionHeader.Parent = sectionFrame

            local sectionTitle = Instance.new("TextLabel")
            sectionTitle.BackgroundTransparency = 1
            sectionTitle.Size = UDim2.new(1, 0, 1, 0)
            sectionTitle.Font = Enum.Font.GothamBold
            sectionTitle.Text = sectionName
            sectionTitle.TextSize = 14
            sectionTitle.TextColor3 = UIColor["Section Text Color"]
            sectionTitle.Parent = sectionHeader

            local sectionList = Instance.new("Frame")
            sectionList.BackgroundTransparency = 1
            sectionList.Size = UDim2.new(1, 0, 0, 0)
            sectionList.AutomaticSize = Enum.AutomaticSize.Y
            sectionList.Position = UDim2.new(0, 0, 0, 30)
            sectionList.Parent = sectionFrame

            local sectionLayout = Instance.new("UIListLayout")
            sectionLayout.SortOrder = Enum.SortOrder.LayoutOrder
            sectionLayout.Padding = UDim.new(0, 5)
            sectionLayout.Parent = sectionList

            sectionLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                sectionFrame.Size = UDim2.new(1, -5, 0, sectionLayout.AbsoluteContentSize.Y + 35)
            end)

            local sectionObj = {}
            local pageId = pageName
            local sectionId = sectionName

            -- TOGGLE
            function sectionObj.CreateToggle(opts, callback)
                opts = opts or {}
                local controlTitle = tostring(opts.Title)
                local desc = opts.Desc
                local default = opts.Default
                local callback = callback or function() end
                local state = default

                local toggleFrame = Instance.new("Frame")
                toggleFrame.BackgroundTransparency = 1
                toggleFrame.Size = UDim2.new(1, 0, 0, 0)
                toggleFrame.AutomaticSize = Enum.AutomaticSize.Y
                toggleFrame.Parent = sectionList

                local inner = Instance.new("Frame")
                inner.BackgroundTransparency = 1
                inner.Size = UDim2.new(1, -10, 0, 0)
                inner.AutomaticSize = Enum.AutomaticSize.Y
                inner.Position = UDim2.new(0, 5, 0, 0)
                inner.Parent = toggleFrame

                local bg = Instance.new("Frame")
                bg.Size = UDim2.new(1, 0, 1, 6)
                bg.BackgroundColor3 = UIColor["Background 1 Color"]
                bg.BackgroundTransparency = UIColor["Background 1 Transparency"]
                bg.ZIndex = 0
                bg.Parent = inner

                local bgCorner = Instance.new("UICorner")
                bgCorner.CornerRadius = UDim.new(0, 4)
                bgCorner.Parent = bg

                local titleLabel = Instance.new("TextLabel")
                titleLabel.BackgroundTransparency = 1
                titleLabel.Position = UDim2.new(0, 10, 0, desc and 0 or 5)
                titleLabel.Size = UDim2.new(1, -50, 0, 20)
                titleLabel.Font = Enum.Font.GothamBlack
                titleLabel.Text = controlTitle
                titleLabel.TextSize = 14
                titleLabel.TextXAlignment = Enum.TextXAlignment.Left
                titleLabel.TextColor3 = UIColor["GUI Text Color"]
                titleLabel.ZIndex = 2
                titleLabel.Parent = inner

                if desc then
                    local descLabel = Instance.new("TextLabel")
                    descLabel.BackgroundTransparency = 1
                    descLabel.Position = UDim2.new(0, 15, 0, 20)
                    descLabel.Size = UDim2.new(1, -60, 0, 0)
                    descLabel.Font = Enum.Font.GothamBlack
                    descLabel.Text = desc
                    descLabel.TextSize = 13
                    descLabel.TextWrapped = true
                    descLabel.TextXAlignment = Enum.TextXAlignment.Left
                    descLabel.TextColor3 = UIColor["Toggle Desc Color"]
                    descLabel.AutomaticSize = Enum.AutomaticSize.Y
                    descLabel.ZIndex = 2
                    descLabel.Parent = inner
                end

                local checkbox = Instance.new("ImageLabel")
                checkbox.AnchorPoint = Vector2.new(1, 0.5)
                checkbox.BackgroundTransparency = 1
                checkbox.Position = UDim2.new(1, -5, 0.5, 3)
                checkbox.Size = UDim2.new(0, 25, 0, 25)
                checkbox.Image = "rbxassetid://4552505888"
                checkbox.ImageColor3 = UIColor["Toggle Border Color"]
                checkbox.ZIndex = 3
                checkbox.Parent = inner

                local check = Instance.new("ImageLabel")
                check.AnchorPoint = Vector2.new(0, 1)
                check.BackgroundTransparency = 1
                check.Position = UDim2.new(0, 0, 1, 0)
                check.Size = UDim2.new(0, 0, 0, 0)
                check.Image = "rbxassetid://4555411759"
                check.ImageColor3 = UIColor["Toggle Checked Color"]
                check.ZIndex = 3
                check.Parent = checkbox

                local click = Instance.new("TextButton")
                click.BackgroundTransparency = 1
                click.Size = UDim2.new(1, 0, 1, 6)
                click.Text = ""
                click.ZIndex = 4
                click.Parent = inner

                local function update(value)
                    state = value
                    TweenService:Create(check, TweenInfo.new(UIColor["Tween Animation 1 Speed"]), {
                        Size = value and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0),
                        Position = value and UDim2.new(0.5, 0, 0.5, 0) or UDim2.new(0, 0, 1, 0),
                        AnchorPoint = value and Vector2.new(0.5, 0.5) or Vector2.new(0, 1),
                    }):Play()
                    callback(value)
                end

                update(default)
                click.MouseButton1Click:Connect(function() update(not state) end)

                local id = configKey(pageId, sectionId, controlTitle)
                Controls.Toggles[id] = {
                    Get = function() return state end,
                    Set = function(v) if state ~= v then update(v) end end,
                }

                return { SetStage = update }
            end

            -- SLIDER
            function sectionObj.CreateSlider(opts, callback)
                opts = opts or {}
                local controlTitle = tostring(opts.Title)
                local min = tonumber(opts.Min) or 0
                local max = tonumber(opts.Max) or 100
                local precise = opts.Precise or false
                local default = tonumber(opts.Default) or min
                local callback = callback or function() end
                local sliderWidth = 400

                local frame = Instance.new("Frame")
                frame.BackgroundTransparency = 1
                frame.Size = UDim2.new(1, 0, 0, 50)
                frame.Parent = sectionList

                local bg = Instance.new("Frame")
                bg.Position = UDim2.new(0, 5, 0, 0)
                bg.Size = UDim2.new(1, -10, 1, 0)
                bg.BackgroundColor3 = UIColor["Background 1 Color"]
                bg.BackgroundTransparency = UIColor["Background 1 Transparency"]
                bg.Parent = frame

                local bgCorner = Instance.new("UICorner")
                bgCorner.CornerRadius = UDim.new(0, 4)
                bgCorner.Parent = bg

                local titleLabel = Instance.new("TextLabel")
                titleLabel.BackgroundTransparency = 1
                titleLabel.Position = UDim2.new(0, 10, 0, 0)
                titleLabel.Size = UDim2.new(1, -160, 0, 25)
                titleLabel.Font = Enum.Font.GothamBlack
                titleLabel.Text = controlTitle
                titleLabel.TextSize = 14
                titleLabel.TextXAlignment = Enum.TextXAlignment.Left
                titleLabel.TextColor3 = UIColor["GUI Text Color"]
                titleLabel.Parent = bg

                local bar = Instance.new("Frame")
                bar.AnchorPoint = Vector2.new(0.5, 0.5)
                bar.Position = UDim2.new(0.5, 0, 0.5, 14)
                bar.Size = UDim2.new(0, sliderWidth, 0, 6)
                bar.BackgroundColor3 = UIColor["Background 2 Color"]
                bar.Parent = bg

                local barCorner = Instance.new("UICorner")
                barCorner.CornerRadius = UDim.new(1, 0)
                barCorner.Parent = bar

                local fill = Instance.new("Frame")
                fill.Size = UDim2.new(0, 0, 1, 0)
                fill.BackgroundColor3 = UIColor["Slider Line Color"]
                fill.BorderSizePixel = 0
                fill.Parent = bar

                local fillCorner = Instance.new("UICorner")
                fillCorner.CornerRadius = UDim.new(1, 0)
                fillCorner.Parent = fill

                local valueBox = Instance.new("Frame")
                valueBox.AnchorPoint = Vector2.new(1, 0)
                valueBox.Position = UDim2.new(1, -10, 0, 5)
                valueBox.Size = UDim2.new(0, 150, 0, 25)
                valueBox.BackgroundColor3 = UIColor["Background 2 Color"]
                valueBox.Parent = bg

                local valueBoxCorner = Instance.new("UICorner")
                valueBoxCorner.CornerRadius = UDim.new(0, 4)
                valueBoxCorner.Parent = valueBox

                local valueLabel = Instance.new("TextBox")
                valueLabel.BackgroundTransparency = 1
                valueLabel.Size = UDim2.new(1, 0, 1, 0)
                valueLabel.Font = Enum.Font.GothamBold
                valueLabel.Text = tostring(default)
                valueLabel.TextSize = 14
                valueLabel.TextColor3 = UIColor["GUI Text Color"]
                valueLabel.Parent = valueBox

                local dragging = false
                local function setValue(value)
                    value = math.clamp(tonumber(value) or min, min, max)
                    local ratio = (value - min) / (max - min)
                    fill.Size = UDim2.new(ratio, 0, 1, 0)
                    valueLabel.Text = precise and string.format("%.1f", value) or tostring(math.floor(value))
                    callback(value)
                end
                setValue(default)

                local function updateFromMouse(x)
                    local relative = math.clamp(x - bar.AbsolutePosition.X, 0, sliderWidth)
                    setValue(min + (relative / sliderWidth) * (max - min))
                end

                bar.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                        updateFromMouse(input.Position.X)
                    end
                end)
                UserInputService.InputChanged:Connect(function(input)
                    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                        updateFromMouse(input.Position.X)
                    end
                end)
                UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
                end)
                valueLabel.FocusLost:Connect(function() setValue(valueLabel.Text) end)

                local id = configKey(pageId, sectionId, controlTitle)
                Controls.Sliders[id] = {
                    Get = function() return tonumber(valueLabel.Text) or min end,
                    Set = setValue,
                }

                return { SetValue = setValue }
            end

            -- DROPDOWN
            function sectionObj.CreateDropdown(opts, callback)
                opts = opts or {}
                local controlTitle = tostring(opts.Title)
                local list = opts.List or {}
                local multi = opts.Selected or false
                local default = opts.Default
                local callback = callback or function() end
                local selected = default
                local values = {}
                if multi then
                    for _, v in ipairs(list) do values[v] = false end
                end

                local frame = Instance.new("Frame")
                frame.BackgroundTransparency = 1
                frame.Size = UDim2.new(1, 0, 0, 25)
                frame.Parent = sectionList

                local bg = Instance.new("Frame")
                bg.AnchorPoint = Vector2.new(0.5, 0.5)
                bg.Position = UDim2.new(0.5, 0, 0.5, 0)
                bg.Size = UDim2.new(1, -10, 1, 0)
                bg.ClipsDescendants = true
                bg.BackgroundColor3 = UIColor["Background 1 Color"]
                bg.BackgroundTransparency = UIColor["Background 1 Transparency"]
                bg.Parent = frame

                local bgCorner = Instance.new("UICorner")
                bgCorner.CornerRadius = UDim.new(0, 4)
                bgCorner.Parent = bg

                local header = Instance.new("Frame")
                header.Size = UDim2.new(1, 0, 0, 25)
                header.BackgroundColor3 = UIColor["Background 2 Color"]
                header.Parent = bg

                local headerCorner = Instance.new("UICorner")
                headerCorner.CornerRadius = UDim.new(0, 4)
                headerCorner.Parent = header

                local displayLabel = Instance.new("TextLabel")
                displayLabel.BackgroundTransparency = 1
                displayLabel.Position = UDim2.new(0, 10, 0, 0)
                displayLabel.Size = UDim2.new(1, -40, 1, 0)
                displayLabel.Font = Enum.Font.GothamBlack
                displayLabel.Text = controlTitle .. ": "
                displayLabel.TextSize = 14
                displayLabel.TextXAlignment = Enum.TextXAlignment.Left
                displayLabel.TextColor3 = UIColor["GUI Text Color"]
                displayLabel.Parent = header

                local icon = Instance.new("ImageLabel")
                icon.AnchorPoint = Vector2.new(1, 0.5)
                icon.BackgroundTransparency = 1
                icon.Position = UDim2.new(1, -6, 0.5, 0)
                icon.Size = UDim2.new(0, 15, 0, 15)
                icon.Image = "rbxassetid://6954383209"
                icon.ImageColor3 = UIColor["Dropdown Icon Color"]
                icon.Parent = header

                local clickBtn = Instance.new("TextButton")
                clickBtn.BackgroundTransparency = 1
                clickBtn.Size = UDim2.new(1, 0, 1, 0)
                clickBtn.Text = ""
                clickBtn.Parent = header

                local optionsFrame = Instance.new("Frame")
                optionsFrame.BackgroundTransparency = 1
                optionsFrame.Position = UDim2.new(0, 0, 0, 25)
                optionsFrame.Size = UDim2.new(1, 0, 0, 0)
                optionsFrame.Parent = bg

                local optionsScroll = Instance.new("ScrollingFrame")
                optionsScroll.BackgroundTransparency = 1
                optionsScroll.Size = UDim2.new(1, 0, 1, 0)
                optionsScroll.ScrollBarThickness = 5
                optionsScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
                optionsScroll.Parent = optionsFrame

                local optionsLayout = Instance.new("UIListLayout")
                optionsLayout.SortOrder = Enum.SortOrder.LayoutOrder
                optionsLayout.Parent = optionsScroll

                local opened = false
                local function toggleOpen()
                    opened = not opened
                    TweenService:Create(optionsFrame, TweenInfo.new(UIColor["Tween Animation 2 Speed"]), {
                        Size = opened and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0),
                    }):Play()
                    TweenService:Create(frame, TweenInfo.new(UIColor["Tween Animation 2 Speed"]), {
                        Size = opened and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25),
                    }):Play()
                    TweenService:Create(icon, TweenInfo.new(UIColor["Tween Animation 2 Speed"]), {
                        Rotation = opened and 90 or 0,
                    }):Play()
                end

                local function buildOptions()
                    for _, child in ipairs(optionsScroll:GetChildren()) do
                        if child:IsA("TextButton") then child:Destroy() end
                    end
                    if not multi then
                        for _, value in ipairs(list) do
                            local opt = Instance.new("TextButton")
                            opt.BackgroundTransparency = 1
                            opt.Size = UDim2.new(1, 0, 0, 25)
                            opt.Text = tostring(value)
                            opt.Font = Enum.Font.GothamBold
                            opt.TextSize = 14
                            opt.TextXAlignment = Enum.TextXAlignment.Left
                            opt.TextColor3 = UIColor["GUI Text Color"]
                            opt.Parent = optionsScroll
                            opt.MouseButton1Click:Connect(function()
                                selected = value
                                displayLabel.Text = controlTitle .. ": " .. tostring(value)
                                callback(value)
                            end)
                        end
                    else
                        for k, _ in pairs(values) do
                            local opt = Instance.new("TextButton")
                            opt.BackgroundTransparency = 1
                            opt.Size = UDim2.new(1, 0, 0, 25)
                            opt.Text = tostring(k)
                            opt.Font = Enum.Font.GothamBold
                            opt.TextSize = 14
                            opt.TextXAlignment = Enum.TextXAlignment.Left
                            opt.TextColor3 = UIColor["GUI Text Color"]
                            opt.Parent = optionsScroll
                            opt.MouseButton1Click:Connect(function()
                                values[k] = not values[k]
                                callback(k, values[k])
                            end)
                        end
                    end
                end

                buildOptions()
                clickBtn.MouseButton1Click:Connect(toggleOpen)

                local id = configKey(pageId, sectionId, controlTitle)
                if multi then
                    Controls.Dropdowns[id] = {
                        Get = function()
                            local copy = {}
                            for k, v in pairs(values) do copy[k] = v end
                            return copy
                        end,
                        Set = function(t)
                            if type(t) ~= "table" then return end
                            for k, v in pairs(t) do
                                if values[k] ~= nil then values[k] = not not v end
                            end
                            for k, v in pairs(values) do callback(k, v) end
                        end,
                    }
                else
                    Controls.Dropdowns[id] = {
                        Get = function() return selected end,
                        Set = function(v)
                            for _, item in ipairs(list) do
                                if tostring(item) == tostring(v) then
                                    selected = item
                                    displayLabel.Text = controlTitle .. ": " .. tostring(v)
                                    callback(v)
                                    return
                                end
                            end
                        end,
                    }
                end

                return {
                    ClearText = function()
                        selected = nil
                        displayLabel.Text = controlTitle .. ": "
                    end,
                    GetNewList = function(newList)
                        list = newList or {}
                        if multi then
                            values = {}
                            for _, v in ipairs(list) do values[v] = false end
                        end
                        buildOptions()
                    end,
                    rf = buildOptions,
                }
            end

            -- KEYBIND
            function sectionObj.CreateKeybind(opts, callback)
                opts = opts or {}
                local controlTitle = tostring(opts.Title) or "Keybind"
                local default = opts.Default or Enum.KeyCode.E
                local callback = callback or function() end
                local currentKey = default

                local frame = Instance.new("Frame")
                frame.BackgroundTransparency = 1
                frame.Size = UDim2.new(1, 0, 0, 35)
                frame.Parent = sectionList

                local bg = Instance.new("Frame")
                bg.Position = UDim2.new(0, 5, 0, 0)
                bg.Size = UDim2.new(1, -10, 1, 0)
                bg.BackgroundColor3 = UIColor["Background 1 Color"]
                bg.BackgroundTransparency = UIColor["Background 1 Transparency"]
                bg.Parent = frame

                local bgCorner = Instance.new("UICorner")
                bgCorner.CornerRadius = UDim.new(0, 4)
                bgCorner.Parent = bg

                local label = Instance.new("TextLabel")
                label.BackgroundTransparency = 1
                label.Position = UDim2.new(0, 10, 0, 0)
                label.Size = UDim2.new(1, -160, 1, 0)
                label.Font = Enum.Font.GothamBlack
                label.Text = controlTitle
                label.TextSize = 14
                label.TextXAlignment = Enum.TextXAlignment.Left
                label.TextColor3 = UIColor["GUI Text Color"]
                label.Parent = bg

                local keyBox = Instance.new("Frame")
                keyBox.AnchorPoint = Vector2.new(1, 0.5)
                keyBox.Position = UDim2.new(1, -5, 0.5, 0)
                keyBox.Size = UDim2.new(0, 150, 0, 25)
                keyBox.BackgroundColor3 = UIColor["Background 2 Color"]
                keyBox.Parent = bg

                local keyBoxCorner = Instance.new("UICorner")
                keyBoxCorner.CornerRadius = UDim.new(0, 4)
                keyBoxCorner.Parent = keyBox

                local keyBtn = Instance.new("TextButton")
                keyBtn.BackgroundTransparency = 1
                keyBtn.Size = UDim2.new(1, 0, 1, 0)
                keyBtn.Font = Enum.Font.GothamBold
                keyBtn.Text = tostring(default):gsub("Enum.KeyCode.", "")
                keyBtn.TextSize = 14
                keyBtn.TextColor3 = UIColor["GUI Text Color"]
                keyBtn.Parent = keyBox

                local listening = false
                keyBtn.MouseButton1Click:Connect(function()
                    if listening then return end
                    listening = true
                    keyBtn.Text = "..."
                    local conn
                    conn = UserInputService.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.Keyboard then
                            currentKey = input.KeyCode
                            keyBtn.Text = input.KeyCode.Name
                            listening = false
                            conn:Disconnect()
                        end
                    end)
                end)

                UserInputService.InputBegan:Connect(function(input)
                    if not listening and input.KeyCode == currentKey then
                        callback(currentKey)
                    end
                end)

                local id = configKey(pageId, sectionId, controlTitle)
                Controls.Keybinds[id] = {
                    Get = function() return tostring(currentKey) end,
                    Set = function(k)
                        if not k then return end
                        local s = tostring(k)
                        for _, enum in ipairs(Enum.KeyCode:GetEnumItems()) do
                            if enum.Name == s or "Enum.KeyCode." .. enum.Name == s then
                                currentKey = enum
                                keyBtn.Text = enum.Name
                                return
                            end
                        end
                    end,
                }

                return {
                    SetKey = function(k)
                        currentKey = k
                        keyBtn.Text = tostring(k):gsub("Enum.KeyCode.", "")
                    end,
                    GetKey = function() return currentKey end,
                }
            end

            -- BOX
            function sectionObj.CreateBox(opts, callback)
                opts = opts or {}
                local controlTitle = tostring(opts.Title)
                local placeholder = tostring(opts.Placeholder) or ""
                local default = opts.Default
                local numeric = opts.Number or false
                local callback = callback or function() end

                local frame = Instance.new("Frame")
                frame.BackgroundTransparency = 1
                frame.Size = UDim2.new(1, 0, 0, 60)
                frame.Parent = sectionList

                local bg = Instance.new("Frame")
                bg.Position = UDim2.new(0, 5, 0, 0)
                bg.Size = UDim2.new(1, -10, 1, 0)
                bg.BackgroundColor3 = UIColor["Background 1 Color"]
                bg.BackgroundTransparency = UIColor["Background 1 Transparency"]
                bg.Parent = frame

                local bgCorner = Instance.new("UICorner")
                bgCorner.CornerRadius = UDim.new(0, 4)
                bgCorner.Parent = bg

                local label = Instance.new("TextLabel")
                label.BackgroundTransparency = 1
                label.Position = UDim2.new(0, 10, 0, 0)
                label.Size = UDim2.new(1, -10, 0.5, 0)
                label.Font = Enum.Font.GothamBlack
                label.Text = controlTitle
                label.TextSize = 14
                label.TextXAlignment = Enum.TextXAlignment.Left
                label.TextColor3 = UIColor["GUI Text Color"]
                label.Parent = bg

                local inputFrame = Instance.new("Frame")
                inputFrame.AnchorPoint = Vector2.new(1, 0.5)
                inputFrame.Position = UDim2.new(1, -5, 0, 40)
                inputFrame.Size = UDim2.new(1, -10, 0, 25)
                inputFrame.BackgroundColor3 = UIColor["Background 2 Color"]
                inputFrame.Parent = bg

                local inputCorner = Instance.new("UICorner")
                inputCorner.CornerRadius = UDim.new(0, 4)
                inputCorner.Parent = inputFrame

                local textbox = Instance.new("TextBox")
                textbox.BackgroundTransparency = 1
                textbox.Position = UDim2.new(0, 5, 0, 0)
                textbox.Size = UDim2.new(1, -5, 1, 0)
                textbox.Font = Enum.Font.GothamBold
                textbox.PlaceholderText = placeholder
                textbox.Text = default or ""
                textbox.TextSize = 14
                textbox.TextXAlignment = Enum.TextXAlignment.Left
                textbox.PlaceholderColor3 = UIColor["Placeholder Text Color"]
                textbox.TextColor3 = UIColor["GUI Text Color"]
                textbox.Parent = inputFrame

                if numeric then
                    textbox:GetPropertyChangedSignal("Text"):Connect(function()
                        if not tonumber(textbox.Text) then textbox.Text = "" end
                    end)
                end

                textbox.FocusLost:Connect(function() callback(textbox.Text) end)

                local id = configKey(pageId, sectionId, controlTitle)
                Controls.Boxes[id] = {
                    Get = function() return textbox.Text end,
                    Set = function(v)
                        textbox.Text = tostring(v or "")
                        if textbox.Text ~= "" then callback(textbox.Text) end
                    end,
                }

                return {
                    SetValue = function(v)
                        textbox.Text = tostring(v)
                        callback(v)
                    end,
                }
            end

            -- BUTTON
            function sectionObj.CreateButton(opts, callback)
                opts = opts or {}
                local controlTitle = tostring(opts.Title)
                local callback = callback or function() end

                local frame = Instance.new("Frame")
                frame.BackgroundTransparency = 1
                frame.Size = UDim2.new(1, 0, 0, 25)
                frame.Parent = sectionList

                local bg = Instance.new("Frame")
                bg.AnchorPoint = Vector2.new(0.5, 0.5)
                bg.Position = UDim2.new(0.5, 0, 0.5, 0)
                bg.Size = UDim2.new(1, -10, 1, 0)
                bg.BackgroundColor3 = UIColor["Button Color"]
                bg.Parent = frame

                local bgCorner = Instance.new("UICorner")
                bgCorner.CornerRadius = UDim.new(0, 4)
                bgCorner.Parent = bg

                local label = Instance.new("TextLabel")
                label.BackgroundTransparency = 1
                label.Position = UDim2.new(0, 10, 0, 0)
                label.Size = UDim2.new(1, -10, 1, 0)
                label.Font = Enum.Font.GothamBlack
                label.Text = controlTitle
                label.TextSize = 14
                label.TextXAlignment = Enum.TextXAlignment.Left
                label.TextColor3 = UIColor["GUI Text Color"]
                label.Parent = bg

                local click = Instance.new("TextButton")
                click.BackgroundTransparency = 1
                click.Size = UDim2.new(1, 0, 1, 0)
                click.Text = ""
                click.Parent = bg

                click.MouseButton1Click:Connect(callback)
            end

            -- LABEL
            function sectionObj.CreateLabel(opts)
                opts = opts or {}
                local controlTitle = tostring(opts.Title)

                local frame = Instance.new("Frame")
                frame.BackgroundTransparency = 1
                frame.Size = UDim2.new(1, 0, 0, 30)
                frame.Parent = sectionList

                local bg = Instance.new("Frame")
                bg.Position = UDim2.new(0, 5, 0, 0)
                bg.Size = UDim2.new(1, -10, 1, 0)
                bg.BackgroundColor3 = UIColor["Label Color"]
                bg.Parent = frame

                local bgCorner = Instance.new("UICorner")
                bgCorner.CornerRadius = UDim.new(0, 4)
                bgCorner.Parent = bg

                local label = Instance.new("TextLabel")
                label.BackgroundTransparency = 1
                label.Position = UDim2.new(0, 10, 0, 0)
                label.Size = UDim2.new(1, -20, 1, 0)
                label.Font = Enum.Font.GothamBlack
                label.Text = controlTitle
                label.TextSize = 14
                label.TextXAlignment = Enum.TextXAlignment.Left
                label.TextColor3 = UIColor["GUI Text Color"]
                label.Parent = bg

                return {
                    SetText = function(t) label.Text = t end,
                    SetColor = function(c) label.TextColor3 = c end,
                }
            end

            return sectionObj
        end

        return pageObj
    end

    return main
end

return Library
