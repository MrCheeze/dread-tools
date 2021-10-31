-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/utils.lc.local 

-- params : ...
-- function num : 0
if not utils then
  utils = {}
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_DEFAULT = 1
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_AI = 2
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_LUA = 3
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_GUI = 4
  -- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_SOUND = 5
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_EDITOR = 6
  -- DECOMPILER ERROR at PC18: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_LOGIC = 7
  -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_ANIMS = 8
  -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_FX = 9
  -- DECOMPILER ERROR at PC24: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOGTYPE_MEM = 10
  -- DECOMPILER ERROR at PC27: Confused about usage of register: R0 in 'UnsetPending'

  utils.CreateNElemsArray = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = {}
  for l_1_6 = 1, l_1_1 do
    l_1_2[l_1_6] = l_1_0
  end
  return l_1_2
end

  -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

  utils.DeepCopy = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (type(l_2_0))
  local l_2_2 = nil
  if l_2_1 == "table" then
    l_2_2 = {}
    for l_2_6,l_2_7 in next do
      local l_2_8 = (utils.DeepCopy)(l_2_6)
      l_2_2[l_2_8] = (utils.DeepCopy)(l_2_7)
    end
    setmetatable(l_2_2, (utils.DeepCopy)(getmetatable(l_2_0)))
  else
    l_2_2 = l_2_0
  end
  return l_2_2
end

  -- DECOMPILER ERROR at PC33: Confused about usage of register: R0 in 'UnsetPending'

  utils.Merge = function(l_3_0, l_3_1)
  -- function num : 0_2
  local l_3_2 = {}
  for l_3_6,l_3_7 in pairs(l_3_0) do
    l_3_2[l_3_6] = l_3_7
  end
  for l_3_11,l_3_12 in pairs(l_3_1) do
    l_3_2[l_3_11] = l_3_12
  end
  return l_3_2
end

  -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

  utils.GetArrayIndexByID = function(l_4_0, l_4_1)
  -- function num : 0_3
  for l_4_5,l_4_6 in ipairs(l_4_0) do
    if l_4_6.sID == l_4_1 then
      return l_4_5
    end
  end
  return -1
end

  -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

  utils.Split = function(l_5_0, l_5_1)
  -- function num : 0_4
  if l_5_1 == nil then
    l_5_1 = "%s+"
  end
  local l_5_2 = {}
  for l_5_6 in (string.gmatch)(l_5_0, "([^" .. l_5_1 .. "]+)") do
    (table.insert)(l_5_2, l_5_6)
  end
  return l_5_2
end

  -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOG = function(l_6_0, l_6_1)
  -- function num : 0_5
  if Init.DEBUG then
    (Game.Log)(l_6_0, l_6_1)
  end
end

  -- DECOMPILER ERROR at PC45: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOG_WARN = function(l_7_0, l_7_1)
  -- function num : 0_6
  if Init.DEBUG then
    (Game.LogWarn)(l_7_0, l_7_1)
  end
end

  -- DECOMPILER ERROR at PC48: Confused about usage of register: R0 in 'UnsetPending'

  utils.LOG_ERR = function(l_8_0, l_8_1)
  -- function num : 0_7
  if Init.DEBUG then
    (Game.LogError)(l_8_0, l_8_1)
  end
end

  -- DECOMPILER ERROR at PC51: Confused about usage of register: R0 in 'UnsetPending'

  utils.GeneratePopupUntilSuccess = function(l_9_0)
  -- function num : 0_8
  if not (GUI.MainMenuShowPopUp)(l_9_0) then
    (Game.AddSF)(0.10000000149012, "utils.GeneratePopupUntilSuccess", "s", l_9_0)
  end
end

end

