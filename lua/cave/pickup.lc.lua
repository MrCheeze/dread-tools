local L0_1, L1_1
L0_1 = Pickup
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = Pickup
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CurrentScenario
  if L1_2 ~= nil then
    L1_2 = CurrentScenario
    L1_2 = L1_2.OnPickableItemBeginPlay
    if L1_2 ~= nil then
      L1_2 = CurrentScenario
      L1_2 = L1_2.OnPickableItemBeginPlay
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end
L0_1.BeginPlay = L1_1
L0_1 = Pickup
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CurrentScenario
  if L1_2 ~= nil then
    L1_2 = CurrentScenario
    L1_2 = L1_2.OnPickableItemEndPlay
    if L1_2 ~= nil then
      L1_2 = CurrentScenario
      L1_2 = L1_2.OnPickableItemEndPlay
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end
L0_1.EndPlay = L1_1
