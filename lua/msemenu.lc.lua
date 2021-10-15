local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/savegame.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu_debug_locations.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = {}
msemenu = L0_1
L0_1 = msemenu
L0_1.DebugMenuRoot = nil
L0_1 = msemenu
L0_1.DebugMenuMain = nil
L0_1 = msemenu
L0_1.DebugMenuInfoPanel = nil
L0_1 = msemenu
L1_1 = {}
L0_1.aAreasLevels = L1_1
L0_1 = msemenu
L1_1 = {}
L0_1.aAreasPresavedGames = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 ~= nil then
    L2_2 = A0_2[A1_2]
    if L2_2 == nil then
      L3_2 = pairs
      L4_2 = A0_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = type
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 == "table" then
          L8_2 = L7_2.ItemKey
          if L8_2 == A1_2 then
            L2_2 = L7_2.ItemContent
            break
          end
        end
      end
    end
  end
  return L2_2
end
L0_1.GetMenuItemByKey = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = msemenu
  L1_2 = L1_2.GetMenuItemByKey
  L2_2 = msemenu
  L2_2 = L2_2.CurrentMenu
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.GetCurrentMenuItemByKey = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = {}
  L4_2 = Game
  L4_2 = L4_2.GetMenuDebugFlags
  L4_2 = L4_2()
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L3_2
    L11_2 = utils
    L11_2 = L11_2.Split
    L12_2 = L9_2
    L13_2 = " | "
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = ipairs
    L13_2 = L11_2
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    for L15_2, L16_2 in L12_2, L13_2, L14_2 do
      L17_2 = L10_2[L16_2]
      if L17_2 == nil then
        L17_2 = {}
        L10_2[L16_2] = L17_2
      end
      L10_2 = L10_2[L16_2]
    end
    L12_2 = L10_2._ITEMS
    if L12_2 == nil then
      L12_2 = {}
      L10_2._ITEMS = L12_2
    end
    L10_2 = L10_2._ITEMS
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L10_2
    L14_2 = L8_2
    L12_2(L13_2, L14_2)
  end
  L5_2 = msemenu
  L5_2 = L5_2.ReplaceItemsInTable
  L6_2 = L3_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L3_2 = L5_2
  return L3_2
end
L0_1.GenerateDebugFlagsTable = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  function L4_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L4_3 = A0_3._ITEMS
    if L4_3 then
      L4_3 = msemenu
      L4_3 = L4_3.GenerateCustomItems
      L5_3 = A1_3
      L6_3 = A2_3
      L7_3 = A3_3
      L8_3 = A0_3._ITEMS
      return L4_3(L5_3, L6_3, L7_3, L8_3)
    end
    L4_3 = pairs
    L5_3 = A0_3
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    for L7_3, L8_3 in L4_3, L5_3, L6_3 do
      L9_3 = L4_2
      L10_3 = A0_3[L7_3]
      L11_3 = A1_3
      L12_3 = A2_3
      L13_3 = A3_3
      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
      A0_3[L7_3] = L9_3
    end
    return A0_3
  end
  L5_2 = L4_2
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  return L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1.ReplaceItemsInTable = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = A3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = {}
    L10_2.ItemKey = L9_2
    L11_2 = {}
    L11_2.GetCurrentValue = A1_2
    L10_2.ItemContent = L11_2
    if A2_2 then
      L11_2 = L10_2.ItemContent
      L11_2.OnDirActivated = A0_2
    else
      L11_2 = L10_2.ItemContent
      L11_2.OnActivated = A0_2
    end
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L4_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  return L4_2
end
L0_1.GenerateCustomItems = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L8_2.ItemKey = L7_2
    L9_2 = {}
    function L10_2(A0_3, A1_3)
      local L2_3, L3_3
      if A1_3 == "ActivationButton" then
        L2_3 = A0_2
        L3_3 = A0_3
        return L2_3(L3_3)
      end
    end
    L9_2.OnDirActivated = L10_2
    L8_2.ItemContent = L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L2_2
end
L0_1.GenerateDefaultItems = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = {}
  if A1_2 == nil then
    return L3_2
  end
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = {}
    L10_2 = L8_2[A2_2]
    L9_2.ItemKey = L10_2
    L10_2 = {}
    function L11_2(A0_3, A1_3)
      local L2_3, L3_3
      if A1_3 == "ActivationButton" then
        L2_3 = A0_2
        L3_3 = L8_2
        return L2_3(L3_3)
      end
    end
    L10_2.OnDirActivated = L11_2
    L9_2.ItemContent = L10_2
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  return L3_2
end
L0_1.GenerateDefaultTableItems = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2
    L10_2 = A2_2[L8_2]
    L11_2 = {}
    L11_2.ItemKey = L10_2
    L12_2 = {}
    function L13_2(A0_3, A1_3)
      local L2_3, L3_3
      if A1_3 == "ActivationButton" then
        L2_3 = A0_2
        L3_3 = L9_2
        return L2_3(L3_3)
      end
    end
    L12_2.OnDirActivated = L13_2
    L11_2.ItemContent = L12_2
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L3_2
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  return L3_2
end
L0_1.GenerateDefaultItemsWithAlias = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2
  if A0_2 == "[PLAYER]" then
    L1_2 = Game
    L1_2 = L1_2.GetPlayerName
    L1_2 = L1_2()
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = A0_2
  ::lbl_9::
  return L1_2
end
L0_1.FilterEntityIDValue = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = type
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if L5_2 == "number" then
    if A3_2 ~= 0 then
      L6_2 = math
      L6_2 = L6_2.abs
      L7_2 = A3_2
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2 / 10
      if L6_2 then
        goto lbl_16
      end
    end
    L6_2 = 1
    ::lbl_16::
    L7_2 = msemenu
    L7_2 = L7_2.GenerateComponentNumberVarEntry
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = A2_2
    L11_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L4_2 = L7_2
  elseif L5_2 == "string" then
    L6_2 = msemenu
    L6_2 = L6_2.GenerateComponentValuesVarEntry
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = {}
    L11_2 = A3_2
    L12_2 = ""
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L4_2 = L6_2
  elseif L5_2 == "boolean" then
    L6_2 = msemenu
    L6_2 = L6_2.GenerateComponentBoolVarEntry
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2 = L6_2
  end
  return L4_2
end
L0_1.GenerateComponentVarEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = {}
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = msemenu
    L2_3 = L2_3.FilterEntityIDValue
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    if A1_3 == "Right" then
      L3_3 = Game
      L3_3 = L3_3.GetActor
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = A1_2
      L4_3 = L3_3[L4_3]
      L5_3 = A2_2
      L6_3 = A1_2
      L6_3 = L3_3[L6_3]
      L7_3 = A2_2
      L6_3 = L6_3[L7_3]
      L7_3 = A3_2
      L6_3 = L6_3 + L7_3
      L4_3[L5_3] = L6_3
    else
      L3_3 = Game
      L3_3 = L3_3.GetActor
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = A1_2
      L4_3 = L3_3[L4_3]
      L5_3 = A2_2
      L6_3 = A1_2
      L6_3 = L3_3[L6_3]
      L7_3 = A2_2
      L6_3 = L6_3[L7_3]
      L7_3 = A3_2
      L6_3 = L6_3 - L7_3
      L4_3[L5_3] = L6_3
    end
  end
  L4_2.OnDirActivated = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = msemenu
    L0_3 = L0_3.FilterEntityIDValue
    L1_3 = A0_2
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = Game
    L1_3 = L1_3.GetActor
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    L2_3 = A2_2
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  L4_2.GetCurrentValue = L5_2
  return L4_2
end
L0_1.GenerateComponentNumberVarEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = {}
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = msemenu
    L2_3 = L2_3.FilterEntityIDValue
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    L3_3 = Game
    L3_3 = L3_3.GetActor
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    L4_3 = A1_2
    L4_3 = L3_3[L4_3]
    L5_3 = A2_2
    L6_3 = A1_2
    L6_3 = L3_3[L6_3]
    L7_3 = A2_2
    L6_3 = L6_3[L7_3]
    L6_3 = not L6_3
    L4_3[L5_3] = L6_3
  end
  L3_2.OnDirActivated = L4_2
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = msemenu
    L0_3 = L0_3.FilterEntityIDValue
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_3 = Game
    L1_3 = L1_3.GetActor
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = A1_2
    L2_3 = L1_3[L2_3]
    L3_3 = A2_2
    L2_3 = L2_3[L3_3]
    return L2_3
  end
  L3_2.GetCurrentValue = L4_2
  return L3_2
end
L0_1.GenerateComponentBoolVarEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = 0
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = msemenu
    L1_3 = L1_3.GetCurrentMenuItemByKey
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3.GetCurrentValue
    L2_3 = sItemID
    L1_3 = L1_3(L2_3)
    sItemValue = L1_3
    L1_3 = 1
    L2_3 = A3_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = msemenu
      L5_3 = L5_3.FilterEntityIDValue
      L6_3 = A3_2
      L6_3 = L6_3[L4_3]
      L5_3 = L5_3(L6_3)
      L6_3 = sItemValue
      if L5_3 == L6_3 then
        L5_3 = L4_3 - 1
        L4_2 = L5_3
      end
    end
  end
  UpdateValueIdx = L5_2
  L5_2 = {}
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = msemenu
    L2_3 = L2_3.FilterEntityIDValue
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    L3_3 = UpdateValueIdx
    L4_3 = A0_3
    L3_3(L4_3)
    if A1_3 == "Right" then
      L3_3 = L4_2
      L3_3 = L3_3 + 1
      L4_3 = A3_2
      L4_3 = #L4_3
      L3_3 = L3_3 % L4_3
      L4_2 = L3_3
    else
      L3_3 = L4_2
      L3_3 = L3_3 + -1
      L4_3 = A3_2
      L4_3 = #L4_3
      L3_3 = L3_3 % L4_3
      L4_2 = L3_3
    end
    L3_3 = msemenu
    L3_3 = L3_3.FilterEntityIDValue
    L4_3 = A3_2
    L5_3 = L4_2
    L5_3 = L5_3 + 1
    L4_3 = L4_3[L5_3]
    L3_3 = L3_3(L4_3)
    L4_3 = Entity
    L5_3 = A1_2
    L4_3 = L4_3[L5_3]
    L5_3 = A2_2
    L4_3[L5_3] = L3_3
  end
  L5_2.OnDirActivated = L6_2
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = msemenu
    L0_3 = L0_3.FilterEntityIDValue
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_3 = Game
    L1_3 = L1_3.GetActor
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = A1_2
    L2_3 = L1_3[L2_3]
    L3_3 = A2_2
    L2_3 = L2_3[L3_3]
    return L2_3
  end
  L5_2.GetCurrentValue = L6_2
  return L5_2
end
L0_1.GenerateComponentValuesVarEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = {}
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = msemenu
    L2_3 = L2_3.FilterEntityIDValue
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    if A1_3 == "Right" then
      L3_3 = Game
      L3_3 = L3_3.GetActor
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = A1_2
      L5_3 = Game
      L5_3 = L5_3.GetActor
      L6_3 = L2_3
      L5_3 = L5_3(L6_3)
      L6_3 = A1_2
      L5_3 = L5_3[L6_3]
      L6_3 = A2_2
      L5_3 = L5_3 + L6_3
      L3_3[L4_3] = L5_3
    else
      L3_3 = Game
      L3_3 = L3_3.GetActor
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = A1_2
      L5_3 = Game
      L5_3 = L5_3.GetActor
      L6_3 = L2_3
      L5_3 = L5_3(L6_3)
      L6_3 = A1_2
      L5_3 = L5_3[L6_3]
      L6_3 = A2_2
      L5_3 = L5_3 - L6_3
      L3_3[L4_3] = L5_3
    end
  end
  L3_2.OnDirActivated = L4_2
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = msemenu
    L0_3 = L0_3.FilterEntityIDValue
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_3 = Game
    L1_3 = L1_3.GetActor
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  L3_2.GetCurrentValue = L4_2
  return L3_2
end
L0_1.GenerateEntityNumberMsgEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = {}
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = msemenu
    L2_3 = L2_3.FilterEntityIDValue
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    L3_3 = Game
    L3_3 = L3_3.GetActor
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    L4_3 = A1_2
    if L4_3 ~= nil then
      L4_3 = A1_2
      L4_3 = L3_3[L4_3]
      L5_3 = A2_2
      L6_3 = A1_2
      L6_3 = L3_3[L6_3]
      L7_3 = A2_2
      L6_3 = L6_3[L7_3]
      L6_3 = not L6_3
      L4_3[L5_3] = L6_3
    else
      L4_3 = A2_2
      L5_3 = A2_2
      L5_3 = L3_3[L5_3]
      L5_3 = not L5_3
      L3_3[L4_3] = L5_3
    end
  end
  L3_2.OnDirActivated = L4_2
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = msemenu
    L0_3 = L0_3.FilterEntityIDValue
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_3 = Game
    L1_3 = L1_3.GetActor
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = A1_2
    if L2_3 ~= nil then
      L2_3 = A1_2
      L2_3 = L1_3[L2_3]
      L3_3 = A2_2
      L2_3 = L2_3[L3_3]
      return L2_3
    else
      L2_3 = A2_2
      L2_3 = L1_3[L2_3]
      return L2_3
    end
  end
  L3_2.GetCurrentValue = L4_2
  return L3_2
end
L0_1.GenerateEntityBoolMsgEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = 0
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = msemenu
    L1_3 = L1_3.GetCurrentMenuItemByKey
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3.GetCurrentValue
    L2_3 = sItemID
    L1_3 = L1_3(L2_3)
    sItemValue = L1_3
    L1_3 = 1
    L2_3 = A2_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = msemenu
      L5_3 = L5_3.FilterEntityIDValue
      L6_3 = A2_2
      L6_3 = L6_3[L4_3]
      L5_3 = L5_3(L6_3)
      L6_3 = sItemValue
      if L5_3 == L6_3 then
        L5_3 = L4_3 - 1
        L3_2 = L5_3
      end
    end
  end
  UpdateValueIdx = L4_2
  L4_2 = {}
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = msemenu
    L2_3 = L2_3.FilterEntityIDValue
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    L3_3 = UpdateValueIdx
    L4_3 = A0_3
    L3_3(L4_3)
    if A1_3 == "Right" then
      L3_3 = L3_2
      L3_3 = L3_3 + 1
      L4_3 = A2_2
      L4_3 = #L4_3
      L3_3 = L3_3 % L4_3
      L3_2 = L3_3
    else
      L3_3 = L3_2
      L3_3 = L3_3 + -1
      L4_3 = A2_2
      L4_3 = #L4_3
      L3_3 = L3_3 % L4_3
      L3_2 = L3_3
    end
    L3_3 = msemenu
    L3_3 = L3_3.FilterEntityIDValue
    L4_3 = A2_2
    L5_3 = L3_2
    L5_3 = L5_3 + 1
    L4_3 = L4_3[L5_3]
    L3_3 = L3_3(L4_3)
    L4_3 = Game
    L4_3 = L4_3.GetActor
    L5_3 = L2_3
    L4_3 = L4_3(L5_3)
    L5_3 = A1_2
    L4_3[L5_3] = L3_3
  end
  L4_2.OnDirActivated = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = msemenu
    L0_3 = L0_3.FilterEntityIDValue
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_3 = Game
    L1_3 = L1_3.GetActor
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  L4_2.GetCurrentValue = L5_2
  return L4_2
end
L0_1.GenerateEntityValuesMsgEntry = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPlayerInfo
    L0_3 = L0_3()
    L1_3 = L0_3
    L0_3 = L0_3.SwitchInputPreset
    L0_3(L1_3)
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPlayerInfo
    L0_3 = L0_3()
    L0_3 = L0_3.sInputPreset
    return L0_3
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchInputPreset = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.ShowEndGameCredits
    L1_3 = true
    L0_3(L1_3)
  end
  L0_2.OnDirActivated = L1_2
  L0_2.GetCurrentValue = "Show Rewards"
  return L0_2
end
L0_1.GenerateShowRewards = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.SelectCloserAI
    L0_3()
    L0_3 = Game
    L0_3 = L0_3.RefreshSelectedAIAttackPreset
    L0_3()
    L0_3 = msemenu
    L0_3 = L0_3.Update
    L1_3 = "items. Debug.AI. SELECTED"
    L0_3(L1_3)
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetSelectedAI
    L0_3 = L0_3()
    if L0_3 ~= nil then
      L1_3 = L0_3.sName
      return L1_3
    else
      L1_3 = "NO_ENTITY"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SelectCloserAI = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Game
    L0_3 = L0_3.SetControlledAI
    L1_3 = Game
    L1_3 = L1_3.GetControlledAI
    L1_3 = L1_3()
    L1_3 = not L1_3
    L0_3(L1_3)
    L0_3 = Game
    L0_3 = L0_3.GetControlledAI
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = Game
      L0_3 = L0_3.GetSelectedAI
      L0_3 = L0_3()
      if L0_3 ~= nil then
        L1_3 = L0_3.AI
        L1_3 = L1_3.sForcedAttack
        L2_3 = msemenu
        L2_3 = L2_3.Update
        L3_3 = "items. Debug.AI. SELECTED"
        L2_3(L3_3)
      end
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetControlledAI
    L0_3 = L0_3()
    if L0_3 then
      L1_3 = "TRUE"
      return L1_3
    else
      L1_3 = "FALSE"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchControlledAI = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    if A1_3 == "ActivationButton" or A1_3 == "Right" then
      L2_3 = Game
      L2_3 = L2_3.SwitchSelectedAIAttack
      L3_3 = true
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.SwitchSelectedAIAttack
      L3_3 = false
      L2_3(L3_3)
    end
    L2_3 = Game
    L2_3 = L2_3.RefreshSelectedAIAttackPreset
    L2_3()
    L2_3 = msemenu
    L2_3 = L2_3.Update
    L3_3 = "items. Debug.AI. SELECTED"
    L2_3(L3_3)
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.GetSelectedAI
    L0_3 = L0_3()
    if L0_3 ~= nil then
      L1_3 = L0_3.AI
      L1_3 = L1_3.sForcedAttack
      if L1_3 == nil or L1_3 == "" then
        L2_3 = "-"
        return L2_3
      else
        return L1_3
      end
    else
      L1_3 = "-"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchAIForcedAttack = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.SwitchSelectedAIAttackPreset
    L0_3()
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = Game
    L0_3 = L0_3.GetSelectedAI
    L0_3 = L0_3()
    if L0_3 ~= nil then
      L1_3 = L0_3.AI
      L1_3 = L1_3.sForcedAttack
      if L1_3 == nil or L1_3 == "" then
        L2_3 = "-"
        return L2_3
      else
        L2_3 = L0_3.AI
        L2_3 = L2_3.iForcedAttackPreset
        if L2_3 == nil then
          L3_3 = "-"
          return L3_3
        else
          L3_3 = tostring
          L4_3 = L2_3 + 1
          return L3_3(L4_3)
        end
      end
    else
      L1_3 = "-"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchAIForcedAttackPreset = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.GetDefaultPlayer
    L2_3 = L2_3()
    L2_3 = L2_3.AIM
    if L2_3 ~= nil then
      L2_3 = Game
      L2_3 = L2_3.GetDefaultPlayer
      L2_3 = L2_3()
      L2_3 = L2_3.AIM
      L2_3 = L2_3.bAutoAimActive
      L2_3 = not L2_3
      L3_3 = Game
      L3_3 = L3_3.GetDefaultPlayer
      L3_3 = L3_3()
      L3_3 = L3_3.AIM
      L3_3.bAutoAimActive = L2_3
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetDefaultPlayer
    L0_3 = L0_3()
    L0_3 = L0_3.AIM
    if L0_3 ~= nil then
      L0_3 = Game
      L0_3 = L0_3.GetDefaultPlayer
      L0_3 = L0_3()
      L0_3 = L0_3.AIM
      L0_3 = L0_3.bAutoAimActive
      return L0_3
    end
    L0_3 = false
    return L0_3
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.AutoAimActive = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.GetDefaultPlayer
    L2_3 = L2_3()
    L2_3 = L2_3.AIM
    if L2_3 ~= nil then
      L2_3 = Game
      L2_3 = L2_3.GetDefaultPlayer
      L2_3 = L2_3()
      L2_3 = L2_3.AIM
      L2_3 = L2_3.fCurrentAutoAimWidth
      if A1_3 == "Right" then
        L2_3 = L2_3 + 5
      else
        L2_3 = L2_3 - 5
      end
      L3_3 = Game
      L3_3 = L3_3.GetDefaultPlayer
      L3_3 = L3_3()
      L3_3 = L3_3.AIM
      L3_3.fCurrentAutoAimWidth = L2_3
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetDefaultPlayer
    L0_3 = L0_3()
    L0_3 = L0_3.AIM
    if L0_3 ~= nil then
      L0_3 = Game
      L0_3 = L0_3.GetDefaultPlayer
      L0_3 = L0_3()
      L0_3 = L0_3.AIM
      L0_3 = L0_3.fCurrentAutoAimWidth
      return L0_3
    end
    L0_3 = 0
    return L0_3
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.AutoAimWidth = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.GetDefaultPlayer
    L2_3 = L2_3()
    L2_3 = L2_3.AIM
    if L2_3 ~= nil then
      L2_3 = Game
      L2_3 = L2_3.GetDefaultPlayer
      L2_3 = L2_3()
      L2_3 = L2_3.AIM
      L2_3 = L2_3.fCurrentAutoAimConeLength
      if A1_3 == "Right" then
        L2_3 = L2_3 + 5
      else
        L2_3 = L2_3 - 5
      end
      L3_3 = Game
      L3_3 = L3_3.GetDefaultPlayer
      L3_3 = L3_3()
      L3_3 = L3_3.AIM
      L3_3.fCurrentAutoAimConeLength = L2_3
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetDefaultPlayer
    L0_3 = L0_3()
    L0_3 = L0_3.AIM
    if L0_3 ~= nil then
      L0_3 = Game
      L0_3 = L0_3.GetDefaultPlayer
      L0_3 = L0_3()
      L0_3 = L0_3.AIM
      L0_3 = L0_3.fCurrentAutoAimConeLength
      return L0_3
    end
    L0_3 = 0
    return L0_3
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.AutoAimConeLength = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.AttacksEnabled
    L0_3 = L0_3()
    if L0_3 then
      L1_3 = Game
      L1_3 = L1_3.DisableAttacks
      L1_3()
    else
      L1_3 = Game
      L1_3 = L1_3.EnableAttacks
      L1_3()
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.AttacksEnabled
    L0_3 = L0_3()
    if L0_3 then
      L1_3 = "ENABLED"
      return L1_3
    else
      L1_3 = "DISABLED"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchAttacksEnabled = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.ReloadBehaviorTrees
  L0_2()
end
L0_1.ReloadTrees = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.CamoEndDetectionCountDownIgnored
    L0_3 = L0_3()
    if L0_3 then
      L1_3 = Game
      L1_3 = L1_3.ActivateCamoEndDetectionCountdown
      L1_3()
    else
      L1_3 = Game
      L1_3 = L1_3.IgnoreCamoEndDetectionCountdown
      L1_3()
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.CamoEndDetectionCountDownIgnored
    L0_3 = L0_3()
    if L0_3 then
      L1_3 = "ENABLED"
      return L1_3
    else
      L1_3 = "DISABLED"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchOpticalCamoWaitForEndDetectionEnabled = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.ReloadBehaviorTrees
  L0_2()
end
L0_1.ReloadTrees = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.GetDefaultPlayer
    L0_3 = L0_3()
    if L0_3 ~= nil then
      L1_3 = L0_3.AIM
      if L1_3 ~= nil then
        L1_3 = L0_3.AIM
        L1_3 = L1_3.bLockOnSoundAllowed
        if L1_3 then
          L2_3 = L0_3.AIM
          L2_3.bLockOnSoundAllowed = false
        else
          L2_3 = L0_3.AIM
          L2_3.bLockOnSoundAllowed = true
        end
      end
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.GetDefaultPlayer
    L0_3 = L0_3()
    if L0_3 ~= nil then
      L1_3 = L0_3.AIM
      if L1_3 ~= nil then
        L1_3 = L0_3.AIM
        L1_3 = L1_3.bLockOnSoundAllowed
        if L1_3 then
          L2_3 = "ENABLED"
          return L2_3
        else
          L2_3 = "DISABLED"
          return L2_3
        end
    end
    else
      L1_3 = "-"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchLockOnBeep = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPlayerInfo
    L0_3 = L0_3()
    L0_3 = L0_3.bIgnoreShellWithIceBeam
    if L0_3 then
      L1_3 = Game
      L1_3 = L1_3.GetPlayerInfo
      L1_3 = L1_3()
      L1_3.bIgnoreShellWithIceBeam = false
    else
      L1_3 = Game
      L1_3 = L1_3.GetPlayerInfo
      L1_3 = L1_3()
      L1_3.bIgnoreShellWithIceBeam = true
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPlayerInfo
    L0_3 = L0_3()
    L0_3 = L0_3.bIgnoreShellWithIceBeam
    if L0_3 then
      L1_3 = "IGNORED"
      return L1_3
    else
      L1_3 = "NOT IGNORED"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchIgnoreShellWithIceBeam = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.GetRevealTilesMode
    L0_3 = L0_3()
    if L0_3 == "AnyWeapon" then
      L1_3 = Game
      L1_3 = L1_3.SetRevealTilesMode
      L2_3 = "JustPowerBomb"
      L1_3(L2_3)
    else
      L1_3 = Game
      L1_3 = L1_3.SetRevealTilesMode
      L2_3 = "AnyWeapon"
      L1_3(L2_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetRevealTilesMode
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchRevealTilesMode = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPlayer
    L0_3 = L0_3()
    L0_3 = L0_3.MODELUPDATER
    L0_3 = L0_3.sModelAlias
    if L0_3 == "Default" then
      L1_3 = Game
      L1_3 = L1_3.GetPlayer
      L1_3 = L1_3()
      L1_3 = L1_3.MODELUPDATER
      L1_3.sModelAlias = "Varia"
    elseif L0_3 == "Varia" then
      L1_3 = Game
      L1_3 = L1_3.GetPlayer
      L1_3 = L1_3()
      L1_3 = L1_3.MODELUPDATER
      L1_3.sModelAlias = "Gravity"
    else
      L1_3 = Game
      L1_3 = L1_3.GetPlayer
      L1_3 = L1_3()
      L1_3 = L1_3.MODELUPDATER
      L1_3.sModelAlias = "Default"
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPlayer
    L0_3 = L0_3()
    L0_3 = L0_3.MODELUPDATER
    L0_3 = L0_3.sModelAlias
    return L0_3
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchSuit = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    if A1_3 == "Right" then
      L2_3 = Game
      L2_3 = L2_3.SetLowPassFilterCutOff
      L3_3 = Game
      L3_3 = L3_3.GetLowPassFilterCutOff
      L3_3 = L3_3()
      L3_3 = L3_3 + 20
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.SetLowPassFilterCutOff
      L3_3 = Game
      L3_3 = L3_3.GetLowPassFilterCutOff
      L3_3 = L3_3()
      L3_3 = L3_3 - 20
      L2_3(L3_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetLowPassFilterCutOff
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.ChangeLowPassFilterCutoffFreq = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.IsMusicEnabled
    L2_3 = L2_3()
    if L2_3 then
      L2_3 = Game
      L2_3 = L2_3.EnableMusic
      L3_3 = false
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.EnableMusic
      L3_3 = true
      L2_3(L3_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.IsMusicEnabled
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.EnableMusic = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.IsSFXEnabled
    L2_3 = L2_3()
    if L2_3 then
      L2_3 = Game
      L2_3 = L2_3.EnableSFX
      L3_3 = false
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.EnableSFX
      L3_3 = true
      L2_3(L3_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.IsSFXEnabled
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.EnableSFX = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.IsEnvironmentMusicEnabled
    L2_3 = L2_3()
    if L2_3 then
      L2_3 = Game
      L2_3 = L2_3.EnableEnvironmentMusic
      L3_3 = false
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.EnableEnvironmentMusic
      L3_3 = true
      L2_3(L3_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.IsEnvironmentMusicEnabled
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.EnableEnvironmentMusic = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.StopMusic
    L3_3 = true
    L2_3(L3_3)
  end
  L0_2.OnDirActivated = L1_2
  return L0_2
end
L0_1.StopMusic = L1_1
L0_1 = msemenu
L0_1.sStreamPlaying = ""
L0_1 = msemenu
L0_1.fDebugVolume = 0
L0_1 = msemenu
L0_1.fFactor = 0
L0_1 = msemenu
L0_1.bMuteSFX = false
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3
    L2_3 = Game
    L2_3 = L2_3.StopStream
    L2_3()
    L2_3 = msemenu
    L2_3.sStreamPlaying = ""
  end
  L0_2.OnDirActivated = L1_2
  return L0_2
end
L0_1.DebugStopStream = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = msemenu
  L1_2.sStreamPlaying = A0_2
  L1_2 = msemenu
  L2_2 = Game
  L2_2 = L2_2.DebugGetStreamVolumeFromData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.fDebugVolume = L2_2
  L1_2 = Game
  L1_2 = L1_2.DebugPlayStream
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.DebugPlayStream = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = Game
    L2_3 = L2_3.GetCurrentEnvMultiplier
    L2_3 = L2_3()
    if A1_3 == "Right" then
      L3_3 = Game
      L3_3 = L3_3.SetCurrentEnvMultiplier
      L4_3 = L2_3 + 0.025
      L3_3(L4_3)
    else
      L3_3 = Game
      L3_3 = L3_3.SetCurrentEnvMultiplier
      L4_3 = L2_3 - 0.025
      L3_3(L4_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetCurrentEnvMultiplier
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.DebugSetEnvFactor = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = {}
    L9_2 = L6_2
    L8_2 = L6_2.match
    L10_2 = "([^/]+)$"
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2
    L8_2 = L8_2.gsub
    L10_2 = ".wav$"
    L11_2 = ""
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2.ItemKey = L8_2
    L8_2 = {}
    function L9_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = msemenu
      L2_3 = L2_3.sStreamPlaying
      L3_3 = L6_2
      if L2_3 ~= L3_3 then
        L2_3 = msemenu
        L2_3 = L2_3.DebugPlayStream
        L3_3 = L6_2
        L2_3(L3_3)
      elseif A1_3 == "ActivationButton" then
        L2_3 = Game
        L2_3 = L2_3.StopStream
        L2_3()
        L2_3 = msemenu
        L2_3.sStreamPlaying = ""
      else
        L2_3 = msemenu
        L3_3 = Game
        L3_3 = L3_3.DebugGetStreamVolumeFromData
        L4_3 = msemenu
        L4_3 = L4_3.sStreamPlaying
        L3_3 = L3_3(L4_3)
        L2_3.fDebugVolume = L3_3
        if A1_3 == "Right" then
          L2_3 = msemenu
          L3_3 = msemenu
          L3_3 = L3_3.fDebugVolume
          L3_3 = L3_3 + 0.025
          L2_3.fDebugVolume = L3_3
        else
          L2_3 = msemenu
          L3_3 = msemenu
          L3_3 = L3_3.fDebugVolume
          L3_3 = L3_3 - 0.025
          L2_3.fDebugVolume = L3_3
        end
        L2_3 = msemenu
        L2_3 = L2_3.fDebugVolume
        if L2_3 < 0.05 then
          L2_3 = msemenu
          L2_3.fDebugVolume = 0.05
        else
          L2_3 = msemenu
          L2_3 = L2_3.fDebugVolume
          if 1 < L2_3 then
            L2_3 = msemenu
            L2_3.fDebugVolume = 1
          end
        end
        L2_3 = Game
        L2_3 = L2_3.DebugSetStreamVol
        L3_3 = msemenu
        L3_3 = L3_3.sStreamPlaying
        L4_3 = msemenu
        L4_3 = L4_3.fDebugVolume
        L5_3 = true
        L2_3(L3_3, L4_3, L5_3)
      end
    end
    L8_2.OnDirActivated = L9_2
    function L9_2()
      local L0_3, L1_3
      L0_3 = Game
      L0_3 = L0_3.DebugGetStreamVolumeFromData
      L1_3 = L6_2
      return L0_3(L1_3)
    end
    L8_2.GetCurrentValue = L9_2
    L7_2.ItemContent = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = msemenu
    L0_3 = L0_3.sStreamPlaying
    if L0_3 ~= nil then
      L0_3 = msemenu
      L0_3 = L0_3.sStreamPlaying
      if L0_3 ~= "" then
        L0_3 = msemenu
        L0_3 = L0_3.sStreamPlaying
        L1_3 = L0_3
        L0_3 = L0_3.match
        L2_3 = "([^/]+)$"
        L0_3 = L0_3(L1_3, L2_3)
        L1_3 = L0_3
        L0_3 = L0_3.gsub
        L2_3 = ".wav$"
        L3_3 = ""
        return L0_3(L1_3, L2_3, L3_3)
    end
    else
      L0_3 = "NO_STREAM"
      return L0_3
    end
  end
  L1_2.GetCurrentValue = L2_2
  return L1_2
end
L0_1.GeneratePlayStreamItems = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = {}
    L9_2 = L6_2
    L8_2 = L6_2.match
    L10_2 = "([^/]+)$"
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2
    L8_2 = L8_2.gsub
    L10_2 = ".wav$"
    L11_2 = ""
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2.ItemKey = L8_2
    L8_2 = {}
    function L9_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = msemenu
      L2_3 = L2_3.sStreamPlaying
      L3_3 = L6_2
      if L2_3 ~= L3_3 then
        L2_3 = msemenu
        L2_3 = L2_3.DebugPlayStream
        L3_3 = L6_2
        L2_3(L3_3)
      elseif A1_3 == "ActivationButton" then
        L2_3 = Game
        L2_3 = L2_3.StopStream
        L2_3()
        L2_3 = msemenu
        L2_3.sStreamPlaying = ""
      else
        L2_3 = msemenu
        L3_3 = Game
        L3_3 = L3_3.DebugGetEnvironmentMultiplier
        L4_3 = msemenu
        L4_3 = L4_3.sStreamPlaying
        L3_3 = L3_3(L4_3)
        L2_3.fFactor = L3_3
        if A1_3 == "Right" then
          L2_3 = msemenu
          L3_3 = msemenu
          L3_3 = L3_3.fFactor
          L3_3 = L3_3 + 0.025
          L2_3.fFactor = L3_3
        else
          L2_3 = msemenu
          L3_3 = msemenu
          L3_3 = L3_3.fFactor
          L3_3 = L3_3 - 0.025
          L2_3.fFactor = L3_3
        end
        L2_3 = msemenu
        L2_3 = L2_3.fFactor
        if L2_3 < 0.05 then
          L2_3 = msemenu
          L2_3.fFactor = 0.05
        else
          L2_3 = msemenu
          L2_3 = L2_3.fFactor
          if 1 < L2_3 then
            L2_3 = msemenu
            L2_3.fFactor = 1
          end
        end
        L2_3 = Game
        L2_3 = L2_3.DebugSetEnvironmentMultiplier
        L3_3 = msemenu
        L3_3 = L3_3.sStreamPlaying
        L4_3 = msemenu
        L4_3 = L4_3.fFactor
        L2_3(L3_3, L4_3)
      end
    end
    L8_2.OnDirActivated = L9_2
    function L9_2()
      local L0_3, L1_3
      L0_3 = Game
      L0_3 = L0_3.DebugGetEnvironmentMultiplier
      L1_3 = L6_2
      return L0_3(L1_3)
    end
    L8_2.GetCurrentValue = L9_2
    L7_2.ItemContent = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = msemenu
    L0_3 = L0_3.sStreamPlaying
    if L0_3 ~= nil then
      L0_3 = msemenu
      L0_3 = L0_3.sStreamPlaying
      if L0_3 ~= "" then
        L0_3 = msemenu
        L0_3 = L0_3.sStreamPlaying
        L1_3 = L0_3
        L0_3 = L0_3.match
        L2_3 = "([^/]+)$"
        L0_3 = L0_3(L1_3, L2_3)
        L1_3 = L0_3
        L0_3 = L0_3.gsub
        L2_3 = ".wav$"
        L3_3 = ""
        return L0_3(L1_3, L2_3, L3_3)
    end
    else
      L0_3 = "NO_STREAM"
      return L0_3
    end
  end
  L1_2.GetCurrentValue = L2_2
  return L1_2
end
L0_1.GenerateSetEnvironmentMultiplierItems = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = msemenu
    L3_3 = Game
    L3_3 = L3_3.DebugGetStreamVolumeFromData
    L4_3 = msemenu
    L4_3 = L4_3.sStreamPlaying
    L3_3 = L3_3(L4_3)
    L2_3.fDebugVolume = L3_3
    if A1_3 == "Right" then
      L2_3 = msemenu
      L3_3 = msemenu
      L3_3 = L3_3.fDebugVolume
      L3_3 = L3_3 + 0.025
      L2_3.fDebugVolume = L3_3
    else
      L2_3 = msemenu
      L3_3 = msemenu
      L3_3 = L3_3.fDebugVolume
      L3_3 = L3_3 - 0.025
      L2_3.fDebugVolume = L3_3
    end
    L2_3 = msemenu
    L2_3 = L2_3.fDebugVolume
    if L2_3 < 0.05 then
      L2_3 = msemenu
      L2_3.fDebugVolume = 0.05
    else
      L2_3 = msemenu
      L2_3 = L2_3.fDebugVolume
      if 1 < L2_3 then
        L2_3 = msemenu
        L2_3.fDebugVolume = 1
      end
    end
    L2_3 = Game
    L2_3 = L2_3.DebugSetStreamVol
    L3_3 = msemenu
    L3_3 = L3_3.sStreamPlaying
    L4_3 = msemenu
    L4_3 = L4_3.fDebugVolume
    L5_3 = true
    L2_3(L3_3, L4_3, L5_3)
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = msemenu
    L0_3 = L0_3.fDebugVolume
    return L0_3
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.DebugSetStreamVolume = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = Game
    L2_3 = L2_3.AreHeadphonesPlugged
    L2_3 = L2_3()
    L3_3 = Game
    L3_3 = L3_3.SetForceHeadphonesPlugged
    L4_3 = not L2_3
    L3_3(L4_3)
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.AreHeadphonesPlugged
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = "HEADPHONES"
      return L0_3
    else
      L0_3 = "SPEAKERS"
      return L0_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.DebugSetSpeakerMode = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = Game
    L2_3 = L2_3.GetHeadphonesMultiplier
    L2_3 = L2_3()
    if A1_3 == "Right" then
      L2_3 = L2_3 + 0.025
    else
      L2_3 = L2_3 - 0.025
    end
    L3_3 = Game
    L3_3 = L3_3.SetHeadphonesMultiplier
    L4_3 = L2_3
    L3_3(L4_3)
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetHeadphonesMultiplier
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.DebugSetHeadPhoneMultiplier = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = msemenu
    L3_3 = msemenu
    L3_3 = L3_3.bMuteSFX
    L3_3 = not L3_3
    L2_3.bMuteSFX = L3_3
    L2_3 = Game
    L2_3 = L2_3.SetSFXMuted
    L3_3 = msemenu
    L3_3 = L3_3.bMuteSFX
    L2_3(L3_3)
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = msemenu
    L0_3 = L0_3.bMuteSFX
    return L0_3
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.DebugMuteSfx = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = string
  L2_2 = L2_2.gmatch
  L3_2 = A0_2
  L4_2 = "([^|]+)"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  return L1_2
end
L0_1.GenerateMusicTable = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.IsEnvironmentSoundEnabled
    L2_3 = L2_3()
    if L2_3 then
      L2_3 = Game
      L2_3 = L2_3.EnableEnvironmentSounds
      L3_3 = false
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.EnableEnvironmentSounds
      L3_3 = true
      L2_3(L3_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.IsEnvironmentSoundEnabled
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.EnableEnvironmentSound = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.IsEnvironmentSoundEffectsEnabled
    L2_3 = L2_3()
    if L2_3 then
      L2_3 = Game
      L2_3 = L2_3.EnableEnvironmentSoundEffects
      L3_3 = false
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.EnableEnvironmentSoundEffects
      L3_3 = true
      L2_3(L3_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.IsEnvironmentSoundEffectsEnabled
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.EnableEnvironmentSoundEffects = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.IsMetroidRadarSoundEnabled
    L2_3 = L2_3()
    if L2_3 then
      L2_3 = Game
      L2_3 = L2_3.EnableMetroidRadarSound
      L3_3 = false
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.EnableMetroidRadarSound
      L3_3 = true
      L2_3(L3_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.IsMetroidRadarSoundEnabled
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.EnableMetroidRadarSound = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = hud
    L0_3 = L0_3.oHUDRoot
    if L0_3 then
      L0_3 = hud
      L0_3 = L0_3.oHUDRoot
      L1_3 = L0_3
      L0_3 = L0_3.FindChild
      L2_3 = "Character"
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L1_3 = L0_3.StageID
        if L1_3 == "Up" then
          L0_3.StageID = "Down"
        else
          L0_3.StageID = "Up"
        end
      end
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = hud
    L0_3 = L0_3.oHUDRoot
    if L0_3 then
      L0_3 = hud
      L0_3 = L0_3.oHUDRoot
      L1_3 = L0_3
      L0_3 = L0_3.FindChild
      L2_3 = "Character"
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L1_3 = L0_3.StageID
        return L1_3
      end
    end
    L0_3 = ""
    return L0_3
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchHUDMode = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.SwitchPlayerLifeLocked
    L0_3()
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPlayerLifeLocked
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchPlayerLifeLocked = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.SwitchInfiniteAmmo
    L0_3()
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetInfiniteAmmoEnabled
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchInfiniteAmmo = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.SwitchPlayerSpecialEnergyLocked
    L0_3()
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPlayerSpecialEnergyLocked
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchPlayerSpecialEnergyLocked = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.SwitchSpaceJump
    L0_3()
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetSpaceJump
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchSpaceJump = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.SwitchDoubleJump
    L0_3()
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetDoubleJump
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchDoubleJump = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.CloseIngameMenu
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0
  L2_2 = "Game.UnlockAllRewards"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.UnlockAllRewards = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.CloseIngameMenu
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0
  L2_2 = "Game.KillAllEnemies"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.KillAllEnemies = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.ResetAmiibosTimestamp
  L0_2()
end
L0_1.ResetAmiibosTimestamp = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.CloseIngameMenu
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0
  L2_2 = "Game.KillEmmy"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.KillEmmy = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.CloseIngameMenu
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0
  L2_2 = "Game.KillCurrentBoss"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.SetIAmACheater
  L0_2()
end
L0_1.KillCurrentBoss = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.IsForceSkipCutscenes
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = Game
      L0_3 = L0_3.SetForceSkipCutscenes
      L1_3 = false
      L0_3(L1_3)
    else
      L0_3 = Game
      L0_3 = L0_3.SetForceSkipCutscenes
      L1_3 = true
      L0_3(L1_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.IsForceSkipCutscenes
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchForceSkipCutscenes = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 ~= nil then
    L1_2 = Blackboard
    L1_2 = L1_2.SetProp
    L2_2 = "PLAYER_INVENTORY"
    L3_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
    L4_2 = "f"
    L5_2 = L0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetPlayer
  L1_2 = L1_2()
  L1_2 = L1_2.SPECIALENERGY
  L2_2 = L1_2
  L1_2 = L1_2.Fill
  L1_2(L2_2)
end
L0_1.RecoverSpecialEnergy = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.LIFE
  L1_2 = Game
  L1_2 = L1_2.GetPlayer
  L1_2 = L1_2()
  L1_2 = L1_2.LIFE
  L1_2 = L1_2.fMaxLife
  L0_2.fCurrentLife = L1_2
end
L0_1.RecoverLife = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_WEAPON_MISSILE_CURRENT"
      L5_2 = Game
      L5_2 = L5_2.GetItemAmount
      L6_2 = Game
      L6_2 = L6_2.GetPlayerName
      L6_2 = L6_2()
      L7_2 = "ITEM_WEAPON_MISSILE_MAX"
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
      L5_2 = Game
      L5_2 = L5_2.GetItemAmount
      L6_2 = Game
      L6_2 = L6_2.GetPlayerName
      L6_2 = L6_2()
      L7_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = Game
      L2_2 = L2_2.ReinitPlayerFromBlackboard
      L2_2()
    end
  end
end
L0_1.RecoverAmmo = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_WEAPON_CHARGE_BEAM"
      L5_2 = 1
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
      L5_2 = 0
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = guicallbacks
      L2_2 = L2_2.OnPlayerReinit
      L2_2()
    end
  end
end
L0_1.UnlockChargeBeam = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_WEAPON_CHARGE_BEAM"
      L5_2 = 1
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
      L5_2 = 1
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = guicallbacks
      L2_2 = L2_2.OnPlayerReinit
      L2_2()
    end
  end
end
L0_1.UnlockDiffusionBeam = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
      L5_2 = 1
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = guicallbacks
      L2_2 = L2_2.OnPlayerReinit
      L2_2()
    end
  end
end
L0_1.UnlockGrappleBeam = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_WEAPON_WIDE_BEAM"
      L5_2 = 0
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = guicallbacks
      L2_2 = L2_2.OnPlayerReinit
      L2_2()
    end
  end
end
L0_1.UnlockPowerBeam = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_WEAPON_WIDE_BEAM"
      L5_2 = 1
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = guicallbacks
      L2_2 = L2_2.OnPlayerReinit
      L2_2()
    end
  end
end
L0_1.UnlockWideBeam = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_SCREW_ATTACK"
      L5_2 = 1
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = guicallbacks
      L2_2 = L2_2.OnPlayerReinit
      L2_2()
    end
  end
end
L0_1.UnlockScrewAttack = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Samus
  L0_2 = L0_2.SetAbilityUnlocked
  L1_2 = "EnergyShield"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = guicallbacks
  L0_2 = L0_2.OnPlayerReinit
  L0_2()
end
L0_1.UnlockEnergyShield = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Samus
  L0_2 = L0_2.SetAbilityUnlocked
  L1_2 = "EnergyWave"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = guicallbacks
  L0_2 = L0_2.OnPlayerReinit
  L0_2()
end
L0_1.UnlockEnergyWave = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Samus
  L0_2 = L0_2.SetAbilityUnlocked
  L1_2 = "PhaseDisplacement"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = guicallbacks
  L0_2 = L0_2.OnPlayerReinit
  L0_2()
end
L0_1.UnlockPhaseDisplacement = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Samus
  L0_2 = L0_2.SetAbilityUnlocked
  L1_2 = "ScanningPulse"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = guicallbacks
  L0_2 = L0_2.OnPlayerReinit
  L0_2()
end
L0_1.UnlockScanningPulse = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GainCentralUnitSpbSprWeapon
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.ReinitPlayerFromBlackboard
  L0_2()
end
L0_1.GainCentralUnitSpbSprWeapon = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.SPECIALENERGY
    if L1_2 ~= nil then
      L1_2.fMaxEnergy = 2200
      L1_2.fEnergy = 2200
    end
    L2_2 = L0_2.LIFE
    if L2_2 ~= nil then
      L2_2.fMaxLife = 1099
      L2_2.fCurrentLife = 1099
    end
    L3_2 = L0_2.INVENTORY
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_MAX_LIFE"
      L7_2 = 799
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_CURRENT_LIFE"
      L7_2 = 799
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_MAX_SPECIAL_ENERGY"
      L7_2 = 1000
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
      L7_2 = 1000
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_MISSILE_CURRENT"
      L7_2 = 150
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_MISSILE_MAX"
      L7_2 = 150
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_POWER_BOMB"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
      L7_2 = 10
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
      L7_2 = 10
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_GRAVITY_SUIT"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_VARIA_SUIT"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_BOMB"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_CHARGE_BEAM"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_WIDE_BEAM"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_ICE_BEAM"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_WAVE_BEAM"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_SPAZER_BEAM"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_PLASMA_BEAM"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_SUPER_MISSILE"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_ICE_MISSILE"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_WEAPON_LINE_BOMB"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_MULTILOCKON"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_SPECIAL_ENERGY"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_DOUBLE_JUMP"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_MORPH_BALL"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_SCREW_ATTACK"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_SPACE_JUMP"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_SPRING_BALL"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_MAGNET_GLOVE"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_FLOOR_SLIDE"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_OPTIC_CAMOUFLAGE"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_SPEED_BOOSTER"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_GHOST_AURA"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L3_2
      L4_2 = L3_2.SetItemAmount
      L6_2 = "ITEM_SONAR"
      L7_2 = 1
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = Game
      L4_2 = L4_2.ReinitPlayerFromBlackboard
      L4_2()
    end
  end
end
L0_1.GainAllItemsAndPowerUps = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.CurrentMinimapVisitAndScanAllCells
  L0_2()
end
L0_1.CurrentMinimapVisitAndScanAllCells = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.ScanVisitDiscoverEverything
  L0_2()
end
L0_1.ScanVisitDiscoverEverything = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.HideScenario
  L0_2()
end
L0_1.HideScenario = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.ShowScenario
  L0_2()
end
L0_1.ShowScenario = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, ...)
  local L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = msemenu
    L1_3 = L1_3.FilterEntityIDValue
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    L2_3 = Game
    L2_3 = L2_3.GetActor
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = A1_2
    L3_3 = L2_3[L3_3]
    L4_3 = L2_3
    L5_3 = unpack
    L6_3 = arg
    L5_3, L6_3 = L5_3(L6_3)
    L3_3(L4_3, L5_3, L6_3)
  end
  return L3_2
end
L0_1.GenerateEntityFunctionMsgEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = Blackboard
    L2_3 = L2_3.SetProp
    L3_3 = A0_2
    L4_3 = A1_2
    L5_3 = "b"
    L6_3 = Blackboard
    L6_3 = L6_3.GetProp
    L7_3 = A0_2
    L8_3 = A1_2
    L6_3 = L6_3(L7_3, L8_3)
    L6_3 = not L6_3
    L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L2_2.OnDirActivated = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = Blackboard
    L0_3 = L0_3.GetProp
    L1_3 = A0_2
    L2_3 = A1_2
    return L0_3(L1_3, L2_3)
  end
  L2_2.GetCurrentValue = L3_2
  return L2_2
end
L0_1.GenerateBlackboardBoolMsgEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = msemenu
    L2_3 = L2_3.FilterEntityIDValue
    L3_3 = _sEntity
    L2_3 = L2_3(L3_3)
    L3_3 = 1
    L4_3 = Game
    L4_3 = L4_3.IsDebugPadButtonPressed
    L5_3 = "L1"
    L4_3 = L4_3(L5_3)
    if L4_3 then
      L4_3 = A1_2
      L4_3 = L4_3.IncrementSlow
      if L4_3 ~= nil then
        L4_3 = A1_2
        L3_3 = L4_3.IncrementSlow
    end
    else
      L4_3 = Game
      L4_3 = L4_3.IsDebugPadButtonPressed
      L5_3 = "R1"
      L4_3 = L4_3(L5_3)
      if L4_3 then
        L4_3 = A1_2
        L4_3 = L4_3.IncrementFast
        if L4_3 ~= nil then
          L4_3 = A1_2
          L3_3 = L4_3.IncrementFast
      end
      else
        L4_3 = A1_2
        L4_3 = L4_3.Increment
        if L4_3 ~= nil then
          L4_3 = A1_2
          L3_3 = L4_3.Increment
        end
      end
    end
    if A1_3 == "Right" then
      L4_3 = Game
      L4_3 = L4_3.SetItemAmount
      L5_3 = Game
      L5_3 = L5_3.GetPlayerName
      L5_3 = L5_3()
      L6_3 = A0_2
      L7_3 = Game
      L7_3 = L7_3.GetItemAmount
      L8_3 = Game
      L8_3 = L8_3.GetPlayerName
      L8_3 = L8_3()
      L9_3 = A0_2
      L7_3 = L7_3(L8_3, L9_3)
      L7_3 = L7_3 + L3_3
      L4_3(L5_3, L6_3, L7_3)
    else
      L4_3 = Game
      L4_3 = L4_3.SetItemAmount
      L5_3 = Game
      L5_3 = L5_3.GetPlayerName
      L5_3 = L5_3()
      L6_3 = A0_2
      L7_3 = Game
      L7_3 = L7_3.GetItemAmount
      L8_3 = Game
      L8_3 = L8_3.GetPlayerName
      L8_3 = L8_3()
      L9_3 = A0_2
      L7_3 = L7_3(L8_3, L9_3)
      L7_3 = L7_3 - L3_3
      L4_3(L5_3, L6_3, L7_3)
    end
    L4_3 = Game
    L4_3 = L4_3.ReinitPlayerFromBlackboard
    L4_3()
    L4_3 = Game
    L4_3 = L4_3.SetIAmACheater
    L4_3()
  end
  L2_2.OnDirActivated = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.GetItemAmount
    L1_3 = Game
    L1_3 = L1_3.GetPlayerName
    L1_3 = L1_3()
    L2_3 = A0_2
    return L0_3(L1_3, L2_3)
  end
  L2_2.GetCurrentValue = L3_2
  return L2_2
end
L0_1.GenerateInventoryEntry = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = debuginventory
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = msemenu
    L6_2 = L6_2.GenerateInventoryEntry
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L0_2[L4_2] = L6_2
  end
  return L0_2
end
L0_1.GenerateInventoryItems = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = debugweapons
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2[1]
    L7_2 = {}
    L7_2.ItemKey = L6_2
    L8_2 = msemenu
    L8_2 = L8_2.GenerateInventoryListEntry
    L9_2 = L6_2
    L10_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.ItemContent = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L0_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L0_2
end
L0_1.GenerateWeaponList = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = debugitems
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2[1]
    L7_2 = {}
    L7_2.ItemKey = L6_2
    L8_2 = msemenu
    L8_2 = L8_2.GenerateInventoryListEntry
    L9_2 = L6_2
    L10_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.ItemContent = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L0_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L0_2
end
L0_1.GenerateItemsList = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = debugabilities
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2[1]
    L7_2 = {}
    L7_2.ItemKey = L6_2
    L8_2 = msemenu
    L8_2 = L8_2.GenerateInventoryListEntry
    L9_2 = L6_2
    L10_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.ItemContent = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L0_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L0_2
end
L0_1.GenerateAbilitiesList = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = 1
    L2_3 = A1_2
    L2_3 = L2_3.Amount
    if L2_3 ~= nil then
      L2_3 = A1_2
      L1_3 = L2_3.Amount
    end
    L2_3 = Game
    L2_3 = L2_3.GetItemAmount
    L3_3 = Game
    L3_3 = L3_3.GetPlayerName
    L3_3 = L3_3()
    L4_3 = A1_2
    L4_3 = L4_3.Item
    L2_3 = L2_3(L3_3, L4_3)
    if 0 < L2_3 then
      L2_3 = Game
      L2_3 = L2_3.SetItemAmount
      L3_3 = Game
      L3_3 = L3_3.GetPlayerName
      L3_3 = L3_3()
      L4_3 = A1_2
      L4_3 = L4_3.Item
      L5_3 = 0
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = A1_2
      L2_3 = L2_3.ItemMax
      if L2_3 ~= nil then
        L2_3 = Game
        L2_3 = L2_3.SetItemAmount
        L3_3 = Game
        L3_3 = L3_3.GetPlayerName
        L3_3 = L3_3()
        L4_3 = A1_2
        L4_3 = L4_3.ItemMax
        L5_3 = 0
        L2_3(L3_3, L4_3, L5_3)
      end
    else
      L2_3 = Game
      L2_3 = L2_3.SetItemAmount
      L3_3 = Game
      L3_3 = L3_3.GetPlayerName
      L3_3 = L3_3()
      L4_3 = A1_2
      L4_3 = L4_3.Item
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = A1_2
      L2_3 = L2_3.ItemMax
      if L2_3 ~= nil then
        L2_3 = Game
        L2_3 = L2_3.SetItemAmount
        L3_3 = Game
        L3_3 = L3_3.GetPlayerName
        L3_3 = L3_3()
        L4_3 = A1_2
        L4_3 = L4_3.ItemMax
        L5_3 = L1_3
        L2_3(L3_3, L4_3, L5_3)
      end
    end
    L2_3 = Game
    L2_3 = L2_3.ReinitPlayerFromBlackboard
    L2_3()
  end
  L2_2.OnActivated = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.GetItemAmount
    L1_3 = Game
    L1_3 = L1_3.GetPlayerName
    L1_3 = L1_3()
    L2_3 = A1_2
    L2_3 = L2_3.Item
    L0_3 = L0_3(L1_3, L2_3)
    if 0 < L0_3 then
      L0_3 = "ON"
      return L0_3
    else
      L0_3 = "OFF"
      return L0_3
    end
  end
  L2_2.GetCurrentValue = L3_2
  return L2_2
end
L0_1.GenerateInventoryListEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = "cutscenes/"
    L1_3 = A0_2
    L1_3 = L1_3.Name
    L2_3 = "/takes/01/"
    L3_3 = A0_2
    L3_3 = L3_3.Name
    L4_3 = "01.bmscu"
    L0_3 = L0_3 .. L1_3 .. L2_3 .. L3_3 .. L4_3
    L1_3 = Game
    L1_3 = L1_3.LaunchCutsceneInViewerMode
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = Game
    L1_3 = L1_3.FadeIn
    L2_3 = 0.1
    L3_3 = 0.2
    L1_3(L2_3, L3_3)
  end
  return L1_2
end
L0_1.GeneratePlayCutsceneDefWithPreload = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if A1_2 then
      L8_2 = L7_2.Name
      L9_2 = {}
      L2_2[L8_2] = L9_2
      L8_2 = L7_2.Name
      L8_2 = L2_2[L8_2]
      L9_2 = msemenu
      L9_2 = L9_2.GeneratePlayCutsceneDefWithPreload
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L8_2[".PlayAll (with Preload)"] = L9_2
      L8_2 = 1
      L9_2 = L7_2.NumTakes
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = string
        L12_2 = L12_2.format
        L13_2 = "%02d"
        L14_2 = L11_2
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = "cutscenes/"
        L14_2 = L7_2.Name
        L15_2 = "/takes/"
        L16_2 = L12_2
        L17_2 = "/"
        L18_2 = L7_2.Name
        L19_2 = L12_2
        L20_2 = ".bmscu"
        L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
        L14_2 = L7_2.Name
        L14_2 = L2_2[L14_2]
        function L15_2()
          local L0_3, L1_3, L2_3
          L0_3 = Game
          L0_3 = L0_3.LaunchCutsceneInViewerMode
          L1_3 = L13_2
          L0_3(L1_3)
          L0_3 = Game
          L0_3 = L0_3.FadeIn
          L1_3 = 0.1
          L2_3 = 0.2
          L0_3(L1_3, L2_3)
        end
        L14_2[L12_2] = L15_2
      end
    else
      L8_2 = L7_2.Name
      L9_2 = msemenu
      L9_2 = L9_2.GeneratePlayCutsceneDefWithPreload
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L2_2[L8_2] = L9_2
    end
  end
  return L2_2
end
L0_1.GenerateCutscene2DItems = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if A1_2 then
      L8_2 = string
      L8_2 = L8_2.sub
      L9_2 = L7_2.Player
      L10_2 = 5
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = string
      L9_2 = L9_2.format
      L10_2 = "%02d"
      L11_2 = L7_2.Take
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = "cutscenes/"
      L11_2 = L7_2.Name
      L12_2 = "/takes/"
      L13_2 = L9_2
      L14_2 = "/"
      L15_2 = L7_2.Name
      L16_2 = L9_2
      L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
      L11_2 = "packs/cutscenes/"
      L12_2 = L7_2.Name
      L13_2 = ".pkg"
      L11_2 = L11_2 .. L12_2 .. L13_2
      L12_2 = "packs/maps_"
      L13_2 = L8_2
      L14_2 = "/"
      L15_2 = L7_2.Map
      L16_2 = ".pkg"
      L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
      L13_2 = "["
      L14_2 = L8_2
      L15_2 = "]"
      L16_2 = L6_2
      L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
      L14_2 = string
      L14_2 = L14_2.sub
      L15_2 = L13_2
      L16_2 = 0
      L17_2 = 25
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L13_2 = L14_2
      function L14_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        L0_3 = Game
        L0_3 = L0_3.CSDirectorSetNumStages
        L1_3 = 1
        L0_3(L1_3)
        L0_3 = Game
        L0_3 = L0_3.CSDirectorSetStageCfg
        L1_3 = 0
        L2_3 = L11_2
        L3_3 = L10_2
        L4_3 = L12_2
        L5_3 = L7_2
        L5_3 = L5_3.Player
        L6_3 = L7_2
        L6_3 = L6_3.Map
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
        L0_3 = Game
        L0_3 = L0_3.CSDirectorEnableLoadingScreen
        L1_3 = true
        L0_3(L1_3)
        L0_3 = Game
        L0_3 = L0_3.CSDirectorPlay
        L0_3()
      end
      L2_2[L13_2] = L14_2
    else
      L8_2 = L7_2.Name
      L9_2 = msemenu
      L9_2 = L9_2.GeneratePlayCutsceneDefWithPreload
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L2_2[L8_2] = L9_2
    end
  end
  return L2_2
end
L0_1.GenerateCutscene3DItems = L1_1
L0_1 = msemenu
L0_1.MenuList = nil
L0_1 = msemenu
L0_1.CurrentMenuPath = nil
L0_1 = msemenu
L0_1.CurrentMenu = nil
L0_1 = msemenu
L0_1.OnClosed = nil
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = GUI
  L0_2 = L0_2.SetProperties
  L1_2 = "DebugMenu"
  L2_2 = {}
  L2_2.Enabled = false
  L0_2(L1_2, L2_2)
  L0_2 = GUI
  L0_2 = L0_2.SetProperties
  L1_2 = "HUD"
  L2_2 = {}
  L2_2.Enabled = true
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.TogglePause
  L0_2()
  L0_2 = msemenu
  L0_2 = L0_2.OnClosed
  if L0_2 ~= nil then
    L0_2 = msemenu
    L0_2 = L0_2.OnClosed
    L0_2()
  end
end
L0_1.close = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = string
  L1_2 = L1_2.gmatch
  L2_2 = A0_2
  L3_2 = "(.*)%.[^%.]+$"
  L1_2 = L1_2(L2_2, L3_2)
  return L1_2()
end
L0_1.GetParentMenuPath = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = msemenu
  L3_2 = A0_2
  L2_2 = A0_2.gmatch
  L4_2 = "[_%w ][_%w #@-%-]*"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = msemenu
    L6_2 = L6_2.GetMenuItemByKey
    L7_2 = L1_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L1_2 = L6_2
  end
  return L1_2
end
L0_1.GetMenu = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "number" then
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "%.3f"
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L2_2 = tostring
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  return L1_2
end
L0_1.GetValueString = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = msemenu
  L1_2.CurrentMenuPath = A0_2
  L1_2 = msemenu
  L2_2 = msemenu
  L2_2 = L2_2.GetMenu
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.CurrentMenu = L2_2
  L1_2 = true
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L5_2 = {}
  L6_2 = {}
  L7_2 = msemenu
  L7_2 = L7_2.CurrentMenu
  if L7_2 == nil then
    L7_2 = utils
    L7_2 = L7_2.LOG
    L8_2 = utils
    L8_2 = L8_2.LOGTYPE_DEFAULT
    L9_2 = "MENU IS NIL"
    L7_2(L8_2, L9_2)
    return
  end
  L7_2 = pairs
  L8_2 = msemenu
  L8_2 = L8_2.CurrentMenu
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2
    L13_2 = L10_2
    L14_2 = ""
    L15_2 = type
    L16_2 = L12_2
    L15_2 = L15_2(L16_2)
    if L15_2 == "table" then
      L15_2 = L12_2.ItemKey
      if L15_2 ~= nil then
        L13_2 = L12_2.ItemKey
        L12_2 = L12_2.ItemContent
        L1_2 = false
      end
    end
    L15_2 = type
    L16_2 = L12_2
    L15_2 = L15_2(L16_2)
    if L15_2 == "table" then
      L15_2 = L12_2.GetCurrentValue
      if L15_2 ~= nil then
        L15_2 = msemenu
        L15_2 = L15_2.GetValueString
        L16_2 = L12_2.GetCurrentValue
        L17_2 = L13_2
        L16_2, L17_2 = L16_2(L17_2)
        L15_2 = L15_2(L16_2, L17_2)
        L14_2 = L15_2
      else
        L15_2 = L12_2.OnDirActivated
        if L15_2 == nil then
          L15_2 = L12_2.OnActivated
          if L15_2 == nil then
            L14_2 = "[SUBMENU]"
            L15_2 = "["
            L16_2 = L13_2
            L17_2 = "]"
            L13_2 = L15_2 .. L16_2 .. L17_2
          end
        end
      end
    end
    L15_2 = table
    L15_2 = L15_2.insert
    L16_2 = L2_2
    L17_2 = L13_2
    L15_2(L16_2, L17_2)
    L15_2 = table
    L15_2 = L15_2.insert
    L16_2 = L3_2
    L17_2 = L14_2
    L15_2(L16_2, L17_2)
    L15_2 = table
    L15_2 = L15_2.insert
    L16_2 = L4_2
    L17_2 = true
    L15_2(L16_2, L17_2)
    L15_2 = table
    L15_2 = L15_2.insert
    L16_2 = L5_2
    L17_2 = false
    L15_2(L16_2, L17_2)
    L15_2 = table
    L15_2 = L15_2.insert
    L16_2 = L6_2
    L17_2 = false
    L15_2(L16_2, L17_2)
  end
  L7_2 = GUI
  L7_2 = L7_2.SetMenuListValues
  L8_2 = msemenu
  L8_2 = L8_2.DebugMenuMain
  L9_2 = L8_2
  L8_2 = L8_2.FindChild
  L10_2 = "ListComposition"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = L4_2
  L12_2 = L5_2
  L13_2 = L6_2
  L14_2 = L1_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L0_1.Update = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = msemenu
  L0_2 = L0_2.Update
  L1_2 = msemenu
  L1_2 = L1_2.CurrentMenuPath
  L0_2(L1_2)
  L0_2 = msemenu
  L0_2 = L0_2.items
  L0_2 = L0_2[" Debug"]
  if L0_2 ~= nil then
    L1_2 = L0_2.Entities
    if L1_2 ~= nil then
      L1_2 = msemenu
      L1_2 = L1_2.UpdateEntitiesMenu
      L1_2()
    end
    L1_2 = L0_2.Locations
    if L1_2 ~= nil then
      L1_2 = {}
      L0_2.Locations = L1_2
      L1_2 = nil
      L2_2 = CurrentScenarioID
      if L2_2 ~= nil then
        L2_2 = msemenu_debug_locations
        L3_2 = CurrentScenarioID
        L1_2 = L2_2[L3_2]
      end
      if L1_2 ~= nil then
        L2_2 = ipairs
        L3_2 = L1_2
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = L6_2[1]
          L8_2 = L6_2[2]
          L9_2 = L0_2.Locations
          function L10_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3
            L0_3 = Game
            L0_3 = L0_3.GetPlayer
            L0_3 = L0_3()
            L1_3 = V3D
            L2_3 = L8_2
            L2_3 = L2_3[1]
            L3_3 = L8_2
            L3_3 = L3_3[2]
            L4_3 = L8_2
            L4_3 = L4_3[3]
            L1_3 = L1_3(L2_3, L3_3, L4_3)
            L0_3.vPos = L1_3
            L0_3 = Game
            L0_3 = L0_3.CloseDebugMenu
            L1_3 = 2
            L0_3(L1_3)
          end
          L9_2[L7_2] = L10_2
        end
      end
    end
  end
end
L0_1.Refresh = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A2_2.SelectedItem
  L4_2 = L3_2
  L3_2 = L3_2.match
  L5_2 = "[_%w ][_%w #@-%-]*"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A2_2.ActivationDir
  L5_2 = msemenu
  L5_2 = L5_2.GetCurrentMenuItemByKey
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = type
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 == "table" then
    L6_2 = L5_2.OnDirActivated
    if L6_2 ~= nil then
      L6_2 = L5_2.OnDirActivated
      L7_2 = L3_2
      L8_2 = L4_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = L5_2.GetCurrentValue
      if L7_2 then
        L7_2 = GUI
        L7_2 = L7_2.SetMenuListValue
        L8_2 = msemenu
        L8_2 = L8_2.DebugMenuMain
        L9_2 = L8_2
        L8_2 = L8_2.FindChild
        L10_2 = "ListComposition"
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = L3_2
        L10_2 = msemenu
        L10_2 = L10_2.GetValueString
        L11_2 = L5_2.GetCurrentValue
        L12_2 = L3_2
        L11_2, L12_2 = L11_2(L12_2)
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = true
        L12_2 = false
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      else
        if L6_2 ~= nil then
          L7_2 = type
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if L7_2 ~= "table" then
            L7_2 = GUI
            L7_2 = L7_2.SetMenuListValue
            L8_2 = msemenu
            L8_2 = L8_2.DebugMenuMain
            L9_2 = L8_2
            L8_2 = L8_2.FindChild
            L10_2 = "ListComposition"
            L8_2 = L8_2(L9_2, L10_2)
            L9_2 = L3_2
            L10_2 = msemenu
            L10_2 = L10_2.GetValueString
            L11_2 = L6_2
            L10_2 = L10_2(L11_2)
            L11_2 = true
            L12_2 = false
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        end
        elseif L6_2 ~= nil then
          L7_2 = type
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if L7_2 == "table" and L4_2 == "ActivationButton" then
            L7_2 = msemenu
            L7_2 = L7_2.CurrentMenu
            L7_2[L3_2] = L6_2
            L7_2 = msemenu
            L7_2 = L7_2.Update
            L8_2 = msemenu
            L8_2 = L8_2.CurrentMenuPath
            L9_2 = "."
            L10_2 = L3_2
            L8_2 = L8_2 .. L9_2 .. L10_2
            L7_2(L8_2)
          end
        end
      end
    else
      L6_2 = L5_2.OnActivated
      if L6_2 ~= nil then
        L6_2 = L5_2.OnActivated
        L7_2 = L3_2
        L6_2(L7_2)
        L6_2 = L5_2.GetCurrentValue
        if L6_2 then
          L6_2 = GUI
          L6_2 = L6_2.SetMenuListValue
          L7_2 = msemenu
          L7_2 = L7_2.DebugMenuMain
          L8_2 = L7_2
          L7_2 = L7_2.FindChild
          L9_2 = "ListComposition"
          L7_2 = L7_2(L8_2, L9_2)
          L8_2 = L3_2
          L9_2 = msemenu
          L9_2 = L9_2.GetValueString
          L10_2 = L5_2.GetCurrentValue
          L11_2 = L3_2
          L10_2, L11_2, L12_2 = L10_2(L11_2)
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L10_2 = true
          L11_2 = false
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        end
      elseif L4_2 == "ActivationButton" then
        L6_2 = msemenu
        L6_2 = L6_2.Update
        L7_2 = msemenu
        L7_2 = L7_2.CurrentMenuPath
        L8_2 = "."
        L9_2 = L3_2
        L7_2 = L7_2 .. L8_2 .. L9_2
        L6_2(L7_2)
      end
    end
  else
    L6_2 = type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 == "function" and L4_2 == "ActivationButton" then
      L6_2 = L5_2
      L7_2 = L3_2
      L6_2(L7_2)
    end
  end
  L6_2 = 1
  return L6_2
end
L0_1.OnItemActivated = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = msemenu
  L0_2 = L0_2.GetParentMenuPath
  L1_2 = msemenu
  L1_2 = L1_2.CurrentMenuPath
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil and L0_2 ~= "" then
    L1_2 = msemenu
    L1_2 = L1_2.Update
    L2_2 = L0_2
    L1_2(L2_2)
  end
  L1_2 = 1
  return L1_2
end
L0_1.OnItemCancel = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = msemenu
  L0_2 = L0_2.Update
  L1_2 = "items"
  L0_2(L1_2)
  L0_2 = 1
  return L0_2
end
L0_1.OnMenuEnabled = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2
  L7_2 = msemenu
  L7_2.CloseOnCancel = A3_2
  L7_2 = msemenu
  L8_2 = GUI
  L8_2 = L8_2.CreateDisplayObjectEx
  L9_2 = "DebugMenu"
  L10_2 = "CDisplayObjectContainer"
  L11_2 = {}
  L11_2.Enabled = A2_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.DebugMenuRoot = L8_2
  L7_2 = msemenu
  L8_2 = GUI
  L8_2 = L8_2.CreateMenuComposition
  L9_2 = msemenu
  L9_2 = L9_2.DebugMenuRoot
  L10_2 = "Main"
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.DebugMenuMain = L8_2
  L7_2 = msemenu
  L8_2 = msemenu
  L8_2 = L8_2.DebugMenuMain
  L9_2 = L8_2
  L8_2 = L8_2.FindChild
  L10_2 = "ListComposition"
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.MenuList = L8_2
  L7_2 = msemenu
  L7_2 = L7_2.MenuList
  L8_2 = L7_2
  L7_2 = L7_2.SetEventHandler
  L9_2 = "Start"
  L10_2 = "msemenu.OnMenuEnabled"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = msemenu
  L7_2 = L7_2.MenuList
  L8_2 = L7_2
  L7_2 = L7_2.SetEventHandler
  L9_2 = "Activated"
  L10_2 = "msemenu.OnItemActivated"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = msemenu
  L7_2 = L7_2.MenuList
  L8_2 = L7_2
  L7_2 = L7_2.SetEventHandler
  L9_2 = "Cancel"
  L10_2 = "msemenu.OnItemCancel"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = msemenu
  L7_2 = L7_2.Update
  L8_2 = "items"
  L7_2(L8_2)
  L7_2 = msemenu
  L7_2 = L7_2.DebugMenuRoot
  return L7_2
end
L0_1.Create = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if A0_2 ~= nil then
    L2_2 = {}
    L3_2 = msemenu
    L3_2 = L3_2.GenerateEntityFunctionMsgEntry
    L4_2 = A0_2
    L5_2 = "DelMe"
    L3_2 = L3_2(L4_2, L5_2)
    L2_2._Delete = L3_2
    L3_2 = msemenu
    L3_2 = L3_2.GenerateEntityFunctionMsgEntry
    L4_2 = A0_2
    L5_2 = "ForceDead"
    L6_2 = true
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2._Kill = L3_2
    L1_2 = L2_2
    L2_2 = Game
    L2_2 = L2_2.GetActorComponents
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L3_2 = pairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = {}
        L9_2 = Game
        L9_2 = L9_2.GetActorComponentVariables
        L10_2 = A0_2
        L11_2 = L6_2
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = 0
        L11_2 = pairs
        L12_2 = L9_2
        L11_2, L12_2, L13_2 = L11_2(L12_2)
        for L14_2, L15_2 in L11_2, L12_2, L13_2 do
          L16_2 = msemenu
          L16_2 = L16_2.GenerateComponentVarEntry
          L17_2 = A0_2
          L18_2 = L6_2
          L19_2 = L14_2
          L20_2 = L15_2
          L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
          L8_2[L14_2] = L16_2
          L10_2 = L10_2 + 1
        end
        if 0 < L10_2 then
          L1_2[L6_2] = L8_2
        end
      end
    end
  end
  return L1_2
end
L0_1.CreateEntityMenu = L1_1
L0_1 = msemenu
L1_1 = {}
L2_1 = {}
L2_1.Name = "Players"
L3_1 = {}
L3_1.samus = true
L3_1.morphball = true
L2_1.Charclasses = L3_1
L3_1 = {}
L3_1.Name = "AIs"
L3_1.ComponentID = "AI"
L4_1 = {}
L4_1.Name = "Triggers"
L4_1.ComponentID = "TRIGGER"
L5_1 = {}
L5_1.Name = "SpawnGroups"
L5_1.ComponentID = "SPAWNGROUP"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L0_1.tEntitiesMenuCategories = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = Game
  L0_2 = L0_2.GetEntities
  L0_2 = L0_2()
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = msemenu
  L3_2 = L3_2.tEntitiesMenuCategories
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Name
    L8_2 = {}
    L1_2[L7_2] = L8_2
  end
  L2_2 = {}
  L1_2._NoCategory_ = L2_2
  L2_2 = pairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = msemenu
    L7_2 = L7_2.CreateEntityMenu
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L8_2 = false
      L9_2 = ipairs
      L10_2 = msemenu
      L10_2 = L10_2.tEntitiesMenuCategories
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = false
        L15_2 = L13_2.Charclasses
        if L15_2 ~= nil and L6_2 ~= nil then
          L15_2 = L13_2.Charclasses
          L15_2 = L15_2[L6_2]
          L14_2 = L15_2 == true
        end
        if not L14_2 then
          L15_2 = L13_2.ComponentID
          if L15_2 ~= nil then
            L15_2 = Game
            L15_2 = L15_2.HasEntityComponent
            L16_2 = L5_2
            L17_2 = L13_2.ComponentID
            L15_2 = L15_2(L16_2, L17_2)
            L14_2 = L15_2
          end
        end
        if L14_2 then
          L15_2 = L13_2.Name
          L15_2 = L1_2[L15_2]
          L15_2[L5_2] = L7_2
          L8_2 = true
          break
        end
      end
      if not L8_2 then
        L9_2 = L1_2._NoCategory_
        L9_2[L5_2] = L7_2
      end
    end
  end
  L2_2 = msemenu
  L2_2 = L2_2.items
  L2_2 = L2_2[" Debug"]
  L2_2.Entities = L1_2
end
L0_1.UpdateEntitiesMenu = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = Game
    L2_3 = L2_3.IsDroppedItemsAttractionEnabled
    L2_3 = L2_3()
    if L2_3 then
      L2_3 = Game
      L2_3 = L2_3.EnableDroppedItemsAttraction
      L3_3 = false
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.EnableDroppedItemsAttraction
      L3_3 = true
      L2_3(L3_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.IsDroppedItemsAttractionEnabled
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.EnableDroppedItemsAttraction = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    if A1_3 == "Right" then
      L2_3 = Game
      L2_3 = L2_3.SetDroppedItemAttractionAcceleration
      L3_3 = Game
      L3_3 = L3_3.GetDroppedItemAttractionAcceleration
      L3_3 = L3_3()
      L3_3 = L3_3 + 1
      L2_3(L3_3)
    else
      L2_3 = Game
      L2_3 = L2_3.SetDroppedItemAttractionAcceleration
      L3_3 = Game
      L3_3 = L3_3.GetDroppedItemAttractionAcceleration
      L3_3 = L3_3()
      L3_3 = L3_3 - 1
      L2_3(L3_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetDroppedItemAttractionAcceleration
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.ChangeDroppedItemAttractionAcceleration = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3
    if A1_3 == "Right" then
      L2_3 = Game
      L2_3 = L2_3.IncrementNavMeshGeneratorDebugBreakableTileIndex
      L2_3()
    else
      L2_3 = Game
      L2_3 = L2_3.DecrementNavMeshGeneratorDebugBreakableTileIndex
      L2_3()
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetNavMeshGeneratorDebugBreakableTileIndex
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.DebugBreakablePolyIndex = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3
    L2_3 = Game
    L2_3 = L2_3.SwitchSoundMode
    L2_3()
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetSoundMode
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.GenerateSwitchSoundMode = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = string
  L1_2 = L1_2.match
  L2_2 = A0_2
  L3_2 = "_(.*)"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.len
  L2_2 = L2_2(L3_2)
  if 2 <= L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.len
    L2_2 = L2_2(L3_2)
    L4_2 = L1_2
    L3_2 = L1_2.sub
    L5_2 = L2_2
    L6_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = L1_2
    L4_2 = L1_2.sub
    L6_2 = L2_2 - 1
    L7_2 = L2_2 - 1
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = tonumber
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if L5_2 == nil then
      L5_2 = tonumber
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 ~= nil then
        L6_2 = L1_2
        L5_2 = L1_2.sub
        L7_2 = 0
        L8_2 = L2_2 - 1
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L1_2 = L5_2
        L5_2 = utils
        L5_2 = L5_2.LOG
        L6_2 = utils
        L6_2 = L6_2.LOGTYPE_GUI
        L7_2 = "GetScenarioAreaName: Formatting name to "
        L8_2 = L1_2
        L7_2 = L7_2 .. L8_2
        L5_2(L6_2, L7_2)
      end
    end
    L5_2 = msemenu
    L5_2 = L5_2.aAreasLevels
    L5_2 = L5_2[L1_2]
    if L5_2 ~= nil then
      L5_2 = utils
      L5_2 = L5_2.LOG
      L6_2 = utils
      L6_2 = L6_2.LOGTYPE_GUI
      L7_2 = "GetScenarioAreaName: Changing name to "
      L8_2 = msemenu
      L8_2 = L8_2.aAreasLevels
      L8_2 = L8_2[L1_2]
      L7_2 = L7_2 .. L8_2
      L5_2(L6_2, L7_2)
      L5_2 = msemenu
      L5_2 = L5_2.aAreasLevels
      L1_2 = L5_2[L1_2]
    end
  end
  return L1_2
end
L0_1.GetScenarioAreaName = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= "table" then
    return A0_2
  end
  if A1_2 then
    L2_2 = A1_2[A0_2]
    if L2_2 then
      L2_2 = A1_2[A0_2]
      return L2_2
    end
  end
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = {}
  end
  L3_2 = setmetatable
  L4_2 = {}
  L5_2 = getmetatable
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L2_2[A0_2] = L3_2
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = msemenu
    L9_2 = L9_2.copytable
    L10_2 = L7_2
    L11_2 = L2_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = msemenu
    L10_2 = L10_2.copytable
    L11_2 = L8_2
    L12_2 = L2_2
    L10_2 = L10_2(L11_2, L12_2)
    L3_2[L9_2] = L10_2
  end
  return L3_2
end
L0_1.copytable = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = msemenu
    L8_2 = L8_2.copytable
    L9_2 = L7_2
    L10_2 = nil
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = nil
    L10_2 = pairs
    L11_2 = L1_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.ItemKey
      if L15_2 == L6_2 then
        L9_2 = L14_2
        break
      end
    end
    if L9_2 == nil then
      L10_2 = {}
      L10_2.ItemKey = L6_2
      L11_2 = {}
      L10_2.ItemContent = L11_2
      L9_2 = L10_2
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L1_2
      L12_2 = L2_2
      L13_2 = L9_2
      L10_2(L11_2, L12_2, L13_2)
      L2_2 = L2_2 + 1
    end
    L10_2 = ipairs
    L11_2 = L8_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2[1]
      L16_2 = L14_2[2]
      L17_2 = L14_2[4]
      L18_2 = #L17_2
      if 0 < L18_2 then
        L18_2 = ""
        L19_2 = ""
        L20_2 = ipairs
        L21_2 = L17_2
        L20_2, L21_2, L22_2 = L20_2(L21_2)
        for L23_2, L24_2 in L20_2, L21_2, L22_2 do
          L25_2 = L19_2
          L26_2 = L24_2
          L19_2 = L25_2 .. L26_2
        end
        L18_2 = L15_2
        L20_2 = {}
        L20_2.ItemKey = L18_2
        L21_2 = {}
        function L22_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
          L2_3 = false
          if A1_3 == "ActivationButton" then
            L3_3 = msemenu_debug_saves
            L4_3 = L16_2
            L3_3 = L3_3[L4_3]
            if L3_3 ~= nil then
              L4_3 = L15_2
              L4_3 = L3_3[L4_3]
              if L4_3 ~= nil then
                L2_3 = true
                L5_3 = utils
                L5_3 = L5_3.LOG
                L6_3 = utils
                L6_3 = L6_3.LOGTYPE_GUI
                L7_3 = "GenerateLoadEventItems: Loading Game from Save "
                L8_3 = L4_3
                L7_3 = L7_3 .. L8_3
                L5_3(L6_3, L7_3)
                L5_3 = Game
                L5_3 = L5_3.LoadGameFromAssets
                L6_3 = L4_3
                L5_3(L6_3)
              end
            end
            L4_3 = L14_2
            L4_3 = L4_3[3]
            L5_3 = type
            L6_3 = L4_3
            L5_3 = L5_3(L6_3)
            if L5_3 == "string" then
              L5_3 = Game
              L5_3 = L5_3.LoadGameFromAssets
              L6_3 = L4_3
              L5_3(L6_3)
            else
              if L2_3 == false then
                L5_3 = ScenarioMenu
                L5_3 = L5_3.LoadScenario
                L6_3 = L16_2
                L5_3(L6_3)
              end
              L5_3 = Game
              L5_3 = L5_3.AddPSF
              L6_3 = 0.2
              L7_3 = "Scenario.SetPlayerPosition"
              L8_3 = "fff"
              L9_3 = L4_3[1]
              L10_3 = L4_3[2]
              L11_3 = L4_3[3]
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
            end
          end
        end
        L21_2.OnDirActivated = L22_2
        function L22_2()
          local L0_3, L1_3
          L0_3 = L19_2
          return L0_3
        end
        L21_2.GetCurrentValue = L22_2
        L20_2.ItemContent = L21_2
        L21_2 = table
        L21_2 = L21_2.insert
        L22_2 = L9_2.ItemContent
        L23_2 = L13_2
        L24_2 = L20_2
        L21_2(L22_2, L23_2, L24_2)
      end
      L8_2 = nil
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    function L2_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L2_4 = ipairs
      L3_4 = A0_4
      L2_4, L3_4, L4_4 = L2_4(L3_4)
      for L5_4, L6_4 in L2_4, L3_4, L4_4 do
        if L6_4 == A1_4 then
          return L5_4
        end
      end
      L2_4 = -1
      return L2_4
    end
    find = L2_3
    L2_3 = find
    L3_3 = msemenu
    L3_3 = L3_3.aAreasPresavedGames
    L4_3 = A0_3.ItemKey
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = find
    L4_3 = msemenu
    L4_3 = L4_3.aAreasPresavedGames
    L5_3 = A1_3.ItemKey
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  L3_2(L4_2, L5_2)
  return L1_2
end
L0_1.GenerateLoadEventItems = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.ToggleFixedStepTime
    L0_3()
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetFixedStepTime
    L0_3 = L0_3()
    if L0_3 then
      L1_3 = "ENABLED"
      return L1_3
    else
      L1_3 = "DISABLED"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchFixedSlotTime = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.SetPostprocessEnabled
    L1_3 = Game
    L1_3 = L1_3.GetPostprocessEnabled
    L1_3 = L1_3()
    L1_3 = not L1_3
    L0_3(L1_3)
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPostprocessEnabled
    L0_3 = L0_3()
    if L0_3 then
      L1_3 = "ENABLED"
      return L1_3
    else
      L1_3 = "DISABLED"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchPostprocessEnabled = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = Game
    L2_3 = L2_3.GetCrazyDropFactor
    L2_3 = L2_3()
    if A1_3 == "ActivationButton" or A1_3 == "Right" then
      L2_3 = L2_3 + 1
      if 2 < L2_3 then
        L2_3 = 0
      end
    else
      L2_3 = L2_3 - 1
      if L2_3 < 0 then
        L2_3 = 2
      end
    end
    L3_3 = Game
    L3_3 = L3_3.SetCrazyDropFactor
    L4_3 = L2_3
    L3_3(L4_3)
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetCrazyDropFactor
    L0_3 = L0_3()
    if L0_3 == 0 then
      L1_3 = "DEFAULT"
      return L1_3
    elseif L0_3 == 1 then
      L1_3 = "LESS"
      return L1_3
    elseif L0_3 == 2 then
      L1_3 = "NONE"
      return L1_3
    else
      L1_3 = "ERROR"
      return L1_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchCrazyDropFactor = L1_1
L0_1 = msemenu
L1_1 = {}
function L2_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetCurrentLanguage
  L1_2 = "ENGLISH"
  L0_2(L1_2)
end
L1_1.English = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetCurrentLanguage
  L1_2 = "SPANISH"
  L0_2(L1_2)
end
L1_1.Spanish = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetCurrentLanguage
  L1_2 = "GERMAN"
  L0_2(L1_2)
end
L1_1.German = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetCurrentLanguage
  L1_2 = "FRENCH"
  L0_2(L1_2)
end
L1_1.French = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetCurrentLanguage
  L1_2 = "DUTCH"
  L0_2(L1_2)
end
L1_1.Dutch = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetCurrentLanguage
  L1_2 = "ITALIAN"
  L0_2(L1_2)
end
L1_1.Italian = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetCurrentLanguage
  L1_2 = "JAPANESE"
  L0_2(L1_2)
end
L1_1.Japanese = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetCurrentLanguage
  L1_2 = "KOREAN"
  L0_2(L1_2)
end
L1_1.Korean = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetCurrentLanguage
  L1_2 = "CHINESE"
  L0_2(L1_2)
end
L1_1.Chinese = L2_1
L0_1.tGenerateLanguageSelectItems = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = msemenu
  L0_2 = L0_2.tGenerateLanguageSelectItems
  return L0_2
end
L0_1.GenerateLanguageSelectItems = L1_1
L0_1 = msemenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = Game
      L0_3 = L0_3.AddSF
      L1_3 = 0.1
      L2_3 = "utils.GeneratePopupUntilSuccess"
      L3_3 = "s"
      L4_3 = L6_2
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L1_2[L6_2] = L7_2
  end
  return L1_2
end
L0_1.GeneratePopups = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetSetFrontByPass
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = "Enabled"
      return L0_3
    else
      L0_3 = "Disabled"
      return L0_3
    end
  end
  L0_2.GetCurrentValue = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetSetFrontByPass
    L1_3 = Game
    L1_3 = L1_3.GetSetFrontByPass
    L1_3 = L1_3()
    L1_3 = not L1_3
    L0_3(L1_3)
  end
  L0_2.OnDirActivated = L1_2
  return L0_2
end
L0_1.GenerateSwitchFrontByPass = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = {}
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = Game
    L2_3 = L2_3.GetSetSurroundPan
    L2_3 = L2_3()
    if A1_3 == "Right" then
      L3_3 = L2_3.LR
      L3_3 = L3_3 + 0.05
      L2_3.LR = L3_3
    elseif A1_3 == "Left" then
      L3_3 = L2_3.LR
      L3_3 = L3_3 - 0.05
      L2_3.LR = L3_3
    end
    L3_3 = Game
    L3_3 = L3_3.GetSetSurroundPan
    L4_3 = L2_3.LR
    L5_3 = L2_3.LF
    L6_3 = L2_3.RR
    L7_3 = L2_3.RF
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L1_2.OnDirActivated = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetSetSurroundPan
    L0_3 = L0_3()
    L1_3 = L0_3.LR
    return L1_3
  end
  L1_2.GetCurrentValue = L2_2
  L0_2.LeftRear = L1_2
  L1_2 = {}
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = Game
    L2_3 = L2_3.GetSetSurroundPan
    L2_3 = L2_3()
    if A1_3 == "Right" then
      L3_3 = L2_3.RR
      L3_3 = L3_3 + 0.05
      L2_3.RR = L3_3
    elseif A1_3 == "Left" then
      L3_3 = L2_3.RR
      L3_3 = L3_3 - 0.05
      L2_3.RR = L3_3
    end
    L3_3 = Game
    L3_3 = L3_3.GetSetSurroundPan
    L4_3 = L2_3.LR
    L5_3 = L2_3.LF
    L6_3 = L2_3.RR
    L7_3 = L2_3.RF
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L1_2.OnDirActivated = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetSetSurroundPan
    L0_3 = L0_3()
    L1_3 = L0_3.RR
    return L1_3
  end
  L1_2.GetCurrentValue = L2_2
  L0_2.RightRear = L1_2
  L1_2 = {}
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = Game
    L2_3 = L2_3.GetSetSurroundPan
    L2_3 = L2_3()
    if A1_3 == "Right" then
      L3_3 = L2_3.LF
      L3_3 = L3_3 + 0.05
      L2_3.LF = L3_3
    elseif A1_3 == "Left" then
      L3_3 = L2_3.LF
      L3_3 = L3_3 - 0.05
      L2_3.LF = L3_3
    end
    L3_3 = Game
    L3_3 = L3_3.GetSetSurroundPan
    L4_3 = L2_3.LR
    L5_3 = L2_3.LF
    L6_3 = L2_3.RR
    L7_3 = L2_3.RF
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L1_2.OnDirActivated = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetSetSurroundPan
    L0_3 = L0_3()
    L1_3 = L0_3.LF
    return L1_3
  end
  L1_2.GetCurrentValue = L2_2
  L0_2.LeftFront = L1_2
  L1_2 = {}
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = Game
    L2_3 = L2_3.GetSetSurroundPan
    L2_3 = L2_3()
    if A1_3 == "Right" then
      L3_3 = L2_3.RF
      L3_3 = L3_3 + 0.05
      L2_3.RF = L3_3
    elseif A1_3 == "Left" then
      L3_3 = L2_3.RF
      L3_3 = L3_3 - 0.05
      L2_3.RF = L3_3
    end
    L3_3 = Game
    L3_3 = L3_3.GetSetSurroundPan
    L4_3 = L2_3.LR
    L5_3 = L2_3.LF
    L6_3 = L2_3.RR
    L7_3 = L2_3.RF
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L1_2.OnDirActivated = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetSetSurroundPan
    L0_3 = L0_3()
    L1_3 = L0_3.RF
    return L1_3
  end
  L1_2.GetCurrentValue = L2_2
  L0_2.RightFront = L1_2
  return L0_2
end
L0_1.GenerateSetMixValues = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L3_2 = "."
  L4_2 = A1_2
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = print
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = Game
  L3_2 = L3_2.GetTunables
  L3_2 = L3_2()
  L4_2 = nil
  L5_2 = string
  L5_2 = L5_2.gmatch
  L6_2 = L2_2
  L7_2 = "[A-z|0-9]+"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  for L8_2 in L5_2, L6_2, L7_2 do
    if L4_2 ~= nil then
      L3_2 = L3_2[L4_2]
    end
    L4_2 = L8_2
  end
  L5_2 = {}
  L5_2.category = L3_2
  L5_2.property = L4_2
  return L5_2
end
L0_1.GetTunableData = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = {}
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A2_2
    L3_3 = msemenu
    L3_3 = L3_3.GetTunableData
    L4_3 = A0_2
    L5_3 = A1_2
    L3_3 = L3_3(L4_3, L5_3)
    if A1_3 == "Right" then
      L4_3 = L3_3.category
      L5_3 = L3_3.property
      L4_3 = L4_3[L5_3]
      L2_3 = L4_3 + 1
    else
      L4_3 = L3_3.category
      L5_3 = L3_3.property
      L4_3 = L4_3[L5_3]
      L2_3 = L4_3 - 1
    end
    L4_3 = A3_2
    if L2_3 > L4_3 then
      L2_3 = A2_2
    else
      L4_3 = A2_2
      if L2_3 < L4_3 then
        L2_3 = A3_2
      end
    end
    L4_3 = L3_3.category
    L5_3 = L3_3.property
    L4_3[L5_3] = L2_3
  end
  L5_2.OnDirActivated = L6_2
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = msemenu
    L0_3 = L0_3.GetTunableData
    L1_3 = A0_2
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L0_3.category
    L2_3 = L0_3.property
    L1_3 = L1_3[L2_3]
    L2_3 = print
    L3_3 = L1_3
    L2_3(L3_3)
    L2_3 = A2_2
    L2_3 = 1 - L2_3
    L1_3 = L1_3 + L2_3
    L2_3 = A4_2
    L2_3 = L2_3[L1_3]
    return L2_3
  end
  L5_2.GetCurrentValue = L6_2
  L5_2.sCategoryId = A0_2
  L5_2.sPropertyId = A1_2
  return L5_2
end
L0_1.GenerateTunableModePropertyEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = {}
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A2_2
    L3_3 = Game
    L3_3 = L3_3.IsDebugPadButtonPressed
    L4_3 = "L1"
    L3_3 = L3_3(L4_3)
    if L3_3 then
      L3_3 = A4_2
      L3_3 = L3_3 / 10
      fIncrement = L3_3
    else
      L3_3 = Game
      L3_3 = L3_3.IsDebugPadButtonPressed
      L4_3 = "R1"
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = A4_2
        L3_3 = L3_3 * 10
        fIncrement = L3_3
      else
        L3_3 = A4_2
        fIncrement = L3_3
      end
    end
    L3_3 = msemenu
    L3_3 = L3_3.GetTunableData
    L4_3 = A0_2
    L5_3 = A1_2
    L3_3 = L3_3(L4_3, L5_3)
    if A1_3 == "Right" then
      L4_3 = L3_3.category
      L5_3 = L3_3.property
      L4_3 = L4_3[L5_3]
      L5_3 = fIncrement
      L2_3 = L4_3 + L5_3
    else
      L4_3 = L3_3.category
      L5_3 = L3_3.property
      L4_3 = L4_3[L5_3]
      L5_3 = fIncrement
      L2_3 = L4_3 - L5_3
    end
    L4_3 = A3_2
    if L2_3 > L4_3 then
      L2_3 = A3_2
    else
      L4_3 = A2_2
      if L2_3 < L4_3 then
        L2_3 = A2_2
      end
    end
    L4_3 = L3_3.category
    L5_3 = L3_3.property
    L4_3[L5_3] = L2_3
  end
  L5_2.OnDirActivated = L6_2
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = msemenu
    L0_3 = L0_3.GetTunableData
    L1_3 = A0_2
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L0_3.category
    L2_3 = L0_3.property
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  L5_2.GetCurrentValue = L6_2
  L5_2.sCategoryId = A0_2
  L5_2.sPropertyId = A1_2
  return L5_2
end
L0_1.GenerateTunableNumberPropertyEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = msemenu
    L2_3 = L2_3.GetTunableData
    L3_3 = A0_2
    L4_3 = A1_2
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L2_3.category
    L4_3 = L2_3.property
    L5_3 = L2_3.category
    L6_3 = L2_3.property
    L5_3 = L5_3[L6_3]
    L5_3 = not L5_3
    L3_3[L4_3] = L5_3
  end
  L2_2.OnDirActivated = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = msemenu
    L0_3 = L0_3.GetTunableData
    L1_3 = A0_2
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L0_3.category
    L2_3 = L0_3.property
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = "ENABLED"
      if L1_3 then
        goto lbl_15
      end
    end
    L1_3 = "DISABLED"
    ::lbl_15::
    return L1_3
  end
  L2_2.GetCurrentValue = L3_2
  L2_2.sCategoryId = A0_2
  L2_2.sPropertyId = A1_2
  return L2_2
end
L0_1.GenerateTunableBoolPropertyEntry = L1_1
L0_1 = msemenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= nil then
      L8_2 = L7_2.ItemKey
      if L8_2 ~= nil then
        L8_2 = L7_2.ItemKey
        if L8_2 == A1_2 then
          L8_2 = L7_2.ItemContent
          if L8_2 ~= nil then
            L2_2 = L7_2.ItemContent
            break
          end
        end
      end
    end
  end
  if L2_2 == nil then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2
    L5_2 = {}
    L5_2.ItemKey = A1_2
    L6_2 = {}
    L5_2.ItemContent = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = ipairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if L7_2 ~= nil then
        L8_2 = L7_2.ItemKey
        if L8_2 ~= nil then
          L8_2 = L7_2.ItemKey
          if L8_2 == A1_2 then
            L8_2 = L7_2.ItemContent
            if L8_2 ~= nil then
              L2_2 = L7_2.ItemContent
              break
            end
          end
        end
      end
    end
  end
  return L2_2
end
L0_1.FindItemContent = L1_1
L0_1 = msemenu
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPerformanceInfoEnabled
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = Game
      L0_3 = L0_3.SetPerformanceInfoEnabled
      L1_3 = false
      L0_3(L1_3)
    else
      L0_3 = Game
      L0_3 = L0_3.SetPerformanceInfoEnabled
      L1_3 = true
      L0_3(L1_3)
    end
  end
  L0_2.OnDirActivated = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.GetPerformanceInfoEnabled
    return L0_3()
  end
  L0_2.GetCurrentValue = L1_2
  return L0_2
end
L0_1.SwitchPerformanceInfoEnabled = L1_1
