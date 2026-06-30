local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CooperHub | Premium Script", "GrapeTheme")
local Tab = Window:NewTab("Menu")
local Section = Tab:NewSection("Active Menu")

local buyshopp = _G.config.BuyMoneyShop
local args = {
	{
		{
			item = "AntimatterReactor",
			shop = "Farm"
		},
		" "
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))

function BuyShop()
    local args = {
        {
            {
                item = "AntimatterReactor",
                shop = "Farm"
            },
            "\031"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("ncxyzero_bridgenet2-fork@1.1.5"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    local args = {
        {
            {
                item = "AntimatterReactor",
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
    wait(0.1)

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
    wait(0.1)

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
        if buyshopp then
            BuyShop()
        end
        task.wait(0.01)
    end
end)

-- Toggle UI
Section:NewToggle("Buy Shop", "Buy Kaitun Normal Shop", function(state)
    if state then
        print("Toggle On")
        buyshopp = true
    else
        print("Toggle Off")
        buyshopp = false
    end
end)

local buygemshopp = _G.config.BuyGemShop

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
