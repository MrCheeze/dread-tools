local L0_1, L1_1
L0_1 = LogicActionTrigger
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = LogicActionTrigger
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.SetWantsEnabled
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
end
L0_1.Enable = L1_1
L0_1 = LogicActionTrigger
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.SetWantsEnabled
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end
L0_1.Disable = L1_1
