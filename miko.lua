-- Main GUI Setup
local Player = game.Players.LocalPlayer
local PlayerGui = Player.PlayerGui

-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = PlayerGui
screenGui.Name = "AutoFarmGUI"

-- Create a Frame for the main options
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.Parent = screenGui

-- Create buttons for each option
local autoKillButton = Instance.new("TextButton")
autoKillButton.Size = UDim2.new(0, 280, 0, 40)
autoKillButton.Position = UDim2.new(0, 10, 0, 10)
autoKillButton.Text = "Auto Kill Boss"
autoKillButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
autoKillButton.Parent = mainFrame

local autoRaidButton = Instance.new("TextButton")
autoRaidButton.Size = UDim2.new(0, 280, 0, 40)
autoRaidButton.Position = UDim2.new(0, 10, 0, 60)
autoRaidButton.Text = "Auto Pirate Raid"
autoRaidButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
autoRaidButton.Parent = mainFrame

local autoIndraButton = Instance.new("TextButton")
autoIndraButton.Size = UDim2.new(0, 280, 0, 40)
autoIndraButton.Position = UDim2.new(0, 10, 0, 110)
autoIndraButton.Text = "Auto Rip Indra"
autoIndraButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
autoIndraButton.Parent = mainFrame

local autoFarmButton = Instance.new("TextButton")
autoFarmButton.Size = UDim2.new(0, 280, 0, 40)
autoFarmButton.Position = UDim2.new(0, 10, 0, 160)
autoFarmButton.Text = "Auto Farm Selected Boss"
autoFarmButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
autoFarmButton.Parent = mainFrame

-- Anti-Ban Features: Human-like behavior
local function waitRandomTime(min, max)
    wait(math.random(min, max))  -- Randomize wait times to appear human-like
end

local function antiBanCheck()
    -- Random delay to mimic human behavior
    waitRandomTime(3, 7)  -- Wait for 3 to 7 seconds randomly before each action
end

-- Function to simulate auto-kill
local function autoKillBoss()
    while autoKillButton.Text == "Auto Kill Boss" do
        -- Insert logic for killing the boss here
        print("Auto Killing Boss...")
        antiBanCheck()  -- Apply anti-ban wait time
        waitRandomTime(5, 10)  -- Add random delay between actions
    end
end

-- Function to simulate auto-raid
local function autoPirateRaid()
    while autoRaidButton.Text == "Auto Pirate Raid" do
        -- Insert logic for Pirate raid here
        print("Auto Pirate Raid in Progress...")
        antiBanCheck()
        waitRandomTime(5, 10)
    end
end

-- Function to simulate auto-indra
local function autoRipIndra()
    while autoIndraButton.Text == "Auto Rip Indra" do
        -- Insert logic for Rip Indra here
        print("Auto Rip Indra...")
        antiBanCheck()
        waitRandomTime(5, 10)
    end
end

-- Function to simulate auto-farming
local function autoFarmSelectedBoss()
    while autoFarmButton.Text == "Auto Farm Selected Boss" do
        -- Insert logic for Auto Farming selected Bosses
        print("Auto Farming Selected Boss...")
        antiBanCheck()
        waitRandomTime(5, 10)
    end
end

-- Button Connections
autoKillButton.MouseButton1Click:Connect(autoKillBoss)
autoRaidButton.MouseButton1Click:Connect(autoPirateRaid)
autoIndraButton.MouseButton1Click:Connect(autoRipIndra)
autoFarmButton.MouseButton1Click:Connect(autoFarmSelectedBoss)