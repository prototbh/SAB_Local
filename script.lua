loadstring([[
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DiscordPrompt"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -10, 0, 50)
label.Position = UDim2.new(0, 5, 0, 10)
label.Text = "Please join the Discord server for the script key."
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.Font = Enum.Font.SourceSansBold
label.TextSize = 18
label.TextWrapped = true
label.Parent = frame

local copyBtn = Instance.new("TextButton")
copyBtn.Size = UDim2.new(0.8, 0, 0, 30)
copyBtn.Position = UDim2.new(0.1, 0, 0.5, 0)
copyBtn.Text = "Copy Discord Link"
copyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
copyBtn.Font = Enum.Font.SourceSansBold
copyBtn.TextSize = 16
copyBtn.Parent = frame

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0.2, 0, 0, 25)
closeBtn.Position = UDim2.new(0.8, 0, 0, 0)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextSize = 14
closeBtn.Parent = frame

copyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://discord.gg/8t895CxPx8")
    elseif toclipboard then
        toclipboard("https://discord.gg/8t895CxPx8")
    else
        warn("Clipboard function not supported in this executor.")
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
]])()
