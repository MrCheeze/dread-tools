-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/trigger.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

Trigger.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

Trigger.Enable = function(l_2_0, l_2_1, l_2_2)
  -- function num : 0_1
  local l_2_3 = (Game.GetActor)(l_2_0)
  if l_2_3 ~= nil then
    l_2_3:SetWantsEnabled(true)
  end
end

-- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

Trigger.Disable = function(l_3_0, l_3_1, l_3_2)
  -- function num : 0_2
  local l_3_3 = (Game.GetActor)(l_3_0)
  if l_3_3 ~= nil then
    l_3_3:SetWantsEnabled(false)
  end
end


