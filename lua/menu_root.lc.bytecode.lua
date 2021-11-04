local L0_1, L1_1
L0_1 = menu_root
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Game
  L1_2 = L1_2.ImportLibrary
  L2_2 = "gui/scripts/"
  L3_2 = A0_2
  L4_2 = ".lua"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = menu_root
  L2_2 = _G
  L2_2 = L2_2[A0_2]
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.oMenu = L2_2
  L1_2 = setmetatable
  L2_2 = menu_root
  L3_2 = {}
  L4_2 = menu_root
  L4_2 = L4_2.FindCallback
  L3_2.__index = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = menu_root
  L1_2 = L1_2.oMenu
  L1_2 = L1_2.oRoot
  return L1_2
end
L0_1.Create = L1_1
L0_1 = menu_root
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = menu_root
  L1_2 = L1_2.oMenu
  if L1_2 ~= nil then
    L1_2 = menu_root
    L1_2 = L1_2.oMenu
    L2_2 = L1_2
    L1_2 = L1_2.finalize
    L1_2(L2_2)
    L1_2 = menu_root
    L1_2.oMenu = nil
  end
end
L0_1.Destroy = L1_1
L0_1 = menu_root
function L1_1(A0_2)
  local L1_2
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = utils
    L0_3 = L0_3.LOG
    L1_3 = utils
    L1_3 = L1_3.LOGTYPE_GUI
    L2_3 = "menu_root.CallbackNotFoundFallback, Key: "
    L3_3 = tostring
    L4_3 = A0_2
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3 .. L3_3
    L0_3(L1_3, L2_3)
  end
  return L1_2
end
L0_1.GenerateCallbackNotFoundFallback = L1_1
L0_1 = menu_root
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = menu_root
  L3_2 = L3_2.oMenu
  if L3_2 ~= nil then
    L3_2 = menu_root
    L3_2 = L3_2.oMenu
    L4_2 = L3_2
    L3_2 = L3_2.FindCallback
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if L2_2 == nil then
    L3_2 = menu_root
    L3_2 = L3_2.GenerateCallbackNotFoundFallback
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  return L2_2
end
L0_1.FindCallback = L1_1
L0_1 = menu_root
function L1_1()
  local L0_2, L1_2
  L0_2 = menu_root
  L0_2 = L0_2.oMenu
  L1_2 = L0_2
  L0_2 = L0_2.PopItem
  L0_2(L1_2)
end
L0_1.PopCurrentItem = L1_1
L0_1 = menu_root
function L1_1()
  local L0_2, L1_2
  L0_2 = menu_root
  L0_2 = L0_2.oMenu
  L1_2 = L0_2
  L0_2 = L0_2.GetStackTopMenuProps
  return L0_2(L1_2)
end
L0_1.GetStackTopMenuProps = L1_1
