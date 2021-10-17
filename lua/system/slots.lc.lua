local L0_1, L1_1, L2_1
L0_1 = slots
if L0_1 ~= nil then
  L0_1 = slots
  if L0_1 then
    goto lbl_8
  end
end
L0_1 = {}
::lbl_8::
slots = L0_1
L0_1 = slots
L0_1.bDirty = true
L0_1 = slots
L0_1.tRetrieveInfoRequest = nil
L0_1 = slots
L1_1 = {}
L2_1 = {}
L2_1.sID = "SLOT1"
L2_1.uSlotIdx = 4
L2_1.sName = "#GUI_MISC023# 1"
L2_1.sProfile = "profile0"
L1_1.SLOT1 = L2_1
L0_1.tSlotDefs = L1_1
L0_1 = slots
L1_1 = {}
L2_1 = {}
L2_1.iState = 0
L2_1.bSlotEnabled = false
L2_1.sSlotDesc = ""
L1_1.SLOT1 = L2_1
L0_1.tSlotInfo = L1_1
L0_1 = slots
L0_1.tInfoPendingRequest = nil
L0_1 = slots
function L1_1()
  local L0_2, L1_2
  L0_2 = slots
  L0_2.bDirty = true
end
L0_1.SetAllDirty = L1_1
L0_1 = slots
function L1_1()
  local L0_2, L1_2
  L0_2 = slots
  L0_2 = L0_2.bDirty
  return L0_2
end
L0_1.IsAnyDirty = L1_1
L0_1 = slots
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = slots
  L3_2 = L3_2.tSlotDefs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.sProfile
    if L7_2 == A0_2 then
      L1_2 = L5_2
      break
    end
  end
  return L1_2
end
L0_1.GetSlotIDByProfileID = L1_1
L0_1 = slots
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = slots
  L1_2 = L1_2.GetSlotIDByProfileID
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = slots
  L2_2 = L2_2.tSlotInfo
  L2_2 = L2_2[L1_2]
  return L2_2
end
L0_1.GetSlotInfoByProfileID = L1_1
L0_1 = slots
function L1_1(A0_2)
  local L1_2
  L1_2 = slots
  L1_2.bDirty = true
end
L0_1.SetDirtyByProfileID = L1_1
L0_1 = slots
function L1_1(A0_2)
  local L1_2
  L1_2 = slots
  L1_2.bDirty = true
end
L0_1.SetDirty = L1_1
L0_1 = slots
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = slots
  L3_2 = L3_2.tSlotDefs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.sName
    if A0_2 == L7_2 then
      L1_2 = L6_2
      break
    end
  end
  return L1_2
end
L0_1.GetSlotDefByName = L1_1
L0_1 = slots
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = slots
  L1_2 = L1_2.bDirty
  if L1_2 then
    L1_2 = slots
    L1_2 = L1_2.tRetrieveInfoRequest
    if L1_2 == nil then
      L1_2 = slots
      L2_2 = {}
      L2_2.fnOnResultCallback = A0_2
      L1_2.tRetrieveInfoRequest = L2_2
      L1_2 = Game
      L1_2 = L1_2.RetrieveSlotsInfo
      L2_2 = A0_2
      L1_2(L2_2)
    else
      L1_2 = utils
      L1_2 = L1_2.LOG_ERR
      L2_2 = utils
      L2_2 = L2_2.LOGTYPE_DEFAULT
      L3_2 = "slots.RetrieveSlotsInfo. Another request is in progress"
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2
    L1_2()
  end
end
L0_1.RetrieveSlotsInfo = L1_1
L0_1 = slots
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = slots
  L2_2 = L2_2.tSlotInfo
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L5_2.bSlotEnabled = false
    L5_2.sSlotDesc = "#GUI_MISC025#   "
    L5_2.iState = 1
  end
  if A0_2 then
    L1_2 = slots
    L1_2 = L1_2.UpdateSlotFromProps
    L2_2 = A0_2
    L1_2(L2_2)
  end
  L1_2 = slots
  L1_2.bDirty = false
  L1_2 = slots
  L1_2 = L1_2.tRetrieveInfoRequest
  if L1_2 ~= nil then
    L1_2 = slots
    L1_2 = L1_2.tRetrieveInfoRequest
    L1_2 = L1_2.fnOnResultCallback
    if L1_2 ~= nil then
      L1_2 = slots
      L1_2 = L1_2.tRetrieveInfoRequest
      L1_2 = L1_2.fnOnResultCallback
      L1_2()
    end
    L1_2 = slots
    L1_2.tRetrieveInfoRequest = nil
  end
end
L0_1.OnRetrieveSlotsInfoFinished = L1_1
L0_1 = slots
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = slots
  L1_2 = L1_2.bDirty
  if L1_2 then
    L1_2 = utils
    L1_2 = L1_2.LOG_ERR
    L2_2 = utils
    L2_2 = L2_2.LOGTYPE_DEFAULT
    L3_2 = "Retrieving dirty slot info"
    L1_2(L2_2, L3_2)
  end
  L1_2 = slots
  L1_2 = L1_2.tSlotInfo
  L1_2 = L1_2[A0_2]
  return L1_2
end
L0_1.GetSlotInfo = L1_1
L0_1 = slots
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.ProfileID
  if L1_2 ~= nil then
    L1_2 = slots
    L1_2 = L1_2.GetSlotInfoByProfileID
    L2_2 = A0_2.ProfileID
    L1_2 = L1_2(L2_2)
    L1_2.bSlotEnabled = true
    L2_2 = A0_2.ValidData
    if L2_2 then
      L1_2.iState = 0
      L2_2 = A0_2.Description
      L1_2.sSlotDesc = L2_2
    else
      L1_2.iState = 2
      L1_2.sSlotDesc = "#GUI_ERROR_CORRUPTEDDATA"
    end
  end
end
L0_1.UpdateSlotFromProps = L1_1
