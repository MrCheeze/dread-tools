local L0_1, L1_1
L0_1 = class
L0_1 = L0_1.New
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2.oOwner = A1_2
  A0_2.oList = A2_2
  A0_2.tMenuDef = A3_2
  A0_2.bAllEnabled = false
  L5_2 = A3_2.tItemDefaults
  if not L5_2 then
    L5_2 = {}
  end
  A3_2.tItemDefaults = L5_2
  L5_2 = ipairs
  L6_2 = A0_2.tMenuDef
  L6_2 = L6_2.aItems
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = setmetatable
    L11_2 = L9_2
    L12_2 = {}
    L13_2 = A0_2.tMenuDef
    L13_2 = L13_2.tItemDefaults
    L12_2.__index = L13_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = A3_2.tListConfig
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = L5_2.sNumItemRenderers
  if L6_2 ~= nil then
    L6_2 = GUI
    L6_2 = L6_2.SetProperties
    L7_2 = A0_2.oList
    L8_2 = {}
    L9_2 = L5_2.sNumItemRenderers
    L8_2.NumItemRenderers = L9_2
    L6_2(L7_2, L8_2)
  else
    L6_2 = GUI
    L6_2 = L6_2.SetProperties
    L7_2 = A0_2.oList
    L8_2 = {}
    L9_2 = A0_2.tMenuDef
    L9_2 = L9_2.aItems
    L9_2 = #L9_2
    L8_2.NumItemRenderers = L9_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = GUI
  L6_2 = L6_2.AddLuaEventHandler
  L7_2 = A0_2.oList
  L8_2 = "Activated"
  L9_2 = class
  L9_2 = L9_2.BindMethodByName
  L10_2 = A0_2
  L11_2 = "OnItemActivated"
  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = GUI
  L6_2 = L6_2.SetListOnItemSelectedCallback
  L7_2 = A0_2.oList
  L8_2 = class
  L8_2 = L8_2.BindMethodByName
  L9_2 = A0_2
  L10_2 = "OnItemSelected"
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L5_2.fListHeightPerItem
  if L6_2 ~= nil then
    L6_2 = A3_2.aItems
    L6_2 = #L6_2
    L7_2 = L5_2.fListHeightPerItem
    L6_2 = L6_2 * L7_2
    L7_2 = GUI
    L7_2 = L7_2.SetProperties
    L8_2 = A2_2
    L9_2 = {}
    L9_2.SizeY = L6_2
    L7_2(L8_2, L9_2)
  end
  if A4_2 ~= false then
    L7_2 = A0_2
    L6_2 = A0_2.RefreshList
    L6_2(L7_2)
  end
  L7_2 = A2_2
  L6_2 = A2_2.ForceRedraw
  L6_2(L7_2)
end
L0_1 = L0_1(L1_1)
MenuListController = L0_1
L0_1 = MenuListController
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.bAllEnabled
  if L2_2 ~= A1_2 then
    A0_2.bAllEnabled = A1_2
    L3_2 = A0_2
    L2_2 = A0_2.RefreshList
    L2_2(L3_2)
  end
end
L0_1.SetAllEnabled = L1_1
L0_1 = MenuListController
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = ""
  return L4_2
end
L0_1.GetTooltip = L1_1
L0_1 = MenuListController
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = A0_2.oList
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L5_2 = {}
  L6_2 = {}
  L7_2 = ipairs
  L8_2 = A0_2.tMenuDef
  L8_2 = L8_2.aItems
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = true
    L13_2 = A0_2.bAllEnabled
    if not L13_2 then
      L13_2 = L11_2.fnIsEnabled
      if L13_2 ~= nil then
        L13_2 = L11_2.fnIsEnabled
        L14_2 = A0_2.oOwner
        L15_2 = L11_2
        L13_2 = L13_2(L14_2, L15_2)
        L12_2 = L13_2
      end
    end
    L3_2[L10_2] = L12_2
    L13_2 = false
    L14_2 = L11_2.fnIsNew
    if L14_2 ~= nil then
      L14_2 = L11_2.fnIsNew
      L15_2 = A0_2.oOwner
      L16_2 = L11_2
      L14_2 = L14_2(L15_2, L16_2)
      L13_2 = L14_2
    end
    L4_2[L10_2] = L13_2
    L14_2 = false
    L15_2 = L11_2.fnIsUpdated
    if L15_2 ~= nil then
      L15_2 = L11_2.fnIsUpdated
      L16_2 = A0_2.oOwner
      L17_2 = L11_2
      L15_2 = L15_2(L16_2, L17_2)
      L14_2 = L15_2
    end
    L5_2[L10_2] = L14_2
    L15_2 = L11_2.sID
    L16_2 = L11_2.fnGetText
    if L16_2 ~= nil then
      L16_2 = L11_2.fnGetText
      L17_2 = A0_2.oOwner
      L18_2 = L11_2
      L19_2 = L12_2
      L20_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
      L15_2 = L16_2
    end
    L2_2[L10_2] = L15_2
    L16_2 = nil
    L17_2 = L11_2.fnGetTooltip
    if L17_2 ~= nil then
      L17_2 = L11_2.fnGetTooltip
      L18_2 = A0_2.oOwner
      L19_2 = L11_2
      L20_2 = L12_2
      L21_2 = L13_2
      L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
      L16_2 = L17_2
    end
    if L16_2 == nil then
      L18_2 = A0_2
      L17_2 = A0_2.GetTooltip
      L19_2 = L11_2
      L20_2 = L12_2
      L21_2 = L13_2
      L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
      L16_2 = L17_2
    end
    L6_2[L10_2] = L16_2
  end
  L7_2 = GUI
  L7_2 = L7_2.SetMenuListValues
  L8_2 = L1_2
  L9_2 = L2_2
  L10_2 = L6_2
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = L5_2
  L14_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L0_1.RefreshList = L1_1
L0_1 = MenuListController
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = ipairs
  L4_2 = A0_2.tMenuDef
  L4_2 = L4_2.aItems
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.sID
    L9_2 = L7_2.fnGetText
    if L9_2 ~= nil then
      L9_2 = true
      L10_2 = A0_2.bAllEnabled
      if not L10_2 then
        L10_2 = L7_2.fnIsEnabled
        if L10_2 ~= nil then
          L10_2 = L7_2.fnIsEnabled
          L11_2 = A0_2.oOwner
          L12_2 = L7_2
          L10_2 = L10_2(L11_2, L12_2)
          L9_2 = L10_2
        end
      end
      L10_2 = false
      L11_2 = L7_2.fnIsNew
      if L11_2 ~= nil then
        L11_2 = L7_2.fnIsNew
        L12_2 = A0_2.oOwner
        L13_2 = L7_2
        L11_2 = L11_2(L12_2, L13_2)
        L10_2 = L11_2
      end
      L11_2 = L7_2.fnGetText
      L12_2 = A0_2.oOwner
      L13_2 = L7_2
      L14_2 = L9_2
      L15_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L8_2 = L11_2
    end
    L9_2 = utils
    L9_2 = L9_2.LOG
    L10_2 = utils
    L10_2 = L10_2.LOGTYPE_GUI
    L11_2 = "Compare :"
    L12_2 = L8_2
    L13_2 = " == "
    L14_2 = A1_2
    L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
    L9_2(L10_2, L11_2)
    if L8_2 == A1_2 then
      L2_2 = L7_2
      break
    end
  end
  return L2_2
end
L0_1.GetItemByItemTextID = L1_1
L0_1 = MenuListController
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = A0_2.tMenuDef
  L4_2 = L4_2.aItems
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.sID
    if L8_2 == A1_2 then
      L2_2 = L7_2
      break
    end
  end
  return L2_2
end
L0_1.GetItemByID = L1_1
L0_1 = MenuListController
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = utils
  L1_2 = L1_2.LOG
  L2_2 = utils
  L2_2 = L2_2.LOGTYPE_GUI
  L3_2 = "MenuListController:OnItemSelected"
  L1_2(L2_2, L3_2)
  L1_2 = Game
  L1_2 = L1_2.PlayGUISound
  L2_2 = gui_global_sounds
  L2_2 = L2_2.tSelect
  L2_2 = L2_2.sPath
  L3_2 = 1
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.GetItemByID
  L3_2 = A0_2.oList
  L4_2 = L3_2
  L3_2 = L3_2.GetSelectedItemID
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2.fnOnSelected
  if L2_2 ~= nil then
    L2_2 = L1_2.fnOnSelected
    L3_2 = A0_2.oOwner
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.OnItemSelected = L1_1
L0_1 = MenuListController
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A3_2.SelectedItem
  L5_2 = A3_2.ActivationDir
  if L5_2 == "ActivationButton" then
    L6_2 = utils
    L6_2 = L6_2.LOG
    L7_2 = utils
    L7_2 = L7_2.LOGTYPE_GUI
    L8_2 = "tItem.fnOnActivated: "
    L9_2 = tostring
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    L10_2 = "-> "
    L11_2 = tostring
    L13_2 = A0_2
    L12_2 = A0_2.GetItemByItemTextID
    L14_2 = L4_2
    L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.GetItemByItemTextID
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = false
      L8_2 = L6_2.fnOnActivated
      if L8_2 ~= nil then
        L8_2 = L6_2.fnOnActivated
        L9_2 = A0_2.oOwner
        L10_2 = L6_2
        L11_2 = L5_2
        L8_2(L9_2, L10_2, L11_2)
        L7_2 = true
      end
      if L7_2 then
        L8_2 = Game
        L8_2 = L8_2.PlayGUISound
        L9_2 = gui_global_sounds
        L9_2 = L9_2.tAccept
        L9_2 = L9_2.sPath
        L10_2 = 1
        L11_2 = 1
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end
L0_1.OnItemActivated = L1_1
L0_1 = MenuListController
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.oList
  if L1_2 ~= nil then
    L2_2 = GUI
    L2_2 = L2_2.DispatchEvent
    L3_2 = L1_2
    L4_2 = "Activated"
    L5_2 = {}
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.OnAccept = L1_1
