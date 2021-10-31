-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/slots.lc.local 

-- params : ...
-- function num : 0
if slots == nil or not slots then
  slots = {}
  -- DECOMPILER ERROR at PC9: Confused about usage of register: R0 in 'UnsetPending'

  slots.bDirty = true
  -- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

  slots.tRetrieveInfoRequest = nil
  local l_0_0 = slots
  local l_0_1 = {}
  local l_0_2 = {}
  l_0_2.sID = "SLOT1"
  l_0_2.uSlotIdx = 4
  l_0_2.sName = "#GUI_MISC023# 1"
  l_0_2.sProfile = "profile0"
  l_0_1.SLOT1 = l_0_2
  l_0_0.tSlotDefs = l_0_1
  l_0_0 = slots
  l_0_2 = {iState = 0, bSlotEnabled = false, sSlotDesc = ""}
  l_0_0.tSlotInfo, l_0_1 = l_0_1, {SLOT1 = l_0_2}
  l_0_0 = slots
  l_0_0.tInfoPendingRequest = nil
  l_0_0 = slots
  l_0_1 = function()
  -- function num : 0_0
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R0 in 'UnsetPending'

  slots.bDirty = true
end

  l_0_0.SetAllDirty = l_0_1
  l_0_0 = slots
  l_0_1 = function()
  -- function num : 0_1
  return slots.bDirty
end

  l_0_0.IsAnyDirty = l_0_1
  l_0_0 = slots
  l_0_1 = function(l_3_0)
  -- function num : 0_2
  local l_3_1, l_3_7 = nil
  for l_3_5,l_3_6 in pairs(slots.tSlotDefs) do
    local l_3_2 = nil
    -- DECOMPILER ERROR at PC5: Confused about usage of register: R6 in 'UnsetPending'

    if R6_PC5.sProfile == l_3_0 then
      l_3_2 = l_3_6
      break
    end
  end
  do
    -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

    return l_3_2
  end
end

  l_0_0.GetSlotIDByProfileID = l_0_1
  l_0_0 = slots
  l_0_1 = function(l_4_0)
  -- function num : 0_3
  return (slots.tSlotInfo)[(slots.GetSlotIDByProfileID)(l_4_0)]
end

  l_0_0.GetSlotInfoByProfileID = l_0_1
  l_0_0 = slots
  l_0_1 = function(l_5_0)
  -- function num : 0_4
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R1 in 'UnsetPending'

  slots.bDirty = true
end

  l_0_0.SetDirtyByProfileID = l_0_1
  l_0_0 = slots
  l_0_1 = function(l_6_0)
  -- function num : 0_5
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R1 in 'UnsetPending'

  slots.bDirty = true
end

  l_0_0.SetDirty = l_0_1
  l_0_0 = slots
  l_0_1 = function(l_7_0)
  -- function num : 0_6
  local l_7_1, l_7_7 = nil
  for l_7_5,l_7_6 in pairs(slots.tSlotDefs) do
    local l_7_2 = nil
    -- DECOMPILER ERROR at PC5: Confused about usage of register: R6 in 'UnsetPending'

    if l_7_0 == R6_PC5.sName then
      l_7_2 = R6_PC5
      break
    end
  end
  do
    -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

    return l_7_2
  end
end

  l_0_0.GetSlotDefByName = l_0_1
  l_0_0 = slots
  l_0_1 = function(l_8_0)
  -- function num : 0_7
  if slots.bDirty then
    if slots.tRetrieveInfoRequest == nil then
      local l_8_1 = slots
      local l_8_2 = {}
      l_8_2.fnOnResultCallback = l_8_0
      l_8_1.tRetrieveInfoRequest = l_8_2
      l_8_1 = Game
      l_8_1 = l_8_1.RetrieveSlotsInfo
      l_8_2 = l_8_0
      l_8_1(l_8_2)
    else
      do
        ;
        (utils.LOG_ERR)(utils.LOGTYPE_DEFAULT, "slots.RetrieveSlotsInfo. Another request is in progress")
        l_8_0()
      end
    end
  end
end

  l_0_0.RetrieveSlotsInfo = l_0_1
  l_0_0 = slots
  l_0_1 = function(l_9_0)
  -- function num : 0_8
  for l_9_4,l_9_5 in pairs(slots.tSlotInfo) do
    l_9_5.bSlotEnabled = false
    l_9_5.sSlotDesc = "#GUI_MISC025#   "
    l_9_5.iState = 1
  end
  if l_9_0 then
    (slots.UpdateSlotFromProps)(l_9_0)
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R1 in 'UnsetPending'

  slots.bDirty = false
  if slots.tRetrieveInfoRequest ~= nil then
    if (slots.tRetrieveInfoRequest).fnOnResultCallback ~= nil then
      ((slots.tRetrieveInfoRequest).fnOnResultCallback)()
    end
    -- DECOMPILER ERROR at PC32: Confused about usage of register: R1 in 'UnsetPending'

    slots.tRetrieveInfoRequest = nil
  end
end

  l_0_0.OnRetrieveSlotsInfoFinished = l_0_1
  l_0_0 = slots
  l_0_1 = function(l_10_0)
  -- function num : 0_9
  if slots.bDirty then
    (utils.LOG_ERR)(utils.LOGTYPE_DEFAULT, "Retrieving dirty slot info")
  end
  return (slots.tSlotInfo)[l_10_0]
end

  l_0_0.GetSlotInfo = l_0_1
  l_0_0 = slots
  l_0_1 = function(l_11_0)
  -- function num : 0_10
  if l_11_0.ProfileID ~= nil then
    local l_11_1 = (slots.GetSlotInfoByProfileID)(l_11_0.ProfileID)
    l_11_1.bSlotEnabled = true
    if l_11_0.ValidData then
      l_11_1.iState = 0
      l_11_1.sSlotDesc = l_11_0.Description
    else
      l_11_1.iState = 2
      l_11_1.sSlotDesc = "#GUI_ERROR_CORRUPTEDDATA"
    end
  end
end

  l_0_0.UpdateSlotFromProps = l_0_1
end

