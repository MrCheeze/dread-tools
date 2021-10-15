local L0_1, L1_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/cinematics_items.lua"
L0_1(L1_1)
L0_1 = cinematics
if L0_1 ~= nil then
  L0_1 = cinematics
  if L0_1 then
    goto lbl_12
  end
end
L0_1 = {}
::lbl_12::
cinematics = L0_1
L0_1 = cinematics
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    L2_2 = cinematics
    L2_2 = L2_2.GetCinematicDefFromPath
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L3_2 = cinematics
      L3_2 = L3_2.SetCinematicUnlocked
      L4_2 = L2_2.sCutscene
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.OnCutsceneStarted = L1_1
L0_1 = cinematics
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = string
  L2_2 = L2_2.match
  L3_2 = A0_2
  L4_2 = "/(.-)/"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = utils
  L3_2 = L3_2.LOG
  L4_2 = utils
  L4_2 = L4_2.LOGTYPE_DEFAULT
  L5_2 = "Searching cinematic "
  L6_2 = L2_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = cinematics_items
  L4_2 = L4_2.tDefs
  L4_2 = L4_2.tGeneral
  L4_2 = L4_2.aItems
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.sCutscene
    if L8_2 == L2_2 then
      L1_2 = L7_2
      break
    end
  end
  return L1_2
end
L0_1.GetCinematicDefFromPath = L1_1
L0_1 = cinematics
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = cinematics
  L2_2 = L2_2.IsCinematicUnlocked
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Blackboard
  L3_2 = L3_2.SetProp
  L4_2 = "CINEMATICS"
  L5_2 = A0_2
  L6_2 = "b"
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.SetCinematicUnlocked = L1_1
L0_1 = cinematics
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L1_2 = ipairs
  L2_2 = cinematics_items
  L2_2 = L2_2.tDefs
  L2_2 = L2_2.tGeneral
  L2_2 = L2_2.aItems
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = cinematics
    L6_2 = L6_2.IsCinematicUnlocked
    L7_2 = L5_2.sCutscene
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L0_2 = true
      break
    end
  end
  return L0_2
end
L0_1.HasAnyUnlockedCinematic = L1_1
L0_1 = cinematics
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L1_2 = ipairs
  L2_2 = cinematics_items
  L2_2 = L2_2.tDefs
  L2_2 = L2_2.tGeneral
  L2_2 = L2_2.aItems
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = cinematics
    L6_2 = L6_2.IsCinematicNew
    L7_2 = L5_2.sCutscene
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L0_2 = true
      break
    end
  end
  return L0_2
end
L0_1.HasAnyNewUnlockedCinematic = L1_1
L0_1 = cinematics
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = cinematics
  L1_2 = L1_2.IsCinematicUnlocked
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = ProfileBlackboard
    L1_2 = L1_2.GetProp
    L2_2 = "CINEMATICS"
    L3_2 = A0_2
    L4_2 = "_NEW"
    L3_2 = L3_2 .. L4_2
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2 ~= false
  end
  return L1_2
end
L0_1.IsCinematicNew = L1_1
L0_1 = cinematics
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = "GAME"
  L3_2 = "I_AM_A_CHEATER"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = "CINEMATICS"
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2 == true
  return L1_2
end
L0_1.IsCinematicUnlocked = L1_1
