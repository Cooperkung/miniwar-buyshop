local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CooperHub | Premium Script", "GrapeTheme")
local Tab = Window:NewTab("Menu")
local Section = Tab:NewSection("Active Menu")

local buyfactoryshopp = _G.config.BuyFactoryShop
local buyhouseshopp = _G.config.BuyHouseShop
local buymilitaryshopp = _G.config.BuyMilitaryShop
local buygemshopp = _G.config.BuyGemShop

function BuyFactoryShop()
    local args = {
        {
            {
                item = "QuantumCoreGenerator",
                shop = "Farm"
            },
            "\031"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    local args = {
        {
            {
                item = "QuantumCoreGenerator",
                shop = "Farm"
            },
            " "
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    wait(0.1)

    local args = {
        {
            {
                item = "SupernovaAccelerator",
                shop = "Farm"
            },
            "\031"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    local args = {
        {
            {
                item = "SupernovaAccelerator",
                shop = "Farm"
            },
            " "
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
end




function BuyHouseShop()
    local args = {
        {
            {
                item = "GrandHotel",
                shop = "House"
            },
            "\031"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    local args = {
        {
            {
                item = "GrandHotel",
                shop = "House"
            },
            " "
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
end

function BuyMilitaryShop()
    local args = {
        {
            {
                item = "SpiderBase",
                shop = "Military"
            },
            "\031"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    local args = {
        {
            {
                item = "SpiderBase",
                shop = "Military"
            },
            " "
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    wait(0.1)

    local args = {
        {
            {
                item = "AirFortress",
                shop = "Military"
            },
            "\031"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    wait(0.1)
    local args = {
        {
            {
                item = "AirFortress",
                shop = "Military"
            },
            " "
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))

end



function BuyGemShop()
    local args = {
        {
            {
                item = "GemMine",
                shop = "BlackMarket"
            },
            "T"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    wait(0.1)
    local args = {
        {
            {
                item = "CloneFacility",
                shop = "BlackMarket"
            },
            "T"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    wait(0.1)
    local args = {
        {
            {
                item = "CloneFacilityV2",
                shop = "BlackMarket"
            },
            "T"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    wait(0.1)
end



task.spawn(function()
    while true do
        if buyfactoryshopp then
            BuyFactoryShop()
        end
        task.wait(0.01)
    end
end)

-- Toggle UI
Section:NewToggle("Buy Factory Shop", "Buy Factory Shop", function(state)
    if state then
        print("Toggle On")
        buyfactoryshopp = true
    else
        print("Toggle Off")
        buyfactoryshopp = false
    end
end)


task.spawn(function()
    while true do
        if buyhouseshopp then
            BuyHouseShop()
        end
        task.wait(0.01)
    end
end)

-- Toggle UI
Section:NewToggle("Buy House Shop", "Buy House Shop", function(state)
    if state then
        print("Toggle On")
        buyhouseshopp = true
    else
        print("Toggle Off")
        buyhouseshopp = false
    end
end)


task.spawn(function()
    while true do
        if buymilitaryshopp then
            BuyMilitaryShop()
        end
        task.wait(0.01)
    end
end)

-- Toggle UI
Section:NewToggle("Buy Military Shop", "Buy Military Shop", function(state)
    if state then
        print("Toggle On")
        buymilitaryshopp = true
    else
        print("Toggle Off")
        buymilitaryshopp = false
    end
end)


task.spawn(function()
    while true do
        if buygemshopp then
            BuyGemShop()
        end
        task.wait(0.01)
    end
end)

-- Toggle UI
Section:NewToggle("Buy Gem Shop", "Buy Kaitun Gem Shop", function(state)
    if state then
        print("Toggle On")
        buygemshopp = true
    else
        print("Toggle Off")
        buygemshopp = false
    end
end)


--UI TOGGLE
local Tab = Window:NewTab("Miscellaneous")
local Section = Tab:NewSection("Toggle UI Script")

Section:NewKeybind("Toggle UI", "Press X to toggle UI", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)

local Section = Tab:NewSection("Admin Section")

Section:NewButton("Copy Position", "Copy Cframe", function()
    print("Clicked")
    setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
end)

Section:NewButton("fireproximityprompt", "solve E button", function()
    print("Clicked")
    setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
end)
