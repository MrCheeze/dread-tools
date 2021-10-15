local L0_1, L1_1
L0_1 = GrapplePoint
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = GrapplePoint
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 2
  L1_2 = L1_2(L2_2)
  L2_2 = Game
  L2_2 = L2_2.PlayEntitySound
  L3_2 = "weapons/grapple_hit_0"
  L4_2 = L1_2
  L5_2 = ".wav"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = A0_2.sName
  L5_2 = 0.5
  L6_2 = 100
  L7_2 = 3000
  L8_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.OnGrappleBeamAttached = L1_1
L0_1 = GrapplePoint
function L1_1(A0_2)
  local L1_2
end
L0_1.OnGrappleBeamDetached = L1_1
L0_1 = GrapplePoint
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CurrentScenario
  if L3_2 ~= nil then
    L3_2 = CurrentScenario
    L3_2 = L3_2.OnGrapplePullFinished
    if L3_2 ~= nil then
      L3_2 = CurrentScenario
      L3_2 = L3_2.OnGrapplePullFinished
      L4_2 = A0_2
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.OnGrapplePullFinished = L1_1
