local L0_1, L1_1
L0_1 = SaveGame
if L0_1 ~= nil then
  L0_1 = SaveGame
  if L0_1 then
    goto lbl_8
  end
end
L0_1 = {}
::lbl_8::
SaveGame = L0_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
end
L0_1.OnNoDeviceSelected = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
end
L0_1.OnOverridePermissionNeeded = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
end
L0_1.OnOverrideSelected = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.CommitSaveDataDeviceSelection
  L0_2()
end
L0_1.OnOverrideConfirmed = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.InitSaveData
  L0_2()
end
L0_1.OnOverrideCancel = L1_1
L0_1 = SaveGame
function L1_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = menu_root
    if L1_2 ~= nil then
    else
      L1_2 = SaveGame
      L1_2 = L1_2.SaveDataToNewDevice
      L1_2()
    end
  end
end
L0_1.OnDeviceChanged = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SaveDataToNewDevice
  L0_2()
end
L0_1.SaveDataToNewDevice = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
end
L0_1.OnSaveDataToNewDeviceFinished = L1_1
L0_1 = SaveGame
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Game
  L1_2 = L1_2.GetLiteral
  L2_2 = "#GUI_ERROR_SAVEDEVICESELECTEDFULL_NOOLDDEVICE"
  L1_2 = L1_2(L2_2)
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = L1_2
  L4_2 = "@%[$HDDFREESPACE%]"
  L5_2 = tostring
  L6_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2 = L2_2
end
L0_1.NotEnoughSpaceDeviceSelected = L1_1
L0_1 = SaveGame
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Game
  L1_2 = L1_2.GetLiteral
  L2_2 = "#GUI_ERROR_SAVEDEVICESELECTEDFULL_USEOLDDEVICE"
  L1_2 = L1_2(L2_2)
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = L1_2
  L4_2 = "@%[$HDDFREESPACE%]"
  L5_2 = tostring
  L6_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2 = L2_2
end
L0_1.NotEnoughSpaceToCreateSlot = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
end
L0_1.InvalidDeviceSelected = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
end
L0_1.OnSaveDataDeviceInitFinished = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.CommitSaveDataDeviceSelection
  L0_2()
end
L0_1.OnContinueWithoutSavingConfirmed = L1_1
L0_1 = SaveGame
function L1_1()
  local L0_2, L1_2
end
L0_1.OnContinueWithoutSavingSelected = L1_1
L0_1 = SaveGame
function L1_1(A0_2)
  local L1_2
end
L0_1.OnDeviceInvalidated = L1_1
