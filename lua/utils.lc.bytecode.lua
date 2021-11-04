local L0_1, L1_1
L0_1 = utils
if not L0_1 then
  L0_1 = {}
end
utils = L0_1
L0_1 = utils
L0_1.LOGTYPE_DEFAULT = 1
L0_1 = utils
L0_1.LOGTYPE_AI = 2
L0_1 = utils
L0_1.LOGTYPE_LUA = 3
L0_1 = utils
L0_1.LOGTYPE_GUI = 4
L0_1 = utils
L0_1.LOGTYPE_SOUND = 5
L0_1 = utils
L0_1.LOGTYPE_EDITOR = 6
L0_1 = utils
L0_1.LOGTYPE_LOGIC = 7
L0_1 = utils
L0_1.LOGTYPE_ANIMS = 8
L0_1 = utils
L0_1.LOGTYPE_FX = 9
L0_1 = utils
L0_1.LOGTYPE_MEM = 10
L0_1 = utils
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L2_2[L6_2] = A0_2
  end
  return L2_2
end
L0_1.CreateNElemsArray = L1_1
L0_1 = utils
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if L1_2 == "table" then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = next
    L4_2 = A0_2
    L5_2 = nil
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = utils
      L8_2 = L8_2.DeepCopy
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = utils
      L9_2 = L9_2.DeepCopy
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L2_2[L8_2] = L9_2
    end
    L3_2 = setmetatable
    L4_2 = L2_2
    L5_2 = utils
    L5_2 = L5_2.DeepCopy
    L6_2 = getmetatable
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L2_2 = A0_2
  end
  return L2_2
end
L0_1.DeepCopy = L1_1
L0_1 = utils
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2[L6_2] = L7_2
  end
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2[L6_2] = L7_2
  end
  return L2_2
end
L0_1.Merge = L1_1
L0_1 = utils
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.sID
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = -1
  return L2_2
end
L0_1.GetArrayIndexByID = L1_1
L0_1 = utils
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    A1_2 = "%s+"
  end
  L2_2 = {}
  L3_2 = string
  L3_2 = L3_2.gmatch
  L4_2 = A0_2
  L5_2 = "([^"
  L6_2 = A1_2
  L7_2 = "]+)"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  for L6_2 in L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L2_2
end
L0_1.Split = L1_1
L0_1 = utils
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Init
  L2_2 = L2_2.DEBUG
  if L2_2 then
    L2_2 = Game
    L2_2 = L2_2.Log
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.LOG = L1_1
L0_1 = utils
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Init
  L2_2 = L2_2.DEBUG
  if L2_2 then
    L2_2 = Game
    L2_2 = L2_2.LogWarn
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.LOG_WARN = L1_1
L0_1 = utils
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Init
  L2_2 = L2_2.DEBUG
  if L2_2 then
    L2_2 = Game
    L2_2 = L2_2.LogError
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.LOG_ERR = L1_1
L0_1 = utils
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GUI
  L1_2 = L1_2.MainMenuShowPopUp
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = Game
    L1_2 = L1_2.AddSF
    L2_2 = 0.1
    L3_2 = "utils.GeneratePopupUntilSuccess"
    L4_2 = "s"
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1.GeneratePopupUntilSuccess = L1_1
