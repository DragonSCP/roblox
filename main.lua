-- DragonScript.lua

-- Carregando biblioteca de GUI (assumindo que você tenha uma biblioteca de GUI como OrionLib disponível)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Criando a janela principal
local Window = OrionLib:MakeWindow({Name = "Dragon SCRIPT", HidePremium = false, SaveConfig = true, ConfigFolder = "DragonScript"})

-- Aba principal do menu
local MainTab = Window:MakeTab({
    Name = "Principal",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Adicionando a seção de Auto Farm
MainTab:AddToggle({
    Name = "Auto Farm Nível",
    Default = false,
    Callback = function(Value)
        _G.AutoFarm = Value
        while _G.AutoFarm do
            wait(1)
            -- Função de auto farm
            local player = game.Players.LocalPlayer
            local character = player.Character
            local questNPC = workspace.QuestNPC -- Substitua pelo caminho certo para o NPC de missões

            -- Pegando a missão
            if not player:FindFirstChild("QuestInProgress") then
                character.HumanoidRootPart.CFrame = questNPC.HumanoidRootPart.CFrame
                wait(1)
                fireproximityprompt(questNPC.ProximityPrompt)
                wait(1)
            end

            -- Matando NPCs
            for _, npc in pairs(workspace.NPCs:GetChildren()) do -- Substitua pelo caminho certo para os NPCs
                if npc:FindFirstChild("Humanoid") and npc.Humanoid.Health > 0 then
                    character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
                    wait(1)
                    -- Atacando o NPC
                    npc.Humanoid:TakeDamage(10) -- Ajuste o dano conforme necessário
                end
            end
        end
    end
})

-- Função para inicializar o menu
OrionLib:Init()
