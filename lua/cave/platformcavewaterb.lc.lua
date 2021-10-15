local L0_1, L1_1, L2_1, L3_1
L0_1 = Game
L0_1 = L0_1.ImportLibraryWithName
L1_1 = "actors/props/usable/scripts/usable.lua"
L2_1 = "Usable"
L0_1(L1_1, L2_1)
L0_1 = {}
PlatformCaveWater = L0_1
L0_1 = setmetatable
L1_1 = PlatformCaveWater
L2_1 = {}
L3_1 = Usable
L2_1.__index = L3_1
L0_1(L1_1, L2_1)
L0_1 = PlatformCaveWater
function L1_1(A0_2, A1_2)
end
L0_1.ShowDialogChoice = L1_1
L0_1 = PlatformCaveWater
function L1_1(A0_2)
  local L1_2
  L1_2 = CurrentScenario
  L1_2 = L1_2.Event_WaterPoolInfiltration_Activate
  L1_2()
end
L0_1.OnUseCompleted = L1_1
