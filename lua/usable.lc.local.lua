-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/usable.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

Usable.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

Usable.ShowDialogChoice = function(l_2_0, l_2_1)
  -- function num : 0_1
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  Usable._oUsableObject = l_2_0
  ;
  (GUI.LaunchMessage)(l_2_1, "Usable.OnDialogAccepted", "Usable.OnDialogDeclined")
end

-- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

Usable.OnDialogAccepted = function()
  -- function num : 0_2
  ((Usable._oUsableObject).USABLE):OnDialogAccepted()
end

-- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

Usable.OnDialogDeclined = function()
  -- function num : 0_3
  ((Usable._oUsableObject).USABLE):OnDialogDeclined()
end

-- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

Usable.ShowDialogCanNotUse = function(l_5_0, l_5_1)
  -- function num : 0_4
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  Usable._oUsableObject = l_5_0
  ;
  (GUI.LaunchMessage)(l_5_1, "Usable.OnCanNotUseAccepted", "")
end

-- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

Usable.OnCanNotUseAccepted = function()
  -- function num : 0_5
  ((Usable._oUsableObject).USABLE):OnCanNotUseAccepted()
end

-- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

Usable.ShowDialogUseSuccess = function(l_7_0, l_7_1)
  -- function num : 0_6
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  Usable._oUsableObject = l_7_0
  ;
  (GUI.LaunchMessage)(l_7_1, "Usable.OnDialogUseSuccess", "")
end

-- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

Usable.OnDialogUseSuccess = function()
  -- function num : 0_7
  ((Usable._oUsableObject).USABLE):OnUseSuccessAccepted()
end

-- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

Usable.Discover = function(l_9_0)
  -- function num : 0_8
  local l_9_1 = (Game.GetActor)(l_9_0)
  if l_9_1 ~= nil then
    local l_9_2 = l_9_1.USABLE
    if l_9_2 ~= nil then
      l_9_2:Discover()
    end
  end
end


