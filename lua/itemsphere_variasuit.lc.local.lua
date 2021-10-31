-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/itemsphere_variasuit.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

ItemSphereVariaSuit.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

ItemSphereVariaSuit.OnOpen = function(l_2_0)
  -- function num : 0_1
  (Game.PlayEntitySoundContinueOnDead)("generic/itemsphere_crack.wav", l_2_0.sName, 1, 500, 5000, 1.5)
end


