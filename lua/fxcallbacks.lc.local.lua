-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/fxcallbacks.lc.local 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0.lfxenabled = {}
fxcallbacks = l_0_0
l_0_0 = fxcallbacks
l_0_0.SetFxEnabledOnPlayer = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  local l_1_3 = {}
  -- DECOMPILER ERROR at PC7: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC8: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC9: Overwrote pending register: R5 in 'AssignReg'

  for l_1_7,l_1_8 in ((Game.GetDefaultPlayer)())((Game.GetSecondaryPlayer)()) do
    if l_1_8 ~= nil then
      local l_1_9 = l_1_8.FX
      if l_1_9 ~= nil then
        l_1_9:SetEffectEnabled(l_1_0, l_1_1, l_1_2)
        if l_1_1 then
          (table.insert)(fxcallbacks.lfxenabled, l_1_0)
        else
          for l_1_13,l_1_14 in ipairs(fxcallbacks.lfxenabled) do
            if l_1_14 == l_1_0 then
              (table.remove)(fxcallbacks.lfxenabled, l_1_13)
            end
          end
        end
      end
    end
  end
  -- DECOMPILER ERROR at PC48: Confused about usage of register R4 for local variables in 'ReleaseLocals'

end

l_0_0 = fxcallbacks
l_0_0.OnPlayerChange = function()
  -- function num : 0_1
  local l_2_0 = {}
  -- DECOMPILER ERROR at PC7: No list found for R0 , SetList fails

  -- DECOMPILER ERROR at PC8: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC9: Overwrote pending register: R2 in 'AssignReg'

  for l_2_4,l_2_5 in ((Game.GetDefaultPlayer)())((Game.GetSecondaryPlayer)()) do
    if l_2_5 ~= nil then
      local l_2_6 = l_2_5.FX
      if l_2_6 ~= nil then
        for l_2_10,l_2_11 in ipairs(fxcallbacks.lfxenabled) do
          l_2_6:SetEffectEnabled(l_2_11, true, true)
        end
      end
    end
  end
  -- DECOMPILER ERROR at PC31: Confused about usage of register R1 for local variables in 'ReleaseLocals'

end

l_0_0 = fxcallbacks
l_0_0.OnPlayerDead = function()
  -- function num : 0_2
  -- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

  fxcallbacks.lfxenabled = {}
end


