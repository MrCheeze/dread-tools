-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/core_x_superquetzoa.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

CoreX_SuperQuetzoa.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

CoreX_SuperQuetzoa.LaunchDamageSound = function(l_2_0)
  -- function num : 0_1
end

-- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

CoreX_SuperQuetzoa.OnBigXAbsorbed = function(l_3_0)
  -- function num : 0_2
  (Game.PushSetup)("PostSuperQuetzoaDead", true, false)
  ;
  (GUI.ShowMessage)("#GUI_ITEM_ACQUIRED_MULTI_LOCK", true, "", false)
  local l_3_1 = (Game.GetActor)("doorpowerpower_014")
  if l_3_1 ~= nil then
    (l_3_1.LIFE):UnLockDoor()
  end
  ;
  (Game.SaveGame)("checkpoint", "SuperQuetzoa_Dead", "SP_Checkpoint_MultiLockOn", true)
end


