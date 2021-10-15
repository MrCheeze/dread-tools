local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/class.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = class
L0_1 = L0_1.New
function L1_1(A0_2, A1_2, A2_2)
  A0_2.oRoot = nil
  A0_2.sID = A1_2
  A0_2.oMenuController = A2_2
  A0_2.sBackDefaultScreen = nil
end
L0_1 = L0_1(L1_1)
MenuScreen = L0_1
L0_1 = MenuScreen
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = utils
  L1_2 = L1_2.LOG
  L2_2 = utils
  L2_2 = L2_2.LOGTYPE_GUI
  L3_2 = "MenuScreen:finalize: "
  L4_2 = A0_2.sID
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.oRoot
  if L1_2 ~= nil then
    L1_2 = GUI
    L1_2 = L1_2.DestroyDisplayObject
    L2_2 = A0_2.oRoot
    L1_2(L2_2)
  end
end
L0_1.finalize = L1_1
L0_1 = MenuScreen
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.oMenuController
  if L1_2 ~= nil then
    L1_2 = A0_2.oMenuController
    L1_2 = L1_2.oRoot
    if L1_2 ~= nil then
      L1_2 = A0_2.oRoot
      if L1_2 ~= nil then
        L1_2 = A0_2.oMenuController
        L1_2 = L1_2.oRoot
        L2_2 = L1_2
        L1_2 = L1_2.AddChild
        L3_2 = A0_2.oRoot
        L1_2(L2_2, L3_2)
        L1_2 = GUI
        L1_2 = L1_2.AddLuaEventHandler
        L2_2 = A0_2.oRoot
        L3_2 = "Cancel"
        L4_2 = class
        L4_2 = L4_2.BindMethodByName
        L5_2 = A0_2
        L6_2 = "OnCancel"
        L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1.OnInitialized = L1_1
L0_1 = MenuScreen
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PlayGUISound
  L3_2 = gui_global_sounds
  L3_2 = L3_2.tCancel
  L3_2 = L3_2.sPath
  L4_2 = 1
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.oMenuController
  L3_2 = L2_2
  L2_2 = L2_2.PopItemIfAtTop
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.Close = L1_1
L0_1 = MenuScreen
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = utils
  L2_2 = L2_2.LOG
  L3_2 = utils
  L3_2 = L3_2.LOGTYPE_GUI
  L4_2 = "MenuScreen:OnCancel"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.Close
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = 1
  return L2_2
end
L0_1.OnCancel = L1_1
L0_1 = MenuScreen
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.sBackDefaultScreen
  return L1_2
end
L0_1.GetBackDefaultScreen = L1_1
L0_1 = MenuScreen
function L1_1(A0_2)
  local L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.oMenuController
    L2_3 = L1_3
    L1_3 = L1_3.PushItemByClassName
    L3_3 = A0_2
    L1_3(L2_3, L3_3)
  end
  return L1_2
end
L0_1.CreatePushItemCallback = L1_1
