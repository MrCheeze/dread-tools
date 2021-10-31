-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/pickup.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

Pickup.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

Pickup.BeginPlay = function(l_2_0)
  -- function num : 0_1
  if CurrentScenario ~= nil and CurrentScenario.OnPickableItemBeginPlay ~= nil then
    (CurrentScenario.OnPickableItemBeginPlay)(l_2_0)
  end
end

-- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

Pickup.EndPlay = function(l_3_0)
  -- function num : 0_2
  if CurrentScenario ~= nil and CurrentScenario.OnPickableItemEndPlay ~= nil then
    (CurrentScenario.OnPickableItemEndPlay)(l_3_0)
  end
end


