local L0_1, L1_1
L0_1 = class
L0_1 = L0_1.New
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2.sName = A1_2
  A0_2.sMap = A2_2
  A0_2.sStartPoint = A3_2
  A0_2.bIsInFinal = A4_2
end
L0_1 = L0_1(L1_1)
ScenarioData = L0_1
L0_1 = ScenarioData
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Scenario
  L1_2 = L1_2.LoadScenario
  L2_2 = A0_2.sMap
  L3_2 = true
  L4_2 = A0_2.sStartPoint
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = true
  return L1_2
end
L0_1.Load = L1_1
L0_1 = class
L0_1 = L0_1.New
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2.sName = A1_2
  A0_2.sMap = A2_2
  A0_2.sPlaythrough = A3_2
  A0_2.sCheckpoint = A4_2
  A0_2.bIsInFinal = A5_2
end
L0_1 = L0_1(L1_1)
CheckpointData = L0_1
L0_1 = CheckpointData
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Game
  L1_2 = L1_2.LoadGameFromPlaythrough
  L2_2 = A0_2.sPlaythrough
  L3_2 = A0_2.sCheckpoint
  return L1_2(L2_2, L3_2)
end
L0_1.Load = L1_1
