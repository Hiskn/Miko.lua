-- Create the main GUI
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Create a main frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 250, 0, 500)
mainFrame.Position = UDim2.new(0, 10, 0, 10)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BackgroundTransparency = 0.5
mainFrame.Parent = screenGui

-- Tabs Setup
local tabsFrame = Instance.new("Frame")
tabsFrame.Size = UDim2.new(1, 0, 0, 50)
tabsFrame.Position = UDim2.new(0, 0, 0, 0)
tabsFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
tabsFrame.Parent = mainFrame

-- Create buttons for each action
local buttonAutoCollect = Instance.new("TextButton")
buttonAutoCollect.Size = UDim2.new(0, 100, 0, 50)
buttonAutoCollect.Position = UDim2.new(0, 10, 0, 0)
buttonAutoCollect.Text = "Auto Collect Chest"
buttonAutoCollect.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
buttonAutoCollect.TextSize = 18
buttonAutoCollect.Parent = tabsFrame

local buttonAntiAFK = Instance.new("TextButton")
buttonAntiAFK.Size = UDim2.new(0, 100, 0, 50)
buttonAntiAFK.Position = UDim2.new(0, 110, 0, 0)
buttonAntiAFK.Text = "Anti AFK"
buttonAntiAFK.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
buttonAntiAFK.TextSize = 18
buttonAntiAFK.Parent = tabsFrame

local buttonAutoKillBoss = Instance.new("TextButton")
buttonAutoKillBoss.Size = UDim2.new(0, 100, 0, 50)
buttonAutoKillBoss.Position = UDim2.new(0, 210, 0, 0)
buttonAutoKillBoss.Text = "Auto Kill Boss"
buttonAutoKillBoss.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
buttonAutoKillBoss.TextSize = 18
buttonAutoKillBoss.Parent = tabsFrame

local buttonShowIslandSpawns = Instance.new("TextButton")
buttonShowIslandSpawns.Size = UDim2.new(0, 100, 0, 50)
buttonShowIslandSpawns.Position = UDim2.new(0, 10, 0, 60)
buttonShowIslandSpawns.Text = "Show Island Spawns"
buttonShowIslandSpawns.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
buttonShowIslandSpawns.TextSize = 18
buttonShowIslandSpawns.Parent = tabsFrame

local buttonPrehistoricAuto = Instance.new("TextButton")
buttonPrehistoricAuto.Size = UDim2.new(0, 100, 0, 50)
buttonPrehistoricAuto.Position = UDim2.new(0, 110, 0, 60)
buttonPrehistoricAuto.Text = "Prehistoric Auto"
buttonPrehistoricAuto.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
buttonPrehistoricAuto.TextSize = 18
buttonPrehistoricAuto.Parent = tabsFrame

-- Create a small indicator for showing action status
local function createStatusBall(parent, position)
    local ball = Instance.new("Frame")
    ball.Size = UDim2.new(0, 10, 0, 10)
    ball.Position = position
    ball.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red color for 'In Progress'
    ball.Shape = Enum.PartType.Ball
    ball.Parent = parent
    return ball
end

-- Function to change the status color
local function setStatus(ball, isRunning)
    if isRunning then
        ball.BackgroundColor3 = Color3.fromRGB(0, 255, 0)  -- Green for 'Completed'
    else
        ball.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red for 'In Progress'
    end
end

-- Create the status balls next to buttons
local autoCollectStatusBall = createStatusBall(buttonAutoCollect, UDim2.new(0, 120, 0, 10))
local antiAFKStatusBall = createStatusBall(buttonAntiAFK, UDim2.new(0, 120, 0, 10))
local autoKillBossStatusBall = createStatusBall(buttonAutoKillBoss, UDim2.new(0, 120, 0, 10))
local showIslandSpawnsStatusBall = createStatusBall(buttonShowIslandSpawns, UDim2.new(0, 120, 0, 10))
local prehistoricAutoStatusBall = createStatusBall(buttonPrehistoricAuto, UDim2.new(0, 120, 0, 10))

-- Add functionalities for Auto Collect Chest
function autoCollectChest()
    setStatus(autoCollectStatusBall, true)
    -- Logic for automatic chest collection (Add your code here)
    wait(5)  -- Simulating action
    setStatus(autoCollectStatusBall, false)
end

-- Add functionalities for Anti AFK
function antiAFK()
    setStatus(antiAFKStatusBall, true)
    -- Logic to prevent AFK kick (Add your code here)
    wait(5)  -- Simulating action
    setStatus(antiAFKStatusBall, false)
end

-- Add functionalities for Auto Kill Boss
function autoKillBoss()
    setStatus(autoKillBossStatusBall, true)
    -- Logic for auto killing all bosses (Add your code here)
    wait(5)  -- Simulating action
    setStatus(autoKillBossStatusBall, false)
end

-- Add functionalities for Show Island Spawns
function showIslandSpawns()
    setStatus(showIslandSpawnsStatusBall, true)
    -- Logic to show island spawns (Add your code here)
    wait(5)  -- Simulating action
    setStatus(showIslandSpawnsStatusBall, false)
end

-- Add functionalities for Prehistoric Auto
function prehistoricAuto()
    setStatus(prehistoricAutoStatusBall, true)
    -- Logic for Prehistoric Auto (Add your code here)
    wait(5)  -- Simulating action
    setStatus(prehistoricAutoStatusBall, false)
end

-- Button functionalities
buttonAutoCollect.MouseButton1Click:Connect(function()
    autoCollectChest()
end)

buttonAntiAFK.MouseButton1Click:Connect(function()
    antiAFK()
end)

buttonAutoKillBoss.MouseButton1Click:Connect(function()
    autoKillBoss()
end)

buttonShowIslandSpawns.MouseButton1Click:Connect(function()
    showIslandSpawns()
end)

buttonPrehistoricAuto.MouseButton1Click:Connect(function()
    prehistoricAuto()
end)

-- Functionality to switch between tabs (show/hide)
local function switchTabVisibility(tab)
    for _, section in pairs(sections) do
        section.Visible = false
    end
    if sections[tab] then
        sections[tab].Visible = true
    end
end

-- Add more logic and tabs as per the need...