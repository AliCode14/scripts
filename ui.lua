-- Glowy Modern UI Library
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local Noir = {}
Noir.__index = Noir

local Fonts = {
    Regular = Font.fromEnum(Enum.Font.FredokaOne),
    Medium = Font.fromEnum(Enum.Font.FredokaOne),
    Bold = Font.fromEnum(Enum.Font.FredokaOne),
}

local Theme = {
    Background = Color3.fromRGB(14, 15, 18),
    Surface = Color3.fromRGB(22, 24, 29),
    Surface2 = Color3.fromRGB(29, 32, 38),
    Stroke = Color3.fromRGB(53, 58, 68),
    Text = Color3.fromRGB(244, 244, 246),
    Muted = Color3.fromRGB(145, 145, 153),
    Accent = Color3.fromRGB(246, 246, 248),
    Accent2 = Color3.fromRGB(211, 211, 216),
    OnAccent = Color3.fromRGB(22, 22, 25),
    Control = Color3.fromRGB(35, 38, 45),
    Success = Color3.fromRGB(86, 215, 157),
    Danger = Color3.fromRGB(255, 101, 119),
}

local Themes = {
    Default = {
        Background = Color3.fromRGB(14, 15, 18), Surface = Color3.fromRGB(22, 24, 29),
        Surface2 = Color3.fromRGB(29, 32, 38), Stroke = Color3.fromRGB(53, 58, 68),
        Text = Color3.fromRGB(250, 250, 252), Muted = Color3.fromRGB(157, 157, 166),
        Accent = Color3.fromRGB(245, 245, 247), Accent2 = Color3.fromRGB(199, 199, 207),
        OnAccent = Color3.fromRGB(18, 19, 22), Control = Color3.fromRGB(35, 38, 45),
    },
    Moonstone = {
        Background = Color3.fromRGB(15, 20, 25), Surface = Color3.fromRGB(25, 34, 42),
        Surface2 = Color3.fromRGB(35, 47, 57), Stroke = Color3.fromRGB(67, 86, 100),
        Text = Color3.fromRGB(237, 247, 252), Muted = Color3.fromRGB(137, 160, 174),
        Accent = Color3.fromRGB(151, 218, 232), Accent2 = Color3.fromRGB(91, 166, 184),
        OnAccent = Color3.fromRGB(15, 30, 35), Control = Color3.fromRGB(40, 54, 64),
    },
    Kyoto = {
        Background = Color3.fromRGB(24, 16, 17), Surface = Color3.fromRGB(41, 25, 27),
        Surface2 = Color3.fromRGB(56, 34, 35), Stroke = Color3.fromRGB(92, 56, 56),
        Text = Color3.fromRGB(255, 241, 232), Muted = Color3.fromRGB(184, 147, 137),
        Accent = Color3.fromRGB(231, 124, 94), Accent2 = Color3.fromRGB(184, 77, 64),
        OnAccent = Color3.fromRGB(35, 16, 14), Control = Color3.fromRGB(62, 38, 39),
    },
    Carbon = {
        Background = Color3.fromRGB(12, 13, 13), Surface = Color3.fromRGB(24, 26, 25),
        Surface2 = Color3.fromRGB(34, 37, 35), Stroke = Color3.fromRGB(63, 68, 64),
        Text = Color3.fromRGB(246, 247, 242), Muted = Color3.fromRGB(145, 151, 142),
        Accent = Color3.fromRGB(194, 214, 174), Accent2 = Color3.fromRGB(137, 164, 113),
        OnAccent = Color3.fromRGB(20, 25, 17), Control = Color3.fromRGB(40, 44, 41),
    },
}
Themes.Apple = Themes.Default

local function create(className, properties, children)
    local object = Instance.new(className)
    for key, value in pairs(properties or {}) do object[key] = value end
    for _, child in ipairs(children or {}) do child.Parent = object end
    return object
end

local function corner(radius)
    return create("UICorner", {CornerRadius = UDim.new(0, radius or 10)})
end

local function stroke(color, transparency, thickness)
    local object = create("UIStroke", {
        Color = color or Theme.Stroke,
        Transparency = transparency or 0,
        Thickness = thickness or 1,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
    })
    if color == nil or color == Theme.Stroke then object:SetAttribute("NoirRole", "Stroke") end
    return object
end

local function tween(object, duration, properties, style, direction)
    if typeof(object) ~= "Instance" or object.Parent == nil then
        return nil
    end
    local animation = TweenService:Create(object, TweenInfo.new(
        duration or .18,
        style or Enum.EasingStyle.Quart,
        direction or Enum.EasingDirection.Out
    ), properties)
    animation:Play()
    return animation
end

local function protect(callback, ...)
    if type(callback) ~= "function" then return end
    local ok, err = pcall(callback, ...)
    if not ok then warn("[Noir UI] " .. tostring(err)) end
end

local function textLabel(parent, text, size, color, font)
    local face = Fonts.Medium
    if typeof(font) == "Font" then
        face = font
    elseif font == Enum.Font.GothamBold then
        face = Fonts.Bold
    elseif font == Enum.Font.Gotham then
        face = Fonts.Regular
    end
    local label = create("TextLabel", {
        Parent = parent,
        BackgroundTransparency = 1,
        Size = size or UDim2.fromScale(1, 1),
        FontFace = face,
        Text = text or "",
        TextColor3 = color or Theme.Text,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextTruncate = Enum.TextTruncate.AtEnd,
    })
    label:SetAttribute("NoirRole", color == Theme.Muted and "MutedText" or "Text")
    return label
end

local LucideIcons = {
    sword = {lines = {{5, 19, 19, 5}, {14, 5, 19, 5}, {19, 5, 19, 10}, {4, 20, 8, 16}}},
    eye = {lines = {{3, 12, 7, 8}, {7, 8, 12, 6}, {12, 6, 17, 8}, {17, 8, 21, 12}, {21, 12, 17, 16}, {17, 16, 12, 18}, {12, 18, 7, 16}, {7, 16, 3, 12}}, circles = {{12, 12, 5}}},
    sliders = {lines = {{4, 6, 20, 6}, {4, 12, 20, 12}, {4, 18, 20, 18}}, circles = {{9, 6, 3}, {15, 12, 3}, {7, 18, 3}}},
    zap = {lines = {{13, 2, 5, 14}, {5, 14, 11, 14}, {11, 14, 10, 22}, {10, 22, 19, 10}, {19, 10, 13, 10}, {13, 10, 13, 2}}},
    target = {circles = {{12, 12, 18}, {12, 12, 10}, {12, 12, 3}}},
    clock = {lines = {{12, 7, 12, 12}, {12, 12, 16, 14}}, circles = {{12, 12, 18}}},
    save = {lines = {{5, 3, 17, 3}, {17, 3, 21, 7}, {21, 7, 21, 21}, {21, 21, 3, 21}, {3, 21, 3, 3}, {3, 3, 5, 3}, {7, 3, 7, 9}, {7, 9, 16, 9}, {16, 9, 16, 3}}, circles = {{12, 16, 5}}},
    menu = {lines = {{4, 6, 20, 6}, {4, 12, 20, 12}, {4, 18, 20, 18}}},
    search = {lines = {{16, 16, 21, 21}}, circles = {{10, 10, 12}}},
    key = {lines = {{14, 10, 22, 10}, {18, 10, 18, 14}, {21, 10, 21, 13}}, circles = {{8, 10, 8}}},
    palette = {lines = {{17, 18, 20, 15}, {20, 15, 21, 11}, {21, 11, 19, 6}, {19, 6, 15, 3}, {15, 3, 9, 3}, {9, 3, 4, 7}, {4, 7, 3, 13}, {3, 13, 6, 18}, {6, 18, 11, 21}, {11, 21, 14, 20}}, circles = {{8, 9, 2}, {12, 7, 2}, {16, 9, 2}, {8, 14, 2}}},
    check = {lines = {{4, 12, 9, 17}, {9, 17, 20, 6}}},
    info = {lines = {{12, 10, 12, 17}, {12, 7, 12, 7}}, circles = {{12, 12, 19}}},
    warning = {lines = {{12, 8, 12, 14}, {12, 18, 12, 18}, {12, 2, 22, 21}, {22, 21, 2, 21}, {2, 21, 12, 2}}},
    x = {lines = {{5, 5, 19, 19}, {19, 5, 5, 19}}},
    settings = {lines = {{12, 2, 12, 5}, {12, 19, 12, 22}, {2, 12, 5, 12}, {19, 12, 22, 12}, {5, 5, 7, 7}, {17, 17, 19, 19}, {19, 5, 17, 7}, {7, 17, 5, 19}}, circles = {{12, 12, 8}}},
    chevronDown = {lines = {{6, 9, 12, 15}, {12, 15, 18, 9}}},
}

local function setIconColor(icon, color)
    for _, object in ipairs(icon:GetDescendants()) do
        if object:IsA("Frame") and object.Name == "LucideStroke" then
            object.BackgroundColor3 = color
        elseif object:IsA("UIStroke") and object.Parent and object.Parent.Name == "LucideCircle" then
            object.Color = color
        end
    end
end

local function createLucideIcon(parent, name, size, color, zIndex)
    local definition = LucideIcons[name] or LucideIcons.info
    local icon = create("Frame", {
        Name = "LucideIcon_" .. tostring(name), Parent = parent,
        Size = UDim2.fromOffset(size or 16, size or 16), BackgroundTransparency = 1,
        ZIndex = zIndex or 2,
    })
    local scale = (size or 16) / 24
    for _, line in ipairs(definition.lines or {}) do
        local x1, y1, x2, y2 = line[1] * scale, line[2] * scale, line[3] * scale, line[4] * scale
        local dx, dy = x2 - x1, y2 - y1
        local length = math.sqrt(dx * dx + dy * dy)
        create("Frame", {
            Name = "LucideStroke", Parent = icon, AnchorPoint = Vector2.new(.5, .5),
            Position = UDim2.fromOffset((x1 + x2) / 2, (y1 + y2) / 2),
            Size = UDim2.fromOffset(length, math.max(1, 1.7 * scale)),
            Rotation = math.deg(math.atan2(dy, dx)), BackgroundColor3 = color or Theme.Muted,
            BorderSizePixel = 0, ZIndex = zIndex or 2,
        }, {corner(99)})
    end
    for _, circleData in ipairs(definition.circles or {}) do
        local diameter = circleData[3] * scale
        local circle = create("Frame", {
            Name = "LucideCircle", Parent = icon, AnchorPoint = Vector2.new(.5, .5),
            Position = UDim2.fromOffset(circleData[1] * scale, circleData[2] * scale),
            Size = UDim2.fromOffset(diameter, diameter), BackgroundTransparency = 1,
            ZIndex = zIndex or 2,
        }, {corner(99), stroke(color or Theme.Muted, 0, math.max(1, 1.5 * scale))})
        circle:FindFirstChildOfClass("UIStroke"):SetAttribute("Lucide", true)
    end
    return icon
end

local function addRipple(button, input)
    local position = input and input.Position or UserInputService:GetMouseLocation()
    local absolute = button.AbsolutePosition
    local ripple = create("Frame", {
        Parent = button,
        AnchorPoint = Vector2.new(.5, .5),
        Position = UDim2.fromOffset(position.X - absolute.X, position.Y - absolute.Y),
        Size = UDim2.fromOffset(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = .78,
        BorderSizePixel = 0,
        ZIndex = button.ZIndex + 2,
    }, {corner(999)})
    local diameter = math.max(button.AbsoluteSize.X, button.AbsoluteSize.Y) * 2
    tween(ripple, .42, {Size = UDim2.fromOffset(diameter, diameter), BackgroundTransparency = 1})
    task.delay(.45, function() if ripple then ripple:Destroy() end end)
end

local function attachTooltip(target, message)
    if not message or tostring(message) == "" then return end
    local tooltip
    target.MouseEnter:Connect(function()
        local screen = target:FindFirstAncestorOfClass("ScreenGui")
        if not screen or tooltip then return end
        tooltip = create("TextLabel", {
            Name = "NoirTooltip", Parent = screen, AnchorPoint = Vector2.new(.5, 1),
            Position = UDim2.fromOffset(
                target.AbsolutePosition.X + target.AbsoluteSize.X / 2,
                target.AbsolutePosition.Y - 7
            ),
            Size = UDim2.fromOffset(math.clamp(#tostring(message) * 6 + 22, 90, 250), 28),
            BackgroundColor3 = Theme.Surface2, BackgroundTransparency = 1,
            BorderSizePixel = 0, FontFace = Fonts.Regular, Text = tostring(message),
            TextColor3 = Theme.Text, TextSize = 11, TextTransparency = 1,
            TextTruncate = Enum.TextTruncate.AtEnd, ZIndex = 200,
        }, {corner(7), stroke(Theme.Stroke, .45)})
        local scale = create("UIScale", {Parent = tooltip, Scale = .94})
        tween(tooltip, .16, {BackgroundTransparency = .04, TextTransparency = 0})
        tween(scale, .18, {Scale = 1}, Enum.EasingStyle.Back)
    end)
    target.MouseLeave:Connect(function()
        local current = tooltip
        tooltip = nil
        if current then
            tween(current, .12, {BackgroundTransparency = 1, TextTransparency = 1})
            task.delay(.13, function() if current.Parent then current:Destroy() end end)
        end
    end)
end

local function makeRow(parent, height)
    return create("Frame", {
        Parent = parent,
        BackgroundColor3 = Theme.Surface2,
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, height or 42),
        ClipsDescendants = true,
    })
end

local Section = {}
Section.__index = Section

function Section:AddLabel(options)
    options = type(options) == "table" and options or {Text = tostring(options)}
    local row = makeRow(self.Container, options.Height or 38)
    local title = textLabel(row, options.Title or options.Text or "Label", UDim2.new(1, -24, 1, 0), options.Color or Theme.Text)
    title.Position = UDim2.fromOffset(12, 0)
    if options.Description then
        title.Size, title.Position = UDim2.new(1, -24, 0, 20), UDim2.fromOffset(12, 6)
        local desc = textLabel(row, options.Description, UDim2.new(1, -24, 0, 17), Theme.Muted, Enum.Font.Gotham)
        desc.Position, desc.TextSize = UDim2.fromOffset(12, 23), 12
    end
    return {SetText = function(_, value) title.Text = tostring(value) end}
end

function Section:AddButton(options)
    options = options or {}
    local row = makeRow(self.Container, 40)
    local button = create("TextButton", {
        Parent = row, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1),
        AutoButtonColor = false, Text = "", ZIndex = 2,
    })
    local title = textLabel(button, options.Title or "Button", UDim2.new(1, -52, 1, 0))
    title.Position = UDim2.fromOffset(13, 0)
    local arrow = textLabel(button, "›", UDim2.fromOffset(30, 46), Theme.Muted)
    arrow.Position, arrow.TextSize, arrow.TextXAlignment = UDim2.new(1, -38, 0, -3), 21, Enum.TextXAlignment.Center
    button.MouseEnter:Connect(function() tween(row, .16, {BackgroundColor3 = Color3.fromRGB(34, 38, 50)}) end)
    button.MouseLeave:Connect(function() tween(row, .16, {BackgroundColor3 = Theme.Surface2}) end)
    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            addRipple(button, input)
            tween(arrow, .12, {Position = UDim2.new(1, -34, 0, 0), TextColor3 = Theme.Text})
            task.delay(.13, function() tween(arrow, .18, {Position = UDim2.new(1, -38, 0, 0), TextColor3 = Theme.Muted}) end)
        end
    end)
    button.Activated:Connect(function() protect(options.Callback) end)
    return button
end

function Section:AddToggle(options)
    options = options or {}
    local value = options.Default == true
    local key = options.Keybind
    if type(key) == "string" then key = Enum.KeyCode[key] end
    local listening = false
    local row = makeRow(self.Container, 42)
    local button = create("TextButton", {
        Parent = row, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1),
        AutoButtonColor = false, Text = "", ZIndex = 2,
    })
    local title = textLabel(button, options.Title or "Toggle", UDim2.new(1, -74, 1, 0))
    title.Position = UDim2.fromOffset(13, 0)
    local track = create("Frame", {
        Parent = button, AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, -13, .5, 0),
        Size = UDim2.fromOffset(38, 22), BackgroundColor3 = value and Theme.Accent or Color3.fromRGB(68, 74, 92),
        BorderSizePixel = 0,
    }, {corner(99)})
    local trackScale = create("UIScale", {Parent = track, Scale = 1})
    local knob = create("Frame", {
        Parent = track, AnchorPoint = Vector2.new(.5, .5),
        Position = value and UDim2.new(1, -11, .5, 0) or UDim2.new(0, 11, .5, 0),
        Size = UDim2.fromOffset(16, 16), BackgroundColor3 = Theme.Text, BorderSizePixel = 0,
    }, {corner(99)})
    local control = {}
    function control:Set(newValue, silent)
        value = newValue == true
        tween(track, .2, {BackgroundColor3 = value and Theme.Accent or Color3.fromRGB(68, 74, 92)})
        tween(knob, .24, {Position = value and UDim2.new(1, -11, .5, 0) or UDim2.new(0, 11, .5, 0)}, Enum.EasingStyle.Back)
        if not silent then protect(options.Callback, value) end
    end
    function control:Get() return value end
    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            addRipple(button, input)
        end
    end)
    button.Activated:Connect(function()
        tween(trackScale, .09, {Scale = .88})
        task.delay(.09, function() if trackScale.Parent then tween(trackScale, .22, {Scale = 1}, Enum.EasingStyle.Back) end end)
        control:Set(not value)
    end)
    if self.Window and options.Flag then self.Window:_Register(options.Flag, control, "toggle") end
    return control
end

function Section:AddSlider(options)
    options = options or {}
    local minimum, maximum = options.Min or 0, options.Max or 100
    local value = math.clamp(options.Default or minimum, minimum, maximum)
    local row = makeRow(self.Container, 54)
    local title = textLabel(row, options.Title or "Slider", UDim2.new(1, -82, 0, 28))
    title.Position = UDim2.fromOffset(13, 3)
    local valueText = textLabel(row, tostring(value), UDim2.fromOffset(62, 28), Theme.Muted)
    valueText.Position, valueText.TextXAlignment = UDim2.new(1, -74, 0, 3), Enum.TextXAlignment.Right
    local bar = create("Frame", {
        Parent = row, Position = UDim2.new(0, 13, 1, -14), Size = UDim2.new(1, -26, 0, 4),
        BackgroundColor3 = Color3.fromRGB(61, 67, 84), BorderSizePixel = 0,
    }, {corner(99)})
    local fill = create("Frame", {Parent = bar, Size = UDim2.fromScale((value - minimum) / (maximum - minimum), 1), BackgroundColor3 = Theme.Accent, BorderSizePixel = 0}, {corner(99)})
    local knob = create("Frame", {
        Parent = bar, AnchorPoint = Vector2.new(.5, .5), Position = UDim2.new(fill.Size.X.Scale, 0, .5, 0),
        Size = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.Text, BorderSizePixel = 0, ZIndex = 3,
    }, {corner(99), stroke(Theme.Accent, 0, 2)})
    local dragging = false
    local control = {}
    function control:Set(newValue, silent)
        value = math.clamp(newValue, minimum, maximum)
        if options.Round ~= false then value = math.floor(value + .5) end
        local ratio = (value - minimum) / (maximum - minimum)
        valueText.Text = tostring(value) .. (options.Suffix or "")
        tween(fill, .08, {Size = UDim2.fromScale(ratio, 1)})
        tween(knob, .08, {Position = UDim2.new(ratio, 0, .5, 0)})
        if not silent then protect(options.Callback, value) end
    end
    function control:Get() return value end
    local function update(input)
        local ratio = math.clamp((input.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
        control:Set(minimum + (maximum - minimum) * ratio)
    end
    bar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            tween(knob, .14, {Size = UDim2.fromOffset(18, 18)}, Enum.EasingStyle.Back)
            update(input)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then update(input) end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
            tween(knob, .18, {Size = UDim2.fromOffset(14, 14)}, Enum.EasingStyle.Back)
        end
    end)
    control:Set(value, true)
    if self.Window and options.Flag then self.Window:_Register(options.Flag, control, "slider") end
    return control
end

function Section:AddInput(options)
    options = options or {}
    local row = makeRow(self.Container, 46)
    local title = textLabel(row, options.Title or "Input", UDim2.new(.42, -12, 1, 0))
    title.Position = UDim2.fromOffset(13, 0)
    local holder = create("Frame", {
        Parent = row, AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, -12, .5, 0),
        Size = UDim2.new(.52, 0, 0, 28), BackgroundColor3 = Theme.Background, BorderSizePixel = 0,
    }, {corner(7), stroke(Theme.Stroke, .35)})
    local holderScale = create("UIScale", {Parent = holder, Scale = 1})
    local box = create("TextBox", {
        Parent = holder, BackgroundTransparency = 1, Position = UDim2.fromOffset(10, 0), Size = UDim2.new(1, -20, 1, 0),
        ClearTextOnFocus = false, FontFace = Fonts.Regular, PlaceholderText = options.Placeholder or "Type here...",
        PlaceholderColor3 = Theme.Muted, Text = options.Default or "", TextColor3 = Theme.Text, TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left,
    })
    box.Focused:Connect(function()
        tween(holder:FindFirstChildOfClass("UIStroke"), .16, {Color = Theme.Text, Transparency = 0})
        tween(holderScale, .18, {Scale = 1.025}, Enum.EasingStyle.Back)
        tween(holder, .16, {BackgroundColor3 = Color3.fromRGB(28, 28, 33)})
    end)
    box.FocusLost:Connect(function(enterPressed)
        tween(holder:FindFirstChildOfClass("UIStroke"), .15, {Color = Theme.Stroke, Transparency = .35})
        tween(holderScale, .18, {Scale = 1})
        tween(holder, .16, {BackgroundColor3 = Theme.Background})
        protect(options.Callback, box.Text, enterPressed)
    end)
    local control = {Set = function(_, value) box.Text = tostring(value) end, Get = function() return box.Text end, Object = box}
    if self.Window and options.Flag then self.Window:_Register(options.Flag, control, "input") end
    return control
end

function Section:AddDropdown(options)
    options = options or {}
    local values = options.Values or options.List or {}
    local selected = options.Default or values[1]
    local open = false
    local baseHeight = options.Description and 58 or 44
    local row = makeRow(self.Container, baseHeight)
    local title = textLabel(row, options.Title or "Dropdown", UDim2.new(.43, -12, 0, 44))
    title.Position, title.TextSize = UDim2.fromOffset(10, 0), 15
    if options.Description then
        local desc = textLabel(row, options.Description, UDim2.new(.56, -16, 0, 20), Theme.Muted)
        desc.Position, desc.TextSize = UDim2.fromOffset(10, 27), 12
    end
    local selectButton = create("TextButton", {
        Name = "DropdownButton",
        Parent = row, AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -12, 0, 9),
        Size = UDim2.new(.52, 0, 0, 28), BackgroundColor3 = Theme.Background, AutoButtonColor = false,
        BorderSizePixel = 0, Text = "", ZIndex = 3,
    }, {corner(7), stroke(Theme.Stroke, .35)})
    local selectedText = textLabel(selectButton, selected and tostring(selected) or "Select", UDim2.new(1, -34, 1, 0))
    selectedText.Position, selectedText.TextSize = UDim2.fromOffset(10, 0), 13
    local arrow = textLabel(selectButton, "v", UDim2.fromOffset(26, 32), Theme.Muted, Enum.Font.GothamBold)
    arrow.Position, arrow.TextXAlignment = UDim2.new(1, -28, 0, 0), Enum.TextXAlignment.Center
    local list = create("Frame", {
        Name = "DropdownMenu",
        Parent = row, Position = UDim2.new(.48, 0, 0, 39), Size = UDim2.new(.52, -12, 0, 0),
        BackgroundColor3 = Theme.Background, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 8,
    }, {corner(7), stroke(Theme.Stroke, .25), create("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}), create("UIPadding", {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4), PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4)})})
    local control = {}
    local function close()
        open = false
        tween(row, .22, {Size = UDim2.new(1, 0, 0, baseHeight)})
        tween(list, .22, {Size = UDim2.new(.52, -12, 0, 0)})
        tween(arrow, .18, {Rotation = 0})
    end
    function control:Set(value, silent)
        selected, selectedText.Text = value, tostring(value)
        close()
        if not silent then protect(options.Callback, value) end
    end
    function control:Get() return selected end
    function control:Refresh(newValues)
        values = newValues or {}
        for _, child in ipairs(list:GetChildren()) do if child:IsA("TextButton") then child:Destroy() end end
        for _, value in ipairs(values) do
            local option = create("TextButton", {
                Parent = list, Size = UDim2.new(1, 0, 0, 28), BackgroundColor3 = Theme.Surface2,
                BackgroundTransparency = .35, BorderSizePixel = 0, AutoButtonColor = false,
                FontFace = Fonts.Regular, Text = tostring(value), TextColor3 = Theme.Text, TextSize = 13, ZIndex = 9,
            }, {corner(6)})
            option.Activated:Connect(function() control:Set(value) end)
        end
    end
    selectButton.Activated:Connect(function()
        open = not open
        local height = math.min(#values, 5) * 31 + 8
        tween(row, .24, {Size = UDim2.new(1, 0, 0, open and (baseHeight + height) or baseHeight)})
        tween(list, .24, {Size = UDim2.new(.52, -12, 0, open and height or 0)})
        tween(arrow, .18, {Rotation = open and 180 or 0})
    end)
    control:Refresh(values)
    if self.Window and options.Flag then self.Window:_Register(options.Flag, control, "dropdown") end
    return control
end

function Section:AddKeybind(options)
    options = options or {}
    local key = options.Default or Enum.KeyCode.RightShift
    local listening = false
    local row = makeRow(self.Container, 42)
    local title = textLabel(row, options.Title or "Keybind", UDim2.new(1, -105, 1, 0))
    title.Position = UDim2.fromOffset(13, 0)
    local button = create("TextButton", {
        Parent = row, AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, -12, .5, 0),
        Size = UDim2.fromOffset(72, 27), BackgroundColor3 = Theme.Background, BorderSizePixel = 0,
        AutoButtonColor = false, FontFace = Fonts.Medium, Text = key.Name, TextColor3 = Theme.Muted, TextSize = 12,
    }, {corner(7), stroke(Theme.Stroke, .35)})
    local keyScale = create("UIScale", {Parent = button, Scale = 1})
    button.MouseEnter:Connect(function() tween(button, .15, {BackgroundColor3 = Color3.fromRGB(31, 31, 36), TextColor3 = Theme.Text}) end)
    button.MouseLeave:Connect(function()
        if not listening then tween(button, .15, {BackgroundColor3 = Theme.Background, TextColor3 = Theme.Muted}) end
    end)
    button.Activated:Connect(function()
        listening = true
        button.Text, button.TextColor3 = "...", Theme.Text
        tween(keyScale, .09, {Scale = .92})
        task.delay(.09, function() if keyScale.Parent then tween(keyScale, .2, {Scale = 1}, Enum.EasingStyle.Back) end end)
    end)
    UserInputService.InputBegan:Connect(function(input)
        local mouseKey = input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.MouseButton2
            or input.UserInputType == Enum.UserInputType.MouseButton3
        if listening and (input.KeyCode ~= Enum.KeyCode.Unknown or mouseKey) then
            listening, key = false, mouseKey and input.UserInputType or input.KeyCode
            button.Text, button.TextColor3 = key.Name, Theme.Muted
            protect(options.Changed, key)
        elseif input.KeyCode == key or input.UserInputType == key then
            protect(options.Callback, key)
        end
    end)
    local control = {
        Get = function() return key.Name end,
        GetKey = function() return key end,
        Set = function(_, value)
            key = typeof(value) == "EnumItem" and value
                or Enum.KeyCode[tostring(value)]
                or Enum.UserInputType[tostring(value)]
                or key
            button.Text = key.Name
        end,
    }
    if self.Window and options.Flag then self.Window:_Register(options.Flag, control, "keybind") end
    return control
end

-- Reference-style controls intentionally sit directly on their section card.
function Section:AddButton(options)
    options = options or {}
    local row = makeRow(self.Container, 34)
    attachTooltip(row, options.Tooltip)
    row.Name = "ActionButton"
    row:SetAttribute("Primary", options.Primary == true)
    row.BackgroundTransparency = 0
    row.BackgroundColor3 = options.Primary and Theme.Accent or (Theme.Control or Theme.Surface2)
    corner(7).Parent = row
    stroke(options.Primary and Theme.Text or Theme.Stroke, options.Primary and .6 or .72).Parent = row
    if options.Primary then
        create("UIGradient", {
            Parent = row,
            Color = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(224, 224, 230)),
            Rotation = 105,
        })
    end
    local button = create("TextButton", {
        Parent = row, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1),
        AutoButtonColor = false, Text = "", ZIndex = 2,
    })
    local label = textLabel(button, options.Title or "Button", UDim2.fromScale(1, 1), options.Primary and (Theme.OnAccent or Theme.Background) or Theme.Text)
    label.TextXAlignment, label.TextSize = Enum.TextXAlignment.Center, 14
    button.MouseEnter:Connect(function() tween(row, .15, {BackgroundTransparency = .08}) end)
    button.MouseLeave:Connect(function() tween(row, .15, {BackgroundTransparency = 0}) end)
    button.Activated:Connect(function()
        tween(row, .09, {Size = UDim2.new(1, -4, 0, 32)})
        task.delay(.1, function() if row.Parent then tween(row, .15, {Size = UDim2.new(1, 0, 0, 34)}) end end)
        protect(options.Callback)
    end)
    return button
end

function Section:AddToggle(options)
    options = options or {}
    local value = options.Default == true
    local row = makeRow(self.Container, options.Description and 46 or 42)
    attachTooltip(row, options.Tooltip)
    local button = create("TextButton", {
        Parent = row, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1),
        AutoButtonColor = false, Text = "", ZIndex = 2,
    })
    local label = textLabel(button, options.Title or "Toggle", UDim2.new(1, -70, 0, 25))
    label.Position, label.TextSize = UDim2.fromOffset(10, options.Description and 0 or 8), 15
    if options.Description then
        local desc = textLabel(button, options.Description, UDim2.new(1, -78, 0, 21), Theme.Muted)
        desc.Position, desc.TextSize = UDim2.fromOffset(10, 24), 12
    end
    local track = create("Frame", {
        Name = "ToggleTrack",
        Parent = button, AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, key and -72 or -10, .5, 0),
        Size = UDim2.fromOffset(38, 22), BackgroundColor3 = value and Theme.Accent or (Theme.Control or Theme.Surface2),
        BorderSizePixel = 0,
    }, {corner(99), stroke(Theme.Stroke, .35)})
    local trackScale = create("UIScale", {Parent = track, Scale = 1})
    local trackStroke = track:FindFirstChildOfClass("UIStroke")
    local knob = create("Frame", {
        Name = "ToggleKnob",
        Parent = track, AnchorPoint = Vector2.new(.5, .5),
        Position = value and UDim2.new(1, -11, .5, 0) or UDim2.new(0, 11, .5, 0),
        Size = UDim2.fromOffset(16, 16),
        BackgroundColor3 = value and (Theme.OnAccent or Theme.Background) or Theme.Muted,
        BorderSizePixel = 0,
    }, {corner(99)})
    local valueBubble = create("TextLabel", {
        Parent = bar, AnchorPoint = Vector2.new(.5, 1), Position = UDim2.new(0, 0, 0, -9),
        Size = UDim2.fromOffset(48, 24), BackgroundColor3 = Theme.Accent,
        BackgroundTransparency = 1, BorderSizePixel = 0, FontFace = Fonts.Medium,
        Text = "", TextColor3 = Theme.OnAccent or Theme.Background, TextSize = 11,
        TextTransparency = 1, Visible = true, ZIndex = 8,
    }, {corner(7), stroke(Theme.Stroke, 1)})
    local control = {}
    function control:Set(newValue, silent)
        value = newValue == true
        tween(track, .2, {BackgroundColor3 = value and Theme.Accent or (Theme.Control or Theme.Surface2)})
        tween(trackStroke, .2, {
            Color = value and Theme.Accent2 or Theme.Stroke,
            Transparency = value and .12 or .5,
        })
        tween(knob, .23, {
            Position = value and UDim2.new(1, -11, .5, 0) or UDim2.new(0, 11, .5, 0),
            BackgroundColor3 = value and (Theme.OnAccent or Theme.Background) or Theme.Muted,
        }, Enum.EasingStyle.Back)
        if not silent then protect(options.Callback, value) end
    end
    function control:Get() return value end
    function control:GetKey() return key end
    function control:SetKey(newKey)
        key = typeof(newKey) == "EnumItem" and newKey
            or Enum.KeyCode[tostring(newKey)]
            or Enum.UserInputType[tostring(newKey)]
            or key
    end
    button.Activated:Connect(function()
        tween(trackScale, .09, {Scale = .88})
        task.delay(.09, function() if trackScale.Parent then tween(trackScale, .22, {Scale = 1}, Enum.EasingStyle.Back) end end)
        control:Set(not value)
    end)
    if key then
        local keyButton = create("TextButton", {
            Parent = row, AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, -10, .5, 0),
            Size = UDim2.fromOffset(52, 25), BackgroundColor3 = Theme.Control or Theme.Surface2,
            BorderSizePixel = 0, AutoButtonColor = false, FontFace = Fonts.Medium,
            Text = key.Name, TextColor3 = Theme.Muted, TextSize = 11, ZIndex = 5,
        }, {corner(7), stroke(Theme.Stroke, .5)})
        keyButton.Activated:Connect(function()
            listening = true
            keyButton.Text, keyButton.TextColor3 = "...", Theme.Text
        end)
        UserInputService.InputBegan:Connect(function(input)
            if UserInputService:GetFocusedTextBox() then return end
            local mouseKey = input.UserInputType == Enum.UserInputType.MouseButton1
                or input.UserInputType == Enum.UserInputType.MouseButton2
                or input.UserInputType == Enum.UserInputType.MouseButton3
            if listening and (input.KeyCode ~= Enum.KeyCode.Unknown or mouseKey) then
                listening = false
                control:SetKey(mouseKey and input.UserInputType or input.KeyCode)
                keyButton.Text, keyButton.TextColor3 = key.Name, Theme.Muted
                protect(options.KeyChanged, key)
            elseif not listening and (input.KeyCode == key or input.UserInputType == key) then
                control:Set(not value)
            end
        end)
    end
    if self.Window and options.Flag then self.Window:_Register(options.Flag, control, "toggle") end
    return control
end

function Section:AddSlider(options)
    options = options or {}
    local minimum, maximum = options.Min or 0, options.Max or 100
    local value = math.clamp(options.Default or minimum, minimum, maximum)
    local row = makeRow(self.Container, options.Description and 52 or 50)
    attachTooltip(row, options.Tooltip)
    local label = textLabel(row, options.Title or "Slider", UDim2.new(1, -80, 0, 27))
    label.Position, label.TextSize = UDim2.fromOffset(10, 0), 15
    local valueText = textLabel(row, "", UDim2.fromOffset(70, 27), Theme.Muted)
    valueText.Position, valueText.TextXAlignment, valueText.TextSize = UDim2.new(1, -80, 0, 0), Enum.TextXAlignment.Right, 13
    if options.Description then
        local desc = textLabel(row, options.Description, UDim2.new(1, -20, 0, 20), Theme.Muted)
        desc.Position, desc.TextSize = UDim2.fromOffset(10, 23), 12
    end
    local bar = create("Frame", {
        Name = "SliderTrack",
        Parent = row, Position = UDim2.new(0, 10, 1, -9), Size = UDim2.new(1, -20, 0, 4),
        BackgroundColor3 = Color3.fromRGB(72, 72, 80), BorderSizePixel = 0,
    }, {corner(99)})
    local fill = create("Frame", {Name = "SliderFill", Parent = bar, BackgroundColor3 = Theme.Accent, BorderSizePixel = 0}, {
        corner(99),
        create("UIGradient", {Color = ColorSequence.new(Theme.Accent2, Theme.Accent)}),
    })
    local knob = create("Frame", {
        Name = "SliderKnob",
        Parent = bar, AnchorPoint = Vector2.new(.5, .5), Size = UDim2.fromOffset(14, 14),
        BackgroundColor3 = Theme.Accent, BorderSizePixel = 0, ZIndex = 3,
    }, {corner(99)})
    local valueBubble = create("TextLabel", {
        Parent = bar, AnchorPoint = Vector2.new(.5, 1), Position = UDim2.new(0, 0, 0, -9),
        Size = UDim2.fromOffset(48, 24), BackgroundColor3 = Theme.Accent,
        BackgroundTransparency = 1, BorderSizePixel = 0, FontFace = Fonts.Medium,
        Text = "", TextColor3 = Theme.OnAccent or Theme.Background, TextSize = 11,
        TextTransparency = 1, Visible = true, ZIndex = 8,
    }, {corner(7), stroke(Theme.Stroke, 1)})
    local sliderHitbox = create("TextButton", {
        Parent = bar, AnchorPoint = Vector2.new(0, .5), Position = UDim2.new(0, 0, .5, 0),
        Size = UDim2.new(1, 0, 0, 24), BackgroundTransparency = 1,
        BorderSizePixel = 0, AutoButtonColor = false, Text = "", ZIndex = 7,
    })
    local dragging = false
    local control = {}
    function control:Set(newValue, silent)
        value = math.clamp(newValue, minimum, maximum)
        if options.Round ~= false then value = math.floor(value + .5) end
        local ratio = maximum == minimum and 0 or (value - minimum) / (maximum - minimum)
        valueText.Text = tostring(value) .. (options.Suffix or "")
        valueBubble.Text = valueText.Text
        valueBubble.Position = UDim2.new(ratio, 0, 0, -9)
        tween(fill, .08, {Size = UDim2.fromScale(ratio, 1)})
        tween(knob, .08, {Position = UDim2.new(ratio, 0, .5, 0)})
        if not silent then protect(options.Callback, value) end
    end
    function control:Get() return value end
    local function update(input)
        control:Set(minimum + (maximum - minimum) * math.clamp((input.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1))
    end
    sliderHitbox.MouseEnter:Connect(function()
        if not dragging then tween(knob, .15, {Size = UDim2.fromOffset(16, 16)}, Enum.EasingStyle.Back) end
        tween(bar, .15, {BackgroundColor3 = Theme.Control or Theme.Surface2})
    end)
    sliderHitbox.MouseLeave:Connect(function()
        if not dragging then tween(knob, .15, {Size = UDim2.fromOffset(14, 14)}, Enum.EasingStyle.Back) end
        tween(bar, .15, {BackgroundColor3 = Theme.Stroke})
    end)
    sliderHitbox.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            tween(knob, .14, {Size = UDim2.fromOffset(18, 18)}, Enum.EasingStyle.Back)
            tween(valueBubble, .14, {BackgroundTransparency = 0, TextTransparency = 0}, Enum.EasingStyle.Quint)
            tween(valueBubble:FindFirstChildOfClass("UIStroke"), .14, {Transparency = .45})
            update(input)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then update(input) end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
            tween(knob, .18, {Size = UDim2.fromOffset(14, 14)}, Enum.EasingStyle.Back)
            tween(valueBubble, .16, {BackgroundTransparency = 1, TextTransparency = 1}, Enum.EasingStyle.Quint)
            tween(valueBubble:FindFirstChildOfClass("UIStroke"), .16, {Transparency = 1})
        end
    end)
    control:Set(value, true)
    if self.Window and options.Flag then self.Window:_Register(options.Flag, control, "slider") end
    return control
end

function Section:AddDropdown(options)
    options = options or {}
    local values = options.Values or options.List or {}
    local selected = options.Default or values[1]
    local open = false
    local baseHeight = options.Description and 58 or 46
    local row = makeRow(self.Container, baseHeight)
    attachTooltip(row, options.Tooltip)

    local title = textLabel(row, options.Title or "Dropdown", UDim2.new(.52, -10, 0, 25))
    title.Position, title.TextSize = UDim2.fromOffset(10, options.Description and 1 or 10), 15
    if options.Description then
        local description = textLabel(row, options.Description, UDim2.new(.56, -14, 0, 20), Theme.Muted)
        description.Position, description.TextSize = UDim2.fromOffset(10, 28), 12
    end

    local selectButton = create("TextButton", {
        Parent = row,
        AnchorPoint = Vector2.new(1, 0),
        Position = UDim2.new(1, -10, 0, options.Description and 0 or 6),
        Size = UDim2.new(.45, 0, 0, 34),
        BackgroundColor3 = Theme.Background,
        BorderSizePixel = 0,
        AutoButtonColor = false,
        Text = "",
        ZIndex = 6,
    }, {corner(9), stroke(Theme.Stroke, .55)})
    local selectScale = create("UIScale", {Parent = selectButton, Scale = 1})
    local selectStroke = selectButton:FindFirstChildOfClass("UIStroke")
    selectStroke.Name, selectStroke.Transparency = "DropdownStroke", 1
    local selectedText = textLabel(selectButton, selected and tostring(selected) or "select", UDim2.new(1, -34, 1, 0), Theme.Text)
    selectedText.Position, selectedText.TextSize, selectedText.TextXAlignment = UDim2.fromOffset(12, 0), 13, Enum.TextXAlignment.Center

    local chevron = create("Frame", {
        Parent = selectButton,
        AnchorPoint = Vector2.new(.5, .5),
        Position = UDim2.new(1, -16, .5, 0),
        Size = UDim2.fromOffset(12, 8),
        BackgroundTransparency = 1,
        ZIndex = 8,
    })
    local chevronLeft = create("Frame", {
        Name = "DropdownChevron",
        Parent = chevron, AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(.5, 1, .5, 0),
        Size = UDim2.fromOffset(7, 1), Rotation = 35, BackgroundColor3 = Theme.Muted, BorderSizePixel = 0,
    })
    local chevronRight = create("Frame", {
        Name = "DropdownChevron",
        Parent = chevron, AnchorPoint = Vector2.new(0, .5), Position = UDim2.new(.5, -1, .5, 0),
        Size = UDim2.fromOffset(7, 1), Rotation = -35, BackgroundColor3 = Theme.Muted, BorderSizePixel = 0,
    })

    local list = create("Frame", {
        Name = "DropdownMenu", Parent = row,
        Position = UDim2.new(.55, 0, 0, 47),
        Size = UDim2.new(.45, -10, 0, 0),
        BackgroundColor3 = Theme.Background,
        BorderSizePixel = 0,
        ClipsDescendants = true,
        ZIndex = 12,
    }, {
        corner(9),
        create("UIPadding", {
            PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5),
            PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5),
        }),
        create("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}),
    })
    local searchBox
    if options.Search == true then
        searchBox = create("TextBox", {
            Name = "DropdownSearch",
            Parent = list, LayoutOrder = -1, Size = UDim2.new(1, 0, 0, 29),
            BackgroundColor3 = Theme.Background, BackgroundTransparency = 0, BorderSizePixel = 0,
            ClearTextOnFocus = false, FontFace = Fonts.Regular, PlaceholderText = "search...",
            PlaceholderColor3 = Theme.Muted, Text = "", TextColor3 = Theme.Text,
            TextSize = 12, ZIndex = 13,
        }, {corner(7)})
    end

    local control = {}
    local function close()
        open = false
        tween(row, .22, {Size = UDim2.new(1, 0, 0, baseHeight)})
        tween(list, .22, {Size = UDim2.new(.45, -10, 0, 0)})
        tween(chevron, .18, {Rotation = 0})
        tween(selectStroke, .2, {Transparency = 1})
    end
    function control:Set(value, silent, keepOpen)
        selected, selectedText.Text = value, tostring(value)
        control:Refresh(values)
        if not keepOpen then close() end
        if not silent then protect(options.Callback, value) end
    end
    function control:Get() return selected end
    function control:Refresh(newValues)
        values = newValues or {}
        for _, child in ipairs(list:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end
        for _, value in ipairs(values) do
            local option = create("TextButton", {
                Name = "DropdownOption",
                Parent = list,
                Size = UDim2.new(1, 0, 0, 29),
                BackgroundColor3 = Theme.Accent,
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                AutoButtonColor = false,
                FontFace = Fonts.Regular,
                Text = tostring(value),
                TextColor3 = value == selected and Theme.Text or Theme.Muted,
                TextSize = 13,
                ZIndex = 13,
            }, {corner(7)})
            create("Frame", {
                Name = "SelectionIndicator", Parent = option, AnchorPoint = Vector2.new(.5, 1),
                Position = UDim2.new(.5, 0, 1, -3),
                Size = UDim2.fromOffset(value == selected and 10 or 0, 2),
                BackgroundColor3 = Theme.Accent, BorderSizePixel = 0, ZIndex = 14,
            }, {corner(99)})
            option:SetAttribute("SearchValue", tostring(value):lower())
            option.MouseEnter:Connect(function()
                tween(option, .14, {BackgroundTransparency = .9, TextColor3 = Theme.Text})
            end)
            option.MouseLeave:Connect(function()
                tween(option, .14, {
                    BackgroundTransparency = 1,
                    TextColor3 = value == selected and Theme.Text or Theme.Muted,
                })
            end)
            option.Activated:Connect(function() control:Set(value, false, true) end)
        end
    end
    if searchBox then
        searchBox:GetPropertyChangedSignal("Text"):Connect(function()
            local query = searchBox.Text:lower()
            for _, child in ipairs(list:GetChildren()) do
                if child:IsA("TextButton") then
                    local searchable = child:GetAttribute("SearchValue") or ""
                    child.Visible = query == "" or searchable:find(query, 1, true) ~= nil
                end
            end
        end)
    end
    selectButton.MouseEnter:Connect(function()
        tween(selectButton, .15, {BackgroundColor3 = Theme.Surface})
        tween(chevronLeft, .15, {BackgroundColor3 = Theme.Text})
        tween(chevronRight, .15, {BackgroundColor3 = Theme.Text})
    end)
    selectButton.MouseLeave:Connect(function()
        tween(selectButton, .15, {BackgroundColor3 = Theme.Background})
        tween(chevronLeft, .15, {BackgroundColor3 = Theme.Muted})
        tween(chevronRight, .15, {BackgroundColor3 = Theme.Muted})
    end)
    selectButton.Activated:Connect(function()
        tween(selectScale, .08, {Scale = .96})
        task.delay(.08, function() if selectScale.Parent then tween(selectScale, .18, {Scale = 1}, Enum.EasingStyle.Back) end end)
        open = not open
        local listHeight = math.min(#values, 5) * 32 + (searchBox and 44 or 10)
        tween(row, .24, {Size = UDim2.new(1, 0, 0, open and (baseHeight + listHeight) or baseHeight)})
        tween(list, .24, {Size = UDim2.new(.45, -10, 0, open and listHeight or 0)})
        tween(chevron, .18, {Rotation = open and 180 or 0})
        tween(selectStroke, .2, {Transparency = 1})
    end)
    control:Refresh(values)
    if self.Window and options.Flag then self.Window:_Register(options.Flag, control, "dropdown") end
    return control
end

function Section:AddParagraph(options)
    options = options or {}
    local row = makeRow(self.Container, options.Height or 58)
    local title = textLabel(row, options.Title or "Paragraph", UDim2.new(1, -20, 0, 23), Theme.Text)
    title.Position, title.TextSize = UDim2.fromOffset(10, 1), 15
    local body = textLabel(row, options.Text or options.Description or "", UDim2.new(1, -20, 1, -25), Theme.Muted)
    body.Position, body.TextSize, body.TextWrapped = UDim2.fromOffset(10, 25), 12, true
    body.TextYAlignment = Enum.TextYAlignment.Top
    return {SetText = function(_, value) body.Text = tostring(value) end}
end

function Section:AddSeparator(options)
    options = type(options) == "table" and options or {Text = options}
    local row = makeRow(self.Container, options.Text and 22 or 12)
    local left = create("Frame", {
        Parent = row, AnchorPoint = Vector2.new(0, .5), Position = UDim2.new(0, 4, .5, 0),
        Size = options.Text and UDim2.new(.35, -8, 0, 1) or UDim2.new(1, -8, 0, 1),
        BackgroundColor3 = Theme.Stroke, BackgroundTransparency = .35, BorderSizePixel = 0,
    })
    if options.Text then
        local label = textLabel(row, string.upper(options.Text), UDim2.new(.3, 0, 1, 0), Theme.Muted)
        label.Position, label.TextXAlignment, label.TextSize = UDim2.new(.35, 0, 0, 0), Enum.TextXAlignment.Center, 11
        create("Frame", {
            Parent = row, AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, -4, .5, 0),
            Size = UDim2.new(.35, -8, 0, 1), BackgroundColor3 = Theme.Stroke,
            BackgroundTransparency = .35, BorderSizePixel = 0,
        })
    end
    return left
end

function Section:AddBadge(options)
    options = options or {}
    local row = makeRow(self.Container, 38)
    local title = textLabel(row, options.Title or "Status", UDim2.new(1, -115, 1, 0), Theme.Text)
    title.Position, title.TextSize = UDim2.fromOffset(10, 0), 14
    local color = options.Color or Theme.Accent2
    local badge = create("TextLabel", {
        Parent = row, AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, -10, .5, 0),
        Size = UDim2.fromOffset(options.Width or 88, 24), BackgroundColor3 = color,
        BackgroundTransparency = .82, BorderSizePixel = 0, FontFace = Fonts.Medium,
        Text = options.Text or "READY", TextColor3 = color, TextSize = 11,
    }, {corner(99), stroke(color, .55)})
    return {
        Set = function(_, value, newColor)
            badge.Text = tostring(value)
            if newColor then
                tween(badge, .18, {BackgroundColor3 = newColor, TextColor3 = newColor})
                badge:FindFirstChildOfClass("UIStroke").Color = newColor
            end
        end,
    }
end

function Section:AddConfirmButton(options)
    options = options or {}
    local armed = false
    local timeoutToken = 0
    local control
    control = self:AddButton({
        Title = options.Title or "confirm action",
        Primary = options.Primary,
        Callback = function()
            if not armed then
                armed = true
                timeoutToken += 1
                local token = timeoutToken
                local label = control:FindFirstChildOfClass("TextLabel")
                if label then label.Text = options.ConfirmText or "click again to confirm" end
                task.delay(options.Timeout or 2.5, function()
                    if token == timeoutToken and armed then
                        armed = false
                        if label and label.Parent then label.Text = options.Title or "confirm action" end
                    end
                end)
                return
            end
            armed = false
            timeoutToken += 1
            local label = control:FindFirstChildOfClass("TextLabel")
            if label then label.Text = options.Title or "confirm action" end
            protect(options.Callback)
        end,
    })
    return control
end

function Section:AddConfirmChoice(options)
    options = options or {}
    return self:AddButton({
        Title = options.Title or "open confirmation",
        Primary = options.Primary,
        Callback = function()
            self.Window:Confirm({
                Title = options.DialogTitle or options.Title or "Confirm action",
                Description = options.Description or "Are you sure you want to continue?",
                ConfirmText = options.ConfirmText or "Confirm",
                CancelText = options.CancelText or "Cancel",
                Callback = options.Callback,
                Cancelled = options.Cancelled,
            })
        end,
    })
end

function Section:AddMultiDropdown(options)
    options = options or {}
    local values = options.Values or options.List or {}
    local selected = {}
    for _, value in ipairs(options.Default or {}) do selected[tostring(value)] = true end
    local row = makeRow(self.Container, 46)
    attachTooltip(row, options.Tooltip)
    local title = textLabel(row, options.Title or "Multi dropdown", UDim2.new(.52, -10, 1, 0), Theme.Text)
    title.Position, title.TextSize = UDim2.fromOffset(10, 0), 15
    local button = create("TextButton", {
        Name = "DropdownButton",
        Parent = row, AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -10, 0, 6),
        Size = UDim2.new(.45, 0, 0, 34), BackgroundColor3 = Theme.Background,
        BorderSizePixel = 0, AutoButtonColor = false, Text = "", ZIndex = 6,
    }, {corner(9), stroke(Color3.fromRGB(72, 72, 80), .55)})
    local buttonScale = create("UIScale", {Parent = button, Scale = 1})
    local buttonStroke = button:FindFirstChildOfClass("UIStroke")
    buttonStroke.Name, buttonStroke.Transparency = "DropdownStroke", 1
    local summary = textLabel(button, "none", UDim2.new(1, -28, 1, 0), Theme.Text)
    summary.Position, summary.TextSize, summary.TextXAlignment = UDim2.fromOffset(10, 0), 12, Enum.TextXAlignment.Center
    local list = create("Frame", {
        Name = "DropdownMenu",
        Parent = row, Position = UDim2.new(.55, 0, 0, 45), Size = UDim2.new(.45, -10, 0, 0),
        BackgroundColor3 = Theme.Background, BorderSizePixel = 0,
        ClipsDescendants = true, ZIndex = 12,
    }, {
        corner(9),
        create("UIPadding", {PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5), PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5)}),
        create("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}),
    })
    local searchEnabled = options.Search ~= false
    local search = create("TextBox", {
        Name = "DropdownSearch", Parent = list, Size = searchEnabled and UDim2.new(1, 0, 0, 29) or UDim2.new(1, 0, 0, 0),
        BackgroundColor3 = Theme.Background, BackgroundTransparency = 0,
        BorderSizePixel = 0, ClearTextOnFocus = false, FontFace = Fonts.Regular,
        PlaceholderText = "search...", PlaceholderColor3 = Theme.Muted, Text = "",
        TextColor3 = Theme.Text, TextSize = 12, ZIndex = 13, Visible = searchEnabled,
    }, {corner(7)})
    local open, optionButtons = false, {}
    local control = {}
    local function selectedArray()
        local result = {}
        for _, value in ipairs(values) do if selected[tostring(value)] then table.insert(result, value) end end
        return result
    end
    local function updateSummary()
        local result = selectedArray()
        local names = {}
        for _, value in ipairs(result) do
            table.insert(names, tostring(value))
        end
        summary.Text = #names == 0 and "none" or table.concat(names, ", ")
    end
    local function rebuild()
        for _, option in ipairs(optionButtons) do option:Destroy() end
        table.clear(optionButtons)
        local query = search.Text:lower()
        for _, value in ipairs(values) do
            if query == "" or tostring(value):lower():find(query, 1, true) then
                local key = tostring(value)
                local option = create("TextButton", {
                    Name = "DropdownOption",
                    Parent = list, Size = UDim2.new(1, 0, 0, 29),
                    BackgroundColor3 = Theme.Accent,
                    BackgroundTransparency = 1, BorderSizePixel = 0,
                    AutoButtonColor = false, FontFace = Fonts.Regular, Text = key,
                    TextColor3 = selected[key] and Theme.Text or Theme.Muted, TextSize = 12, ZIndex = 13,
                }, {corner(7)})
                create("Frame", {
                    Name = "SelectionIndicator", Parent = option, AnchorPoint = Vector2.new(.5, 1),
                    Position = UDim2.new(.5, 0, 1, -3),
                    Size = UDim2.fromOffset(selected[key] and 10 or 0, 2),
                    BackgroundColor3 = Theme.Accent, BorderSizePixel = 0, ZIndex = 14,
                }, {corner(99)})
                option.Activated:Connect(function()
                    selected[key] = not selected[key] or nil
                    rebuild()
                    updateSummary()
                    protect(options.Callback, selectedArray())
                end)
                option.MouseEnter:Connect(function()
                    tween(option, .14, {BackgroundTransparency = .9, TextColor3 = Theme.Text})
                end)
                option.MouseLeave:Connect(function()
                    tween(option, .14, {
                        BackgroundTransparency = 1,
                        TextColor3 = selected[key] and Theme.Text or Theme.Muted,
                    })
                end)
                table.insert(optionButtons, option)
            end
        end
    end
    function control:Get() return selectedArray() end
    function control:Set(newValues, silent)
        table.clear(selected)
        for _, value in ipairs(newValues or {}) do selected[tostring(value)] = true end
        rebuild()
        updateSummary()
        if not silent then protect(options.Callback, selectedArray()) end
    end
    search:GetPropertyChangedSignal("Text"):Connect(rebuild)
    button.Activated:Connect(function()
        tween(buttonScale, .08, {Scale = .96})
        task.delay(.08, function() if buttonScale.Parent then tween(buttonScale, .18, {Scale = 1}, Enum.EasingStyle.Back) end end)
        open = not open
        local height = math.min(#values, 5) * 32 + (searchEnabled and 44 or 10)
        tween(row, .24, {Size = UDim2.new(1, 0, 0, open and (46 + height) or 46)})
        tween(list, .24, {Size = UDim2.new(.45, -10, 0, open and height or 0)})
        tween(buttonStroke, .2, {Transparency = 1})
    end)
    rebuild()
    updateSummary()
    if self.Window and options.Flag then self.Window:_Register(options.Flag, control, "multi") end
    return control
end

local Tab = {}
Tab.__index = Tab

function Tab:CreateSection(title)
    local sectionOptions = type(title) == "table" and title or {Title = title}
    local sectionTitle = sectionOptions.Title or "SECTION"
    self.SectionCount = (self.SectionCount or 0) + 1
    local column = self.SectionCount % 2 == 1 and self.LeftColumn or self.RightColumn
    local card = create("Frame", {
        Parent = column,
        Name = "Section_" .. tostring(sectionTitle):gsub("%W+", "_"),
        BackgroundColor3 = Color3.fromRGB(38, 38, 43),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        ClipsDescendants = true,
    }, {
        corner(12),
        stroke(Color3.fromRGB(68, 68, 75), .55),
        create("UIGradient", {
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(43, 43, 49)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(32, 32, 37)),
            }),
            Rotation = 110,
        }),
        create("UIPadding", {
            PaddingTop = UDim.new(0, 7),
            PaddingBottom = UDim.new(0, 7),
            PaddingLeft = UDim.new(0, 15),
            PaddingRight = UDim.new(0, 15),
        }),
        create("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}),
    })
    local cardStroke = card:FindFirstChildOfClass("UIStroke")
    local cardScale = create("UIScale", {Parent = card, Scale = 1})
    create("Frame", {
        Parent = card, Position = UDim2.fromOffset(14, 0), Size = UDim2.new(1, -28, 0, 1),
        BackgroundColor3 = Theme.Text, BackgroundTransparency = .9,
        BorderSizePixel = 0, ZIndex = 3,
    }, {create("UIGradient", {
        Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(.5, .15),
            NumberSequenceKeypoint.new(1, 1),
        }),
    })})
    card.MouseEnter:Connect(function()
        tween(cardStroke, .22, {Color = Theme.Accent, Transparency = .72})
    end)
    card.MouseLeave:Connect(function()
        tween(cardStroke, .22, {Color = Theme.Stroke, Transparency = .55})
    end)
    local heading = textLabel(card, (sectionOptions.Icon and sectionOptions.Icon .. "  " or "") .. string.upper(sectionTitle), UDim2.new(1, 0, 0, 24), Theme.Muted, Fonts.Bold)
    heading.TextSize = 14
    local container = create("Frame", {
        Parent = card, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
    }, {create("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder})})
    return setmetatable({Container = container, Card = card, Scale = cardScale, Window = self.Window}, Section)
end

function Noir:CreateWindow(options)
    options = options or {}
    local requestedSize = options.Size or UDim2.fromOffset(650, 520)
    local requestedWidth = requestedSize.X.Offset > 0 and requestedSize.X.Offset or 650
    local requestedHeight = requestedSize.Y.Offset > 0 and requestedSize.Y.Offset or 520
    local parent = options.Parent
    if not parent then
        local ok, hui = pcall(function() return gethui() end)
        parent = ok and hui or game:GetService("CoreGui")
    end
    local old = parent:FindFirstChild("NoirUI")
    if old then old:Destroy() end
    local gui = create("ScreenGui", {Name = "NoirUI", Parent = parent, ResetOnSpawn = false, IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling})
    local shadow = create("ImageLabel", {
        Parent = gui, AnchorPoint = Vector2.new(.5, .5), Position = UDim2.fromScale(.5, .5),
        Size = UDim2.fromOffset(requestedWidth + 46, requestedHeight + 46), BackgroundTransparency = 1,
        Image = "rbxassetid://6014261993", ImageColor3 = Color3.new(0, 0, 0), ImageTransparency = .45, ScaleType = Enum.ScaleType.Slice, SliceCenter = Rect.new(49, 49, 450, 450),
    })
    local main = create("Frame", {
        Name = "Window",
        Parent = gui, AnchorPoint = Vector2.new(.5, .5), Position = UDim2.fromScale(.5, .5),
        Size = requestedSize, BackgroundColor3 = Theme.Background, BorderSizePixel = 0,
        ClipsDescendants = true, Active = true,
    }, {corner(14), stroke(Theme.Stroke, .25)})
    create("UIGradient", {Parent = main, Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(39, 39, 44)),
        ColorSequenceKeypoint.new(.58, Color3.fromRGB(28, 28, 32)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 18, 21)),
    }), Rotation = 112})
    local atmosphereGradient = create("UIGradient", {
        Color = ColorSequence.new(Theme.Accent2, Theme.Accent),
        Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(.34, .94),
            NumberSequenceKeypoint.new(.5, .78),
            NumberSequenceKeypoint.new(.66, .94),
            NumberSequenceKeypoint.new(1, 1),
        }),
        Rotation = 112,
        Offset = Vector2.new(-.28, 0),
    })
    local atmosphere = create("Frame", {
        Name = "Atmosphere", Parent = main, Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Theme.Accent2, BackgroundTransparency = .94,
        BorderSizePixel = 0, Active = false, ZIndex = 1,
    }, {atmosphereGradient})
    local atmosphereTween, lastAtmosphereX = nil, -.28
    UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement and main.Parent then
            local relativeX = math.clamp((input.Position.X - main.AbsolutePosition.X) / math.max(main.AbsoluteSize.X, 1), 0, 1)
            local nextX = (relativeX - .5) * .7
            if math.abs(nextX - lastAtmosphereX) >= .035 then
                lastAtmosphereX = nextX
                if atmosphereTween then atmosphereTween:Cancel() end
                atmosphereTween = TweenService:Create(
                    atmosphereGradient,
                    TweenInfo.new(.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                    {Offset = Vector2.new(nextX, 0)}
                )
                atmosphereTween:Play()
            end
        end
    end)
    local signatureGradient = create("UIGradient", {
        Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(.22, .55),
            NumberSequenceKeypoint.new(.5, 0),
            NumberSequenceKeypoint.new(.78, .55),
            NumberSequenceKeypoint.new(1, 1),
        }),
        Offset = Vector2.new(-.25, 0),
    })
    local signatureLine = create("Frame", {
        Name = "SignatureLine", Parent = main, Position = UDim2.fromOffset(22, 0),
        Size = UDim2.new(1, -44, 0, 1), BackgroundColor3 = Theme.Accent,
        BackgroundTransparency = .42, BorderSizePixel = 0, ZIndex = 20,
    }, {signatureGradient})
    TweenService:Create(
        signatureGradient,
        TweenInfo.new(3.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
        {Offset = Vector2.new(.25, 0)}
    ):Play()
    local sidebar = create("Frame", {Name = "Header", Parent = main, Size = UDim2.new(1, 0, 0, 108), BackgroundColor3 = Theme.Surface, BackgroundTransparency = .42, BorderSizePixel = 0, Active = true}, {corner(13)})
    create("UIGradient", {Parent = sidebar, Color = ColorSequence.new(Color3.fromRGB(42, 42, 47), Color3.fromRGB(28, 28, 32)), Rotation = 90})
    create("Frame", {Parent = sidebar, Position = UDim2.new(0, 0, 1, -1), Size = UDim2.new(1, 0, 0, 1), BackgroundColor3 = Theme.Stroke, BackgroundTransparency = .45, BorderSizePixel = 0})
    local title = textLabel(sidebar, options.Title or "Noir", UDim2.new(1, -105, 0, 20), Theme.Text, Fonts.Bold)
    title.Position, title.TextSize = UDim2.fromOffset(18, 15), 18
    local subtitle = textLabel(sidebar, options.Subtitle or "interface system  /  1.0", UDim2.new(1, -105, 0, 14), Theme.Muted, Fonts.Regular)
    subtitle.Position, subtitle.TextSize, subtitle.Visible = UDim2.fromOffset(19, 35), 10, true
    local tabList = create("ScrollingFrame", {
        Name = "TabBar", Parent = sidebar, Position = UDim2.fromOffset(16, 58),
        Size = UDim2.new(1, -32, 0, 34), BackgroundTransparency = 1,
        BorderSizePixel = 0, CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.X,
        ScrollingDirection = Enum.ScrollingDirection.X, ScrollBarThickness = 0,
        ScrollBarImageTransparency = 1, ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
        Active = true, ClipsDescendants = true,
    }, {create("UIListLayout", {
        Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder,
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
    })})
    local content = create("Frame", {Parent = main, Position = UDim2.fromOffset(0, 108), Size = UDim2.new(1, 0, 1, -108), BackgroundTransparency = 1}, {corner(12)})
    local header = create("Frame", {Parent = content, Visible = false, Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1})
    local pageTitle = textLabel(header, "Overview", UDim2.new(1, -100, 1, 0), Theme.Text, Enum.Font.GothamBold)
    pageTitle.Position, pageTitle.TextSize = UDim2.fromOffset(15, 0), 17
    local close = create("TextButton", {Parent = sidebar, Position = UDim2.new(1, -39, 0, 13), Size = UDim2.fromOffset(26, 26), BackgroundTransparency = 1, BorderSizePixel = 0, AutoButtonColor = false, Text = ""})
    local closeA = create("Frame", {Parent = close, AnchorPoint = Vector2.new(.5, .5), Position = UDim2.fromScale(.5, .5), Size = UDim2.fromOffset(12, 1), Rotation = 45, BackgroundColor3 = Theme.Muted, BorderSizePixel = 0})
    local closeB = create("Frame", {Parent = close, AnchorPoint = Vector2.new(.5, .5), Position = UDim2.fromScale(.5, .5), Size = UDim2.fromOffset(12, 1), Rotation = -45, BackgroundColor3 = Theme.Muted, BorderSizePixel = 0})
    close.MouseEnter:Connect(function() tween(closeA, .15, {BackgroundColor3 = Theme.Danger}) tween(closeB, .15, {BackgroundColor3 = Theme.Danger}) end)
    close.MouseLeave:Connect(function() tween(closeA, .15, {BackgroundColor3 = Theme.Muted}) tween(closeB, .15, {BackgroundColor3 = Theme.Muted}) end)
    local pages = create("Frame", {Name = "Pages", Parent = content, Position = UDim2.fromOffset(16, 14), Size = UDim2.new(1, -32, 1, -28), BackgroundTransparency = 1})
    local designScale = options.Scale or .95
    local lockSize = options.LockSize ~= false
    local targetScale = designScale
    local uiScale = create("UIScale", {Parent = main, Scale = targetScale})
    local window
    local clampMobileToViewport
    local function updateResponsiveScale()
        local camera = workspace.CurrentCamera
        if not camera then return end
        local viewport = camera.ViewportSize
        if lockSize then
            targetScale = designScale
        else
            local availableScale = math.min((viewport.X - 32) / 650, (viewport.Y - 32) / 520)
            targetScale = math.clamp(math.min(designScale, availableScale), .72, designScale)
        end
        if window and window.Visible and not window.Transitioning then uiScale.Scale = targetScale end
        shadow.Size = UDim2.fromOffset(
            math.floor((requestedWidth + 48) * targetScale),
            math.floor((requestedHeight + 48) * targetScale)
        )
        task.defer(function()
            if clampMobileToViewport then clampMobileToViewport() end
        end)
    end
    window = {
        Gui = gui, Main = main, Shadow = shadow, Tabs = {}, CurrentTab = nil,
        Visible = true, Transitioning = false, Controls = {}, ThemeName = options.Theme or "Default",
        LockSize = lockSize, Compact = options.Compact == true,
    }
    if window.Compact then
        sidebar.Visible = false
        content.Position = UDim2.fromOffset(0, 0)
        content.Size = UDim2.fromScale(1, 1)
        pages.Position = UDim2.fromOffset(5, 5)
        pages.Size = UDim2.new(1, -10, 1, -10)
        close.Visible = false
    end
    function window:_Register(flag, control, kind)
        flag = tostring(flag)
        self.Controls[flag] = {Control = control, Kind = kind}
        return control
    end
    function window:GetThemes()
        return {"Default", "Moonstone", "Kyoto", "Carbon"}
    end
    function window:SetTheme(name)
        local nextTheme = Themes[name]
        if not nextTheme then return false, "Unknown theme" end
        local function brightness(color)
            return color.R * .299 + color.G * .587 + color.B * .114
        end
        tween(main, .25, {BackgroundColor3 = nextTheme.Background})
        tween(sidebar, .25, {BackgroundColor3 = nextTheme.Surface})
        for _, object in ipairs(gui:GetDescendants()) do
            if object:IsA("UIGradient") then
                local parentObject = object.Parent
                if parentObject == main then
                    object.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, nextTheme.Surface2),
                        ColorSequenceKeypoint.new(.58, nextTheme.Surface),
                        ColorSequenceKeypoint.new(1, nextTheme.Background),
                    })
                elseif parentObject == sidebar then
                    object.Color = ColorSequence.new(nextTheme.Surface2, nextTheme.Surface)
                elseif parentObject and parentObject.Name:match("^Section_") then
                    object.Color = ColorSequence.new(nextTheme.Surface2, nextTheme.Surface)
                elseif parentObject and parentObject.Name == "ActionButton" then
                    object.Color = parentObject:GetAttribute("Primary")
                        and ColorSequence.new(nextTheme.Accent, nextTheme.Accent2)
                        or ColorSequence.new(nextTheme.Control, nextTheme.Surface2)
                elseif parentObject and parentObject.Name == "DropdownButton" then
                    object.Color = ColorSequence.new(nextTheme.Background, nextTheme.Surface)
                elseif parentObject and parentObject.Name == "SliderFill" then
                    object.Color = ColorSequence.new(nextTheme.Accent2, nextTheme.Accent)
                elseif parentObject and parentObject.Name == "Atmosphere" then
                    object.Color = ColorSequence.new(nextTheme.Accent2, nextTheme.Accent)
                elseif parentObject and parentObject:IsA("GuiObject") then
                    object.Color = ColorSequence.new(nextTheme.Control, nextTheme.Surface2)
                end
            elseif object:IsA("UIStroke") then
                if object.Name == "DropdownStroke" then
                    object.Transparency = 1
                elseif not object:GetAttribute("Lucide") and object.Parent and not object.Parent.Name:match("Badge") then
                    tween(object, .25, {Color = nextTheme.Stroke})
                end
            elseif object:IsA("GuiObject") then
                if object.Name:match("^Section_") then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Surface})
                elseif object.Name == "ActionButton" then
                    local primary = object:GetAttribute("Primary") == true
                    tween(object, .25, {BackgroundColor3 = primary and nextTheme.Accent or nextTheme.Control})
                    local buttonObject = object:FindFirstChildOfClass("TextButton")
                    local buttonLabel = buttonObject and buttonObject:FindFirstChildOfClass("TextLabel")
                    if buttonLabel then tween(buttonLabel, .25, {TextColor3 = primary and nextTheme.OnAccent or nextTheme.Text}) end
                elseif object.Name == "ToggleTrack" then
                    local knob = object:FindFirstChild("ToggleKnob")
                    local enabled = knob and knob.Position.X.Scale > .5
                    tween(object, .25, {BackgroundColor3 = enabled and nextTheme.Accent or nextTheme.Control})
                    if knob then tween(knob, .25, {BackgroundColor3 = enabled and nextTheme.OnAccent or nextTheme.Muted}) end
                elseif object.Name == "ToggleKnob" then
                    local enabled = object.Position.X.Scale > .5
                    tween(object, .25, {BackgroundColor3 = enabled and nextTheme.OnAccent or nextTheme.Muted})
                elseif object.Name == "SliderFill" or object.Name == "SliderKnob" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Accent})
                elseif object.Name == "SelectionIndicator" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Accent})
                elseif object.Name == "TabIndicator" then
                    local selected = object.Parent and object.Parent:GetAttribute("Selected") == true
                    tween(object, .25, {BackgroundColor3 = selected and nextTheme.OnAccent or nextTheme.Accent})
                elseif object.Name == "SignatureLine" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Accent})
                elseif object.Name == "Atmosphere" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Accent2})
                elseif object.Name == "DropdownChevron" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Muted})
                elseif object.Name == "DropdownButton" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Background})
                elseif object.Name == "DropdownMenu" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Background})
                elseif object.Name == "DropdownSearch" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Background})
                elseif object.Name == "DropdownOption" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Accent})
                elseif object.Name == "SliderTrack" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Stroke})
                elseif object.Name == "MobileToggle" then
                    tween(object, .25, {BackgroundColor3 = nextTheme.Surface2, TextColor3 = nextTheme.Text})
                elseif object:IsA("TextButton") and object.Name:match("^Tab_") then
                    local selected = object:GetAttribute("Selected") == true
                    tween(object, .25, {BackgroundColor3 = nextTheme.Accent})
                    local tabLabel = object:FindFirstChildOfClass("TextLabel")
                    if tabLabel then tween(tabLabel, .25, {TextColor3 = selected and nextTheme.OnAccent or nextTheme.Muted}) end
                elseif object.BackgroundTransparency < .95 and object ~= main and object ~= sidebar then
                    local target = brightness(object.BackgroundColor3) > .72 and nextTheme.Accent or nextTheme.Control
                    tween(object, .25, {BackgroundColor3 = target})
                end
                if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
                    local selectedTabText = object.Parent and object.Parent:IsA("TextButton") and object.Parent.Name:match("^Tab_") and object.Parent:GetAttribute("Selected") == true
                    local actionRow = object.Parent and object.Parent.Parent
                    local textTarget
                    if actionRow and actionRow.Name == "ActionButton" then
                        textTarget = actionRow:GetAttribute("Primary") and nextTheme.OnAccent or nextTheme.Text
                    elseif selectedTabText then
                        textTarget = nextTheme.OnAccent
                    elseif object:GetAttribute("NoirRole") == "MutedText" then
                        textTarget = nextTheme.Muted
                    elseif object:GetAttribute("NoirRole") == "Text" or brightness(object.TextColor3) > .72 then
                        textTarget = nextTheme.Text
                    else
                        textTarget = nextTheme.Muted
                    end
                    tween(object, .25, {TextColor3 = textTarget})
                    if object:IsA("TextBox") then object.PlaceholderColor3 = nextTheme.Muted end
                end
            end
        end
        for key, value in pairs(nextTheme) do Theme[key] = value end
        self.ThemeName = name
        return true
    end

    local configFolder = options.ConfigFolder or "Script Hub/Universal"
    local configDirectory = configFolder .. "/configs"
    local autoLoadPath = configFolder .. "/autoload.txt"
    local function ensureConfigFolders()
        if type(makefolder) ~= "function" then return end
        local currentPath = ""
        for folderName in configFolder:gmatch("[^/\\]+") do
            currentPath = currentPath == "" and folderName or (currentPath .. "/" .. folderName)
            if type(isfolder) ~= "function" or not isfolder(currentPath) then
                pcall(makefolder, currentPath)
            end
        end
        if type(isfolder) ~= "function" or not isfolder(configDirectory) then pcall(makefolder, configDirectory) end
    end
    local function cleanConfigName(name)
        name = tostring(name or ""):gsub("[^%w _%-]", ""):sub(1, 32)
        name = name:match("^%s*(.-)%s*$") or ""
        return name ~= "" and name or nil
    end
    local configApi = {}
    function configApi:Save(name)
        name = cleanConfigName(name)
        if not name or type(writefile) ~= "function" then return false, "Invalid config or file API unavailable" end
        ensureConfigFolders()
        local data = {Theme = window.ThemeName, Values = {}}
        for flag, entry in pairs(window.Controls) do
            local ok, value = pcall(function() return entry.Control:Get() end)
            if ok then data.Values[flag] = value end
        end
        local ok, encoded = pcall(HttpService.JSONEncode, HttpService, data)
        if not ok then return false, encoded end
        local success, err = pcall(writefile, configDirectory .. "/" .. name .. ".json", encoded)
        return success, err
    end
    function configApi:Load(name)
        name = cleanConfigName(name)
        local path = name and (configDirectory .. "/" .. name .. ".json")
        if not path or type(isfile) ~= "function" or type(readfile) ~= "function" or not isfile(path) then return false, "Config not found" end
        local ok, decoded = pcall(function() return HttpService:JSONDecode(readfile(path)) end)
        if not ok or type(decoded) ~= "table" then return false, decoded end
        if decoded.Theme then window:SetTheme(decoded.Theme) end
        for flag, value in pairs(decoded.Values or {}) do
            local entry = window.Controls[flag]
            if entry then pcall(function() entry.Control:Set(value) end) end
        end
        return true
    end
    function configApi:Delete(name)
        name = cleanConfigName(name)
        local path = name and (configDirectory .. "/" .. name .. ".json")
        if not path or type(isfile) ~= "function" or type(delfile) ~= "function" or not isfile(path) then return false, "Config not found" end
        local ok, err = pcall(delfile, path)
        return ok, err
    end
    function configApi:List()
        ensureConfigFolders()
        local result = {}
        if type(listfiles) == "function" then
            local ok, files = pcall(listfiles, configDirectory)
            if ok then
                for _, path in ipairs(files) do
                    local name = tostring(path):match("([^/\\]+)%.json$")
                    if name then table.insert(result, name) end
                end
            end
        end
        table.sort(result)
        return result
    end
    function configApi:SetAutoLoad(name)
        name = cleanConfigName(name)
        if not name or type(writefile) ~= "function" then return false end
        ensureConfigFolders()
        return pcall(writefile, autoLoadPath, name)
    end
    function configApi:ClearAutoLoad()
        if type(isfile) == "function" and type(delfile) == "function" and isfile(autoLoadPath) then return pcall(delfile, autoLoadPath) end
        return false
    end
    function configApi:AutoLoad()
        if type(isfile) ~= "function" or type(readfile) ~= "function" or not isfile(autoLoadPath) then return false end
        local ok, name = pcall(readfile, autoLoadPath)
        return ok and self:Load(name)
    end
    window.Config = configApi
    local mobileButton = create("TextButton", {
        Name = "MobileToggle", Parent = gui, AnchorPoint = Vector2.new(.5, .5),
        Position = UDim2.new(1, -48, 1, -48), Size = UDim2.fromOffset(52, 52),
        BackgroundColor3 = Color3.fromRGB(34, 34, 39), BorderSizePixel = 0,
        AutoButtonColor = false, Text = "", TextColor3 = Theme.Text,
        TextSize = 20, FontFace = Fonts.Bold, ZIndex = 50,
        Visible = options.MobileButton == true or UserInputService.TouchEnabled,
    }, {
        corner(16),
        stroke(Color3.fromRGB(78, 78, 86), .35),
        create("UIGradient", {
            Color = ColorSequence.new(Color3.fromRGB(54, 54, 61), Color3.fromRGB(25, 25, 29)),
            Rotation = 120,
        }),
    })
    local mobileScale = create("UIScale", {Parent = mobileButton, Scale = 1})
    local mobileIconTop = create("Frame", {
        Parent = mobileButton, AnchorPoint = Vector2.new(.5, .5), Position = UDim2.new(.5, 0, .5, -4),
        Size = UDim2.fromOffset(17, 2), BackgroundColor3 = Theme.Text, BorderSizePixel = 0, ZIndex = 51,
    }, {corner(99)})
    local mobileIconBottom = create("Frame", {
        Parent = mobileButton, AnchorPoint = Vector2.new(.5, .5), Position = UDim2.new(.5, 3, .5, 3),
        Size = UDim2.fromOffset(11, 2), BackgroundColor3 = Theme.Text, BorderSizePixel = 0, ZIndex = 51,
    }, {corner(99)})
    local mobileDot = create("Frame", {
        Parent = mobileButton, AnchorPoint = Vector2.new(.5, .5), Position = UDim2.new(.5, 0, 1, -6),
        Size = UDim2.fromOffset(12, 2), BackgroundColor3 = Theme.Text, BorderSizePixel = 0, ZIndex = 51,
    }, {corner(99)})
    local mobileDragging, mobileStart, mobilePosition, mobileMoved = false, nil, nil, false
    clampMobileToViewport = function()
        local camera = workspace.CurrentCamera
        if not camera or not mobileButton.Visible then return end
        local viewport = camera.ViewportSize
        local half = Vector2.new(26, 26)
        local center = Vector2.new(
            mobileButton.Position.X.Scale * viewport.X + mobileButton.Position.X.Offset,
            mobileButton.Position.Y.Scale * viewport.Y + mobileButton.Position.Y.Offset
        )
        mobileButton.Position = UDim2.fromOffset(
            math.clamp(center.X, half.X + 6, viewport.X - half.X - 6),
            math.clamp(center.Y, half.Y + 6, viewport.Y - half.Y - 6)
        )
    end
    mobileButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            local camera = workspace.CurrentCamera
            local viewport = camera and camera.ViewportSize or Vector2.new(1920, 1080)
            local center = Vector2.new(
                mobileButton.Position.X.Scale * viewport.X + mobileButton.Position.X.Offset,
                mobileButton.Position.Y.Scale * viewport.Y + mobileButton.Position.Y.Offset
            )
            mobileDragging, mobileStart, mobilePosition, mobileMoved = true, input.Position, center, false
            tween(mobileScale, .1, {Scale = .9})
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if mobileDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - mobileStart
            mobileMoved = mobileMoved or delta.Magnitude > 5
            local camera = workspace.CurrentCamera
            local viewport = camera and camera.ViewportSize or Vector2.new(1920, 1080)
            local half = Vector2.new(26, 26)
            local desired = mobilePosition + delta
            mobileButton.Position = UDim2.fromOffset(
                math.clamp(desired.X, half.X + 6, viewport.X - half.X - 6),
                math.clamp(desired.Y, half.Y + 6, viewport.Y - half.Y - 6)
            )
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if mobileDragging and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            mobileDragging = false
            tween(mobileScale, .22, {Scale = 1}, Enum.EasingStyle.Back)
        end
    end)
    mobileButton.Activated:Connect(function()
        if mobileMoved then return end
        window:Toggle()
        tween(mobileDot, .2, {Size = window.Visible and UDim2.fromOffset(12, 2) or UDim2.fromOffset(5, 5)}, Enum.EasingStyle.Back)
    end)
    window.MobileButton = mobileButton
    local visibilitySnapshot = {}
    local function visualObjects(root)
        local objects = {root}
        for _, object in ipairs(root:GetDescendants()) do table.insert(objects, object) end
        return objects
    end
    local function captureVisibility()
        table.clear(visibilitySnapshot)
        for _, object in ipairs(visualObjects(main)) do
            local state = {}
            if object:IsA("GuiObject") then
                state.BackgroundTransparency = object.BackgroundTransparency
                if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
                    state.TextTransparency = object.TextTransparency
                    state.TextStrokeTransparency = object.TextStrokeTransparency
                end
                if object:IsA("ImageLabel") or object:IsA("ImageButton") then
                    state.ImageTransparency = object.ImageTransparency
                end
            elseif object:IsA("UIStroke") then
                state.Transparency = object.Transparency
            end
            if next(state) then visibilitySnapshot[object] = state end
        end
    end
    local function tweenSnapshot(hidden, duration)
        for object, original in pairs(visibilitySnapshot) do
            if object.Parent then
                local target = {}
                for property, value in pairs(original) do target[property] = hidden and 1 or value end
                tween(object, duration, target, Enum.EasingStyle.Quint)
            end
        end
    end
    function window:SetVisible(visible)
        visible = visible == true
        if self.Transitioning or self.Visible == visible then return end
        self.Transitioning = true
        self.Visible = visible
        if visible then
            main.Visible, shadow.Visible = true, true
            tweenSnapshot(false, .24)
            tween(uiScale, .26, {Scale = targetScale}, Enum.EasingStyle.Quint)
            tween(shadow, .24, {ImageTransparency = .45}, Enum.EasingStyle.Quint)
            task.delay(.26, function() self.Transitioning = false end)
        else
            captureVisibility()
            tweenSnapshot(true, .2)
            tween(uiScale, .22, {Scale = targetScale * .965}, Enum.EasingStyle.Quint)
            tween(shadow, .2, {ImageTransparency = 1}, Enum.EasingStyle.Quint)
            task.delay(.22, function()
                main.Visible, shadow.Visible = false, false
                self.Transitioning = false
            end)
        end
    end
    function window:Toggle()
        self:SetVisible(not self.Visible)
    end
    function window:Confirm(confirmOptions)
        confirmOptions = confirmOptions or {}
        local previous = main:FindFirstChild("ConfirmationOverlay")
        if previous then previous:Destroy() end
        local overlay = create("TextButton", {
            Name = "ConfirmationOverlay", Parent = main, Size = UDim2.fromScale(1, 1),
            BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 1,
            BorderSizePixel = 0, AutoButtonColor = false, Text = "", ZIndex = 100,
        })
        local panel = create("Frame", {
            Parent = overlay, AnchorPoint = Vector2.new(.5, .5), Position = UDim2.fromScale(.5, .5),
            Size = UDim2.fromOffset(330, 166), BackgroundColor3 = Theme.Surface,
            BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 101,
        }, {
            corner(13), stroke(Theme.Stroke, .25),
            create("UIGradient", {Color = ColorSequence.new(Theme.Surface2, Theme.Background), Rotation = 110}),
        })
        local panelScale = create("UIScale", {Parent = panel, Scale = .9})
        local titleLabel = textLabel(panel, confirmOptions.Title or "Confirm action", UDim2.new(1, -32, 0, 28), Theme.Text, Fonts.Bold)
        titleLabel.Position, titleLabel.TextSize, titleLabel.ZIndex = UDim2.fromOffset(16, 15), 16, 102
        local body = textLabel(panel, confirmOptions.Description or "Are you sure?", UDim2.new(1, -32, 0, 45), Theme.Muted)
        body.Position, body.TextSize, body.TextWrapped, body.TextYAlignment, body.ZIndex = UDim2.fromOffset(16, 48), 12, true, Enum.TextYAlignment.Top, 102
        local cancel = create("TextButton", {
            Parent = panel, Position = UDim2.new(0, 16, 1, -50), Size = UDim2.new(.5, -22, 0, 34),
            BackgroundColor3 = Theme.Control, BorderSizePixel = 0, AutoButtonColor = false,
            FontFace = Fonts.Medium, Text = confirmOptions.CancelText or "Cancel",
            TextColor3 = Theme.Text, TextSize = 13, ZIndex = 102,
        }, {corner(8), stroke(Theme.Stroke, .45)})
        local confirm = create("TextButton", {
            Parent = panel, AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -16, 1, -50),
            Size = UDim2.new(.5, -22, 0, 34), BackgroundColor3 = Theme.Accent,
            BorderSizePixel = 0, AutoButtonColor = false, FontFace = Fonts.Medium,
            Text = confirmOptions.ConfirmText or "Confirm", TextColor3 = Theme.OnAccent,
            TextSize = 13, ZIndex = 102,
        }, {corner(8), stroke(Theme.Accent2, .45)})
        local closing = false
        local function closeDialog(callback)
            if closing then return end
            closing = true
            for _, object in ipairs(panel:GetDescendants()) do
                if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
                    tween(object, .16, {
                        BackgroundTransparency = 1,
                        TextTransparency = 1,
                        TextStrokeTransparency = 1,
                    }, Enum.EasingStyle.Quint)
                elseif object:IsA("GuiObject") then
                    tween(object, .16, {BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
                elseif object:IsA("UIStroke") then
                    tween(object, .16, {Transparency = 1}, Enum.EasingStyle.Quint)
                end
            end
            tween(panelScale, .18, {Scale = .92}, Enum.EasingStyle.Quint)
            tween(panel, .18, {BackgroundTransparency = 1})
            tween(overlay, .18, {BackgroundTransparency = 1})
            task.delay(.19, function()
                if overlay.Parent then overlay:Destroy() end
                protect(callback)
            end)
        end
        cancel.Activated:Connect(function() closeDialog(confirmOptions.Cancelled) end)
        confirm.Activated:Connect(function() closeDialog(confirmOptions.Callback) end)
        tween(overlay, .18, {BackgroundTransparency = .35})
        tween(panel, .2, {BackgroundTransparency = 0})
        tween(panelScale, .25, {Scale = 1}, Enum.EasingStyle.Back)
        return overlay
    end
    local function fadeOutTree(root, duration)
        for _, object in ipairs(root:GetDescendants()) do
            if object:IsA("GuiObject") then
                local properties = {BackgroundTransparency = 1}
                if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
                    properties.TextTransparency = 1
                    properties.TextStrokeTransparency = 1
                end
                if object:IsA("ImageLabel") or object:IsA("ImageButton") then
                    properties.ImageTransparency = 1
                end
                tween(object, duration, properties, Enum.EasingStyle.Quint)
            elseif object:IsA("UIStroke") then
                tween(object, duration, {Transparency = 1}, Enum.EasingStyle.Quint)
            end
        end
    end
    local dragging, dragStart, startPosition
    sidebar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            local point, tabPosition, tabSize = input.Position, tabList.AbsolutePosition, tabList.AbsoluteSize
            if point.X >= tabPosition.X and point.X <= tabPosition.X + tabSize.X
                and point.Y >= tabPosition.Y and point.Y <= tabPosition.Y + tabSize.Y then
                return
            end
            dragging, dragStart, startPosition = true, input.Position, main.Position
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            main.Position = UDim2.new(
                startPosition.X.Scale,
                startPosition.X.Offset + delta.X,
                startPosition.Y.Scale,
                startPosition.Y.Offset + delta.Y
            )
            shadow.Position = main.Position
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = false end
    end)
    close.Activated:Connect(function()
        close.Active = false
        fadeOutTree(main, .26)
        tween(main, .28, {Size = UDim2.fromOffset(610, 480), BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
        tween(shadow, .28, {ImageTransparency = 1, Size = UDim2.fromOffset(614, 494)}, Enum.EasingStyle.Quint)
        task.delay(.29, function() gui:Destroy() end)
    end)
    function window:CreateTab(tabOptions)
        tabOptions = type(tabOptions) == "table" and tabOptions or {Title = tostring(tabOptions)}
        local safeName = tostring(tabOptions.Title or "Tab"):gsub("%W+", "_")
        local automaticWidth = math.clamp(#tostring(tabOptions.Title or "Tab") * 8 + (tabOptions.Icon and 34 or 24), 68, 142)
        local button = create("TextButton", {Name = "Tab_" .. safeName, Parent = tabList, Size = UDim2.fromOffset(tabOptions.Width or automaticWidth, 31), BackgroundColor3 = Theme.Text, BackgroundTransparency = 1, BorderSizePixel = 0, AutoButtonColor = false, Text = "", ZIndex = 2}, {corner(8)})
        local buttonScale = create("UIScale", {Parent = button, Scale = 1})
        local indicator = create("Frame", {
            Name = "TabIndicator", Parent = button, AnchorPoint = Vector2.new(.5, 1),
            Position = UDim2.new(.5, tabOptions.Icon and 7 or 0, 1, -2), Size = UDim2.fromOffset(0, 2),
            BackgroundColor3 = Theme.Accent, BackgroundTransparency = 0,
            BorderSizePixel = 0, Visible = true, ZIndex = 5,
        }, {corner(99)})
        local label = textLabel(button, (tabOptions.Icon and tabOptions.Icon .. "  " or "") .. (tabOptions.Title or "Tab"), UDim2.fromScale(1, 1), Theme.Muted)
        label.TextXAlignment, label.TextSize = Enum.TextXAlignment.Center, 14
        local page = create("ScrollingFrame", {
            Name = "Page_" .. safeName,
            Parent = pages, Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
            BorderSizePixel = 0, ScrollBarThickness = 2, ScrollBarImageColor3 = Theme.Muted,
            CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y, Visible = false,
        }, {create("UIPadding", {
            PaddingTop = UDim.new(0, 3),
            PaddingBottom = UDim.new(0, 8),
            PaddingLeft = UDim.new(0, 1),
            PaddingRight = UDim.new(0, 5),
        })})
        local pageVeil = create("Frame", {
            Name = "PageVeil", Parent = page, Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.Background,
            BackgroundTransparency = 1, BorderSizePixel = 0, Visible = false,
            Active = false, ZIndex = 60,
        })
        local columns = create("Frame", {
            Parent = page, BackgroundTransparency = 1, Size = UDim2.new(1, -5, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
        }, {create("UIListLayout", {
            Padding = UDim.new(0, 14), SortOrder = Enum.SortOrder.LayoutOrder,
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            VerticalAlignment = Enum.VerticalAlignment.Top,
        })})
        local leftColumn = create("Frame", {
            Parent = columns, BackgroundTransparency = 1, Size = UDim2.new(.5, -7, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
        }, {create("UIListLayout", {Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder})})
        local rightColumn = create("Frame", {
            Parent = columns, BackgroundTransparency = 1, Size = UDim2.new(.5, -7, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
        }, {create("UIListLayout", {Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder})})
        if window.Compact then
            button.Visible = false
            leftColumn.Size = UDim2.new(1, 0, 0, 0)
            rightColumn.Visible = false
            columns.Size = UDim2.new(1, 0, 0, 0)
        end
        local tab = setmetatable({
            Title = tabOptions.Title or "Tab", Button = button, Indicator = indicator,
            Label = label, Page = page, Columns = columns, LeftColumn = leftColumn,
            ButtonScale = buttonScale, Veil = pageVeil,
            RightColumn = rightColumn, SectionCount = 0, Window = window,
        }, Tab)
        table.insert(window.Tabs, tab)
        function tab:Select()
            if window.CurrentTab == tab then return end
            for _, other in ipairs(window.Tabs) do
                local selected = other == tab
                other.Button:SetAttribute("Selected", selected)
                if selected then
                    other.Page.Visible = true
                    other.Page.Position = UDim2.fromOffset(12, 0)
                    other.Veil.Visible = true
                    other.Veil.BackgroundTransparency = .32
                    tween(other.Page, .28, {Position = UDim2.fromOffset(0, 0)}, Enum.EasingStyle.Quint)
                    tween(other.Veil, .3, {BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
                    task.delay(.31, function() if other.Veil.Parent then other.Veil.Visible = false end end)
                    local revealIndex = 0
                    for _, object in ipairs(other.Page:GetDescendants()) do
                        if object:IsA("Frame") and object.Name:match("^Section_") then
                            revealIndex += 1
                            local scale = object:FindFirstChildOfClass("UIScale")
                            if scale then
                                scale.Scale = .975
                                task.delay((revealIndex - 1) * .035, function()
                                    if scale.Parent then tween(scale, .24, {Scale = 1}, Enum.EasingStyle.Quint) end
                                end)
                            end
                        end
                    end
                    tween(other.ButtonScale, .24, {Scale = 1}, Enum.EasingStyle.Back)
                else
                    other.Page.Visible = false
                    tween(other.ButtonScale, .18, {Scale = .96})
                end
                tween(other.Button, .18, {BackgroundTransparency = selected and 0 or 1})
                tween(other.Label, .18, {TextColor3 = selected and (Theme.OnAccent or Theme.Background) or Theme.Muted})
                tween(other.Indicator, .24, {
                    Size = UDim2.fromOffset(selected and math.min(28, other.Button.AbsoluteSize.X - 18) or 0, 2),
                    BackgroundColor3 = selected and (Theme.OnAccent or Theme.Background) or Theme.Accent,
                }, Enum.EasingStyle.Quint)
            end
            window.CurrentTab = tab
            task.defer(function()
                if not tabList.Parent or not tab.Button.Parent then return end
                local relativeLeft = tab.Button.AbsolutePosition.X - tabList.AbsolutePosition.X + tabList.CanvasPosition.X
                local targetX = relativeLeft + tab.Button.AbsoluteSize.X / 2 - tabList.AbsoluteSize.X / 2
                local maximumX = math.max(0, tabList.AbsoluteCanvasSize.X - tabList.AbsoluteSize.X)
                tween(tabList, .28, {CanvasPosition = Vector2.new(math.clamp(targetX, 0, maximumX), 0)}, Enum.EasingStyle.Quint)
            end)
        end
        button.Activated:Connect(function() tab:Select() end)
        if not window.CurrentTab then tab:Select() end
        return tab
    end
    function window:Notify(options)
        options = options or {}
        local holder = gui:FindFirstChild("NotificationHolder")
        if not holder then
            holder = create("Frame", {
                Name = "NotificationHolder", Parent = gui, AnchorPoint = Vector2.new(1, 0),
                Position = UDim2.new(1, -16, 0, 16), Size = UDim2.fromOffset(245, 500),
                BackgroundTransparency = 1, ZIndex = 80,
            }, {create("UIListLayout", {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Top})})
        end
        local toast = create("Frame", {
            Parent = holder, Size = UDim2.fromOffset(245, 54), BackgroundColor3 = Theme.Surface,
            BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 81,
        }, {
            corner(10), stroke(Theme.Stroke, .5),
            create("UIGradient", {Color = ColorSequence.new(Theme.Surface, Theme.Background), Rotation = 105}),
        })
        local toastScale = create("UIScale", {Parent = toast, Scale = .97})
        local toastTitle = textLabel(toast, options.Title or "Notification", UDim2.new(1, -24, 0, 20), Theme.Text, Fonts.Bold)
        toastTitle.Position, toastTitle.TextSize, toastTitle.ZIndex = UDim2.fromOffset(12, 7), 13, 82
        local toastBody = textLabel(toast, options.Description or options.Text or "", UDim2.new(1, -24, 0, 18), Theme.Muted, Fonts.Regular)
        toastBody.Position, toastBody.TextSize, toastBody.TextWrapped, toastBody.ZIndex = UDim2.fromOffset(12, 27), 10, false, 82
        local duration = options.Duration or 3.5
        tween(toast, .22, {BackgroundTransparency = 0}, Enum.EasingStyle.Quint)
        tween(toastScale, .24, {Scale = 1}, Enum.EasingStyle.Quint)
        task.delay(duration, function()
            for _, object in ipairs(toast:GetDescendants()) do
                if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
                    tween(object, .18, {TextTransparency = 1, BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
                elseif object:IsA("ImageLabel") or object:IsA("ImageButton") then
                    tween(object, .18, {ImageTransparency = 1, BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
                elseif object:IsA("GuiObject") then
                    tween(object, .18, {BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
                elseif object:IsA("UIStroke") then
                    tween(object, .18, {Transparency = 1}, Enum.EasingStyle.Quint)
                end
            end
            tween(toastScale, .2, {Scale = .965}, Enum.EasingStyle.Quint)
            tween(toast, .18, {BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
            task.delay(.2, function() if toast.Parent then toast:Destroy() end end)
        end)
        return toast
    end
    function window:Destroy() gui:Destroy() end
    updateResponsiveScale()
    if workspace.CurrentCamera then
        workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateResponsiveScale)
    end
    main.Size = UDim2.fromOffset(math.max(1, requestedWidth - 40), math.max(1, requestedHeight - 40))
    main.BackgroundTransparency = 0
    uiScale.Scale = targetScale * .965
    shadow.ImageTransparency = 1
    tween(main, .42, {Size = requestedSize}, Enum.EasingStyle.Back)
    tween(uiScale, .38, {Scale = targetScale}, Enum.EasingStyle.Quint)
    tween(shadow, .42, {ImageTransparency = .45}, Enum.EasingStyle.Quart)
    window:SetTheme(options.Theme or "Default")
    return window
end

Noir.Theme = Theme
Noir.Themes = Themes
getgenv().NoirUI = Noir
return Noir
