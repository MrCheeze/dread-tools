-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/superquetzoa.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

SuperQuetzoa.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

SuperQuetzoa.BeginPlay = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (Game.GetActor)("doorpowerpower_014")
  if l_2_1 ~= nil then
    (l_2_1.LIFE):LockDoor()
  end
end


