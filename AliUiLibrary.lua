local AliLibrary = {}
AliLibrary.__index = AliLibrary

--// SERVICES
local Players          = game:GetService("Players")
local TweenService     = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService       = game:GetService("RunService")
local CoreGui          = game:GetService("CoreGui")

local localPlayer = Players.LocalPlayer

--// THEME
local Theme = {
    -- Fond principal
    BgDark        = Color3.fromRGB(28, 28, 32),
    BgMid         = Color3.fromRGB(36, 36, 42),
    BgLight       = Color3.fromRGB(44, 44, 52),
    BgHover       = Color3.fromRGB(55, 55, 65),

    -- Accents
    Accent        = Color3.fromRGB(160, 160, 175),
    AccentHover   = Color3.fromRGB(200, 200, 215),
    AccentActive  = Color3.fromRGB(230, 230, 245),

    -- Texte
    TextPrimary   = Color3.fromRGB(240, 240, 245),
    TextSecondary = Color3.fromRGB(155, 155, 165),
    TextDim       = Color3.fromRGB(90, 90, 100),

    -- Toggle / Slider actif
    Green         = Color3.fromRGB(80, 210, 130),
    GreenDark     = Color3.fromRGB(40, 140, 85),
    SliderFill    = Color3.fromRGB(160, 160, 200),

    -- Bordure
    Border        = Color3.fromRGB(50, 50, 58),
    BorderHover   = Color3.fromRGB(80, 80, 95),

    -- Transparences
    WindowTransp  = 0.0,
    PanelTransp   = 0.0,
}

--// UTILITAIRES
local function Tween(obj, props, duration, style, direction)
    style     = style     or Enum.EasingStyle.Quart
    direction = direction or Enum.EasingDirection.Out
    local ti  = TweenInfo.new(duration or 0.2, style, direction)
    return TweenService:Create(obj, ti, props)
end

local function Create(class, props, children)
    local obj = Instance.new(class)
    for k, v in pairs(props or {}) do
        if k ~= "Parent" then obj[k] = v end
    end
    for _, child in pairs(children or {}) do
        child.Parent = obj
    end
    if props and props.Parent then obj.Parent = props.Parent end
    return obj
end

local function AddCorner(parent, radius)
    return Create("UICorner", { CornerRadius = UDim.new(0, radius or 6), Parent = parent })
end

local function AddStroke(parent, color, thickness, transparency)
    return Create("UIStroke", {
        Color        = color        or Theme.Border,
        Thickness    = thickness    or 1,
        Transparency = transparency or 0,
        Parent       = parent
    })
end



local function AddPadding(parent, top, right, bottom, left)
    return Create("UIPadding", {
        PaddingTop    = UDim.new(0, top    or 6),
        PaddingRight  = UDim.new(0, right  or 6),
        PaddingBottom = UDim.new(0, bottom or 6),
        PaddingLeft   = UDim.new(0, left   or 6),
        Parent        = parent
    })
end

local function HoverEffect(frame, normalColor, hoverColor, duration)
    duration = duration or 0.15
    frame.MouseEnter:Connect(function()
        Tween(frame, { BackgroundColor3 = hoverColor }, duration):Play()
    end)
    frame.MouseLeave:Connect(function()
        Tween(frame, { BackgroundColor3 = normalColor }, duration):Play()
    end)
end

--// ============================================================
--//  CRÉATION DE LA FENÊTRE PRINCIPALE
--// ============================================================
function AliLibrary:CreateWindow(config)
    config = config or {}
    local title    = config.Title    or "Ali Library"
    local subtitle = config.SubTitle or ""
    local size     = config.Size     or UDim2.fromOffset(560, 420)
    local position = config.Position or UDim2.fromScale(0.5, 0.5)
    local minKey   = config.MinimizeKey or Enum.KeyCode.RightControl

    --// GUI ROOT
    local screenGui = Create("ScreenGui", {
        Name            = "AliLibraryUI_" .. math.random(1000, 9999),
        ResetOnSpawn    = false,
        ZIndexBehavior  = Enum.ZIndexBehavior.Sibling,
        DisplayOrder    = 999,
    })

    -- Essaye de mettre dans CoreGui, sinon dans PlayerGui
    local ok = pcall(function() screenGui.Parent = CoreGui end)
    if not ok then screenGui.Parent = localPlayer:WaitForChild("PlayerGui") end

    

    --// FENÊTRE PRINCIPALE
    local mainFrame = Create("Frame", {
        Name                   = "MainFrame",
        Size                   = size,
        Position               = position,
        AnchorPoint            = Vector2.new(0.5, 0.5),
        BackgroundColor3       = Theme.BgDark,
        BackgroundTransparency = Theme.WindowTransp,
        BorderSizePixel        = 0,
        ClipsDescendants       = true,
        ZIndex                 = 2,
        Parent                 = screenGui
    })
    AddCorner(mainFrame, 10)
    AddStroke(mainFrame, Theme.Border, 1, 0.3)

    --// HEADER
    local header = Create("Frame", {
        Name             = "Header",
        Size             = UDim2.new(1, 0, 0, 52),
        BackgroundColor3 = Theme.BgMid,
        BorderSizePixel  = 0,
        ZIndex           = 3,
        Parent           = mainFrame
    })
    AddCorner(header, 10)
    -- Fix coin bas du header
    Create("Frame", {
        Size             = UDim2.new(1, 0, 0.5, 0),
        Position         = UDim2.new(0, 0, 0.5, 0),
        BackgroundColor3 = Theme.BgMid,
        BorderSizePixel  = 0,
        ZIndex           = 3,
        Parent           = header
    })

    -- Ligne de séparation header/contenu
    Create("Frame", {
        Name             = "HeaderLine",
        Size             = UDim2.new(1, -20, 0, 1),
        Position         = UDim2.new(0, 10, 1, 0),
        BackgroundColor3 = Theme.Border,
        BackgroundTransparency = 0.3,
        BorderSizePixel  = 0,
        ZIndex           = 4,
        Parent           = header
    })

    -- Titre
    local titleLabel = Create("TextLabel", {
        Name             = "Title",
        Size             = UDim2.new(0.65, -20, 1, 0),
        Position         = UDim2.new(0, 16, 0, 0),
        BackgroundTransparency = 1,
        Text             = title,
        TextColor3       = Theme.TextPrimary,
        TextSize         = 16,
        Font             = Enum.Font.GothamBold,
        TextXAlignment   = Enum.TextXAlignment.Left,
        ZIndex           = 4,
        Parent           = header
    })

    -- Sous-titre (centré)
    local subTitleLabel = Create("TextLabel", {
        Name             = "SubTitle",
        Size             = UDim2.new(0, 140, 0, 20),
        Position         = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint      = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Text             = subtitle,
        TextColor3       = Theme.TextDim,
        TextSize         = 12,
        Font             = Enum.Font.Gotham,
        TextXAlignment   = Enum.TextXAlignment.Center,
        ZIndex           = 5,
        Parent           = header
    })

    -- Bouton fermer
    local closeBtn = Create("TextButton", {
        Name             = "CloseBtn",
        Size             = UDim2.fromOffset(22, 22),
        Position         = UDim2.new(1, -38, 0.5, -11),
        BackgroundColor3 = Color3.fromRGB(70, 70, 80),
        BackgroundTransparency = 0.3,
        Text             = "x",
        TextColor3       = Theme.TextSecondary,
        TextSize         = 11,
        Font             = Enum.Font.GothamBold,
        BorderSizePixel  = 0,
        ZIndex           = 5,
        Parent           = header
    })
    AddCorner(closeBtn, 5)
    AddStroke(closeBtn, Theme.Border, 1, 0.5)

    closeBtn.MouseEnter:Connect(function()
        Tween(closeBtn, { BackgroundColor3 = Color3.fromRGB(100, 60, 60), BackgroundTransparency = 0, TextColor3 = Theme.TextPrimary }, 0.12):Play()
    end)
    closeBtn.MouseLeave:Connect(function()
        Tween(closeBtn, { BackgroundColor3 = Color3.fromRGB(70, 70, 80), BackgroundTransparency = 0.3, TextColor3 = Theme.TextSecondary }, 0.12):Play()
    end)
    closeBtn.MouseButton1Click:Connect(function()
        Tween(mainFrame, { Size = UDim2.fromOffset(size.X.Offset, 0), BackgroundTransparency = 1 }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In):Play()
        task.delay(0.3, function() screenGui:Destroy() end)
    end)

    -- Bouton minimiser
    local minimizeBtn = Create("TextButton", {
        Name             = "MinimizeBtn",
        Size             = UDim2.fromOffset(22, 22),
        Position         = UDim2.new(1, -64, 0.5, -11),
        BackgroundColor3 = Color3.fromRGB(70, 70, 80),
        BackgroundTransparency = 0.3,
        Text             = "─",
        TextColor3       = Theme.TextSecondary,
        TextSize         = 12,
        Font             = Enum.Font.GothamBold,
        BorderSizePixel  = 0,
        ZIndex           = 5,
        Parent           = header
    })
    AddCorner(minimizeBtn, 5)
    AddStroke(minimizeBtn, Theme.Border, 1, 0.5)
    minimizeBtn.MouseEnter:Connect(function()
        Tween(minimizeBtn, { BackgroundColor3 = Color3.fromRGB(90, 90, 105), BackgroundTransparency = 0, TextColor3 = Theme.TextPrimary }, 0.12):Play()
    end)
    minimizeBtn.MouseLeave:Connect(function()
        Tween(minimizeBtn, { BackgroundColor3 = Color3.fromRGB(70, 70, 80), BackgroundTransparency = 0.3, TextColor3 = Theme.TextSecondary }, 0.12):Play()
    end)

    --// DRAG
    local dragging, dragStart, startPos = false, nil, nil
    header.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging  = true
            dragStart = input.Position
            startPos  = mainFrame.Position
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            local newPos = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
            mainFrame.Position  = newPos
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    local contentFrame  -- forward declaration pour le minimize

    --// MINIMIZE
    local minimized = false
    minimizeBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        if minimized then
            contentFrame.Visible = false
            Tween(mainFrame,  { Size = UDim2.fromOffset(size.X.Offset, 52) }, 0.2, Enum.EasingStyle.Quart):Play()
        else
            Tween(mainFrame,  { Size = size }, 0.25, Enum.EasingStyle.Quart):Play()
            task.delay(0.25, function()
                contentFrame.Visible = true
            end)
        end
    end)

    -- MinimizeKey
    UserInputService.InputBegan:Connect(function(input, gpe)
        if gpe then return end
        if input.KeyCode == minKey then
            minimizeBtn.MouseButton1Click:Fire()
        end
    end)

    --// ZONE DE CONTENU (tabs + panels)
    contentFrame = Create("Frame", {
        Name             = "Content",
        Size             = UDim2.new(1, 0, 1, -52),
        Position         = UDim2.new(0, 0, 0, 52),
        BackgroundTransparency = 1,
        BorderSizePixel  = 0,
        ZIndex           = 3,
        Parent           = mainFrame
    })

    --// SIDEBAR DES TABS
    local sidebar = Create("Frame", {
        Name             = "Sidebar",
        Size             = UDim2.new(0, 130, 1, -10),
        Position         = UDim2.new(0, 8, 0, 5),
        BackgroundColor3 = Theme.BgMid,
        BackgroundTransparency = 0.4,
        BorderSizePixel  = 0,
        ZIndex           = 3,
        Parent           = contentFrame
    })
    AddCorner(sidebar, 8)

    local sidebarList = Create("UIListLayout", {
        SortOrder       = Enum.SortOrder.LayoutOrder,
        Padding         = UDim.new(0, 4),
        Parent          = sidebar
    })
    AddPadding(sidebar, 8, 6, 8, 6)

    -- Ligne séparatrice sidebar/panel
    Create("Frame", {
        Name             = "SidebarLine",
        Size             = UDim2.new(0, 1, 1, -20),
        Position         = UDim2.new(0, 138, 0, 10),
        BackgroundColor3 = Theme.Border,
        BackgroundTransparency = 0.3,
        BorderSizePixel  = 0,
        ZIndex           = 3,
        Parent           = contentFrame
    })

    --// ZONE DES PANELS
    local panelZone = Create("Frame", {
        Name             = "PanelZone",
        Size             = UDim2.new(1, -148, 1, -10),
        Position         = UDim2.new(0, 142, 0, 5),
        BackgroundTransparency = 1,
        BorderSizePixel  = 0,
        ZIndex           = 3,
        Parent           = contentFrame
    })

    --// ANIMATION D'OUVERTURE
    mainFrame.Size = UDim2.fromOffset(size.X.Offset, 0)
    mainFrame.BackgroundTransparency = 1
    task.defer(function()
        Tween(mainFrame,  { Size = size, BackgroundTransparency = Theme.WindowTransp }, 0.4, Enum.EasingStyle.Back):Play()
    end)

    --// OBJET WINDOW
    local Window = { _tabs = {}, _activeTab = nil, _gui = screenGui }

    --// ADD TAB
    function Window:AddTab(tabName, icon)
        --// Bouton dans la sidebar
        local tabBtn = Create("TextButton", {
            Name             = tabName,
            Size             = UDim2.new(1, 0, 0, 32),
            BackgroundColor3 = Theme.BgLight,
            BackgroundTransparency = 1,
            Text             = "",
            BorderSizePixel  = 0,
            ZIndex           = 4,
            LayoutOrder      = #self._tabs + 1,
            Parent           = sidebar
        })
        AddCorner(tabBtn, 6)

        -- Indicateur actif (barre gauche)
        local activeBar = Create("Frame", {
            Name             = "ActiveBar",
            Size             = UDim2.new(0, 3, 0.6, 0),
            Position         = UDim2.new(0, 0, 0.2, 0),
            BackgroundColor3 = Theme.AccentActive,
            BackgroundTransparency = 1,
            BorderSizePixel  = 0,
            ZIndex           = 5,
            Parent           = tabBtn
        })
        AddCorner(activeBar, 2)

        -- Label du tab
        local tabLabel = Create("TextLabel", {
            Size             = UDim2.new(1, -10, 1, 0),
            Position         = UDim2.new(0, 10, 0, 0),
            BackgroundTransparency = 1,
            Text             = tabName,
            TextColor3       = Theme.TextDim,
            TextSize         = 13,
            Font             = Enum.Font.Gotham,
            TextXAlignment   = Enum.TextXAlignment.Left,
            ZIndex           = 5,
            Parent           = tabBtn
        })

        --// Panel du tab (scrollable)
        local panel = Create("ScrollingFrame", {
            Name             = tabName .. "Panel",
            Size             = UDim2.new(1, -4, 1, -4),
            Position         = UDim2.new(0, 0, 0, 2),
            BackgroundTransparency = 1,
            BorderSizePixel  = 0,
            ScrollBarThickness = 3,
            ScrollBarImageColor3 = Color3.fromRGB(70, 70, 85),
            ScrollBarImageTransparency = 0.3,
            CanvasSize       = UDim2.new(0, 0, 0, 0),
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            Visible          = false,
            ZIndex           = 4,
            Parent           = panelZone
        })

        local panelList = Create("UIListLayout", {
            SortOrder   = Enum.SortOrder.LayoutOrder,
            Padding     = UDim.new(0, 5),
            Parent      = panel
        })
        AddPadding(panel, 4, 4, 8, 2)

        -- Activer ce tab
        local function activate()
            -- Désactiver tous les autres
            for _, t in pairs(self._tabs) do
                t.panel.Visible = false
                Tween(t.btn,       { BackgroundTransparency = 1 }, 0.15):Play()
                Tween(t.bar,       { BackgroundTransparency = 1 }, 0.15):Play()
                Tween(t.label,     { TextColor3 = Theme.TextDim }, 0.15):Play()
            end
            -- Activer ce tab
            panel.Visible = true
            Tween(tabBtn,   { BackgroundTransparency = 0.7 }, 0.15):Play()
            Tween(activeBar,{ BackgroundTransparency = 0   }, 0.15):Play()
            Tween(tabLabel, { TextColor3 = Theme.TextPrimary }, 0.15):Play()
            tabLabel.Font = Enum.Font.GothamBold
            self._activeTab = tabName
        end

        tabBtn.MouseButton1Click:Connect(activate)

        tabBtn.MouseEnter:Connect(function()
            if self._activeTab ~= tabName then
                Tween(tabBtn,  { BackgroundTransparency = 0.85 }, 0.1):Play()
                Tween(tabLabel,{ TextColor3 = Theme.TextSecondary }, 0.1):Play()
            end
        end)
        tabBtn.MouseLeave:Connect(function()
            if self._activeTab ~= tabName then
                Tween(tabBtn,  { BackgroundTransparency = 1 }, 0.1):Play()
                Tween(tabLabel,{ TextColor3 = Theme.TextDim }, 0.1):Play()
            end
        end)

        table.insert(self._tabs, { btn = tabBtn, bar = activeBar, label = tabLabel, panel = panel, name = tabName })

        -- Activer le premier tab automatiquement
        if #self._tabs == 1 then activate() end

        --// TAB OBJECT — contient les méthodes pour ajouter des éléments
        local Tab = {}

        --// Fonction utilitaire : crée le conteneur d'un élément
        local function makeItem(height)
            local item = Create("Frame", {
                Size             = UDim2.new(1, -4, 0, height or 38),
                BackgroundColor3 = Theme.BgLight,
                BackgroundTransparency = 0.5,
                BorderSizePixel  = 0,
                ZIndex           = 5,
                LayoutOrder      = #panel:GetChildren(),
                Parent           = panel
            })
            AddCorner(item, 7)
            return item
        end

        --// ─── LABEL ────────────────────────────────────────────
        function Tab:AddLabel(text)
            local item = makeItem(26)
            item.BackgroundTransparency = 1
            Create("TextLabel", {
                Size             = UDim2.new(1, -12, 1, 0),
                Position         = UDim2.new(0, 12, 0, 0),
                BackgroundTransparency = 1,
                Text             = text,
                TextColor3       = Theme.TextDim,
                TextSize         = 12,
                Font             = Enum.Font.Gotham,
                TextXAlignment   = Enum.TextXAlignment.Left,
                ZIndex           = 6,
                Parent           = item
            })
            return item
        end

        --// ─── SEPARATOR ────────────────────────────────────────
        function Tab:AddSeparator(text)
            local item = makeItem(20)
            item.BackgroundTransparency = 1
            Create("Frame", {
                Size             = UDim2.new(1, -24, 0, 1),
                Position         = UDim2.new(0, 12, 0.5, 0),
                BackgroundColor3 = Theme.Border,
                BackgroundTransparency = 0.4,
                BorderSizePixel  = 0,
                ZIndex           = 6,
                Parent           = item
            })
            if text then
                local lbl = Create("TextLabel", {
                    Size             = UDim2.new(0, 0, 1, 0),
                    Position         = UDim2.new(0.5, 0, 0, 0),
                    AnchorPoint      = Vector2.new(0.5, 0),
                    AutomaticSize    = Enum.AutomaticSize.X,
                    BackgroundColor3 = Theme.BgDark,
                    BackgroundTransparency = 0.08,
                    Text             = "  " .. text .. "  ",
                    TextColor3       = Theme.TextDim,
                    TextSize         = 11,
                    Font             = Enum.Font.Gotham,
                    ZIndex           = 7,
                    Parent           = item
                })
                AddPadding(lbl, 0, 4, 0, 4)
            end
        end

        --// ─── BUTTON ───────────────────────────────────────────
        function Tab:AddButton(config)
            config = config or {}
            local item = makeItem(40)

            local titleLbl = Create("TextLabel", {
                Size             = UDim2.new(0.7, -16, 0.55, 0),
                Position         = UDim2.new(0, 14, 0.05, 0),
                BackgroundTransparency = 1,
                Text             = config.Title or "Button",
                TextColor3       = Theme.TextPrimary,
                TextSize         = 13,
                Font             = Enum.Font.GothamSemibold,
                TextXAlignment   = Enum.TextXAlignment.Left,
                ZIndex           = 6,
                Parent           = item
            })

            if config.Description then
                Create("TextLabel", {
                    Size             = UDim2.new(0.8, -16, 0.4, 0),
                    Position         = UDim2.new(0, 14, 0.58, 0),
                    BackgroundTransparency = 1,
                    Text             = config.Description,
                    TextColor3       = Theme.TextDim,
                    TextSize         = 11,
                    Font             = Enum.Font.Gotham,
                    TextXAlignment   = Enum.TextXAlignment.Left,
                    ZIndex           = 6,
                    Parent           = item
                })
                item.Size = UDim2.new(1, -4, 0, 52)
            end

            -- Bouton click zone
            local btn = Create("TextButton", {
                Size             = UDim2.new(0, 72, 0, 26),
                Position         = UDim2.new(1, -82, 0.5, -13),
                BackgroundColor3 = Theme.BgHover,
                BackgroundTransparency = 0.2,
                Text             = config.ButtonText or "Execute",
                TextColor3       = Theme.TextPrimary,
                TextSize         = 12,
                Font             = Enum.Font.GothamSemibold,
                BorderSizePixel  = 0,
                ZIndex           = 7,
                Parent           = item
            })
            AddCorner(btn, 5)
            AddStroke(btn, Theme.Border, 1, 0.5)

            btn.MouseEnter:Connect(function()
                Tween(btn, { BackgroundColor3 = Theme.AccentHover, BackgroundTransparency = 0 }, 0.1):Play()
            end)
            btn.MouseLeave:Connect(function()
                Tween(btn, { BackgroundColor3 = Theme.BgHover, BackgroundTransparency = 0.2 }, 0.1):Play()
            end)
            btn.MouseButton1Down:Connect(function()
                Tween(btn, { Size = UDim2.new(0, 68, 0, 24) }, 0.08):Play()
            end)
            btn.MouseButton1Up:Connect(function()
                Tween(btn, { Size = UDim2.new(0, 72, 0, 26) }, 0.12, Enum.EasingStyle.Back):Play()
            end)
            btn.MouseButton1Click:Connect(function()
                if config.Callback then pcall(config.Callback) end
            end)

            return { Frame = item }
        end

        --// ─── TOGGLE ───────────────────────────────────────────
        function Tab:AddToggle(config)
            config = config or {}
            local value = config.Default or false
            local item  = makeItem(config.Description and 52 or 40)

            Create("TextLabel", {
                Size             = UDim2.new(1, -70, 0.5, 0),
                Position         = UDim2.new(0, 14, 0.02, 0),
                BackgroundTransparency = 1,
                Text             = config.Title or "Toggle",
                TextColor3       = Theme.TextPrimary,
                TextSize         = 13,
                Font             = Enum.Font.GothamSemibold,
                TextXAlignment   = Enum.TextXAlignment.Left,
                ZIndex           = 6,
                Parent           = item
            })
            if config.Description then
                Create("TextLabel", {
                    Size             = UDim2.new(1, -70, 0.45, 0),
                    Position         = UDim2.new(0, 14, 0.52, 0),
                    BackgroundTransparency = 1,
                    Text             = config.Description,
                    TextColor3       = Theme.TextDim,
                    TextSize         = 11,
                    Font             = Enum.Font.Gotham,
                    TextXAlignment   = Enum.TextXAlignment.Left,
                    ZIndex           = 6,
                    Parent           = item
                })
            end

            -- Fond du toggle
            local trackBg = Create("Frame", {
                Size             = UDim2.fromOffset(42, 22),
                Position         = UDim2.new(1, -54, 0.5, -11),
                BackgroundColor3 = value and Theme.Green or Theme.BgDark,
                BorderSizePixel  = 0,
                ZIndex           = 7,
                Parent           = item
            })
            AddCorner(trackBg, 11)

            -- Knob
            local knob = Create("Frame", {
                Size             = UDim2.fromOffset(16, 16),
                Position         = value and UDim2.new(1, -19, 0.5, -8) or UDim2.new(0, 3, 0.5, -8),
                BackgroundColor3 = Theme.TextPrimary,
                BorderSizePixel  = 0,
                ZIndex           = 8,
                Parent           = trackBg
            })
            AddCorner(knob, 8)

            local function setToggle(newVal, fireCallback)
                value = newVal
                if value then
                    Tween(trackBg, { BackgroundColor3 = Theme.Green }, 0.2):Play()
                    Tween(knob,    { Position = UDim2.new(1, -19, 0.5, -8) }, 0.2, Enum.EasingStyle.Back):Play()
                else
                    Tween(trackBg, { BackgroundColor3 = Theme.BgDark }, 0.2):Play()
                    Tween(knob,    { Position = UDim2.new(0, 3, 0.5, -8) }, 0.2, Enum.EasingStyle.Back):Play()
                end
                if fireCallback and config.Callback then pcall(config.Callback, value) end
            end

            -- Zone cliquable = toute la ligne
            local clickZone = Create("TextButton", {
                Size             = UDim2.new(1, 0, 1, 0),
                BackgroundTransparency = 1,
                Text             = "",
                ZIndex           = 9,
                Parent           = item
            })
            clickZone.MouseButton1Click:Connect(function()
                setToggle(not value, true)
            end)

            HoverEffect(item, Theme.BgLight, Theme.BgHover, 0.1)
            -- Retourner objet contrôlable
            local obj = { Value = value }
            function obj:Set(v) setToggle(v, true) ; obj.Value = v end
            return obj
        end

        --// ─── SLIDER ───────────────────────────────────────────
        function Tab:AddSlider(config)
            config = config or {}
            local min     = config.Min     or 0
            local max     = config.Max     or 100
            local value   = math.clamp(config.Default or min, min, max)
            local rounding= config.Rounding or 0
            local item    = makeItem(config.Description and 60 or 50)

            local function fmt(v)
                if rounding == 0 then return tostring(math.floor(v))
                else return string.format("%." .. rounding .. "f", v) end
            end

            local valueLbl = Create("TextLabel", {
                Size             = UDim2.new(0, 50, 0, 18),
                Position         = UDim2.new(1, -56, 0, 8),
                BackgroundTransparency = 1,
                Text             = fmt(value),
                TextColor3       = Theme.Accent,
                TextSize         = 12,
                Font             = Enum.Font.GothamBold,
                TextXAlignment   = Enum.TextXAlignment.Right,
                ZIndex           = 6,
                Parent           = item
            })

            Create("TextLabel", {
                Size             = UDim2.new(1, -70, 0, 18),
                Position         = UDim2.new(0, 14, 0, 8),
                BackgroundTransparency = 1,
                Text             = config.Title or "Slider",
                TextColor3       = Theme.TextPrimary,
                TextSize         = 13,
                Font             = Enum.Font.GothamSemibold,
                TextXAlignment   = Enum.TextXAlignment.Left,
                ZIndex           = 6,
                Parent           = item
            })
            if config.Description then
                Create("TextLabel", {
                    Size             = UDim2.new(1, -16, 0, 14),
                    Position         = UDim2.new(0, 14, 0, 26),
                    BackgroundTransparency = 1,
                    Text             = config.Description,
                    TextColor3       = Theme.TextDim,
                    TextSize         = 11,
                    Font             = Enum.Font.Gotham,
                    TextXAlignment   = Enum.TextXAlignment.Left,
                    ZIndex           = 6,
                    Parent           = item
                })
            end

            local trackY = config.Description and 44 or 34
            -- Track bg
            local track = Create("Frame", {
                Size             = UDim2.new(1, -24, 0, 5),
                Position         = UDim2.new(0, 12, 0, trackY),
                BackgroundColor3 = Theme.BgDark,
                BorderSizePixel  = 0,
                ZIndex           = 6,
                Parent           = item
            })
            AddCorner(track, 3)

            -- Fill
            local pct  = (value - min) / (max - min)
            local fill = Create("Frame", {
                Size             = UDim2.new(pct, 0, 1, 0),
                BackgroundColor3 = Theme.SliderFill,
                BorderSizePixel  = 0,
                ZIndex           = 7,
                Parent           = track
            })
            AddCorner(fill, 3)

            -- Knob
            local knob = Create("Frame", {
                Size             = UDim2.fromOffset(13, 13),
                Position         = UDim2.new(pct, -6, 0.5, -6),
                BackgroundColor3 = Theme.TextPrimary,
                BorderSizePixel  = 0,
                ZIndex           = 8,
                Parent           = track
            })
            AddCorner(knob, 7)

            local dragging = false

            local function updateSlider(inputX)
                local trackAbs = track.AbsolutePosition
                local trackSz  = track.AbsoluteSize
                local rel      = math.clamp((inputX - trackAbs.X) / trackSz.X, 0, 1)
                value          = min + (max - min) * rel
                if rounding == 0 then
                    value = math.floor(value + 0.5)
                else
                    local m = 10^rounding
                    value = math.floor(value * m + 0.5) / m
                end
                value = math.clamp(value, min, max)
                local p = (value - min) / (max - min)
                fill.Size     = UDim2.new(p, 0, 1, 0)
                knob.Position = UDim2.new(p, -6, 0.5, -6)
                valueLbl.Text = fmt(value)
                if config.Callback then pcall(config.Callback, value) end
            end

            track.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = true
                    updateSlider(input.Position.X)
                end
            end)
            UserInputService.InputChanged:Connect(function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    updateSlider(input.Position.X)
                end
            end)
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                end
            end)

            local obj = { Value = value }
            function obj:Set(v)
                value = math.clamp(v, min, max)
                local p = (value - min) / (max - min)
                fill.Size     = UDim2.new(p, 0, 1, 0)
                knob.Position = UDim2.new(p, -6, 0.5, -6)
                valueLbl.Text = fmt(value)
                obj.Value     = value
            end
            return obj
        end

        --// ─── INPUT ────────────────────────────────────────────
        function Tab:AddInput(config)
            config = config or {}
            local item  = makeItem(config.Description and 64 or 52)
            local value = config.Default or ""

            Create("TextLabel", {
                Size             = UDim2.new(1, -16, 0, 18),
                Position         = UDim2.new(0, 14, 0, 7),
                BackgroundTransparency = 1,
                Text             = config.Title or "Input",
                TextColor3       = Theme.TextPrimary,
                TextSize         = 13,
                Font             = Enum.Font.GothamSemibold,
                TextXAlignment   = Enum.TextXAlignment.Left,
                ZIndex           = 6,
                Parent           = item
            })
            if config.Description then
                Create("TextLabel", {
                    Size             = UDim2.new(1, -16, 0, 13),
                    Position         = UDim2.new(0, 14, 0, 26),
                    BackgroundTransparency = 1,
                    Text             = config.Description,
                    TextColor3       = Theme.TextDim,
                    TextSize         = 11,
                    Font             = Enum.Font.Gotham,
                    TextXAlignment   = Enum.TextXAlignment.Left,
                    ZIndex           = 6,
                    Parent           = item
                })
            end

            local inputY = config.Description and 40 or 28
            local inputBox = Create("TextBox", {
                Size             = UDim2.new(1, -24, 0, 24),
                Position         = UDim2.new(0, 12, 0, inputY),
                BackgroundColor3 = Theme.BgDark,
                BackgroundTransparency = 0.1,
                Text             = value,
                PlaceholderText  = config.Placeholder or "Écrire ici...",
                PlaceholderColor3= Theme.TextDim,
                TextColor3       = Theme.TextPrimary,
                TextSize         = 12,
                Font             = Enum.Font.Gotham,
                ClearTextOnFocus = config.ClearOnFocus or false,
                BorderSizePixel  = 0,
                ZIndex           = 7,
                Parent           = item
            })
            AddCorner(inputBox, 5)
            AddStroke(inputBox, Theme.Border, 1, 0.5)
            AddPadding(inputBox, 0, 8, 0, 8)

            -- Focus effect
            inputBox.Focused:Connect(function()
                Tween(inputBox, { BackgroundColor3 = Theme.BgMid }, 0.15):Play()
                AddStroke(inputBox, Theme.Accent, 1, 0)
            end)
            inputBox.FocusLost:Connect(function(enterPressed)
                Tween(inputBox, { BackgroundColor3 = Theme.BgDark }, 0.15):Play()
                value = inputBox.Text
                if config.Callback then
                    if config.Finished then
                        if enterPressed then pcall(config.Callback, value) end
                    else
                        pcall(config.Callback, value)
                    end
                end
            end)
            inputBox:GetPropertyChangedSignal("Text"):Connect(function()
                if not config.Finished and config.Callback then
                    pcall(config.Callback, inputBox.Text)
                end
            end)

            local obj = { Value = value }
            function obj:Set(v)
                inputBox.Text = tostring(v)
                obj.Value     = v
            end
            function obj:Get() return inputBox.Text end
            return obj
        end

        --// ─── DROPDOWN ─────────────────────────────────────────
        function Tab:AddDropdown(config)
            config = config or {}
            local options = config.Options or {}
            local value   = config.Default or (options[1] or "")
            local open    = false
            local item    = makeItem(40)

            Create("TextLabel", {
                Size             = UDim2.new(0.5, -16, 0.6, 0),
                Position         = UDim2.new(0, 14, 0.15, 0),
                BackgroundTransparency = 1,
                Text             = config.Title or "Dropdown",
                TextColor3       = Theme.TextPrimary,
                TextSize         = 13,
                Font             = Enum.Font.GothamSemibold,
                TextXAlignment   = Enum.TextXAlignment.Left,
                ZIndex           = 6,
                Parent           = item
            })

            -- Bouton dropdown
            local dropBtn = Create("TextButton", {
                Size             = UDim2.new(0, 130, 0, 26),
                Position         = UDim2.new(1, -140, 0.5, -13),
                BackgroundColor3 = Theme.BgDark,
                BackgroundTransparency = 0.1,
                Text             = value,
                TextColor3       = Theme.TextSecondary,
                TextSize         = 12,
                Font             = Enum.Font.Gotham,
                BorderSizePixel  = 0,
                ZIndex           = 7,
                Parent           = item
            })
            AddCorner(dropBtn, 5)
            AddStroke(dropBtn, Theme.Border, 1, 0.5)

            -- Flèche
            local arrow = Create("TextLabel", {
                Size             = UDim2.fromOffset(16, 16),
                Position         = UDim2.new(1, -18, 0.5, -8),
                BackgroundTransparency = 1,
                Text             = "▾",
                TextColor3       = Theme.TextDim,
                TextSize         = 12,
                Font             = Enum.Font.GothamBold,
                ZIndex           = 8,
                Parent           = dropBtn
            })

            -- Menu déroulant : parenté au ScreenGui pour s'afficher par-dessus
            local dropMenu = Create("Frame", {
                Size             = UDim2.new(0, 130, 0, 0),
                Position         = UDim2.fromOffset(0, 0),
                BackgroundColor3 = Theme.BgMid,
                BackgroundTransparency = 0.05,
                BorderSizePixel  = 0,
                ZIndex           = 1000,
                Visible          = false,
                ClipsDescendants = true,
                Parent           = screenGui
            })
            AddCorner(dropMenu, 6)
            AddStroke(dropMenu, Theme.Border, 1, 0.3)

            local menuList = Create("UIListLayout", {
                SortOrder = Enum.SortOrder.LayoutOrder,
                Padding   = UDim.new(0, 2),
                Parent    = dropMenu
            })
            AddPadding(dropMenu, 4, 4, 4, 4)

            local targetH = #options * 28 + 8

            for i, opt in ipairs(options) do
                local optBtn = Create("TextButton", {
                    Size             = UDim2.new(1, 0, 0, 26),
                    BackgroundColor3 = opt == value and Theme.BgHover or Theme.BgLight,
                    BackgroundTransparency = opt == value and 0.5 or 1,
                    Text             = opt,
                    TextColor3       = opt == value and Theme.TextPrimary or Theme.TextSecondary,
                    TextSize         = 12,
                    Font             = Enum.Font.Gotham,
                    BorderSizePixel  = 0,
                    ZIndex           = 21,
                    LayoutOrder      = i,
                    Parent           = dropMenu
                })
                AddCorner(optBtn, 4)

                optBtn.MouseEnter:Connect(function()
                    Tween(optBtn, { BackgroundTransparency = 0.5, TextColor3 = Theme.TextPrimary }, 0.1):Play()
                end)
                optBtn.MouseLeave:Connect(function()
                    if value ~= opt then
                        Tween(optBtn, { BackgroundTransparency = 1, TextColor3 = Theme.TextSecondary }, 0.1):Play()
                    end
                end)
                optBtn.MouseButton1Click:Connect(function()
                    value         = opt
                    dropBtn.Text  = opt
                    -- Reset tous les optBtns
                    for _, child in pairs(dropMenu:GetChildren()) do
                        if child:IsA("TextButton") then
                            Tween(child, { BackgroundTransparency = 1, TextColor3 = Theme.TextSecondary }, 0.1):Play()
                        end
                    end
                    Tween(optBtn, { BackgroundTransparency = 0.5, TextColor3 = Theme.TextPrimary }, 0.1):Play()
                    -- Fermer
                    open = false
                    Tween(dropMenu, { Size = UDim2.new(0, 130, 0, 0) }, 0.2, Enum.EasingStyle.Quart):Play()
                    Tween(arrow, { Rotation = 0 }, 0.2):Play()
                    task.delay(0.2, function() dropMenu.Visible = false end)
                    if config.Callback then pcall(config.Callback, value) end
                end)
            end

            dropBtn.MouseButton1Click:Connect(function()
                open = not open
                if open then
                    -- positionner le menu en absolu, aligné sur le bord droit du bouton
                    local absPos = dropBtn.AbsolutePosition
                    local absSize = dropBtn.AbsoluteSize
                    local x = absPos.X + absSize.X - 130
                    local y = absPos.Y + absSize.Y + 2
                    dropMenu.Position = UDim2.fromOffset(math.max(4, x), math.max(4, y))
                    dropMenu.Visible = true
                    dropMenu.Size    = UDim2.new(0, 130, 0, 0)
                    Tween(dropMenu, { Size = UDim2.new(0, 130, 0, targetH) }, 0.25, Enum.EasingStyle.Back):Play()
                    Tween(arrow, { Rotation = 180 }, 0.2):Play()
                else
                    Tween(dropMenu, { Size = UDim2.new(0, 130, 0, 0) }, 0.2, Enum.EasingStyle.Quart):Play()
                    Tween(arrow, { Rotation = 0 }, 0.2):Play()
                    task.delay(0.2, function() dropMenu.Visible = false end)
                end
            end)

            local obj = { Value = value }
            function obj:Set(v)
                value        = v
                dropBtn.Text = v
                obj.Value    = v
            end
            return obj
        end

        --// ─── MULTI DROPDOWN ──────────────────────────────────
        function Tab:AddMultiDropdown(config)
            config = config or {}
            local options = config.Options or {}
            local selectedMap = {}
            local selectedList = {}
            local open    = false
            local item    = makeItem(40)

            Create("TextLabel", {
                Size             = UDim2.new(0.5, -16, 0.6, 0),
                Position         = UDim2.new(0, 14, 0.15, 0),
                BackgroundTransparency = 1,
                Text             = config.Title or "MultiDropdown",
                TextColor3       = Theme.TextPrimary,
                TextSize         = 13,
                Font             = Enum.Font.GothamSemibold,
                TextXAlignment   = Enum.TextXAlignment.Left,
                ZIndex           = 6,
                Parent           = item
            })

            local dropBtn = Create("TextButton", {
                Size             = UDim2.new(0, 130, 0, 26),
                Position         = UDim2.new(1, -140, 0.5, -13),
                BackgroundColor3 = Theme.BgDark,
                BackgroundTransparency = 0.1,
                Text             = "None",
                TextColor3       = Theme.TextSecondary,
                TextSize         = 12,
                Font             = Enum.Font.Gotham,
                BorderSizePixel  = 0,
                ZIndex           = 7,
                Parent           = item
            })
            AddCorner(dropBtn, 5)
            AddStroke(dropBtn, Theme.Border, 1, 0.5)

            local arrow = Create("TextLabel", {
                Size             = UDim2.fromOffset(16, 16),
                Position         = UDim2.new(1, -18, 0.5, -8),
                BackgroundTransparency = 1,
                Text             = "▾",
                TextColor3       = Theme.TextDim,
                TextSize         = 12,
                Font             = Enum.Font.GothamBold,
                ZIndex           = 8,
                Parent           = dropBtn
            })

            local dropMenu = Create("Frame", {
                Size             = UDim2.new(0, 130, 0, 0),
                Position         = UDim2.fromOffset(0, 0),
                BackgroundColor3 = Theme.BgMid,
                BackgroundTransparency = 0.05,
                BorderSizePixel  = 0,
                ZIndex           = 1000,
                Visible          = false,
                ClipsDescendants = true,
                Parent           = screenGui
            })
            AddCorner(dropMenu, 6)
            AddStroke(dropMenu, Theme.Border, 1, 0.3)
            local menuList = Create("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0,2), Parent = dropMenu })
            AddPadding(dropMenu, 4, 4, 4, 4)

            local targetH = #options * 28 + 8

            local function updateButtonText()
                if #selectedList == 0 then
                    dropBtn.Text = "None"
                elseif #selectedList > 3 then
                    dropBtn.Text = tostring(#selectedList) .. " selected"
                else
                    dropBtn.Text = table.concat(selectedList, ", ")
                end
            end

            for i, opt in ipairs(options) do
                local optBtn = Create("TextButton", {
                    Size             = UDim2.new(1, 0, 0, 26),
                    BackgroundColor3 = Theme.BgLight,
                    BackgroundTransparency = 1,
                    Text             = opt,
                    TextColor3       = Theme.TextSecondary,
                    TextSize         = 12,
                    Font             = Enum.Font.Gotham,
                    BorderSizePixel  = 0,
                    ZIndex           = 21,
                    LayoutOrder      = i,
                    Parent           = dropMenu
                })
                AddCorner(optBtn, 4)

                local check = Create("TextLabel", {
                    Size = UDim2.fromOffset(16,16),
                    Position = UDim2.new(1, -20, 0.5, -8),
                    BackgroundTransparency = 1,
                    Text = "",
                    TextColor3 = Theme.Green,
                    TextSize = 14,
                    Font = Enum.Font.GothamBold,
                    ZIndex = 22,
                    Parent = optBtn
                })

                optBtn.MouseEnter:Connect(function()
                    Tween(optBtn, { BackgroundTransparency = 0.5, TextColor3 = Theme.TextPrimary }, 0.1):Play()
                end)
                optBtn.MouseLeave:Connect(function()
                    if not selectedMap[opt] then
                        Tween(optBtn, { BackgroundTransparency = 1, TextColor3 = Theme.TextSecondary }, 0.1):Play()
                    end
                end)

                optBtn.MouseButton1Click:Connect(function()
                    if not selectedMap[opt] then
                        selectedMap[opt] = true
                        table.insert(selectedList, opt)
                        Tween(optBtn, { BackgroundTransparency = 0.5, TextColor3 = Theme.TextPrimary }, 0.1):Play()
                        check.Text = "✓"
                    else
                        selectedMap[opt] = nil
                        for idx, v in ipairs(selectedList) do if v == opt then table.remove(selectedList, idx) break end end
                        Tween(optBtn, { BackgroundTransparency = 1, TextColor3 = Theme.TextSecondary }, 0.1):Play()
                        check.Text = ""
                    end
                    updateButtonText()
                    if config.Callback then pcall(config.Callback, { unpack(selectedList) }) end
                end)
            end

            dropBtn.MouseButton1Click:Connect(function()
                open = not open
                if open then
                    local absPos = dropBtn.AbsolutePosition
                    local absSize = dropBtn.AbsoluteSize
                    local x = absPos.X + absSize.X - 130
                    local y = absPos.Y + absSize.Y + 2
                    dropMenu.Position = UDim2.fromOffset(math.max(4, x), math.max(4, y))
                    dropMenu.Visible = true
                    dropMenu.Size    = UDim2.new(0, 130, 0, 0)
                    Tween(dropMenu, { Size = UDim2.new(0, 130, 0, targetH) }, 0.25, Enum.EasingStyle.Back):Play()
                    Tween(arrow, { Rotation = 180 }, 0.2):Play()
                else
                    Tween(dropMenu, { Size = UDim2.new(0, 130, 0, 0) }, 0.2, Enum.EasingStyle.Quart):Play()
                    Tween(arrow, { Rotation = 0 }, 0.2):Play()
                    task.delay(0.2, function() dropMenu.Visible = false end)
                end
            end)

            local obj = { Selected = selectedList }
            function obj:Set(list)
                selectedMap = {}
                selectedList = {}
                for _, v in ipairs(list or {}) do
                    selectedMap[v] = true
                    table.insert(selectedList, v)
                end
                updateButtonText()
                if config.Callback then pcall(config.Callback, { unpack(selectedList) }) end
            end
            function obj:Get() return { unpack(selectedList) } end
            return obj
        end

        --// ─── KEYBIND ─────────────────────────────────────────
        function Tab:AddKeybind(config)
            config = config or {}
            local key    = config.Default or Enum.KeyCode.F
            local title  = config.Title   or "Keybind"
            local hold   = config.Hold    or false
            local item   = makeItem(40)

            Create("TextLabel", {
                Size             = UDim2.new(0.5, -16, 0.6, 0),
                Position         = UDim2.new(0, 14, 0.15, 0),
                BackgroundTransparency = 1,
                Text             = title,
                TextColor3       = Theme.TextPrimary,
                TextSize         = 13,
                Font             = Enum.Font.GothamSemibold,
                TextXAlignment   = Enum.TextXAlignment.Left,
                ZIndex           = 6,
                Parent           = item
            })

            local keyBtn = Create("TextButton", {
                Size             = UDim2.new(0, 130, 0, 26),
                Position         = UDim2.new(1, -140, 0.5, -13),
                BackgroundColor3 = Theme.BgDark,
                BackgroundTransparency = 0.1,
                Text             = (key and key.Name) or "None",
                TextColor3       = Theme.TextSecondary,
                TextSize         = 12,
                Font             = Enum.Font.Gotham,
                BorderSizePixel  = 0,
                ZIndex           = 7,
                Parent           = item
            })
            AddCorner(keyBtn, 5)
            AddStroke(keyBtn, Theme.Border, 1, 0.5)

            local capturing = false

            local function onInput(input, gpe)
                if gpe then return end
                if capturing then
                    if input.UserInputType == Enum.UserInputType.Keyboard then
                        key = input.KeyCode
                        keyBtn.Text = key.Name
                        capturing = false
                        if config.Callback then pcall(config.Callback, key) end
                    end
                else
                    if input.UserInputType == Enum.UserInputType.Keyboard and key and input.KeyCode == key then
                        if hold then
                            if config.Callback then pcall(config.Callback, true) end
                        else
                            if config.Callback then pcall(config.Callback) end
                        end
                    end
                end
            end

            UserInputService.InputBegan:Connect(onInput)
            if hold then
                UserInputService.InputEnded:Connect(function(input, gpe)
                    if gpe then return end
                    if input.UserInputType == Enum.UserInputType.Keyboard and key and input.KeyCode == key then
                        if config.Callback then pcall(config.Callback, false) end
                    end
                end)
            end

            keyBtn.MouseButton1Click:Connect(function()
                capturing = true
                keyBtn.Text = "Press key..."
            end)

            local obj = { Key = key }
            function obj:Set(k)
                key = k
                keyBtn.Text = (k and k.Name) or "None"
                obj.Key = k
            end
            function obj:Get() return key end
            return obj
        end

        --// ─── SECTION ──────────────────────────────────────────
        function Tab:AddSection(text)
            local item = makeItem(24)
            item.BackgroundTransparency = 1
            Create("TextLabel", {
                Size             = UDim2.new(1, -16, 1, 0),
                Position         = UDim2.new(0, 12, 0, 0),
                BackgroundTransparency = 1,
                Text             = text:upper(),
                TextColor3       = Theme.TextDim,
                TextSize         = 10,
                Font             = Enum.Font.GothamBold,
                TextXAlignment   = Enum.TextXAlignment.Left,
                ZIndex           = 6,
                Parent           = item
            })
        end

        return Tab
    end

    --// Notification
    function Window:Notify(config)
        config = config or {}
        local duration = config.Duration or 4
        local notifGui = screenGui

        -- Frame séparée pour la notif avec DisplayOrder très élevé
        local notifScreen = Instance.new("ScreenGui")
        notifScreen.Name = "AliLibraryNotif"
        notifScreen.ResetOnSpawn = false
        notifScreen.DisplayOrder = 9999
        notifScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        local ok2 = pcall(function() notifScreen.Parent = game:GetService("CoreGui") end)
        if not ok2 then notifScreen.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") end

        local notif = Create("Frame", {
            Size             = UDim2.fromOffset(270, 64),
            Position         = UDim2.new(1, 290, 1, -80),
            AnchorPoint      = Vector2.new(1, 1),
            BackgroundColor3 = Theme.BgMid,
            BackgroundTransparency = 0.05,
            BorderSizePixel  = 0,
            ZIndex           = 1,
            Parent           = notifScreen
        })
        AddCorner(notif, 8)
        AddStroke(notif, Theme.Border, 1, 0.3)

        -- Barre colorée gauche
        Create("Frame", {
            Size             = UDim2.new(0, 3, 0.7, 0),
            Position         = UDim2.new(0, 0, 0.15, 0),
            BackgroundColor3 = Theme.Green,
            BorderSizePixel  = 0,
            ZIndex           = 101,
            Parent           = notif
        })

        Create("TextLabel", {
            Size             = UDim2.new(1, -22, 0, 22),
            Position         = UDim2.new(0, 14, 0, 8),
            BackgroundTransparency = 1,
            Text             = config.Title or "Notification",
            TextColor3       = Theme.TextPrimary,
            TextSize         = 13,
            Font             = Enum.Font.GothamBold,
            TextXAlignment   = Enum.TextXAlignment.Left,
            ZIndex           = 101,
            Parent           = notif
        })
        Create("TextLabel", {
            Size             = UDim2.new(1, -22, 0, 20),
            Position         = UDim2.new(0, 14, 0, 32),
            BackgroundTransparency = 1,
            Text             = config.Content or "",
            TextColor3       = Theme.TextSecondary,
            TextSize         = 11,
            Font             = Enum.Font.Gotham,
            TextXAlignment   = Enum.TextXAlignment.Left,
            ZIndex           = 101,
            Parent           = notif
        })

        -- Slide in
        Tween(notif, { Position = UDim2.new(1, -10, 1, -80) }, 0.35, Enum.EasingStyle.Back):Play()

        -- Disparaître
        task.delay(duration, function()
            Tween(notif, { Position = UDim2.new(1, 290, 1, -80), BackgroundTransparency = 1 }, 0.3):Play()
            task.delay(0.3, function() notifScreen:Destroy() end)
        end)
    end

    return Window
end

-- Ensure the library table is returned when the file is loaded via `loadstring`/`HttpGet`
return AliLibrary
