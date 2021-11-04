local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = mapcharactersdefs
if L0_1 ~= nil then
  L0_1 = mapcharactersdefs
  if L0_1 then
    goto lbl_8
  end
end
L0_1 = {}
::lbl_8::
mapcharactersdefs = L0_1
L0_1 = mapcharactersdefs
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = {}
L3_1.s000_surface = L4_1
L4_1 = {}
L3_1.s010_area1 = L4_1
L2_1.tScenarios = L3_1
L3_1 = {}
L4_1 = {}
L4_1.sScenario1 = "s000_surface"
L4_1.sScenario2 = "s010_area1"
L3_1[1] = L4_1
L2_1.tScenarioConnections = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1.funcOnShowScenario = L3_1
L1_1.Samus = L2_1
L0_1.tDefs = L1_1
