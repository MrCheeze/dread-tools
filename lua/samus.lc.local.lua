-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/samus.lc.local 

-- params : ...
-- function num : 0
(Game.ImportLibraryWithName)("actors/characters/player/scripts/player.lua", "Player")
Samus = {}
local l_0_0 = setmetatable
local l_0_1 = Samus
local l_0_2 = {}
l_0_2.__index = Player
l_0_0(l_0_1, l_0_2)
l_0_0 = Samus
l_0_1 = function()
  -- function num : 0_0
  (Game.ImportLibraryWithName)("actors/props/damageplants/scripts/damageplants.lua", "DamagePlants", false)
end

l_0_0.main = l_0_1
l_0_0 = Samus
l_0_1 = function(l_2_0, l_2_1, l_2_2, l_2_3)
  -- function num : 0_1
  (Samus.NotifyDamage)(l_2_0, l_2_1, l_2_2, l_2_3)
end

l_0_0.OnDamage = l_0_1
l_0_0 = Samus
l_0_1 = function(l_3_0, l_3_1, l_3_2)
  -- function num : 0_2
  (Samus.NotifyDamage)(l_3_0.sName, l_3_1, l_3_2)
end

l_0_0.OnHackedTrapInitialDamage = l_0_1
l_0_0 = Samus
l_0_1 = function(l_4_0, l_4_1, l_4_2)
  -- function num : 0_3
  if CurrentScenario ~= nil and CurrentScenario.OnPlayerDamaged ~= nil then
    (CurrentScenario.OnPlayerDamaged)(l_4_0.sName, l_4_1, l_4_2)
  end
end

l_0_0.NotifyDamage = l_0_1
l_0_0 = Samus
l_0_1 = function(l_5_0, l_5_1)
  -- function num : 0_4
  if CurrentScenario.OnPlayerStartGrab ~= nil then
    (CurrentScenario.OnPlayerStartGrab)(l_5_0.sName, l_5_1)
  end
end

l_0_0.OnStartGrab = l_0_1
l_0_0 = Samus
l_0_1 = function(l_6_0)
  -- function num : 0_5
  (utils.LOG)(utils.LOGTYPE_LOGIC, l_6_0.sName .. " grabbed by " .. l_6_0.sName)
end

l_0_0.OnGrabbedBy = l_0_1
l_0_0 = Samus
l_0_1 = function(l_7_0, l_7_1)
  -- function num : 0_6
end

l_0_0.OnEndGrab = l_0_1
l_0_0 = Samus
l_0_1 = function(l_8_0)
  -- function num : 0_7
  (utils.LOG)(utils.LOGTYPE_LOGIC, "Samus: end grabbed by " .. l_8_0.sName)
end

l_0_0.OnEndGrabbedBy = l_0_1
l_0_0 = Samus
l_0_1 = function(l_9_0, l_9_1)
  -- function num : 0_8
end

l_0_0.OnBeforeDamage = l_0_1
l_0_0 = Samus
l_0_1 = function()
  -- function num : 0_9
  (Game.DeleteEntity)(((Game.GetPlayer)()).sName)
end

l_0_0.Delete = l_0_1
l_0_0 = Samus
l_0_1 = function(l_11_0)
  -- function num : 0_10
  if CurrentScenario.OnPlayerRevived ~= nil then
    (CurrentScenario.OnPlayerRevived)(l_11_0.sName)
  end
end

l_0_0.OnRevived = l_0_1
l_0_0 = Samus
l_0_0.iBreathSound = 0
l_0_0 = Samus
l_0_0.asBreathSounds, l_0_1 = l_0_1, {}
l_0_0 = Samus
l_0_1 = function(l_12_0)
  -- function num : 0_11
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R1 in 'UnsetPending'

  Samus.iBreathSound = (Samus.iBreathSound + 1) % #Samus.asBreathSounds
end

l_0_0.OnBreathRecovered = l_0_1
l_0_0 = Samus
l_0_1 = function(l_13_0)
  -- function num : 0_12
end

l_0_0.OnLongJump = l_0_1

