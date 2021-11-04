local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/class.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = class
L0_1 = L0_1.New
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.sID = A1_2
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObjectEx
  L3_2 = A1_2
  L4_2 = "CDisplayObjectContainer"
  L5_2 = {}
  L5_2.StageID = "Up"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.oRoot = L2_2
  L2_2 = {}
  A0_2.atItemStack = L2_2
end
L0_1 = L0_1(L1_1)
Menu = L0_1
L0_1 = Menu
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.oRoot
  if L1_2 ~= nil then
    L1_2 = GUI
    L1_2 = L1_2.DestroyDisplayObject
    L2_2 = A0_2.oRoot
    L1_2(L2_2)
    A0_2.oRoot = nil
  end
end
L0_1.finalize = L1_1
L0_1 = Menu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2.atItemStack
  L2_2 = #L2_2
  if 0 < L2_2 then
    L3_2 = A0_2.atItemStack
    L1_2 = L3_2[L2_2]
  end
  return L1_2
end
L0_1.GetTopStackItem = L1_1
L0_1 = Menu
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.OnLuaLibrariesReloaded
  L1_2(L2_2)
end
L0_1.OnLuaLibrariesReloaded = L1_1
L0_1 = Menu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.atItemStack
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2.atItemStack
    L2_2 = L2_2[L1_2]
    L3_2 = utils
    L3_2 = L3_2.LOG
    L4_2 = utils
    L4_2 = L4_2.LOGTYPE_GUI
    L5_2 = "Menu.ResetTopStackItem: Menu: "
    L6_2 = tostring
    L7_2 = A0_2.sID
    L6_2 = L6_2(L7_2)
    L7_2 = ", CurrentItemClass: "
    L8_2 = tostring
    L9_2 = L2_2.sClassName
    L8_2 = L8_2(L9_2)
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
    L3_2(L4_2, L5_2)
    L3_2 = L2_2.oItem
    if L3_2 ~= nil then
      L3_2 = L2_2.oItem
      L4_2 = L3_2
      L3_2 = L3_2.finalize
      L3_2(L4_2)
    end
    L3_2 = _G
    L4_2 = L2_2.sClassName
    L3_2 = L3_2[L4_2]
    L4_2 = L2_2.sClassName
    L5_2 = A0_2
    L6_2 = L2_2.tCreateParams
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.oItem = L3_2
    L3_2 = L2_2.oItem
    L4_2 = L3_2
    L3_2 = L3_2.OnInitialized
    L3_2(L4_2)
  end
end
L0_1.ResetTopStackItem = L1_1
L0_1 = Menu
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = utils
  L4_2 = L4_2.LOG
  L5_2 = utils
  L5_2 = L5_2.LOGTYPE_GUI
  L6_2 = "Menu:PushItemByClassName: _sClassName:"
  L7_2 = A1_2
  L6_2 = L6_2 .. L7_2
  L4_2(L5_2, L6_2)
  L4_2 = nil
  if A3_2 ~= false then
    L5_2 = A0_2.atItemStack
    L5_2 = #L5_2
    if 0 < L5_2 then
      L6_2 = A0_2.atItemStack
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2.oItem
      if L7_2 ~= nil then
        L7_2 = L6_2.oItem
        L8_2 = L7_2
        L7_2 = L7_2.finalize
        L9_2 = L6_2.tCreateParams
        L7_2(L8_2, L9_2)
        L6_2.oItem = nil
      end
    end
  end
  if A2_2 == nil then
    L5_2 = {}
    A2_2 = L5_2
  end
  L5_2 = {}
  L5_2.sClassName = A1_2
  L5_2.tCreateParams = A2_2
  L6_2 = _G
  L6_2 = L6_2[A1_2]
  if L6_2 ~= nil then
    L7_2 = A2_2.bCreateItem
    if L7_2 ~= false then
      L7_2 = L6_2
      L8_2 = A1_2
      L9_2 = A0_2
      L10_2 = A2_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L4_2 = L7_2
      L5_2.oItem = L4_2
    end
    L7_2 = utils
    L7_2 = L7_2.LOG
    L8_2 = utils
    L8_2 = L8_2.LOGTYPE_GUI
    L9_2 = "Menu:PushItemByClassName: insert item to stack :"
    L10_2 = tostring
    L11_2 = L5_2
    L10_2 = L10_2(L11_2)
    L11_2 = ", item: "
    L12_2 = tostring
    L13_2 = L5_2.oItem
    L12_2 = L12_2(L13_2)
    L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.atItemStack
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = L5_2.oItem
    if L7_2 ~= nil then
      L7_2 = L5_2.oItem
      L8_2 = L7_2
      L7_2 = L7_2.OnInitialized
      L7_2(L8_2)
    end
  else
    L7_2 = utils
    L7_2 = L7_2.ERR
    L8_2 = utils
    L8_2 = L8_2.LOGTYPE_GUI
    L9_2 = "Menu:PushItemByClassName, Class '"
    L10_2 = A1_2
    L11_2 = "' not found"
    L9_2 = L9_2 .. L10_2 .. L11_2
    L7_2(L8_2, L9_2)
  end
  return L4_2
end
L0_1.PushItemByClassName = L1_1
L0_1 = Menu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = utils
  L1_2 = L1_2.LOG
  L2_2 = utils
  L2_2 = L2_2.LOGTYPE_GUI
  L3_2 = "Menu:PopAllPopUps"
  L1_2(L2_2, L3_2)
  while true do
    L1_2 = A0_2.atItemStack
    L1_2 = #L1_2
    if not (0 < L1_2) then
      break
    end
    L1_2 = A0_2.atItemStack
    L2_2 = A0_2.atItemStack
    L2_2 = #L2_2
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.oItem
    L1_2 = L1_2.bIsPopUp
    if not L1_2 then
      break
    end
    L2_2 = A0_2
    L1_2 = A0_2.PopItem
    L1_2(L2_2)
  end
end
L0_1.PopAllPopUps = L1_1
L0_1 = Menu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = utils
  L1_2 = L1_2.LOG
  L2_2 = utils
  L2_2 = L2_2.LOGTYPE_GUI
  L3_2 = "Menu:PopAllItems"
  L1_2(L2_2, L3_2)
  while true do
    L1_2 = A0_2.atItemStack
    L1_2 = #L1_2
    if not (0 < L1_2) then
      break
    end
    L2_2 = A0_2
    L1_2 = A0_2.PopItem
    L1_2(L2_2)
  end
end
L0_1.PopAllItems = L1_1
L0_1 = Menu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.atItemStack
  L3_2 = #L3_2
  if 0 < L3_2 then
    L3_2 = A0_2.atItemStack
    L4_2 = A0_2.atItemStack
    L4_2 = #L4_2
    L3_2 = L3_2[L4_2]
    L4_2 = L3_2.oItem
    L4_2 = L4_2.sID
    L5_2 = A1_2.sID
    if L4_2 == L5_2 then
      L5_2 = A0_2
      L4_2 = A0_2.PopItem
      L6_2 = A2_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1.PopItemIfAtTop = L1_1
L0_1 = Menu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.atItemStack
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = A0_2.atItemStack
    L3_2 = A0_2.atItemStack
    L3_2 = #L3_2
    L2_2 = L2_2[L3_2]
    L3_2 = {}
    L4_2 = L2_2.oItem
    L4_2 = L4_2.sID
    L3_2.sID = L4_2
    L3_2.tReturnValues = A1_2
    L4_2 = utils
    L4_2 = L4_2.LOG
    L5_2 = utils
    L5_2 = L5_2.LOGTYPE_GUI
    L6_2 = "Menu:PopItem, item: "
    L7_2 = L2_2.oItem
    L7_2 = L7_2.sID
    L6_2 = L6_2 .. L7_2
    L4_2(L5_2, L6_2)
    L4_2 = L2_2.oItem
    if L4_2 then
      L4_2 = L2_2.oItem
      L5_2 = L4_2
      L4_2 = L4_2.finalize
      L4_2(L5_2)
    end
    L4_2 = table
    L4_2 = L4_2.remove
    L5_2 = A0_2.atItemStack
    L6_2 = A0_2.atItemStack
    L6_2 = #L6_2
    L4_2(L5_2, L6_2)
    L4_2 = L2_2.tCreateParams
    L4_2 = L4_2.fnOnCloseCallback
    if L4_2 ~= nil then
      L4_2 = L2_2.tCreateParams
      L4_2 = L4_2.fnOnCloseCallback
      L4_2()
    end
    L4_2 = A0_2.atItemStack
    L4_2 = #L4_2
    if 0 < L4_2 then
      L5_2 = A0_2.atItemStack
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2.oItem
      if L6_2 == nil then
        L6_2 = L5_2.tCreateParams
        L6_2.tPrevScreenInfo = L3_2
        L6_2 = _G
        L7_2 = L5_2.sClassName
        L6_2 = L6_2[L7_2]
        L7_2 = L5_2.sClassName
        L8_2 = A0_2
        L9_2 = L5_2.tCreateParams
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L5_2.oItem = L6_2
        L6_2 = L5_2.oItem
        L7_2 = L6_2
        L6_2 = L6_2.OnInitialized
        L6_2(L7_2)
      end
    else
      L5_2 = L2_2.oItem
      L6_2 = L5_2
      L5_2 = L5_2.GetBackDefaultScreen
      L5_2 = L5_2(L6_2)
      if L5_2 ~= nil then
        L6_2 = A0_2
        L5_2 = A0_2.PushItemByClassName
        L7_2 = L2_2.oItem
        L8_2 = L7_2
        L7_2 = L7_2.GetBackDefaultScreen
        L7_2 = L7_2(L8_2)
        L8_2 = {}
        L8_2.tPrevScreenInfo = L3_2
        L9_2 = false
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    end
  end
end
L0_1.PopItem = L1_1
L0_1 = Menu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.atItemStack
  L3_2 = #L3_2
  if 0 < L3_2 then
    L4_2 = A0_2.atItemStack
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2.oItem
    if L5_2 ~= nil then
      L5_2 = utils
      L5_2 = L5_2.LOG
      L6_2 = utils
      L6_2 = L6_2.LOGTYPE_GUI
      L7_2 = "Looking for callback "
      L8_2 = A1_2
      L9_2 = " top stack item: "
      L10_2 = L4_2.oItem
      L10_2 = L10_2.sID
      L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
      L5_2(L6_2, L7_2)
      L5_2 = L4_2.oItem
      L5_2 = L5_2[A1_2]
      if L5_2 ~= nil then
        L6_2 = type
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if L6_2 == "function" then
          function L2_2(...)
            local L1_3, L2_3, L3_3, L4_3
            L1_3 = L5_2
            L2_3 = L4_2
            L2_3 = L2_3.oItem
            L3_3 = unpack
            L4_3 = arg
            L3_3, L4_3 = L3_3(L4_3)
            L1_3(L2_3, L3_3, L4_3)
          end
        end
      end
    end
  end
  return L2_2
end
L0_1.FindTopStackItemCallback = L1_1
L0_1 = Menu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = A0_2.atItemStack
  L2_2 = #L2_2
  if 0 < L2_2 then
    L3_2 = A0_2.atItemStack
    L3_2 = L3_2[L2_2]
    L4_2 = L3_2.oItem
    if L4_2 ~= nil then
      L4_2 = L3_2.oItem
      L4_2 = L4_2.sID
      L1_2.sID = L4_2
    end
  end
  return L1_2
end
L0_1.GetStackTopMenuProps = L1_1
L0_1 = Menu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2[A1_2]
  if L3_2 ~= nil then
    L4_2 = type
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 == "function" then
      function L2_2(...)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = L3_2
        L2_3 = A0_2
        L3_3 = unpack
        L4_3 = arg
        L3_3, L4_3 = L3_3(L4_3)
        L1_3(L2_3, L3_3, L4_3)
      end
    end
  end
  if L2_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.FindTopStackItemCallback
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2 = L4_2
  end
  return L2_2
end
L0_1.FindCallback = L1_1
