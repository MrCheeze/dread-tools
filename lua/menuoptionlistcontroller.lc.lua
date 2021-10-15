local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/MenuListController.lua"
L0_1(L1_1)
L0_1 = class
L0_1 = L0_1.New
L1_1 = MenuListController
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = MenuListController
  L4_2 = L4_2.init
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2.bDirty = false
  L4_2 = {}
  A0_2.tCurValueIdx = L4_2
  L4_2 = {}
  A0_2.tPrevValueIdx = L4_2
  A0_2.fnOnItemActivatedButton = nil
  L4_2 = class
  L4_2 = L4_2.BindMethod
  L5_2 = A0_2
  L6_2 = MenuOptionListController
  L6_2 = L6_2.OnLeftRightActivationDefault
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.fnOnItemActivatedLeftRight = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.LoadFromBlackboard
  L4_2(L5_2)
end
L0_1 = L0_1(L1_1, L2_1)
MenuOptionListController = L0_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = 0
  L5_2 = A0_2
  L4_2 = A0_2.GetItemByID
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2.GetOptionCurValueIdx
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if A2_2 == "Right" then
      L5_2 = L5_2 + 1
      L6_2 = L4_2.iMaxUnlockItem
      if L5_2 > L6_2 then
        L5_2 = 1
      end
      L3_2 = 1
    elseif A2_2 == "Left" then
      L5_2 = L5_2 - 1
      if L5_2 == 0 then
        L5_2 = L4_2.iMaxUnlockItem
      end
      L3_2 = 1
    end
    L7_2 = A0_2
    L6_2 = A0_2.SetOptionCurValueIdx
    L8_2 = L4_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = Game
    L6_2 = L6_2.PlayGUISound
    L7_2 = gui_global_sounds
    L7_2 = L7_2.tSelect
    L7_2 = L7_2.sPath
    L8_2 = 1
    L9_2 = 1
    L6_2(L7_2, L8_2, L9_2)
  end
  return L3_2
end
L0_1.OnLeftRightActivationDefault = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = 0
  L5_2 = A3_2.SelectedItem
  L6_2 = A3_2.ActivationDir
  if L6_2 == "ActivationButton" then
    L7_2 = A0_2.fnOnItemActivatedButton
    if L7_2 then
      L7_2 = A0_2.fnOnItemActivatedButton
      L8_2 = _sItemID
      L7_2 = L7_2(L8_2)
      L4_2 = L7_2
    else
      L7_2 = Game
      L7_2 = L7_2.PlayGUISound
      L8_2 = gui_global_sounds
      L8_2 = L8_2.tWrong
      L8_2 = L8_2.sPath
      L9_2 = 1
      L10_2 = 1
      L7_2(L8_2, L9_2, L10_2)
    end
  else
    L7_2 = A0_2.fnOnItemActivatedLeftRight
    if L7_2 then
      L7_2 = A0_2.fnOnItemActivatedLeftRight
      L8_2 = L5_2
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L4_2 = L7_2
    else
      L7_2 = Game
      L7_2 = L7_2.PlayGUISound
      L8_2 = gui_global_sounds
      L8_2 = L8_2.tWrong
      L8_2 = L8_2.sPath
      L9_2 = 1
      L10_2 = 1
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  return L4_2
end
L0_1.OnItemActivated = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2.asOptionValues
  L6_2 = A0_2
  L5_2 = A0_2.GetOptionCurValueIdx
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2[L5_2]
  return L4_2
end
L0_1.GetTooltip = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.bDirty
  return L1_2
end
L0_1.IsDirty = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2.tMenuDef
  L2_2 = L2_2.aItems
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.sBlackboardIdxProp
    if L6_2 ~= nil then
      L6_2 = ProfileBlackboard
      L6_2 = L6_2.GetProp
      L7_2 = "SETTINGS"
      L8_2 = L5_2.sBlackboardIdxProp
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 == nil then
        L6_2 = L5_2.iDefaultIdx
      end
      if L6_2 ~= nil then
        L8_2 = A0_2
        L7_2 = A0_2.SetOptionCurValueIdx
        L9_2 = L5_2
        L10_2 = L6_2
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
  A0_2.bDirty = false
end
L0_1.LoadFromBlackboard = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A1_2 ~= nil then
    L2_2 = pairs
    L3_2 = A1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = utils
      L7_2 = L7_2.LOG
      L8_2 = utils
      L8_2 = L8_2.LOGTYPE_GUI
      L9_2 = "_tValueIdxs, sID: "
      L10_2 = tostring
      L11_2 = L5_2
      L10_2 = L10_2(L11_2)
      L11_2 = ", iValueIdx: "
      L12_2 = tostring
      L13_2 = L6_2
      L12_2 = L12_2(L13_2)
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2.GetItemByID
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L9_2 = A0_2
        L8_2 = A0_2.SetOptionCurValueIdx
        L10_2 = L7_2
        L11_2 = L6_2
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end
L0_1.SetValueIdxs = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ipairs
  L2_2 = A0_2.tMenuDef
  L2_2 = L2_2.aItems
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.sBlackboardIdxProp
    if L6_2 ~= nil then
      L6_2 = ProfileBlackboard
      L6_2 = L6_2.SetProp
      L7_2 = "SETTINGS"
      L8_2 = L5_2.sBlackboardIdxProp
      L9_2 = "i"
      L11_2 = A0_2
      L10_2 = A0_2.GetOptionCurValueIdx
      L12_2 = L5_2
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
  A0_2.bDirty = false
end
L0_1.SaveToBlackboard = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2.tMenuDef
  L2_2 = L2_2.aItems
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.iDefaultIdx
    if L6_2 ~= nil then
      L6_2 = true
      L7_2 = L5_2.fnIsEnabled
      if L7_2 ~= nil then
        L7_2 = L5_2.fnIsEnabled
        L8_2 = A0_2.oOwner
        L9_2 = L5_2
        L7_2 = L7_2(L8_2, L9_2)
        L6_2 = L7_2
      end
      if L6_2 then
        L8_2 = A0_2
        L7_2 = A0_2.SetOptionCurValueIdx
        L9_2 = L5_2
        L10_2 = L5_2.iDefaultIdx
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L0_1.LoadFromDefault = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2.tCurValueIdx
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  return L2_2
end
L0_1.GetOptionsByValueIdx = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.GetOptionCurValueIdx
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = A1_2.asOptionValues
    L2_2 = L4_2[L3_2]
  end
  return L2_2
end
L0_1.GetOptionCurValue = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.iDefaultIdx
  L3_2 = A0_2.tCurValueIdx
  if L3_2 ~= nil then
    L3_2 = A0_2.tCurValueIdx
    L4_2 = A1_2.sID
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = A0_2.tCurValueIdx
      L4_2 = A1_2.sID
      L2_2 = L3_2[L4_2]
    end
  end
  return L2_2
end
L0_1.GetOptionCurValueIdx = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.iDefaultIdx
  L3_2 = A0_2.tCurValueIdx
  if L3_2 ~= nil then
    L3_2 = A0_2.tPrevValueIdx
    L4_2 = A1_2.sID
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = A0_2.tPrevValueIdx
      L4_2 = A1_2.sID
      L2_2 = L3_2[L4_2]
    end
  end
  return L2_2
end
L0_1.GetOptionPrevValueIdx = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A1_2.asOptionValues
  if L3_2 then
    L3_2 = ipairs
    L4_2 = A1_2.asOptionValues
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if A2_2 == L7_2 then
        L9_2 = A0_2
        L8_2 = A0_2.SetOptionCurValueIdx
        L10_2 = A1_2
        L11_2 = L6_2
        L8_2(L9_2, L10_2, L11_2)
        break
      end
    end
  end
end
L0_1.SetOptionCurValue = L1_1
L0_1 = MenuOptionListController
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2
  L3_2 = A0_2.GetOptionCurValueIdx
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if A2_2 ~= L3_2 then
    L3_2 = A0_2.tPrevValueIdx
    L4_2 = A1_2.sID
    L5_2 = A0_2.tCurValueIdx
    L6_2 = A1_2.sID
    L5_2 = L5_2[L6_2]
    L3_2[L4_2] = L5_2
    L3_2 = A0_2.tCurValueIdx
    L4_2 = A1_2.sID
    L3_2[L4_2] = A2_2
    L3_2 = true
    L4_2 = A1_2.fnIsEnabled
    if L4_2 ~= nil then
      L4_2 = A1_2.fnIsEnabled
      L5_2 = A0_2.oOwner
      L6_2 = A1_2
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
    end
    L4_2 = GUI
    L4_2 = L4_2.SetMenuListValue
    L5_2 = A0_2.oList
    L6_2 = A1_2.sID
    L7_2 = A1_2.asOptionValues
    L7_2 = L7_2[A2_2]
    L8_2 = L3_2
    L9_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    A0_2.bDirty = true
    L4_2 = A0_2.oOwner
    L4_2 = L4_2.OnOptionChanged
    if L4_2 ~= nil then
      L4_2 = A0_2.oOwner
      L4_2 = L4_2.OnOptionChanged
      L5_2 = A0_2.oOwner
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1.SetOptionCurValueIdx = L1_1
