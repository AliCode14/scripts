

local Palette = {
	WindowBg = Color3.fromRGB(16, 18, 19),   -- #101213
	TitleBg  = Color3.fromRGB(21, 23, 27),   -- #15171B
	TabBg    = Color3.fromRGB(19, 21, 25),   -- #131519
	Section  = Color3.fromRGB(23, 25, 28),   -- #17191C
	SectionLabelBg = Color3.fromRGB(20, 22, 26), -- #14161A
	Checkbox = Color3.fromRGB(30, 34, 40),   -- #1E2228
	Dropdown = Color3.fromRGB(31, 35, 41),   -- #1F2329
	Row      = Color3.fromRGB(27, 31, 36),
	RowHover = Color3.fromRGB(37, 42, 49),
	RowPress = Color3.fromRGB(44, 50, 58),
	Text     = Color3.fromRGB(236, 238, 242),
	Sub      = Color3.fromRGB(168, 172, 180),
	Soft     = Color3.fromRGB(120, 126, 135),
	Accent   = Color3.fromRGB(238, 241, 245),
	Accent2  = Color3.fromRGB(180, 190, 205),
	Separator = Color3.fromRGB(30, 33, 37),
}

local UIS = game:GetService("UserInputService")
local Tween = game:GetService("TweenService")

local Library = { Flags = {}, Palette = Palette }

local openLists: { [Instance]: () -> () } = {}

local function corner(gui, radius)
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, radius)
	c.Parent = gui
	return c
end

local function tween(obj, prop, goal, time, style)
	style = style or Enum.EasingStyle.Quad
	local goalTable: { [string]: any } = {}
	goalTable[prop] = goal
	local t = Tween:Create(obj, TweenInfo.new(time or 0.18, style, Enum.EasingDirection.Out), goalTable)
	t:Play()
	return t
end

local function fillStroke(gui, color, thickness, transparency)
	local s = Instance.new("UIStroke")
	s.Color = color
	s.Thickness = thickness
	s.Transparency = transparency or 0
	s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	s.Parent = gui
	return s
end

local function label(text, size, font, color)
	local t = Instance.new("TextLabel")
	t.BackgroundTransparency = 1
	t.Size = UDim2.new(0, 0, 0, size)
	t.Font = font or Enum.Font.Gotham
	t.Text = text
	t.TextColor3 = color or Palette.Text
	t.TextSize = 14
	t.TextXAlignment = Enum.TextXAlignment.Left
	return t
end

local function pointInside(gui, pos)
	local ab = gui.AbsolutePosition
	local sz = gui.AbsoluteSize
	return pos.X >= ab.X and pos.X <= ab.X + sz.X and pos.Y >= ab.Y and pos.Y <= ab.Y + sz.Y
end

local function flash(gui: TextButton, base: Color3)
	gui.BackgroundColor3 = Palette.RowPress
	if base then
		task.delay(0.09, function()
			tween(gui, "BackgroundColor3", base, 0.22)
		end)
	end
end

local function press(gui: TextButton)
	local base = gui.BackgroundColor3
	flash(gui, base)
end

local function makeRow(parent: Instance, height: number, base: Color3?, noPress: boolean?)
	base = base or Palette.Dropdown
	local row = Instance.new("TextButton")
	row.BackgroundColor3 = base
	row.Size = UDim2.new(1, 0, 0, height)
	row.Text = ""
	row.AutoButtonColor = false
	row.ZIndex = 1
	row.Parent = parent
	corner(row, 5)
	row.MouseButton1Down:Connect(function()
		if not noPress then
			press(row)
		end
	end)
	return row
end

local function itemText(row: Instance, text: string)
	local t = label(text, 14, Enum.Font.Gotham)
	t.Position = UDim2.new(0, 12, 0.5, 0)
	t.AnchorPoint = Vector2.new(0, 0.5)
	t.Size = UDim2.new(1, -92, 0, 18)
	t.TextTruncate = Enum.TextTruncate.AtEnd
	t.TextYAlignment = Enum.TextYAlignment.Center
	t.Parent = row
	return t
end

local function checkMark(size: number, color: Color3)
	local m = Instance.new("TextLabel")
	m.BackgroundTransparency = 1
	m.Size = UDim2.fromOffset(size, size)
	m.Font = Enum.Font.Gotham
	m.Text = "\u{2713}"
	m.TextColor3 = color
	m.TextSize = size + 2
	m.TextTransparency = 1
	return m
end

function Library:CreateWindow(config)
	config = config or {}
	local size = config.Size or Vector2.new(560, 460)
	local title = config.Title or "UI"

	local plrGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	for _, old in ipairs(plrGui:GetChildren()) do
		if old:IsA("ScreenGui") and (old.Name == config.Name or old.Name == "FlatUI") then
			old:Destroy()
		end
	end
	local sg = Instance.new("ScreenGui")
	sg.Name = config.Name or "FlatUI"
	sg.ResetOnSpawn = false
	sg.IgnoreGuiInset = true
	sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	sg.Parent = plrGui

	local win = Instance.new("Frame")
	win.Name = "Window"
	win.BackgroundColor3 = Palette.WindowBg
	win.BorderSizePixel = 0
	win.Size = UDim2.fromOffset(size.X, size.Y)
	win.Position = UDim2.fromOffset(70, 60)
	win.Parent = sg
	corner(win, 6)
	win.ClipsDescendants = true

	local titleBar = Instance.new("Frame")
	titleBar.Name = "TitleBar"
	titleBar.BackgroundColor3 = Palette.TitleBg
	titleBar.BorderSizePixel = 0
	titleBar.Size = UDim2.new(1, 0, 0, 40)
	titleBar.Parent = win
	corner(titleBar, 6)
	local titleCorners = titleBar:FindFirstChildOfClass("UICorner")
	if titleCorners then
		titleCorners.CornerRadius = UDim.new(0, 6)
	end

	local sep = Instance.new("Frame")
	sep.Name = "HeaderSep"
	sep.BackgroundColor3 = Palette.Separator
	sep.BorderSizePixel = 0
	sep.Size = UDim2.new(1, -20, 0, 1)
	sep.Position = UDim2.new(0, 10, 0, 37)
	sep.ZIndex = 4
	sep.Parent = titleBar

	local titleLabel = label("  " .. title, 16, Enum.Font.GothamBold, Palette.Text)
	titleLabel.Position = UDim2.new(0, 0, 0, 10)
	titleLabel.Size = UDim2.new(1, -80, 0, 20)
	titleLabel.Parent = titleBar

	-- minimize button: vector bar icon, no unicode
	local minBtn = Instance.new("TextButton")
	minBtn.Name = "Minimize"
	minBtn.Text = ""
	minBtn.AutoButtonColor = false
	minBtn.Size = UDim2.new(0, 26, 0, 30)
	minBtn.Position = UDim2.new(1, -62, 0, 5)
	minBtn.ZIndex = 6
	minBtn.BackgroundTransparency = 1
	minBtn.BorderSizePixel = 0
	minBtn.Parent = titleBar

	local minBar = Instance.new("Frame")
	minBar.Name = "Bar"
	minBar.AnchorPoint = Vector2.new(0.5, 0.5)
	minBar.Position = UDim2.new(0.5, 0, 0.5, 0)
	minBar.Size = UDim2.fromOffset(10, 2)
	minBar.BackgroundColor3 = Palette.Soft
	minBar.BorderSizePixel = 0
	minBar.Parent = minBtn
	corner(minBar, 1)

	-- close button: vector X icon, no unicode
	local closeBtn = Instance.new("TextButton")
	closeBtn.Name = "Close"
	closeBtn.Text = ""
	closeBtn.AutoButtonColor = false
	closeBtn.Size = UDim2.new(0, 26, 0, 30)
	closeBtn.Position = UDim2.new(1, -34, 0, 5)
	closeBtn.ZIndex = 6
	closeBtn.BackgroundTransparency = 1
	closeBtn.BorderSizePixel = 0
	closeBtn.Parent = titleBar

	local closeBar1 = Instance.new("Frame")
	closeBar1.Name = "Bar1"
	closeBar1.AnchorPoint = Vector2.new(0.5, 0.5)
	closeBar1.Position = UDim2.new(0.5, 0, 0.5, 0)
	closeBar1.Size = UDim2.fromOffset(11, 2)
	closeBar1.Rotation = 45
	closeBar1.BackgroundColor3 = Palette.Soft
	closeBar1.BorderSizePixel = 0
	closeBar1.Parent = closeBtn
	corner(closeBar1, 1)

	local closeBar2 = closeBar1:Clone()
	closeBar2.Name = "Bar2"
	closeBar2.Rotation = -45
	closeBar2.Parent = closeBtn

	minBtn.MouseEnter:Connect(function()
		tween(minBar, "BackgroundColor3", Palette.Text, 0.1)
	end)
	minBtn.MouseLeave:Connect(function()
		tween(minBar, "BackgroundColor3", Palette.Soft, 0.12)
	end)
	minBtn.MouseButton1Down:Connect(function()
		tween(minBar, "BackgroundColor3", Palette.Accent, 0.05)
	end)
	minBtn.MouseButton1Up:Connect(function()
		tween(minBar, "BackgroundColor3", Palette.Text, 0.1)
	end)

	closeBtn.MouseEnter:Connect(function()
		tween(closeBar1, "BackgroundColor3", Color3.fromRGB(255, 90, 90), 0.1)
		tween(closeBar2, "BackgroundColor3", Color3.fromRGB(255, 90, 90), 0.1)
	end)
	closeBtn.MouseLeave:Connect(function()
		tween(closeBar1, "BackgroundColor3", Palette.Soft, 0.12)
		tween(closeBar2, "BackgroundColor3", Palette.Soft, 0.12)
	end)
	closeBtn.MouseButton1Down:Connect(function()
		tween(closeBar1, "BackgroundColor3", Color3.fromRGB(200, 60, 60), 0.05)
		tween(closeBar2, "BackgroundColor3", Color3.fromRGB(200, 60, 60), 0.05)
	end)

	local minimized = false

	local pill = Instance.new("TextButton")
	pill.Name = "MinPill"
	pill.Size = UDim2.fromOffset(44, 44)
	pill.Position = UDim2.new(0, 16, 1, -58)
	pill.AnchorPoint = Vector2.new(0, 1)
	pill.BackgroundColor3 = Color3.fromRGB(14, 15, 17)
	pill.Text = "A"
	pill.Font = Enum.Font.GothamBold
	pill.TextSize = 22
	pill.TextColor3 = Palette.Text
	pill.BorderSizePixel = 0
	pill.Visible = false
	pill.ZIndex = 10
	pill.Parent = sg
	corner(pill, 22)

	local applyMinimize: () -> ()
	applyMinimize = function()
		if minimized then
			win.Visible = false
			pill.Visible = true
		else
			win.Visible = true
			pill.Visible = false
		end
	end
	minBtn.MouseButton1Click:Connect(function()
		minimized = not minimized
		applyMinimize()
	end)
	pill.MouseButton1Click:Connect(function()
		minimized = false
		applyMinimize()
	end)
	pill.MouseButton1Down:Connect(function()
		press(pill)
	end)
	closeBtn.MouseButton1Click:Connect(function()
		sg:Destroy()
	end)

	local dragStart, winStart, dragging

	titleBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			winStart = win.Position
		end
	end)
	titleBar.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
	UIS.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local d = input.Position - dragStart
			win.Position = UDim2.fromOffset(winStart.X.Offset + d.X, winStart.Y.Offset + d.Y)
		end
	end)

	local tabBg = Instance.new("Frame")
	tabBg.Name = "TabBar"
	tabBg.BackgroundColor3 = Palette.TabBg
	tabBg.BorderSizePixel = 0
	tabBg.Position = UDim2.new(0, 8, 0, 46)
	tabBg.Size = UDim2.new(1, -16, 0, 34)
	tabBg.Parent = win
	corner(tabBg, 5)

	local tabIndicator = Instance.new("Frame")
	tabIndicator.Name = "Indicator"
	tabIndicator.BackgroundColor3 = Palette.Accent
	tabIndicator.BorderSizePixel = 0
	tabIndicator.Size = UDim2.new(0, 40, 0, 2)
	tabIndicator.Position = UDim2.new(0, 12, 1, -6)
	tabIndicator.ZIndex = 4
	tabIndicator.Parent = tabBg
	corner(tabIndicator, 1)

	local content = Instance.new("ScrollingFrame")
	content.Name = "Content"
	content.BackgroundTransparency = 1
	content.BorderSizePixel = 0
	content.Position = UDim2.new(0, 8, 0, 84)
	content.Size = UDim2.new(1, -16, 1, -88)
	content.ScrollBarThickness = 3
	content.ScrollBarImageColor3 = Palette.Soft
	content.AutomaticCanvasSize = Enum.AutomaticSize.Y
	content.ScrollingDirection = Enum.ScrollingDirection.Y
	content.Parent = win

	local contentPad = Instance.new("UIPadding")
	contentPad.PaddingTop = UDim.new(0, 8)
	contentPad.PaddingBottom = UDim.new(0, 10)
	contentPad.Parent = content

	local tabs = {}
	local tabBtns = {}
	local tabCount = 0

	local function selectTab(name)
		for n, f in pairs(tabs) do
			f.Visible = n == name
		end
		local btn = tabBtns[name]
		if btn then
			tween(tabIndicator, "Size", UDim2.new(0, btn.Size.X.Offset - 20, 0, 2), 0.2)
			tween(tabIndicator, "Position", UDim2.new(0, 10 + btn.Position.X.Offset, 1, -6), 0.2, Enum.EasingStyle.Quad)
		end
		for n, b in pairs(tabBtns) do
			local sel = n == name
			tween(b, "TextColor3", sel and Palette.Text or Palette.Soft, 0.18)
		end
	end

	local window = {
		ScreenGui = sg,
		Close = function()
			sg:Destroy()
		end,
		AddTab = function(self: any, name: string)
			tabCount = tabCount + 1
			local index = tabCount

			local tabFrame = Instance.new("Frame")
			tabFrame.Name = "Tab_" .. name
			tabFrame.BackgroundTransparency = 1
			tabFrame.BorderSizePixel = 0
			tabFrame.Size = UDim2.new(1, 0, 0, 0)
			tabFrame.AutomaticSize = Enum.AutomaticSize.Y
			tabFrame.Parent = content

			local tabPad = Instance.new("UIPadding")
			tabPad.PaddingLeft = UDim.new(0, 2)
			tabPad.PaddingRight = UDim.new(0, 2)
			tabPad.Parent = tabFrame

			local tl = Instance.new("UIListLayout")
			tl.Padding = UDim.new(0, 14)
			tl.SortOrder = Enum.SortOrder.LayoutOrder
			tl.FillDirection = Enum.FillDirection.Horizontal
			tl.Wraps = true
			tl.VerticalAlignment = Enum.VerticalAlignment.Top
			tl.Parent = tabFrame

			local btn = Instance.new("TextButton")
			btn.Name = "TB_" .. name
			btn.BackgroundTransparency = 1
			btn.BorderSizePixel = 0
			btn.Size = UDim2.new(0, 88, 0, 30)
			btn.Position = UDim2.new(0, 12 + ((index - 1) * 96), 0, 2)
			btn.Text = name
			btn.Font = Enum.Font.GothamBold
			btn.TextSize = 13
			btn.TextColor3 = Palette.Soft
			btn.Parent = tabBg
			btn.MouseButton1Down:Connect(function()
				press(btn)
			end)
			btn.MouseButton1Click:Connect(function()
				selectTab(name)
			end)

			tabs[name] = tabFrame
			tabBtns[name] = btn
			selectTab(name)

			local order = 0

			local function nextOrder()
				order = order + 1
				return order
			end

			local tab: any = {
				Frame = tabFrame,
				Layout = tl,
			}

			function tab:AddSection(titleText: any, half: boolean?)
				local section = Instance.new("Frame")
				section.Name = "Section"
				section.BackgroundColor3 = Palette.Section
				section.BorderSizePixel = 0
				section.Size = UDim2.new(half and 0.5 or 1, half and -8 or 0, 0, 0)
				section.AutomaticSize = Enum.AutomaticSize.Y
				section.LayoutOrder = nextOrder()
				section.Parent = tabFrame
				corner(section, 5)
				fillStroke(section, Color3.new(1, 1, 1), 1, 0.95)

				local sPad = Instance.new("UIPadding")
				sPad.PaddingLeft = UDim.new(0, 9)
				sPad.PaddingRight = UDim.new(0, 9)
				sPad.PaddingTop = UDim.new(0, 9)
				sPad.PaddingBottom = UDim.new(0, 9)
				sPad.Parent = section

				local sl = Instance.new("UIListLayout")
				sl.Padding = UDim.new(0, 5)
				sl.SortOrder = Enum.SortOrder.LayoutOrder
				sl.Parent = section

				if titleText and titleText ~= "" then
					local head = Instance.new("Frame")
					head.BackgroundTransparency = 1
					head.Size = UDim2.new(1, 0, 0, 22)
					head.LayoutOrder = 0
					head.Parent = section

					local line = Instance.new("Frame")
					line.BackgroundColor3 = Palette.Separator
					line.BorderSizePixel = 0
					line.Size = UDim2.new(1, 0, 0, 1)
					line.Position = UDim2.new(0, 0, 1, -3)
					line.ZIndex = 2
					line.Parent = head

					local tLbl = label("  " .. titleText, 12, Enum.Font.GothamBold, Palette.Text)
					tLbl.Size = UDim2.new(1, 0, 0, 18)
					tLbl.Position = UDim2.new(0, 0, 0, 1)
					tLbl.BackgroundTransparency = 1
					tLbl.TextSize = 12
					tLbl.TextXAlignment = Enum.TextXAlignment.Left
					tLbl.TextYAlignment = Enum.TextYAlignment.Center
					tLbl.ZIndex = 3
					tLbl.Parent = head
				end

				local so = 0
				local sec: any = { Frame = section }

				function sec:AddLabel(text: string)
					local t = label("  " .. text, 14, Enum.Font.Gotham, Palette.Sub)
					t.LayoutOrder = so + 1
					t.Size = UDim2.new(1, 0, 0, 22)
					t.TextSize = 13
					t.Parent = section
					so = so + 1
					return t
				end

				function sec:AddButton(cfg: { Text: string?, Callback: (() -> ())? })
					local row = makeRow(section, 28, Color3.fromRGB(29, 33, 39))
					row.LayoutOrder = so + 1
					so = so + 1
					row.Text = cfg.Text or "Button"
					row.Font = Enum.Font.Gotham
					row.TextSize = 13
					row.TextColor3 = Palette.Text
					row.TextXAlignment = Enum.TextXAlignment.Center
					row.TextYAlignment = Enum.TextYAlignment.Center

					row.Activated:Connect(function()
						if cfg.Callback then
							cfg.Callback()
						end
					end)
					return row
				end

				function sec:AddToggle(cfg: { Text: string?, Default: boolean?, Flag: string?, Callback: ((boolean) -> ())? })
					local row = makeRow(section, 28, Palette.Section, true)
					row.LayoutOrder = so + 1
					so = so + 1
					itemText(row, cfg.Text or "Toggle")

					local box = Instance.new("Frame")
					box.Name = "Checkbox"
					box.Size = UDim2.fromOffset(18, 18)
					box.Position = UDim2.new(1, -30, 0.5, 0)
					box.AnchorPoint = Vector2.new(0, 0.5)
					box.ZIndex = 5
					box.BackgroundColor3 = Color3.fromRGB(30, 34, 40)
					box.BackgroundTransparency = 0
					box.BorderSizePixel = 0
					box.Parent = row
					corner(box, 4)

					local tck = checkMark(15, Palette.Accent)
					tck.AnchorPoint = Vector2.new(0.5, 0.5)
					tck.Position = UDim2.new(0.5, 0, 0.5, 0)
					tck.ZIndex = 6
					tck.Parent = box

					local state = cfg.Default or false

					local function set(nv: boolean)
						state = nv
						tween(tck, "TextTransparency", nv and 0 or 1, 0.14)
						if cfg.Callback then
							task.spawn(function()
								cfg.Callback(nv)
							end)
						end
					end
					if not cfg.Flag then
						cfg.Flag = cfg.Text
					end
					Library.Flags[cfg.Flag] = state
					row.Activated:Connect(function()
						tween(box, "Rotation", box.Rotation ~= 0 and 0 or -12, 0.05)
						task.delay(0.05, function()
							tween(box, "Rotation", 0, 0.12)
						end)
						task.spawn(function()
							set(not state)
						end)
					end)
					set(state)
					return {
						Set = set,
						Get = function()
							return state
						end,
						Flag = cfg.Flag,
					}
				end

				local function AddSliderImpl(row: Instance, cfg: any)
					local t = itemText(row, cfg.Text or "Slider")
					t.AnchorPoint = Vector2.new(0, 0)
					t.Position = UDim2.new(0, 12, 0, 5)
					t.Size = UDim2.new(1, -92, 0, 14)

					local valLbl = label("", 16, Enum.Font.Gotham, Palette.Text)
					valLbl.Position = UDim2.new(1, -70, 0, 5)
					valLbl.TextXAlignment = Enum.TextXAlignment.Right
					valLbl.Size = UDim2.new(0, 58, 0, 14)
					valLbl.TextTruncate = Enum.TextTruncate.AtEnd
					valLbl.Parent = row

					local track = Instance.new("Frame")
					track.BackgroundColor3 = Palette.Checkbox
					track.BorderSizePixel = 0
					track.Size = UDim2.new(0.5, 0, 0, 6)
					track.Position = UDim2.new(0.45, 0, 1, -12)
					track.Parent = row
					corner(track, 3)

					local fill = Instance.new("Frame")
					fill.BackgroundColor3 = Palette.Accent2
					fill.BorderSizePixel = 0
					fill.Size = UDim2.new(0, 0, 1, 0)
					fill.Parent = track
					corner(fill, 3)

					local dot = Instance.new("Frame")
					dot.BackgroundColor3 = Palette.Text
					dot.BorderSizePixel = 0
					dot.Size = UDim2.fromOffset(10, 10)
					dot.AnchorPoint = Vector2.new(0, 0.5)
					dot.Position = UDim2.new(0, 0, 0.5, 0)
					dot.ZIndex = 5
					dot.Parent = track
					corner(dot, 5)

					local minv = cfg.Min or 0
					local maxv = cfg.Max or 100
					local value = cfg.Default or minv

					local function update()
						local frac = (value - minv) / math.max(maxv - minv, 0.0001)
						frac = math.clamp(frac, 0, 1)
						fill.Size = UDim2.fromScale(frac, 1)
						dot.Position = UDim2.fromScale(frac, 0.5)
						valLbl.Text = tostring(math.floor(value + 0.5))
						if cfg.Callback then
							task.spawn(function()
								cfg.Callback(value)
							end)
						end
					end

					local dragging = false
					local function setFrom(x: number)
						local w = math.max(track.AbsoluteSize.X, 1)
						value = minv + (maxv - minv) * math.clamp((x - track.AbsolutePosition.X) / w, 0, 1)
						update()
					end

					row.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true
							setFrom(input.Position.X)
						end
					end)
					row.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false
						end
					end)
					UIS.InputChanged:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
							setFrom(input.Position.X)
						end
					end)
					update()
					return {
						Set = function(v: number)
							value = v
							update()
						end,
						Get = function()
							return value
						end,
					}
				end

				function sec:AddSlider(cfg)
					local row = makeRow(section, 36, Palette.Section, true)
					row.LayoutOrder = so + 1
					so = so + 1
					return AddSliderImpl(row, cfg)
				end

				-- dropdown internals share this scaffold; `list` MUST be a CanvasGroup
				-- (GroupTransparency does not exist on Frame — see openAnim below)
				local function makeDropdown(cfg, multi: boolean)
					local row = makeRow(section, 32, Palette.Section)
					row.LayoutOrder = so + 1
					so = so + 1
					local t = itemText(row, cfg.Text or (multi and "Multi" or "Dropdown"))
					t.Size = UDim2.new(1, -170, 0, 18)

					local valueBox = Instance.new("Frame")
					valueBox.Name = "ValueBox"
					valueBox.AnchorPoint = Vector2.new(1, 0.5)
					valueBox.Position = UDim2.new(1, -12, 0.5, 0)
					valueBox.Size = UDim2.new(0, 128, 0, 22)
					valueBox.BackgroundColor3 = Color3.fromRGB(30, 34, 40)
					valueBox.BorderSizePixel = 0
					valueBox.Parent = row
					corner(valueBox, 4)
					local vp = Instance.new("UIPadding")
					vp.PaddingLeft = UDim.new(0, 10)
					vp.Parent = valueBox
					local vLbl = Instance.new("TextLabel")
					vLbl.Name = "Value"
					vLbl.BackgroundTransparency = 1
					vLbl.Size = UDim2.new(1, 0, 1, 0)
					vLbl.Font = Enum.Font.Gotham
					vLbl.TextSize = 13
					vLbl.TextColor3 = Palette.Text
					vLbl.TextXAlignment = Enum.TextXAlignment.Left
					vLbl.TextYAlignment = Enum.TextYAlignment.Center
					vLbl.TextTruncate = Enum.TextTruncate.AtEnd
					vLbl.Parent = valueBox

					local list = Instance.new("CanvasGroup")
					list.BackgroundTransparency = 1
					list.BorderSizePixel = 0
					list.Size = UDim2.new(1, 0, 0, 0)
					list.AutomaticSize = Enum.AutomaticSize.Y
					list.LayoutOrder = row.LayoutOrder + 0.5
					list.Visible = false
					list.GroupTransparency = 0
					list.Parent = section

					local ll = Instance.new("UIListLayout")
					ll.Padding = UDim.new(0, 4)
					ll.SortOrder = Enum.SortOrder.LayoutOrder
					ll.Parent = list

					local search = Instance.new("TextBox")
					search.Name = "Search"
					search.BackgroundColor3 = Color3.fromRGB(30, 34, 40)
					search.BorderSizePixel = 0
					search.Size = UDim2.new(1, 0, 0, 24)
					search.LayoutOrder = 1
					search.Font = Enum.Font.Gotham
					search.TextSize = 13
					search.Text = ""
					search.TextColor3 = Palette.Text
					search.TextXAlignment = Enum.TextXAlignment.Left
					search.TextYAlignment = Enum.TextYAlignment.Center
					search.PlaceholderText = " Search..."
					search.PlaceholderColor3 = Palette.Soft
					search.ClearTextOnFocus = false
					search.Parent = list
					corner(search, 4)
					local sp = Instance.new("UIPadding")
					sp.PaddingLeft = UDim.new(0, 10)
					sp.Parent = search

					local cells: { TextButton } = {}
					local function applyFilter()
						local q = search.Text:lower()
						for _, c in ipairs(cells) do
							c.Visible = q == "" or c.Name:lower():find(q, 1, true) ~= nil
						end
					end
					search:GetPropertyChangedSignal("Text"):Connect(applyFilter)

					local animToken = 0
					local openAnim: any
					openAnim = {
						show = function()
							animToken += 1
							list.Visible = true
							list.GroupTransparency = 1
							tween(list, "GroupTransparency", 0, 0.16, Enum.EasingStyle.Quad)
						end,
						hide = function()
							animToken += 1
							local tk = animToken
							tween(list, "GroupTransparency", 1, 0.12, Enum.EasingStyle.Quad)
							task.delay(0.14, function()
								if tk == animToken then
									list.Visible = false
								end
							end)
						end,
					}

					return row, list, t, vLbl, search, cells, openAnim
				end

				function sec:AddDropdown(cfg: { Text: string?, Options: { string }?, Default: string?, Callback: ((string) -> ())? })
					local row, list, t, vLbl, search, cells, openAnim = makeDropdown(cfg, false)

					local open = false
					local current = cfg.Default or (cfg.Options and cfg.Options[1])
					vLbl.Text = current or ""

					local function close()
						open = false
						if openLists[win] == close then
							openLists[win] = nil
						end
						openAnim.hide()
					end

					local function select(opt: string)
						current = opt
						vLbl.Text = opt
						close()
						if cfg.Callback then
							task.spawn(function()
								cfg.Callback(opt)
							end)
						end
					end

					for i, opt in ipairs(cfg.Options or {}) do
						local cell = Instance.new("TextButton")
						cell.Name = opt
						cell.LayoutOrder = i + 2
						cell.Size = UDim2.new(1, 0, 0, 24)
						cell.Text = opt
						cell.Font = Enum.Font.Gotham
						cell.TextSize = 13
						cell.TextColor3 = Palette.Text
						cell.BackgroundColor3 = Palette.Section
						cell.TextXAlignment = Enum.TextXAlignment.Left
						cell.AutoButtonColor = false
						cell.BorderSizePixel = 0
						cell.Parent = list
						corner(cell, 4)
						local cp = Instance.new("UIPadding")
						cp.PaddingLeft = UDim.new(0, 12)
						cp.Parent = cell
						cell.MouseButton1Down:Connect(function()
							press(cell)
						end)
						cell.MouseButton1Click:Connect(function()
							select(opt)
						end)
						table.insert(cells, cell)
					end

					row.Activated:Connect(function()
						if open then
							close()
						else
							if openLists[win] then
								openLists[win]()
							end
							open = true
							search.Text = ""
							openAnim.show()
							openLists[win] = close
						end
					end)

					win.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 and open then
							if not pointInside(row, input.Position) and not pointInside(list, input.Position) then
								close()
							end
						end
					end)

					return {
						Set = select,
						Get = function()
							return current
						end,
					}
				end

				function sec:AddMultiDropdown(cfg: { Text: string?, Options: { string }?, Default: { string }?, Callback: (({ string }) -> ())? })
					local row, list, t, vLbl, search, cells, openAnim = makeDropdown(cfg, true)

					local open = false
					local selected: { string } = {}

					local function sync()
						vLbl.Text = table.concat(selected, ", ")
					end

					local function close()
						open = false
						if openLists[win] == close then
							openLists[win] = nil
						end
						openAnim.hide()
					end

					for i, opt in ipairs(cfg.Options or {}) do
						local cell = Instance.new("TextButton")
						cell.Name = opt
						cell.LayoutOrder = i + 2
						cell.Size = UDim2.new(1, 0, 0, 24)
						cell.Text = opt
						cell.Font = Enum.Font.Gotham
						cell.TextSize = 13
						cell.TextColor3 = Palette.Text
						cell.BackgroundColor3 = Palette.Section
						cell.TextXAlignment = Enum.TextXAlignment.Left
						cell.AutoButtonColor = false
						cell.BorderSizePixel = 0
						cell.Parent = list
						corner(cell, 4)
						local cp = Instance.new("UIPadding")
						cp.PaddingLeft = UDim.new(0, 36)
						cp.Parent = cell
						cell.MouseButton1Down:Connect(function()
							press(cell)
						end)

						local mk = Instance.new("TextLabel")
						mk.BackgroundTransparency = 1
						mk.AnchorPoint = Vector2.new(0.5, 0.5)
						mk.Position = UDim2.new(0, -12, 0.5, 0)
						mk.Size = UDim2.fromOffset(14, 14)
						mk.Font = Enum.Font.GothamBold
						mk.Text = "\u{2713}"
						mk.TextColor3 = Palette.Accent
						mk.TextSize = 14
						mk.TextTransparency = 1
						mk.Parent = cell

						cell.MouseButton1Click:Connect(function()
							local found = false
							for i, s in ipairs(selected) do
								if s == opt then
									table.remove(selected, i)
									found = true
									break
								end
							end
							if not found then
								table.insert(selected, opt)
							end
							tween(mk, "TextTransparency", found and 1 or 0, 0.1)
							sync()
							if cfg.Callback then
								local copy = {}
								for _, s in ipairs(selected) do
									table.insert(copy, s)
								end
								task.spawn(function()
									cfg.Callback(copy)
								end)
							end
						end)
						table.insert(cells, cell)
					end

					row.Activated:Connect(function()
						if open then
							close()
						else
							if openLists[win] then
								openLists[win]()
							end
							open = true
							search.Text = ""
							openAnim.show()
							openLists[win] = close
						end
					end)

					win.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 and open then
							if not pointInside(row, input.Position) and not pointInside(list, input.Position) then
								close()
							end
						end
					end)

					for _, d in ipairs(cfg.Default or {}) do
						table.insert(selected, d)
					end
					sync()
					return {
						Get = function()
							local copy = {}
							for _, s in ipairs(selected) do
								table.insert(copy, s)
							end
							return copy
						end,
					}
				end

				return sec
			end

			return tab
		end,
	}

	return window
end

return Library
