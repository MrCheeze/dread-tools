local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = Scenario
if not L0_1 then
  L0_1 = {}
end
Scenario = L0_1
L0_1 = _G
L1_1 = setmetatable
L2_1 = Scenario
L3_1 = {}
L4_1 = _G
L3_1.__index = L4_1
L1_1(L2_1, L3_1)
L1_1 = Scenario
L2_1 = _G
L2_1 = L2_1.Cameras
L1_1.Cameras = L2_1
L1_1 = setfenv
L2_1 = 1
L3_1 = Scenario
L1_1(L2_1, L3_1)
L1_1 = {}
L1_1.Samus = "c10_samus"
tCharacterScenarioLevels = L1_1
L1_1 = Scenario
L2_1 = {}
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "CAVES_GAME_INTRO"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.CAVES_GAME_INTRO = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "CAVES_EMMY_SPAWNED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.CAVES_EMMY_SPAWNED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "CAVES_TUTO_MAP_DONE"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.CAVES_TUTO_MAP_DONE = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "CAVES_TUTO_MAP_ROOM_DONE"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.CAVES_TUTO_MAP_ROOM_DONE = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "LAB_EMMY_SPAWNED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.LAB_EMMY_SPAWNED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "HYDROGIGA_DEAD"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.HYDROGIGA_DEAD = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "COOLDOWN_FINISHED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.COOLDOWN_FINISHED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "SHIP_EMMY_METROIDNIZATION"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.SHIP_EMMY_METROIDNIZATION = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "SHIP_STRONG_REACTION"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.SHIP_STRONG_REACTION = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "SHIP_CWXELITE_PRESENTATION"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.SHIP_CWXELITE_PRESENTATION = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "CAVES_COOLDOWN_APPLIED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.CAVES_COOLDOWN_APPLIED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "CAVES_POSTXRELEASE_APPLIED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.CAVES_POSTXRELEASE_APPLIED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "MAGMA_COOLDOWN_APPLIED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.MAGMA_COOLDOWN_APPLIED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "MAGMA_POSTXRELEASE_APPLIED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.MAGMA_POSTXRELEASE_APPLIED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "LAB_POSTXRELEASE_APPLIED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.LAB_POSTXRELEASE_APPLIED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "AQUA_POSTXRELEASE_APPLIED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.AQUA_POSTXRELEASE_APPLIED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "FOREST_POSTXRELEASE_APPLIED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.FOREST_POSTXRELEASE_APPLIED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "SANC_POSTXRELEASE_APPLIED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.SANC_POSTXRELEASE_APPLIED = L3_1
L3_1 = Blackboard
L3_1 = L3_1.RegisterLUAProp
L4_1 = "SANC_EMMY_DEACTIVATED_ENABLED"
L5_1 = "bool"
L3_1 = L3_1(L4_1, L5_1)
L2_1.SANC_EMMY_DEACTIVATED_ENABLED = L3_1
L1_1.LUAPropIDs = L2_1
function L1_1()
  local L0_2, L1_2
  L0_2 = SetSpawneableCharClassInFINAL
  L0_2()
  L0_2 = ResetCurrentScenarioInfo
  L0_2()
end
main = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "armadigger"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "autclast"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "autector"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "autool"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "autsharp"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "autsniper"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "batalloon"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "bigfist"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "bigkranx"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "blindfly"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "caterzilla"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "chozozombiex"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "daivo"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "depthorn"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "dizzeansprite"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "dredhed"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "dropter"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "fing"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "fulmite"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "gobbler_chozowarriorx"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "gobbler_cooldownx"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "gobbler_hydrogiga"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "gobbler_kraid"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "gobbler_scorpius"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "gobbler_supergoliath"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "gobbler_superquetzoa"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "goliath"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "gooplot"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "gooshocker"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "groundshocker"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "hecathon"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "iceflea"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "infester"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "klaida"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "kreep"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "nailong"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "nailugger"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "obsydomithon"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "omnithon"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "poisonfly"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "quetshocker"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "quetzoa"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "redenki"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "rockdiver"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "rodomithonx"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "rodotuk"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "sabotoru"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "sakai"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "sclawk"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "scourge"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "shakernaut"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "sharpaw"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "shelmit"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "slidle"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "slugger"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "specimen_x4a"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "spitclawk"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "spittail"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "sunnap"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "takumaku"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "vulkran"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "warlotus"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "yampa"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "yojimbee"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "rinka"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "cucannon"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "hydrogiga"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "chozorobotsoldier"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "chozowarrior"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "chozowarriornormal"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "chozowarriorelite"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "chozowarriorx"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "chozowarriorxnormal"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "chozowarriorxelite"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "superquetzoa"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "supergoliath"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "core_x"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "core_x_superquetzoa"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "cooldownxboss"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "chozocommander"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "scorpius"
  L0_2(L1_2)
  L0_2 = AI
  L0_2 = L0_2.AddSpawneableCharClassInFINAL
  L1_2 = "kraid"
  L0_2(L1_2)
end
SetSpawneableCharClassInFINAL = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2.CurrentScenario = nil
  L0_2 = L0_1
  L0_2.CurrentScenarioID = nil
  L0_2 = L0_1
  L0_2.CurrentScenarioBlackboard = nil
end
ResetCurrentScenarioInfo = L1_1
function L1_1()
  local L0_2, L1_2
end
OnLoadGameFromSaveData = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.CurrentScenario
  L0_2 = L0_2.OnLoadScenarioFinished
  if L0_2 ~= nil then
    L0_2 = L0_1
    L0_2 = L0_2.CurrentScenario
    L0_2 = L0_2.OnLoadScenarioFinished
    L0_2()
  end
end
OnLoadScenarioFinished = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L1_2 = L1_2.CurrentScenarioID
  L2_2 = L0_1
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L2_2.CurrentScenario = L3_2
  L2_2 = L0_1
  L2_2.CurrentScenarioID = A0_2
  L2_2 = L0_1
  L3_2 = Game
  L3_2 = L3_2.GetScenarioBlackboardSectionID
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.CurrentScenarioBlackboard = L3_2
end
SetCurrentScenario = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = SetCurrentScenario
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = L0_1
  L5_2 = Game
  L5_2 = L5_2.GetPlayer
  L5_2 = L5_2()
  L4_2.Character = L5_2
  L4_2 = false
  bWaitingForScenarioChange = L4_2
  L4_2 = msemenu
  if L4_2 ~= nil then
    L4_2 = msemenu
    L4_2 = L4_2.items
    if L4_2 ~= nil then
      L4_2 = msemenu
      L4_2 = L4_2.items
      L4_2 = L4_2.CurrentScenario
      if L4_2 ~= nil then
        L4_2 = msemenu
        L4_2 = L4_2.items
        L4_2 = L4_2.CurrentScenario
        L5_2 = L0_1
        L5_2 = L5_2.CurrentScenario
        L5_2 = L5_2.DebugMenuEntry
        if L5_2 ~= nil then
          L5_2 = L0_1
          L5_2 = L5_2.CurrentScenario
          L5_2 = L5_2.DebugMenuEntry
          if L5_2 then
            goto lbl_37
          end
        end
        L5_2 = {}
        ::lbl_37::
        L4_2.Contextual = L5_2
      end
    end
  end
  L4_2 = L0_1
  L4_2 = L4_2.CurrentScenario
  L4_2 = L4_2.main
  L4_2()
  if A3_2 ~= "Editor" then
    L4_2 = L0_1
    L4_2 = L4_2.CurrentScenario
    L4_2 = L4_2.InitFromBlackboard
    if L4_2 ~= nil then
      L4_2 = L0_1
      L4_2 = L4_2.CurrentScenario
      L4_2 = L4_2.InitFromBlackboard
      L4_2()
    else
      L4_2 = utils
      L4_2 = L4_2.LOG_WARN
      L5_2 = utils
      L5_2 = L5_2.LOGTYPE_LOGIC
      L6_2 = "InitFromBlackboard method does not exist in Scenario "
      L7_2 = tostring
      L8_2 = A1_2
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 .. L7_2
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = L0_1
    L4_2 = L4_2.CurrentScenario
    L4_2 = L4_2.CreateWorldGraph
    if L4_2 ~= nil then
      L4_2 = L0_1
      L4_2 = L4_2.CurrentScenario
      L4_2 = L4_2.CreateWorldGraph
      L4_2()
    else
      L4_2 = utils
      L4_2 = L4_2.LOG_WARN
      L5_2 = utils
      L5_2 = L5_2.LOGTYPE_LOGIC
      L6_2 = "CreateWorldGraph method does not exist in Scenario "
      L7_2 = tostring
      L8_2 = A1_2
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 .. L7_2
      L4_2(L5_2, L6_2)
    end
  end
end
InitScenario = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetLoadingScreen
  L1_2 = false
  L0_2(L1_2)
  L0_2 = loadingscreen
  L0_2 = L0_2.HideLoadingScreen
  L0_2()
end
HideLoadingScreen = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = L0_1
  L3_2 = L3_2.CurrentScenarioBlackboard
  if L3_2 ~= nil then
    L3_2 = Blackboard
    L3_2 = L3_2.GetProp
    L4_2 = L0_1
    L4_2 = L4_2.CurrentScenarioBlackboard
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if L2_2 == nil then
    L2_2 = A1_2
  end
  return L2_2
end
ReadFromBlackboard = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L3_2 = L3_2.CurrentScenarioBlackboard
  if L3_2 ~= nil then
    L3_2 = Blackboard
    L3_2 = L3_2.SetProp
    L4_2 = L0_1
    L4_2 = L4_2.CurrentScenarioBlackboard
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
WriteToBlackboard = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L3_2 = L3_2.CurrentScenarioBlackboard
  if L3_2 ~= nil then
    L3_2 = Blackboard
    L3_2 = L3_2.SetProp
    L4_2 = "ScenarioShared"
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
WriteToSharedBlackboard = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = L0_1
  L3_2 = L3_2.CurrentScenarioBlackboard
  if L3_2 ~= nil then
    L3_2 = Blackboard
    L3_2 = L3_2.GetProp
    L4_2 = "ScenarioShared"
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if L2_2 == nil then
    L2_2 = A1_2
  end
  return L2_2
end
ReadFromSharedBlackboard = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A0_2 ~= nil then
    L4_2 = Blackboard
    L4_2 = L4_2.GetProp
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  if L3_2 == nil then
    L3_2 = A2_2
  end
  return L3_2
end
GetBlackboardProp = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 ~= nil then
    L4_2 = Blackboard
    L4_2 = L4_2.SetProp
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
SetBlackboardProp = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 ~= nil then
    L1_2 = Blackboard
    L1_2 = L1_2.SetProp
    L2_2 = "PLAYER_INVENTORY"
    L3_2 = "ITEM_CURRENT_LIFE"
    L4_2 = "f"
    L5_2 = L0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = "PLAYER_INVENTORY"
  L3_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = Blackboard
    L2_2 = L2_2.SetProp
    L3_2 = "PLAYER_INVENTORY"
    L4_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
    L5_2 = "f"
    L6_2 = L1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = Blackboard
  L2_2 = L2_2.GetProp
  L3_2 = "PLAYER_INVENTORY"
  L4_2 = "ITEM_WEAPON_MISSILE_MAX"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = Blackboard
    L3_2 = L3_2.SetProp
    L4_2 = "PLAYER_INVENTORY"
    L5_2 = "ITEM_WEAPON_MISSILE_CURRENT"
    L6_2 = "f"
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = Blackboard
  L3_2 = L3_2.GetProp
  L4_2 = "PLAYER_INVENTORY"
  L5_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = Blackboard
    L4_2 = L4_2.SetProp
    L5_2 = "PLAYER_INVENTORY"
    L6_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
    L7_2 = "f"
    L8_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = Game
  L4_2 = L4_2.ReinitPlayerFromBlackboard
  L4_2()
end
RecoverPlayerMaxItemsAmounts = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == nil then
    A0_2 = true
  end
  L1_2 = "CAM_Default"
  L2_2 = L0_1
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "MainCamera"
  L3_2 = L3_2(L4_2)
  L2_2.InitialCamera = L3_2
  L2_2 = L0_1
  L2_2 = L2_2.InitialCamera
  if L2_2 ~= nil then
    L2_2 = Game
    L2_2 = L2_2.ExistsLogicCamera
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = CreateDefaultLogicCamera
      L3_2 = L1_2
      L2_2(L3_2)
    end
    L2_2 = L0_1
    L2_2 = L2_2.InitialCamera
    L2_2 = L2_2.CAMERA
    L3_2 = L2_2
    L2_2 = L2_2.SetLogicCameraParams
    L4_2 = L1_2
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1
  L2_2 = L2_2.InitialCamera
  if L2_2 ~= nil then
    L2_2 = L0_1
    L2_2 = L2_2.InitialCamera
    L2_2 = L2_2.CAMERA
    L3_2 = L2_2
    L2_2 = L2_2.GetLogicCameraController
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 == nil then
      L2_2 = "METROID"
      L3_2 = L0_1
      L3_2 = L3_2.InitialCamera
      L4_2 = L3_2
      L3_2 = L3_2.ChangeCameraMode
      L5_2 = L2_2
      L6_2 = A0_2
      L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = L0_1
    L3_2 = L3_2.InitialCamera
    L3_2 = L3_2.CAMERA
    L3_2.bIgnoreSlomo = false
  end
end
ActivateDefaultCamera = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.Controller = "METROID"
  L1_2.MinExtraZDist = "1665.807358"
  L1_2.MaxExtraZDist = "1665.807358"
  L1_2.DefaultInterp = "10.0"
  L1_2.ParamsInterp = "1.5"
  L2_2 = Game
  L2_2 = L2_2.CreateLogicCamera
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
CreateDefaultLogicCamera = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = bWaitingForScenarioChange
  if not L4_2 then
    L4_2 = true
    bWaitingForScenarioChange = L4_2
    if A3_2 == nil then
      A3_2 = 0.3
    end
    L4_2 = Game
    L4_2 = L4_2.FadeOut
    L5_2 = A3_2
    L4_2(L5_2)
    L4_2 = Game
    L4_2 = L4_2.FadeOutStream
    L5_2 = A3_2 * 0.8
    L4_2(L5_2)
    L4_2 = tCharacterScenarioLevels
    L4_2 = L4_2[A0_2]
    if L4_2 == nil or not L4_2 then
      L4_2 = A0_2
    end
    L5_2 = Game
    L5_2 = L5_2.AddPSF
    L6_2 = A3_2 + 0.1
    L7_2 = "Game.LoadScenarioWithoutFadeIn"
    L8_2 = "ssssi"
    L9_2 = L4_2
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = ""
    L13_2 = 1
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
FadeOutAndLoadWithoutFadeIn = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "GAME"
  L2_2 = "Player"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = Game
  L1_2 = L1_2.GetPlayerBlackboardSectionName
  L1_2 = L1_2()
  L2_2 = Blackboard
  L2_2 = L2_2.GetProp
  L3_2 = L1_2
  L4_2 = "LevelID"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = Blackboard
  L3_2 = L3_2.GetProp
  L4_2 = L1_2
  L5_2 = "ScenarioID"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = Blackboard
  L4_2 = L4_2.GetProp
  L5_2 = L1_2
  L6_2 = "StartPoint"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = Init
  L5_2 = L5_2.InitGameBlackboard
  L5_2()
  L5_2 = Game
  L5_2 = L5_2.SaveGame
  L6_2 = "checkpoint"
  L7_2 = ""
  L8_2 = ""
  L9_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = Game
  L5_2 = L5_2.LoadScenario
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L0_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
ResetBlackboardAndReload = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = bWaitingForScenarioChange
  if not L5_2 then
    L5_2 = true
    bWaitingForScenarioChange = L5_2
    if A3_2 == nil then
      A3_2 = 0.66
    end
    L5_2 = tCharacterScenarioLevels
    L5_2 = L5_2[A0_2]
    if L5_2 == nil or not L5_2 then
      L5_2 = A0_2
    end
    if A4_2 then
      L6_2 = Game
      L6_2 = L6_2.TransitionFadeOut
      L7_2 = A3_2
      L6_2(L7_2)
    else
      L6_2 = Game
      L6_2 = L6_2.FadeOut
      L7_2 = A3_2
      L6_2(L7_2)
    end
    L6_2 = Game
    L6_2 = L6_2.FadeOutStream
    L7_2 = A3_2 * 0.8
    L6_2(L7_2)
    L6_2 = Game
    L6_2 = L6_2.AddPSF
    L7_2 = A3_2 + 0.1
    L8_2 = "Game.LoadScenario"
    L9_2 = "ssssi"
    L10_2 = L5_2
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = ""
    L14_2 = 1
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
FadeOutAndLoad = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = bWaitingForScenarioChange
  if not L4_2 then
    L4_2 = true
    bWaitingForScenarioChange = L4_2
    if A3_2 == nil then
      A3_2 = 0.66
    end
    L4_2 = tCharacterScenarioLevels
    L4_2 = L4_2[A0_2]
    if L4_2 == nil or not L4_2 then
      L4_2 = A0_2
    end
    L5_2 = Game
    L5_2 = L5_2.FadeOutBG
    L6_2 = A3_2
    L5_2(L6_2)
    L5_2 = Game
    L5_2 = L5_2.FadeOutStream
    L6_2 = A3_2 * 0.8
    L5_2(L6_2)
    L5_2 = Game
    L5_2 = L5_2.AddPSF
    L6_2 = A3_2 + 0.1
    L7_2 = "Game.LoadScenario"
    L8_2 = "ssssi"
    L9_2 = L4_2
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = ""
    L13_2 = 2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
FadeOutBGAndLoad = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = bWaitingForScenarioChange
  if not L1_2 then
    L1_2 = true
    bWaitingForScenarioChange = L1_2
    if A0_2 == nil then
      A0_2 = 0.66
    end
    L1_2 = Game
    L1_2 = L1_2.FadeOut
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.FadeOutStream
    L2_2 = A0_2 * 0.8
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.AddPSF
    L2_2 = A0_2 + 0.1
    L3_2 = "Game.ReloadCurrentScenario"
    L4_2 = ""
    L1_2(L2_2, L3_2, L4_2)
  end
end
FadeOutAndReloadCurrentScenario = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = bWaitingForScenarioChange
  if not L5_2 then
    L5_2 = true
    bWaitingForScenarioChange = L5_2
    if A3_2 == nil then
      A3_2 = 0.66
    end
    L5_2 = tCharacterScenarioLevels
    L5_2 = L5_2[A0_2]
    if L5_2 == nil or not L5_2 then
      L5_2 = A0_2
    end
    L6_2 = Game
    L6_2 = L6_2.TransitionFadeOut
    L7_2 = A3_2
    L6_2(L7_2)
    L6_2 = Game
    L6_2 = L6_2.FadeOutStream
    L7_2 = A3_2 * 0.8
    L6_2(L7_2)
    L6_2 = Game
    L6_2 = L6_2.AddPSF
    L7_2 = A3_2 + 0.1
    L8_2 = "Game.LoadScenario"
    L9_2 = "ssssi"
    L10_2 = L5_2
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = A4_2
    L14_2 = 1
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
FadeOutAndLoadWithPlayer = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    A1_2 = 0.3
  end
  L2_2 = Game
  L2_2 = L2_2.FadeOut
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = Game
  L2_2 = L2_2.AddPSF
  L3_2 = A1_2 + 0.1
  L4_2 = "Game.LaunchCutscene"
  L5_2 = "s"
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
FadeOutAndCutscene = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    A1_2 = 0.3
  end
  L2_2 = Game
  L2_2 = L2_2.FadeOut
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = Game
  L2_2 = L2_2.AddPSF
  L3_2 = A1_2 + 0.1
  L4_2 = "Game.UnloadScenario"
  L5_2 = "s"
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
FadeOutAndUnloadScenario = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    A1_2 = 0.3
  end
  L2_2 = Game
  L2_2 = L2_2.GetPlayer
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L3_2 = L2_2.INPUT
    L4_2 = L3_2
    L3_2 = L3_2.IgnoreInputFor
    L5_2 = A1_2 + 0.1
    L6_2 = "FadeOutAndSetCutsceneMode"
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = Game
  L3_2 = L3_2.FadeOut
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = Game
  L3_2 = L3_2.AddPSF
  L4_2 = A1_2 + 0.1
  L5_2 = "Game.SetCutsceneMode"
  L6_2 = "s"
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
FadeOutAndSetCutsceneMode = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = Cutscenes
  L5_2.NextLevelId = A0_2
  L5_2 = Cutscenes
  L5_2.NextScenearioId = A1_2
  L5_2 = Cutscenes
  L5_2.NextStartPoint = A2_2
  if A4_2 == nil then
    A4_2 = 0.3
  end
  L5_2 = Game
  L5_2 = L5_2.GetPlayer
  L5_2 = L5_2()
  if L5_2 ~= nil then
    L6_2 = L5_2.INPUT
    L7_2 = L6_2
    L6_2 = L6_2.IgnoreInputFor
    L8_2 = A4_2 + 0.1
    L9_2 = "FadeOutAndLoadWithCutscene"
    L10_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = Game
  L6_2 = L6_2.FadeOut
  L7_2 = A4_2
  L6_2(L7_2)
  L6_2 = Game
  L6_2 = L6_2.AddPSF
  L7_2 = A4_2 + 0.1
  L8_2 = "Game.SetLoadingMode"
  L9_2 = "s"
  L10_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
FadeOutAndLoadWithCutscene = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil then
    A0_2 = 0.3
  end
  if A1_2 == nil then
    A1_2 = false
  end
  if A2_2 == nil then
    A2_2 = false
  end
  L3_2 = Game
  L3_2 = L3_2.FadeOut
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = Game
  L3_2 = L3_2.AddPSF
  L4_2 = A0_2 + 0.1
  L5_2 = "Scenario.GoToMainMenu"
  L6_2 = "bb"
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
FadeOutAndGoToMainMenu = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 == true then
    L2_2 = loadingscreen
    if L2_2 then
      L2_2 = loadingscreen
      L2_2 = L2_2.SetMainMenuLoadingScreen
      L2_2()
    end
  end
  if A1_2 then
    L2_2 = GUI
    L2_2 = L2_2.ResetMainMenuDebugGUI
    L3_2 = "gui/scripts/msemenu_start.lua"
    L4_2 = ""
    L2_2(L3_2, L4_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GoToMainMenu
  L2_2()
end
GoToMainMenu = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    A0_2 = 0.3
  end
  L1_2 = Game
  L1_2 = L1_2.FadeOut
  L2_2 = A0_2
  L1_2(L2_2)
end
FadeOut = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    A0_2 = 0.3
  end
  L1_2 = Game
  L1_2 = L1_2.FadeIn
  L2_2 = 0.1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
FadeIn = L1_1
function L1_1(A0_2, A1_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = ipairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = Game
    L8_2 = L8_2.GetActor
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = L8_2[A1_2]
      if L9_2 ~= nil then
        L10_2 = L9_2
        L11_2 = L8_2
        L12_2 = unpack
        L13_2 = arg
        L12_2, L13_2 = L12_2(L13_2)
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
end
ForEachEntityIn = L1_1
L1_1 = 0.2
fSweetDeadStartDelay = L1_1
L1_1 = 0.5
fSweetDeadFadeOutTime = L1_1
L1_1 = 0.5
fSweetDeadBlackScreenTime = L1_1
L1_1 = 0.5
fSweetDeadFadeInTime = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Game
  L1_2 = L1_2.GetPlayer
  L1_2 = L1_2()
  L2_2 = L1_2.CurrentLife
  if 0 < L2_2 then
    L2_2 = Scenario
    L2_2 = L2_2.DisableInput
    L2_2()
    L3_2 = L1_2
    L2_2 = L1_2.IgnoreDamageFor
    L4_2 = fSweetDeadStartDelay
    L5_2 = fSweetDeadFadeOutTime
    L4_2 = L4_2 + L5_2
    L5_2 = fSweetDeadBlackScreenTime
    L4_2 = L4_2 + L5_2
    L5_2 = fSweetDeadFadeInTime
    L4_2 = L4_2 + L5_2
    L2_2(L3_2, L4_2)
    L2_2 = L1_2.ATTACK
    L2_2.bWantsEnabled = false
    L3_2 = L1_2
    L2_2 = L1_2.IgnoreHangFor
    L4_2 = fSweetDeadStartDelay
    L5_2 = fSweetDeadFadeOutTime
    L4_2 = L4_2 + L5_2
    L5_2 = fSweetDeadBlackScreenTime
    L4_2 = L4_2 + L5_2
    L5_2 = fSweetDeadFadeInTime
    L4_2 = L4_2 + L5_2
    L2_2(L3_2, L4_2)
    L1_2.Invulnerable = true
    if A0_2 == nil then
      L2_2 = Blackboard
      L2_2 = L2_2.GetProp
      L3_2 = Game
      L3_2 = L3_2.GetPlayerBlackboardSectionName
      L3_2 = L3_2()
      L4_2 = "StartPoint"
      L2_2 = L2_2(L3_2, L4_2)
      A0_2 = L2_2
    end
    L2_2 = Game
    L2_2 = L2_2.AddSF
    L3_2 = fSweetDeadStartDelay
    L4_2 = "Scenario.OnSweetDeadFadeOut"
    L5_2 = "s"
    L6_2 = A0_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
CheckSweetDead = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Game
  L1_2 = L1_2.FadeOut
  L2_2 = fSweetDeadFadeOutTime
  L1_2(L2_2)
  L1_2 = A0_2
  L2_2 = Game
  L2_2 = L2_2.AddSF
  L3_2 = fSweetDeadFadeOutTime
  L4_2 = fSweetDeadBlackScreenTime
  L3_2 = L3_2 + L4_2
  L4_2 = "Scenario.OnSweetDeadTeleport"
  L5_2 = "s"
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
OnSweetDeadFadeOut = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Game
  L1_2 = L1_2.TeleportEntityToStartPoint
  L2_2 = Game
  L2_2 = L2_2.GetPlayerName
  L2_2 = L2_2()
  L3_2 = A0_2
  L4_2 = fSweetDeadFadeInTime
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Game
  L1_2 = L1_2.FadeIn
  L2_2 = 0.1
  L3_2 = fSweetDeadFadeInTime
  L1_2(L2_2, L3_2)
  L1_2 = Game
  L1_2 = L1_2.AddSF
  L2_2 = 0
  L3_2 = "Scenario.OnSweetDeadFinished"
  L4_2 = ""
  L1_2(L2_2, L3_2, L4_2)
end
OnSweetDeadTeleport = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L1_2 = L0_2.ATTACK
  L1_2.bWantsEnabled = true
  L0_2.Invulnerable = false
  L1_2 = Scenario
  L1_2 = L1_2.EnableInput
  L1_2()
  L1_2 = CurrentScenario
  if L1_2 ~= nil then
    L1_2 = CurrentScenario
    L1_2 = L1_2.OnSweetDeadFinished
    if L1_2 ~= nil then
      L1_2 = CurrentScenario
      L1_2 = L1_2.OnSweetDeadFinished
      L1_2()
    end
  end
end
OnSweetDeadFinished = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INPUT
    L1_2.bWantsEnabled = true
    L1_2 = Game
    L1_2 = L1_2.DelSF
    L2_2 = "Scenario.OnEndDisableInputFor"
    L1_2(L2_2)
  end
end
EnableInput = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INPUT
    L1_2.bWantsEnabled = false
    L1_2 = Game
    L1_2 = L1_2.DelSF
    L2_2 = "Scenario.OnEndDisableInputFor"
    L1_2(L2_2)
  end
end
DisableInput = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Game
  L1_2 = L1_2.GetPlayer
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.INPUT
    L2_2.bWantsEnabled = false
    L2_2 = Game
    L2_2 = L2_2.AddSF
    L3_2 = A0_2
    L4_2 = "Scenario.OnEndDisableInputFor"
    L5_2 = ""
    L2_2(L3_2, L4_2, L5_2)
  end
end
DisableInputFor = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INPUT
    L1_2.bWantsEnabled = true
  end
end
OnEndDisableInputFor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    A0_2 = false
  end
  L1_2 = true
  L2_2 = Game
  L2_2 = L2_2.GetCurrentGameModeID
  L2_2 = L2_2()
  if L2_2 == "CUTSCENE" then
    L1_2 = false
  end
  if L1_2 then
    L3_2 = Game
    L3_2 = L3_2.IsCutscenePlaying
    L3_2 = L3_2()
    L1_2 = not L3_2
  end
  if L1_2 and A0_2 then
    L3_2 = Game
    L3_2 = L3_2.GetPlayer
    L3_2 = L3_2()
    if L3_2 ~= nil then
      L4_2 = L3_2.INPUT
      L1_2 = L4_2.bWantsEnabled
    end
  end
  return L1_2
end
IsUserInteractionEnabled = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L6_2 = Game
  L6_2 = L6_2.DelSF
  L7_2 = "Scenario.PlayLogicCameraEnd"
  L6_2(L7_2)
  L6_2 = InitialCamera
  L6_2 = L6_2.LastLogicCameraID
  if A3_2 ~= nil then
    L6_2 = A3_2
  end
  L7_2 = Game
  L7_2 = L7_2.OverrideSoundListener
  L8_2 = "OnTarget"
  L7_2(L8_2)
  L7_2 = InitialCamera
  L7_2 = L7_2.CAMERA
  L8_2 = L7_2
  L7_2 = L7_2.SetLogicCameraParams
  L9_2 = A0_2
  L10_2 = A1_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = true
  if A5_2 ~= nil and not A5_2 then
    L7_2 = false
  end
  if L7_2 then
    L8_2 = DisableInput
    L8_2()
  end
  L8_2 = Game
  L8_2 = L8_2.AddSF
  L9_2 = A2_2
  L10_2 = "Scenario.PlayLogicCameraEnd"
  L11_2 = "sbb"
  L12_2 = L6_2
  L13_2 = A4_2
  L14_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
PlayLogicCamera = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = utils
  L3_2 = L3_2.LOG
  L4_2 = utils
  L4_2 = L4_2.LOGTYPE_LOGIC
  L5_2 = "called PlayLogicCameraEnd "
  L6_2 = A0_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = Game
  L3_2 = L3_2.ResetOverrideSoundListener
  L3_2()
  if A2_2 then
    L3_2 = EnableInput
    L3_2()
  end
  L3_2 = InitialCamera
  L3_2 = L3_2.CAMERA
  L4_2 = L3_2
  L3_2 = L3_2.SetLogicCameraParams
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
PlayLogicCameraEnd = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = string
  L2_2 = L2_2.upper
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "ScenarioID"
  return L1_2(L2_2, L3_2)
end
GetPlayerCurrentScenario = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 0
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = L0_2
  L3_2 = 100
  return L1_2(L2_2, L3_2)
end
GetGameProgressPct = L1_1
L1_1 = {}
L1_1.GameProgressPct = nil
tGetGameProgressPctInTable = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = string
  L0_2 = L0_2.format
  L1_2 = "%0.2f"
  L2_2 = GetGameProgressPct
  L2_2 = L2_2()
  L0_2 = L0_2(L1_2, L2_2)
  tGetGameProgressPctInTable = L0_2
  L1_2 = tGetGameProgressPctInTable
  return L1_2
end
GetGameProgressPctInTable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SMARTOBJECT
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.SetUseState
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
end
SetSmartObjectStateUse = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.SetItemAmount
  L3_2 = Game
  L3_2 = L3_2.GetPlayerName
  L3_2 = L3_2()
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Game
  L2_2 = L2_2.ReinitPlayerFromBlackboard
  L2_2()
end
SetItemAmount = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = utils
  L3_2 = L3_2.LOG
  L4_2 = utils
  L4_2 = L4_2.LOGTYPE_LOGIC
  L5_2 = "Scenario Setting player position to "
  L6_2 = A0_2
  L7_2 = ","
  L8_2 = A1_2
  L9_2 = ","
  L10_2 = A2_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L3_2(L4_2, L5_2)
  L3_2 = Game
  L3_2 = L3_2.GetPlayer
  L3_2 = L3_2()
  L4_2 = V3D
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.vPos = L4_2
end
SetPlayerPosition = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = pairs
  L5_2 = CurrentScenario
  L5_2 = L5_2.tHazarous
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L7_2 ~= A0_2 then
      L9_2 = CurrentScenario
      L9_2 = L9_2.tHazarous
      L9_2 = L9_2[L7_2]
      if not A3_2 then
        L10_2 = Game
        L10_2 = L10_2.IsPoolActivated
        L11_2 = L7_2
        L10_2 = L10_2(L11_2)
        if L10_2 ~= A3_2 then
          L10_2 = pairs
          L11_2 = L9_2[A1_2]
          L10_2, L11_2, L12_2 = L10_2(L11_2)
          for L13_2, L14_2 in L10_2, L11_2, L12_2 do
            if L14_2 == A2_2 then
              L15_2 = false
              return L15_2
            end
          end
        end
      end
    end
  end
  L4_2 = true
  return L4_2
end
CanaManageHazarousEntity = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = CurrentScenario
  L2_2 = L2_2.EnableHazarous
  if L2_2 ~= nil then
    L2_2 = CurrentScenario
    L2_2 = L2_2.EnableHazarous
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = CurrentScenario
  L2_2 = L2_2.tHazarous
  L2_2 = L2_2[A0_2]
  if L2_2 ~= nil then
    L3_2 = pairs
    L4_2 = L2_2.Triggers
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = CanaManageHazarousEntity
      L9_2 = A0_2
      L10_2 = "Triggers"
      L11_2 = L7_2
      L12_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if L8_2 then
        L8_2 = Game
        L8_2 = L8_2.GetActor
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 ~= nil then
          L10_2 = L8_2
          L9_2 = L8_2.SetWantsEnabled
          L11_2 = not A1_2
          L9_2(L10_2, L11_2)
        end
      end
    end
    L3_2 = pairs
    L4_2 = L2_2.SpawnGroups
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = CanaManageHazarousEntity
      L9_2 = A0_2
      L10_2 = "SpawnGroups"
      L11_2 = L7_2
      L12_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if L8_2 then
        L8_2 = Game
        L8_2 = L8_2.GetActor
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 ~= nil then
          if A1_2 then
            L9_2 = L8_2.SPAWNGROUP
            L10_2 = L9_2
            L9_2 = L9_2.DisableSpawnGroup
            L9_2(L10_2)
          else
            L9_2 = L8_2.SPAWNGROUP
            L10_2 = L9_2
            L9_2 = L9_2.EnableSpawnGroup
            L9_2(L10_2)
          end
        end
      end
    end
    L3_2 = pairs
    L4_2 = L2_2.Usables
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = CanaManageHazarousEntity
      L9_2 = A0_2
      L10_2 = "Usables"
      L11_2 = L7_2
      L12_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if L8_2 then
        L8_2 = Game
        L8_2 = L8_2.GetActor
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 ~= nil then
          L9_2 = L8_2.USABLE
          L10_2 = L9_2
          L9_2 = L9_2.Activate
          L11_2 = not A1_2
          L9_2(L10_2, L11_2)
        end
      end
    end
  end
end
EnableHazarous = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "IncrementNumberOfNonReachableTriggers"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayerInfo
  L0_2 = L0_2()
  L1_2 = L0_2
  L0_2 = L0_2.IncrementNumberOfNonReachableTriggers
  L0_2(L1_2)
end
IncrementNumberOfNonReachableTriggers = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "DecrementNumberOfNonReachableTriggers"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayerInfo
  L0_2 = L0_2()
  L1_2 = L0_2
  L0_2 = L0_2.DecrementNumberOfNonReachableTriggers
  L0_2(L1_2)
end
DecrementNumberOfNonReachableTriggers = L1_1
function L1_1(A0_2)
  local L1_2
  if A0_2 ~= nil then
    L1_2 = A0_2.AI
    if L1_2 ~= nil then
      L1_2 = true
      return L1_2
  end
  else
    L1_2 = false
    return L1_2
  end
end
CheckEmmyAlive = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil or not A1_2 then
    A1_2 = true
  end
  L3_2 = Blackboard
  L3_2 = L3_2.GetProp
  L4_2 = Game
  L4_2 = L4_2.GetPlayerBlackboardSectionName
  L4_2 = L4_2()
  L5_2 = "ScenarioID"
  L3_2 = L3_2(L4_2, L5_2)
  if A1_2 or L3_2 == nil or L3_2 ~= A0_2 then
    L4_2 = Game
    L4_2 = L4_2.SetRecoveryModeTemporarilyDisabled
    L5_2 = true
    L4_2(L5_2)
    L4_2 = Blackboard
    L4_2 = L4_2.Reset
    L4_2()
    L4_2 = "StartPoint0"
    if A2_2 ~= nil and A2_2 ~= "" then
      L4_2 = A2_2
    end
    L5_2 = tScenarioMenuDefs
    L5_2 = L5_2.aScenarioPlayers
    L5_2 = L5_2[A0_2]
    if L5_2 == nil then
      L5_2 = Game
      L5_2 = L5_2.DebugLoadScenario
      L6_2 = tScenarioMenuDefs
      L6_2 = L6_2.aScenarioDefs
      L6_2 = L6_2[A0_2]
      L7_2 = A0_2
      L8_2 = L4_2
      L9_2 = string
      L9_2 = L9_2.gmatch
      L10_2 = tScenarioMenuDefs
      L10_2 = L10_2.aScenarioDefs
      L10_2 = L10_2[A0_2]
      L11_2 = "%_(.+)$"
      L9_2 = L9_2(L10_2, L11_2)
      L9_2 = L9_2()
      L10_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    else
      L5_2 = Game
      L5_2 = L5_2.DebugLoadScenario
      L6_2 = tScenarioMenuDefs
      L6_2 = L6_2.aScenarioDefs
      L6_2 = L6_2[A0_2]
      L7_2 = A0_2
      L8_2 = L4_2
      L9_2 = tScenarioMenuDefs
      L9_2 = L9_2.aScenarioPlayers
      L9_2 = L9_2[A0_2]
      L10_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  L4_2 = true
  return L4_2
end
LoadScenario = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = Blackboard
  L5_2 = L5_2.GetProp
  L6_2 = Game
  L6_2 = L6_2.GetPlayerBlackboardSectionName
  L6_2 = L6_2()
  L7_2 = "ScenarioID"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 == nil then
    return
  end
  L6_2 = ScenarioFadeTable
  if L6_2 == nil then
    L6_2 = {}
    ScenarioFadeTable = L6_2
  end
  L6_2 = ScenarioFadeTable
  L6_2 = L6_2[L5_2]
  if L6_2 == nil then
    L6_2 = ScenarioFadeTable
    L7_2 = {}
    L6_2[L5_2] = L7_2
  end
  L6_2 = ScenarioFadeTable
  L6_2 = L6_2[L5_2]
  L7_2 = L6_2[A0_2]
  if L7_2 == nil then
    L7_2 = {}
    L6_2[A0_2] = L7_2
  end
  L7_2 = L6_2[A0_2]
  L7_2 = L7_2[A1_2]
  if L7_2 == nil then
    L7_2 = L6_2[A0_2]
    L8_2 = {}
    L7_2[A1_2] = L8_2
  end
  L7_2 = L6_2[A0_2]
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2[A2_2]
  if L7_2 == nil then
    L7_2 = L6_2[A0_2]
    L7_2 = L7_2[A1_2]
    L8_2 = {}
    L7_2[A2_2] = L8_2
  end
  L7_2 = L6_2[A0_2]
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2[A2_2]
  L7_2 = L7_2[A3_2]
  if L7_2 == nil then
    L7_2 = L6_2[A0_2]
    L7_2 = L7_2[A1_2]
    L7_2 = L7_2[A2_2]
    L7_2[A3_2] = A4_2
  end
  L7_2 = L6_2[A2_2]
  if L7_2 == nil then
    L7_2 = {}
    L6_2[A2_2] = L7_2
  end
  L7_2 = L6_2[A2_2]
  L7_2 = L7_2[A3_2]
  if L7_2 == nil then
    L7_2 = L6_2[A2_2]
    L8_2 = {}
    L7_2[A3_2] = L8_2
  end
  L7_2 = L6_2[A2_2]
  L7_2 = L7_2[A3_2]
  L7_2 = L7_2[A0_2]
  if L7_2 == nil then
    L7_2 = L6_2[A2_2]
    L7_2 = L7_2[A3_2]
    L8_2 = {}
    L7_2[A0_2] = L8_2
  end
  L7_2 = L6_2[A2_2]
  L7_2 = L7_2[A3_2]
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2[A1_2]
  if L7_2 == nil then
    L7_2 = L6_2[A2_2]
    L7_2 = L7_2[A3_2]
    L7_2 = L7_2[A0_2]
    L7_2[A1_2] = A4_2
  end
end
AddFadeTransition = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = ScenarioFadeTable
  if L4_2 == nil then
    L4_2 = nil
    return L4_2
  end
  L4_2 = Blackboard
  L4_2 = L4_2.GetProp
  L5_2 = Game
  L5_2 = L5_2.GetPlayerBlackboardSectionName
  L5_2 = L5_2()
  L6_2 = "ScenarioID"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ScenarioFadeTable
  L5_2 = L5_2[L4_2]
  if L5_2 == nil then
    L5_2 = nil
    return L5_2
  end
  L5_2 = ScenarioFadeTable
  L5_2 = L5_2[L4_2]
  L6_2 = L5_2[A0_2]
  if L6_2 == nil then
    L6_2 = nil
    return L6_2
  else
    L6_2 = L5_2[A0_2]
    L6_2 = L6_2[A1_2]
    if L6_2 == nil then
      L6_2 = nil
      return L6_2
    else
      L6_2 = L5_2[A0_2]
      L6_2 = L6_2[A1_2]
      L6_2 = L6_2[A2_2]
      if L6_2 == nil then
        L6_2 = nil
        return L6_2
      else
        L6_2 = L5_2[A0_2]
        L6_2 = L6_2[A1_2]
        L6_2 = L6_2[A2_2]
        L6_2 = L6_2[A3_2]
        if L6_2 == nil then
          L6_2 = nil
          return L6_2
        else
          L6_2 = L5_2[A0_2]
          L6_2 = L6_2[A1_2]
          L6_2 = L6_2[A2_2]
          L6_2 = L6_2[A3_2]
          return L6_2
        end
      end
    end
  end
end
GetTransitionTypeOverride = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = GetTransitionTypeOverride
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 ~= nil then
    L5_2 = Game
    L5_2 = L5_2.SetSubAreasPreferredTransitionType
    L6_2 = L4_2
    L5_2(L6_2)
  else
    L5_2 = Game
    L5_2 = L5_2.SetSubAreasPreferredTransitionType
    L6_2 = "FakeFade"
    L5_2(L6_2)
  end
end
SubAreaChangeRequest = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 199
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 199
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 20
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 20
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_CAVE"
  L0_2(L1_2)
end
SetSamusAbilities_STANDARD_EARLY = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 99
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 99
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 15
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 15
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_CAVE"
  L0_2(L1_2)
end
SetSamusAbilities_CAVE = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 199
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 199
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_MAGMA"
  L0_2(L1_2)
end
SetSamusAbilities_MAGMA = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 299
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 299
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_MAGMA_AFTERWIDE"
  L0_2(L1_2)
end
SetSamusAbilities_MAGMA_AFTERWIDE = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 299
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 299
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_CAVE_AFTERVARIA"
  L0_2(L1_2)
end
SetSamusAbilities_CAVE_AFTERVARIA = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 299
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 299
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_LAB"
  L0_2(L1_2)
end
SetSamusAbilities_LAB = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 399
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 399
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 25
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_AQUA"
  L0_2(L1_2)
end
SetSamusAbilities_AQUA = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 499
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 499
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 54
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 54
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_FOREST"
  L0_2(L1_2)
end
SetSamusAbilities_FOREST = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 499
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 499
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 56
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 56
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_QUARANTINE"
  L0_2(L1_2)
end
SetSamusAbilities_QUARANTINE = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 699
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 699
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 56
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 56
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_SANCTUARY"
  L0_2(L1_2)
end
SetSamusAbilities_SANCTUARY = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 799
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 799
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 74
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 74
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_AQUA_AFTERGRAVITY"
  L0_2(L1_2)
end
SetSamusAbilities_AQUA_AFTERGRAVITY = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 799
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 799
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 74
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 74
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_COOLDOWN"
  L0_2(L1_2)
end
SetSamusAbilities_COOLDOWN = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 899
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 899
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 92
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 92
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_SHIPYARD"
  L0_2(L1_2)
end
SetSamusAbilities_SHIPYARD = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 899
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 899
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 92
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 92
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_SANCTUARY_AFTERWAVE"
  L0_2(L1_2)
end
SetSamusAbilities_SANCTUARY_AFTERWAVE = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 499
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 499
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 50
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 50
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPRING_BALL"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 15
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 15
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L3_2 = "b"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "SetSamusAbilities_FULLEQUIP"
  L0_2(L1_2)
end
SetSamusAbilities_FULLEQUIP = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "SG_"
  L4_2 = "TG_PostBossCheckpoint_"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = print
    L4_2 = "--- ACTIVATION TRIGGER "
    L5_2 = L1_2
    L6_2 = " ---"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    L2_2.bEnabled = true
  end
  L3_2 = string
  L3_2 = L3_2.gsub
  L4_2 = A0_2
  L5_2 = "SG_"
  L6_2 = "TG_SnapshotCheckpoint_"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = print
    L6_2 = "--- DEACTIVATION TRIGGER "
    L7_2 = L3_2
    L8_2 = " ---"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    L4_2.bEnabled = true
  end
end
Activation_TG_PostBoss = L1_1
L1_1 = 0.3
fEmmyAbilityObtainedTimeToStart = L1_1
L1_1 = 0.5
fEmmyAbilityObtainedFadeOutTime = L1_1
L1_1 = 0.05
fEmmyAbilityObtainedFadeTime = L1_1
L1_1 = 1
fEmmyAbilityObtainedFadeInTime = L1_1
L1_1 = ""
sEmmyAbilityObtainedCallback = L1_1
L1_1 = ""
sEmmyAbilityObtainedFinalCallback = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PowerBombFade
  L1_2 = fEmmyAbilityObtainedFadeOutTime
  L2_2 = fEmmyAbilityObtainedFadeTime
  L3_2 = fEmmyAbilityObtainedFadeInTime
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = fEmmyAbilityObtainedFadeOutTime
  L2_2 = fEmmyAbilityObtainedFadeTime
  L2_2 = L2_2 * 0.5
  L1_2 = L1_2 + L2_2
  L2_2 = "Scenario.EmmyAbilityObtained_ResetDarkness"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
EmmyAbilityObtained_Start = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = fEmmyAbilityObtainedFadeInTime
  L2_2 = fEmmyAbilityObtainedFadeTime
  L2_2 = L2_2 * 0.5
  L1_2 = L1_2 + L2_2
  L2_2 = "Scenario.EmmyAbilityObtained_RecoverInput"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EmmyAbilityObtained_ShowMessageLaunchCallbacks
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.StopForceDarkness
  L1_2 = "emmydeath"
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = CurrentScenario
  L0_2 = L0_2.OnEmmyAbilityObtainedFadeOutCompleted
  L0_2()
end
EmmyAbilityObtained_ResetDarkness = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = EmmyAbilityObtained_ShowMessageOmegaCannonTurnOff
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INPUT
    L2_2 = L1_2
    L1_2 = L1_2.IgnoreInput
    L3_2 = false
    L4_2 = false
    L5_2 = "EmmyAbilityObtained"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
EmmyAbilityObtained_RecoverInput = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  sEmmyAbilityObtainedCallback = A1_2
  sEmmyAbilityObtainedFinalCallback = A2_2
  if A3_2 then
    L4_2 = GUI
    L4_2 = L4_2.SetSamusMenuCompositionLuaCallbackOnClosed
    L5_2 = "Scenario.EmmyAbilityObtained_ShowMessageLaunchCallbacks"
    L4_2(L5_2)
    L4_2 = GUI
    L4_2 = L4_2.ShowMessage
    L5_2 = A0_2
    L6_2 = true
    L7_2 = ""
    L8_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = GUI
    L4_2 = L4_2.SetSamusMenuCompositionLuaCallbackOnClosed
    L5_2 = "Scenario.EmmyAbilityObtained_ShowMessageCallback"
    L4_2(L5_2)
    L4_2 = GUI
    L4_2 = L4_2.ShowMessage
    L5_2 = A0_2
    L6_2 = true
    L7_2 = ""
    L8_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
EmmyAbilityObtained_ShowMessage = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = -1
  L2_2 = sEmmyAbilityObtainedCallback
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = -1
  L2_2 = sEmmyAbilityObtainedFinalCallback
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
EmmyAbilityObtained_ShowMessageLaunchCallbacks = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INPUT
    L2_2 = L1_2
    L1_2 = L1_2.IgnoreInput
    L3_2 = true
    L4_2 = false
    L5_2 = "EmmyAbilityObtained"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = Game
  L1_2 = L1_2.AddSF
  L2_2 = fEmmyAbilityObtainedTimeToStart
  L3_2 = "Scenario.EmmyAbilityObtained_Start"
  L4_2 = ""
  L1_2(L2_2, L3_2, L4_2)
end
EmmyAbilityObtained_ShowMessageCallback = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#GUI_OMEGA_EMMY_1"
  L2_2 = true
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
EmmyAbilityObtained_ShowMessageOmegaCannonTurnOff = L1_1
