-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/savegame.lc.local 

-- params : ...
-- function num : 0
if SaveGame == nil or not SaveGame then
  SaveGame = {}
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnNoDeviceSelected = function()
  -- function num : 0_0
end

  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnOverridePermissionNeeded = function()
  -- function num : 0_1
end

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnOverrideSelected = function()
  -- function num : 0_2
end

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnOverrideConfirmed = function()
  -- function num : 0_3
  (Game.CommitSaveDataDeviceSelection)()
end

  -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnOverrideCancel = function()
  -- function num : 0_4
  (Game.InitSaveData)()
end

  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnDeviceChanged = function(l_6_0)
  -- function num : 0_5
  if l_6_0 then
    if menu_root ~= nil then
      (SaveGame.SaveDataToNewDevice)()
    end
  end
end

  -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.SaveDataToNewDevice = function()
  -- function num : 0_6
  (Game.SaveDataToNewDevice)()
end

  -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnSaveDataToNewDeviceFinished = function()
  -- function num : 0_7
end

  -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.NotEnoughSpaceDeviceSelected = function(l_9_0)
  -- function num : 0_8
  local l_9_1 = (Game.GetLiteral)("#GUI_ERROR_SAVEDEVICESELECTEDFULL_NOOLDDEVICE")
  l_9_1 = (string.gsub)(l_9_1, "@%[$HDDFREESPACE%]", tostring(l_9_0))
end

  -- DECOMPILER ERROR at PC37: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.NotEnoughSpaceToCreateSlot = function(l_10_0)
  -- function num : 0_9
  local l_10_1 = (Game.GetLiteral)("#GUI_ERROR_SAVEDEVICESELECTEDFULL_USEOLDDEVICE")
  l_10_1 = (string.gsub)(l_10_1, "@%[$HDDFREESPACE%]", tostring(l_10_0))
end

  -- DECOMPILER ERROR at PC40: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.InvalidDeviceSelected = function()
  -- function num : 0_10
end

  -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnSaveDataDeviceInitFinished = function()
  -- function num : 0_11
end

  -- DECOMPILER ERROR at PC46: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnContinueWithoutSavingConfirmed = function()
  -- function num : 0_12
  (Game.CommitSaveDataDeviceSelection)()
end

  -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnContinueWithoutSavingSelected = function()
  -- function num : 0_13
end

  -- DECOMPILER ERROR at PC52: Confused about usage of register: R0 in 'UnsetPending'

  SaveGame.OnDeviceInvalidated = function(l_15_0)
  -- function num : 0_14
end

end

