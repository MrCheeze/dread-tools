local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = Init
if L0_1 ~= nil then
  L0_1 = Init
  if L0_1 then
    goto lbl_8
  end
end
L0_1 = {}
::lbl_8::
Init = L0_1
L0_1 = Init
L0_1.EnableDebugger = false
L0_1 = Init
L1_1 = Game
L1_1 = L1_1.IsDebug
L1_1 = L1_1()
L0_1.DEBUG = L1_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/class.lua"
L0_1(L1_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/scenariomenu_game.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/logiccallbacks.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Init
L1_1 = {}
L2_1 = {}
L3_1 = tScenarioMenuDefs
L3_1 = L3_1.aScenarios
L2_1.aScenarioSections = L3_1
L3_1 = {}
L4_1 = "SAMUS"
L3_1[1] = L4_1
L2_1.aSections = L3_1
L1_1.Samus = L2_1
L0_1.aBlkCharacterPackages = L1_1
L0_1 = Init
L1_1 = {}
L1_1.ITEM_MAX_LIFE = 99
L1_1.ITEM_MAX_SPECIAL_ENERGY = 1000
L1_1.ITEM_WEAPON_MISSILE_MAX = 15
L1_1.ITEM_WEAPON_POWER_BOMB_MAX = 0
L1_1.ITEM_METROID_COUNT = 0
L1_1.ITEM_METROID_TOTAL_COUNT = 40
L1_1.ITEM_FLOOR_SLIDE = 1
L0_1.tNewGameInventory = L1_1
L0_1 = Init
L1_1 = {}
L1_1.NumTanksPickedUp = 123
L0_1.tMaxGameProgressStats = L1_1
L0_1 = Init
L1_1 = {}
L1_1.ITEM_RESERVE_TANK_LIFE_SIZE = 99
L1_1.ITEM_RESERVE_TANK_SPECIAL_ENERGY_SIZE = 500
L1_1.ITEM_RESERVE_TANK_MISSILE_SIZE = 30
L0_1.tReserveTanksInitialConfiguration = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2
  L0_2 = Init
  L0_2 = L0_2.tNewGameInventory
  return L0_2
end
L0_1.GetNewGameInventory = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2
  L0_2 = Init
  L0_2 = L0_2.tMaxGameProgressStats
  return L0_2
end
L0_1.GetMaxGameProgressStats = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2
end
L0_1.InitScenariosBlackboardsSections = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetDefaultPackage
  L1_2 = "Common"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = Init
  L1_2 = L1_2.aBlkCharacterPackages
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = {}
    L6_2 = L4_2.aScenarioSections
    if L6_2 then
      L6_2 = ipairs
      L7_2 = L4_2.aScenarioSections
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L5_2
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
      end
    end
    L6_2 = ipairs
    L7_2 = L4_2.aSections
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L5_2
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
    L6_2 = Blackboard
    L6_2 = L6_2.AddPackage
    L7_2 = L3_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.InitGameBlackboardTOC = L1_1
L0_1 = Init
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ProfileBlackboard
  L1_2 = L1_2.ResetWithExceptionList
  L2_2 = {}
  L3_2 = "GAME"
  L4_2 = "SETTINGS"
  L5_2 = "MINIMAP"
  L6_2 = "CHOZO_ARCHIVES"
  L7_2 = "ENDING_REWARDS"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L1_2(L2_2)
  L1_2 = ProfileBlackboard
  L1_2 = L1_2.SetProp
  L2_2 = "SETTINGS"
  L3_2 = "Difficulty"
  L4_2 = "i"
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.SetupNewGameProfileBlackboard = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = Blackboard
  L0_2 = L0_2.Reset
  L0_2()
  L0_2 = Blackboard
  L0_2 = L0_2.WriteSaveGameVersion
  L0_2()
  L0_2 = pairs
  L1_2 = Init
  L1_2 = L1_2.tNewGameInventory
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = Blackboard
    L5_2 = L5_2.GetProp
    L6_2 = "PLAYER_INVENTORY"
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 == nil then
      L5_2 = L4_2
    end
    L6_2 = Blackboard
    L6_2 = L6_2.SetProp
    L7_2 = "PLAYER_INVENTORY"
    L8_2 = L3_2
    L9_2 = "f"
    L10_2 = L5_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_METROID_COUNT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = Init
  L4_2 = L4_2.tNewGameInventory
  L4_2 = L4_2.ITEM_MAX_LIFE
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = Init
  L4_2 = L4_2.tNewGameInventory
  L4_2 = L4_2.ITEM_WEAPON_MISSILE_MAX
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = Init
  L4_2 = L4_2.tNewGameInventory
  L4_2 = L4_2.ITEM_WEAPON_POWER_BOMB_MAX
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayerBlackboardSectionName
  L0_2 = L0_2()
  L1_2 = Blackboard
  L1_2 = L1_2.SetProp
  L2_2 = L0_2
  L3_2 = "LevelID"
  L4_2 = "s"
  L5_2 = "c10_samus"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Blackboard
  L1_2 = L1_2.SetProp
  L2_2 = L0_2
  L3_2 = "ScenarioID"
  L4_2 = "s"
  L5_2 = "s010_cave"
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.InitGameBlackboard = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 0
  L1_2 = Game
  L1_2 = L1_2.GetCurrentLanguage
  L1_2 = L1_2()
  if L1_2 == "ENGLISH" then
    L0_2 = 1
  else
    L0_2 = 2
  end
  L1_2 = ProfileBlackboard
  L1_2 = L1_2.SetProp
  L2_2 = "SETTINGS"
  L3_2 = "Subtitles"
  L4_2 = "i"
  L5_2 = L0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = ProfileBlackboard
  L1_2 = L1_2.SetProp
  L2_2 = "SETTINGS"
  L3_2 = "Brightness"
  L4_2 = "i"
  L5_2 = 5
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.InitDefaultSettings = L1_1
L0_1 = Init
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Init
  L1_2 = L1_2.InitGameBlackboard
  L1_2()
  L1_2 = Init
  L1_2 = L1_2.SetupNewGameProfileBlackboard
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Game
  L1_2 = L1_2.ResetTotalPlayTime
  L1_2()
  L1_2 = Game
  L1_2 = L1_2.SaveNewGame
  L1_2()
end
L0_1.CreateNewGameData = L1_1
L0_1 = Init
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Init
  L3_2 = L3_2.CreateNewGameData
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = Init
  L3_2 = L3_2.InitNewGame
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.CreateAndInitNewGame = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2
  L0_2 = Blackboard
  L0_2 = L0_2.Reset
  L0_2()
  L0_2 = Init
  L0_2 = L0_2.InitGameBlackboard
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.ReloadCurrentScenario
  L0_2()
end
L0_1.ResetGameBlackboardAndReloadGame = L1_1
L0_1 = Init
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Game
  L2_2 = L2_2.StartPrologue
  L3_2 = "c10_samus"
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = "samus"
  L7_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.InitNewGame = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = package
  L1_2 = package
  L1_2 = L1_2.path
  L2_2 = ";system/scripts/?.lc;system/scripts/LuaSockets/?.lc"
  L1_2 = L1_2 .. L2_2
  L0_2.path = L1_2
  L0_2 = loadfile
  L1_2 = "system/scripts/LuaSockets/mime.lc"
  L0_2 = L0_2(L1_2)
  L0_2()
  L0_2 = loadfile
  L1_2 = "system/scripts/LuaSockets/socket.lc"
  L0_2 = L0_2(L1_2)
  L0_2()
  L0_2 = require
  L1_2 = "debugger"
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.CreateDebuggerConnection = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetDefaultPath
  L1_2 = ""
  L0_2(L1_2)
  L0_2 = Init
  L0_2 = L0_2.EnableDebugger
  if L0_2 then
    L0_2 = pcall
    L1_2 = Init
    L1_2 = L1_2.CreateDebuggerConnection
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = utils
      L0_2 = L0_2.LOG
      L1_2 = utils
      L1_2 = L1_2.LOGTYPE_LUA
      L2_2 = "ERROR creating debugger connection. Skipping..."
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = Init
  L0_2 = L0_2.InitScenariosBlackboardsSections
  L0_2()
  L0_2 = Init
  L0_2 = L0_2.InitGameBlackboardTOC
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.ImportLibrary
  L1_2 = "system/scripts/savegame.lua"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.ImportLibrary
  L1_2 = "system/scripts/difficulty.lua"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.ImportLibrary
  L1_2 = "system/scripts/slots.lua"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L0_1.main = L1_1
L0_1 = Init
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.CreateProfile
  L1_2 = "profile0"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.ApplySettingsFromProfileBlackboard
  L0_2()
  L0_2 = Init
  L0_2 = L0_2.InitGameBlackboard
  L0_2()
  L0_2 = Init
  L0_2 = L0_2.SetupNewGameProfileBlackboard
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.FadeOut
  L1_2 = 0.5
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.AddGUISF
  L1_2 = 1
  L2_2 = "Init.CreateNewGameData"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.AddGUISF
  L1_2 = 1.1
  L2_2 = "Init.InitNewGame"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.StartGameAttractMode = L1_1
