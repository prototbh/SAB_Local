loadstring([[
local player = game.Players.LocalPlayer
local guiName = "DiscordPrompt"

-- remove old one if it exists
local old = player:FindFirstChild("PlayerGui"):FindFirstChild(guiName)
if old then
    old:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = guiName
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 350, 0, 220)
frame.Position = UDim2.new(0.5, -175, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- black background
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true

-- Rounded corners
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = frame

-- Drop shadow
local shadow = Instance.new("ImageLabel")
shadow.Size = UDim2.new(1, 30, 1, 30)
shadow.Position = UDim2.new(0, -15, 0, -15)
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://1316045217"
shadow.ImageColor3 = Color3.fromRGB(0,0,0)
shadow.ImageTransparency = 0.5
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(10,10,118,118)
shadow.ZIndex = 0
shadow.Parent = frame

-- Title text
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 0, 60)
label.Position = UDim2.new(0, 10, 0, 50)
label.Text = "Join our Discord for the script key"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.Font = Enum.Font.GothamBold
label.TextSize = 20
label.TextWrapped = true
label.Parent = frame

-- Copy button
local copyBtn = Instance.new("TextButton")
copyBtn.Size = UDim2.new(0.9, 0, 0, 45)
copyBtn.Position = UDim2.new(0.05, 0, 0.65, 0)
copyBtn.Text = "📋 Copy Discord Link"
copyBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
copyBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
copyBtn.Font = Enum.Font.GothamBold
copyBtn.TextSize = 18
copyBtn.Parent = frame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = copyBtn

-- Close button
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -40, 0, 10)
closeBtn.Text = "×"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 20
closeBtn.Parent = frame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = closeBtn

-- Button actions
copyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://discord.gg/8t895CxPx8")
    elseif toclipboard then
        toclipboard("https://discord.gg/8t895CxPx8")
    else
        warn("Clipboard function not supported in this executor.")
    end
    copyBtn.Text = "✅ Copied!"
    task.wait(1.5)
    copyBtn.Text = "📋 Copy Discord Link"
end)

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
]])()
