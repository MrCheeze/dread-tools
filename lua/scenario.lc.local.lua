-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/scenario.lc.local 

-- params : ...
-- function num : 0
if not Scenario then
  Scenario = {}
  local l_0_0 = _G
  local l_0_1 = setmetatable
  local l_0_2 = Scenario
  local l_0_3 = {}
  l_0_3.__index = _G
  l_0_1(l_0_2, l_0_3)
  l_0_1 = Scenario
  l_0_2 = _G
  l_0_2 = l_0_2.Cameras
  l_0_1.Cameras = l_0_2
  l_0_1 = setfenv
  l_0_2 = 1
  l_0_3 = Scenario
  l_0_1(l_0_2, l_0_3)
  tCharacterScenarioLevels, l_0_1 = l_0_1, {Samus = "c10_samus"}
  l_0_1 = Scenario
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("CAVES_GAME_INTRO", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("CAVES_EMMY_SPAWNED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("CAVES_TUTO_MAP_DONE", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("CAVES_TUTO_MAP_ROOM_DONE", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("LAB_EMMY_SPAWNED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("HYDROGIGA_DEAD", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("COOLDOWN_FINISHED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("SHIP_EMMY_METROIDNIZATION", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("SHIP_STRONG_REACTION", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("SHIP_CWXELITE_PRESENTATION", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("CAVES_COOLDOWN_APPLIED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("CAVES_POSTXRELEASE_APPLIED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("MAGMA_COOLDOWN_APPLIED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("MAGMA_POSTXRELEASE_APPLIED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("LAB_POSTXRELEASE_APPLIED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("AQUA_POSTXRELEASE_APPLIED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("FOREST_POSTXRELEASE_APPLIED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("SANC_POSTXRELEASE_APPLIED", "bool")
  l_0_3 = Blackboard
  l_0_3 = l_0_3.RegisterLUAProp
  l_0_3 = l_0_3("SANC_EMMY_DEACTIVATED_ENABLED", "bool")
  l_0_1.LUAPropIDs, l_0_2 = l_0_2, {CAVES_GAME_INTRO = l_0_3, CAVES_EMMY_SPAWNED = l_0_3, CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED = l_0_3, CAVES_TUTO_MAP_DONE = l_0_3, CAVES_TUTO_MAP_ROOM_DONE = l_0_3, LAB_EMMY_SPAWNED = l_0_3, HYDROGIGA_DEAD = l_0_3, COOLDOWN_FINISHED = l_0_3, SHIP_EMMY_METROIDNIZATION = l_0_3, SHIP_STRONG_REACTION = l_0_3, SHIP_CWXELITE_PRESENTATION = l_0_3, CAVES_COOLDOWN_APPLIED = l_0_3, CAVES_POSTXRELEASE_APPLIED = l_0_3, MAGMA_COOLDOWN_APPLIED = l_0_3, MAGMA_POSTXRELEASE_APPLIED = l_0_3, LAB_POSTXRELEASE_APPLIED = l_0_3, AQUA_POSTXRELEASE_APPLIED = l_0_3, FOREST_POSTXRELEASE_APPLIED = l_0_3, SANC_POSTXRELEASE_APPLIED = l_0_3, SANC_EMMY_DEACTIVATED_ENABLED = l_0_3}
  l_0_1 = function()
  -- function num : 0_0
  SetSpawneableCharClassInFINAL()
  ResetCurrentScenarioInfo()
end

  main = l_0_1
  l_0_1 = function()
  -- function num : 0_1
  (AI.AddSpawneableCharClassInFINAL)("armadigger")
  ;
  (AI.AddSpawneableCharClassInFINAL)("autclast")
  ;
  (AI.AddSpawneableCharClassInFINAL)("autector")
  ;
  (AI.AddSpawneableCharClassInFINAL)("autool")
  ;
  (AI.AddSpawneableCharClassInFINAL)("autsharp")
  ;
  (AI.AddSpawneableCharClassInFINAL)("autsniper")
  ;
  (AI.AddSpawneableCharClassInFINAL)("batalloon")
  ;
  (AI.AddSpawneableCharClassInFINAL)("bigfist")
  ;
  (AI.AddSpawneableCharClassInFINAL)("bigkranx")
  ;
  (AI.AddSpawneableCharClassInFINAL)("blindfly")
  ;
  (AI.AddSpawneableCharClassInFINAL)("caterzilla")
  ;
  (AI.AddSpawneableCharClassInFINAL)("chozozombiex")
  ;
  (AI.AddSpawneableCharClassInFINAL)("daivo")
  ;
  (AI.AddSpawneableCharClassInFINAL)("depthorn")
  ;
  (AI.AddSpawneableCharClassInFINAL)("dizzeansprite")
  ;
  (AI.AddSpawneableCharClassInFINAL)("dredhed")
  ;
  (AI.AddSpawneableCharClassInFINAL)("dropter")
  ;
  (AI.AddSpawneableCharClassInFINAL)("fing")
  ;
  (AI.AddSpawneableCharClassInFINAL)("fulmite")
  ;
  (AI.AddSpawneableCharClassInFINAL)("gobbler_chozowarriorx")
  ;
  (AI.AddSpawneableCharClassInFINAL)("gobbler_cooldownx")
  ;
  (AI.AddSpawneableCharClassInFINAL)("gobbler_hydrogiga")
  ;
  (AI.AddSpawneableCharClassInFINAL)("gobbler_kraid")
  ;
  (AI.AddSpawneableCharClassInFINAL)("gobbler_scorpius")
  ;
  (AI.AddSpawneableCharClassInFINAL)("gobbler_supergoliath")
  ;
  (AI.AddSpawneableCharClassInFINAL)("gobbler_superquetzoa")
  ;
  (AI.AddSpawneableCharClassInFINAL)("goliath")
  ;
  (AI.AddSpawneableCharClassInFINAL)("gooplot")
  ;
  (AI.AddSpawneableCharClassInFINAL)("gooshocker")
  ;
  (AI.AddSpawneableCharClassInFINAL)("groundshocker")
  ;
  (AI.AddSpawneableCharClassInFINAL)("hecathon")
  ;
  (AI.AddSpawneableCharClassInFINAL)("iceflea")
  ;
  (AI.AddSpawneableCharClassInFINAL)("infester")
  ;
  (AI.AddSpawneableCharClassInFINAL)("klaida")
  ;
  (AI.AddSpawneableCharClassInFINAL)("kreep")
  ;
  (AI.AddSpawneableCharClassInFINAL)("nailong")
  ;
  (AI.AddSpawneableCharClassInFINAL)("nailugger")
  ;
  (AI.AddSpawneableCharClassInFINAL)("obsydomithon")
  ;
  (AI.AddSpawneableCharClassInFINAL)("omnithon")
  ;
  (AI.AddSpawneableCharClassInFINAL)("poisonfly")
  ;
  (AI.AddSpawneableCharClassInFINAL)("quetshocker")
  ;
  (AI.AddSpawneableCharClassInFINAL)("quetzoa")
  ;
  (AI.AddSpawneableCharClassInFINAL)("redenki")
  ;
  (AI.AddSpawneableCharClassInFINAL)("rockdiver")
  ;
  (AI.AddSpawneableCharClassInFINAL)("rodomithonx")
  ;
  (AI.AddSpawneableCharClassInFINAL)("rodotuk")
  ;
  (AI.AddSpawneableCharClassInFINAL)("sabotoru")
  ;
  (AI.AddSpawneableCharClassInFINAL)("sakai")
  ;
  (AI.AddSpawneableCharClassInFINAL)("sclawk")
  ;
  (AI.AddSpawneableCharClassInFINAL)("scourge")
  ;
  (AI.AddSpawneableCharClassInFINAL)("shakernaut")
  ;
  (AI.AddSpawneableCharClassInFINAL)("sharpaw")
  ;
  (AI.AddSpawneableCharClassInFINAL)("shelmit")
  ;
  (AI.AddSpawneableCharClassInFINAL)("slidle")
  ;
  (AI.AddSpawneableCharClassInFINAL)("slugger")
  ;
  (AI.AddSpawneableCharClassInFINAL)("specimen_x4a")
  ;
  (AI.AddSpawneableCharClassInFINAL)("spitclawk")
  ;
  (AI.AddSpawneableCharClassInFINAL)("spittail")
  ;
  (AI.AddSpawneableCharClassInFINAL)("sunnap")
  ;
  (AI.AddSpawneableCharClassInFINAL)("takumaku")
  ;
  (AI.AddSpawneableCharClassInFINAL)("vulkran")
  ;
  (AI.AddSpawneableCharClassInFINAL)("warlotus")
  ;
  (AI.AddSpawneableCharClassInFINAL)("yampa")
  ;
  (AI.AddSpawneableCharClassInFINAL)("yojimbee")
  ;
  (AI.AddSpawneableCharClassInFINAL)("rinka")
  ;
  (AI.AddSpawneableCharClassInFINAL)("cucannon")
  ;
  (AI.AddSpawneableCharClassInFINAL)("hydrogiga")
  ;
  (AI.AddSpawneableCharClassInFINAL)("chozorobotsoldier")
  ;
  (AI.AddSpawneableCharClassInFINAL)("chozowarrior")
  ;
  (AI.AddSpawneableCharClassInFINAL)("chozowarriornormal")
  ;
  (AI.AddSpawneableCharClassInFINAL)("chozowarriorelite")
  ;
  (AI.AddSpawneableCharClassInFINAL)("chozowarriorx")
  ;
  (AI.AddSpawneableCharClassInFINAL)("chozowarriorxnormal")
  ;
  (AI.AddSpawneableCharClassInFINAL)("chozowarriorxelite")
  ;
  (AI.AddSpawneableCharClassInFINAL)("superquetzoa")
  ;
  (AI.AddSpawneableCharClassInFINAL)("supergoliath")
  ;
  (AI.AddSpawneableCharClassInFINAL)("core_x")
  ;
  (AI.AddSpawneableCharClassInFINAL)("core_x_superquetzoa")
  ;
  (AI.AddSpawneableCharClassInFINAL)("cooldownxboss")
  ;
  (AI.AddSpawneableCharClassInFINAL)("chozocommander")
  ;
  (AI.AddSpawneableCharClassInFINAL)("scorpius")
  ;
  (AI.AddSpawneableCharClassInFINAL)("kraid")
end

  SetSpawneableCharClassInFINAL = l_0_1
  l_0_1 = function()
  -- function num : 0_2 , upvalues : l_0_0
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R0 in 'UnsetPending'

  l_0_0.CurrentScenario = nil
  -- DECOMPILER ERROR at PC3: Confused about usage of register: R0 in 'UnsetPending'

  l_0_0.CurrentScenarioID = nil
  -- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

  l_0_0.CurrentScenarioBlackboard = nil
end

  ResetCurrentScenarioInfo = l_0_1
  l_0_1 = function()
  -- function num : 0_3
end

  OnLoadGameFromSaveData = l_0_1
  l_0_1 = function()
  -- function num : 0_4 , upvalues : l_0_0
  if (l_0_0.CurrentScenario).OnLoadScenarioFinished ~= nil then
    ((l_0_0.CurrentScenario).OnLoadScenarioFinished)()
  end
end

  OnLoadScenarioFinished = l_0_1
  l_0_1 = function(l_6_0)
  -- function num : 0_5 , upvalues : l_0_0
  local l_6_1 = l_0_0.CurrentScenarioID
  -- DECOMPILER ERROR at PC5: Confused about usage of register: R2 in 'UnsetPending'

  l_0_0.CurrentScenario = l_0_0[l_6_0]
  -- DECOMPILER ERROR at PC7: Confused about usage of register: R2 in 'UnsetPending'

  l_0_0.CurrentScenarioID = l_6_0
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R2 in 'UnsetPending'

  l_0_0.CurrentScenarioBlackboard = (Game.GetScenarioBlackboardSectionID)(l_6_0)
end

  SetCurrentScenario = l_0_1
  l_0_1 = function(l_7_0, l_7_1, l_7_2, l_7_3)
  -- function num : 0_6 , upvalues : l_0_0
  SetCurrentScenario(l_7_1)
  -- DECOMPILER ERROR at PC7: Confused about usage of register: R4 in 'UnsetPending'

  l_0_0.Character = (Game.GetPlayer)()
  bWaitingForScenarioChange = false
  -- DECOMPILER ERROR at PC36: Confused about usage of register: R4 in 'UnsetPending'

  if msemenu ~= nil and msemenu.items ~= nil and (msemenu.items).CurrentScenario ~= nil then
    if (l_0_0.CurrentScenario).DebugMenuEntry == nil or not (l_0_0.CurrentScenario).DebugMenuEntry then
      ((msemenu.items).CurrentScenario).Contextual = {}
      ;
      ((l_0_0.CurrentScenario).main)()
      if l_7_3 ~= "Editor" then
        if (l_0_0.CurrentScenario).InitFromBlackboard ~= nil then
          ((l_0_0.CurrentScenario).InitFromBlackboard)()
        else
          ;
          (utils.LOG_WARN)(utils.LOGTYPE_LOGIC, "InitFromBlackboard method does not exist in Scenario " .. tostring(l_7_1))
        end
      else
        if (l_0_0.CurrentScenario).CreateWorldGraph ~= nil then
          ((l_0_0.CurrentScenario).CreateWorldGraph)()
        else
          ;
          (utils.LOG_WARN)(utils.LOGTYPE_LOGIC, "CreateWorldGraph method does not exist in Scenario " .. tostring(l_7_1))
        end
      end
    end
  end
end

  InitScenario = l_0_1
  l_0_1 = function()
  -- function num : 0_7
  (Game.SetLoadingScreen)(false)
  ;
  (loadingscreen.HideLoadingScreen)()
end

  HideLoadingScreen = l_0_1
  l_0_1 = function(l_9_0, l_9_1)
  -- function num : 0_8 , upvalues : l_0_0
  -- DECOMPILER ERROR at PC10: Overwrote pending register: R2 in 'AssignReg'

  if l_0_0.CurrentScenarioBlackboard == nil or nil == nil then
    return l_9_1
  end
end

  ReadFromBlackboard = l_0_1
  l_0_1 = function(l_10_0, l_10_1, l_10_2)
  -- function num : 0_9 , upvalues : l_0_0
  if l_0_0.CurrentScenarioBlackboard ~= nil then
    (Blackboard.SetProp)(l_0_0.CurrentScenarioBlackboard, l_10_0, l_10_1, l_10_2)
  end
end

  WriteToBlackboard = l_0_1
  l_0_1 = function(l_11_0, l_11_1, l_11_2)
  -- function num : 0_10 , upvalues : l_0_0
  if l_0_0.CurrentScenarioBlackboard ~= nil then
    (Blackboard.SetProp)("ScenarioShared", l_11_0, l_11_1, l_11_2)
  end
end

  WriteToSharedBlackboard = l_0_1
  l_0_1 = function(l_12_0, l_12_1)
  -- function num : 0_11 , upvalues : l_0_0
  -- DECOMPILER ERROR at PC9: Overwrote pending register: R2 in 'AssignReg'

  if l_0_0.CurrentScenarioBlackboard == nil or nil == nil then
    return l_12_1
  end
end

  ReadFromSharedBlackboard = l_0_1
  l_0_1 = function(l_13_0, l_13_1, l_13_2)
  -- function num : 0_12
  if l_13_0 == nil or (Blackboard.GetProp)(l_13_0, l_13_1) == nil then
    return l_13_2
  end
end

  GetBlackboardProp = l_0_1
  l_0_1 = function(l_14_0, l_14_1, l_14_2, l_14_3)
  -- function num : 0_13
  if l_14_0 ~= nil then
    (Blackboard.SetProp)(l_14_0, l_14_1, l_14_2, l_14_3)
  end
end

  SetBlackboardProp = l_0_1
  l_0_1 = function()
  -- function num : 0_14
  local l_15_0 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE")
  if l_15_0 ~= nil then
    (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", l_15_0)
  end
  local l_15_1 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY")
  if l_15_1 ~= nil then
    (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", l_15_1)
  end
  local l_15_2 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX")
  if l_15_2 ~= nil then
    (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", l_15_2)
  end
  local l_15_3 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX")
  if l_15_3 ~= nil then
    (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", l_15_3)
  end
  ;
  (Game.ReinitPlayerFromBlackboard)()
end

  RecoverPlayerMaxItemsAmounts = l_0_1
  l_0_1 = function(l_16_0)
  -- function num : 0_15 , upvalues : l_0_0
  if l_16_0 == nil then
    l_16_0 = true
  end
  local l_16_1 = "CAM_Default"
  -- DECOMPILER ERROR at PC9: Confused about usage of register: R2 in 'UnsetPending'

  l_0_0.InitialCamera = (Game.GetActor)("MainCamera")
  if l_0_0.InitialCamera ~= nil then
    if not (Game.ExistsLogicCamera)(l_16_1) then
      CreateDefaultLogicCamera(l_16_1)
    end
    ;
    ((l_0_0.InitialCamera).CAMERA):SetLogicCameraParams(l_16_1, l_16_0)
  end
  if l_0_0.InitialCamera ~= nil then
    do
      if ((l_0_0.InitialCamera).CAMERA):GetLogicCameraController(l_16_1) == nil then
        local l_16_2, l_16_3 = "METROID"
        l_16_3 = l_0_0
        l_16_3 = l_16_3.InitialCamera
        l_16_3(l_16_3, l_16_2, l_16_0)
      end
      -- DECOMPILER ERROR at PC49: Overwrote pending register: R3 in 'AssignReg'

      -- DECOMPILER ERROR at PC52: Confused about usage of register: R3 in 'UnsetPending'

      ;
      ((l_16_3.InitialCamera).CAMERA).bIgnoreSlomo = false
    end
  end
end

  ActivateDefaultCamera = l_0_1
  l_0_1 = function(l_17_0)
  -- function num : 0_16
  local l_17_1 = {}
  l_17_1.Controller = "METROID"
  l_17_1.MinExtraZDist = "1665.807358"
  l_17_1.MaxExtraZDist = "1665.807358"
  l_17_1.DefaultInterp = "10.0"
  l_17_1.ParamsInterp = "1.5"
  ;
  (Game.CreateLogicCamera)(l_17_0, l_17_1)
end

  CreateDefaultLogicCamera = l_0_1
  l_0_1 = function(l_18_0, l_18_1, l_18_2, l_18_3)
  -- function num : 0_17
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if l_18_3 == nil then
      l_18_3 = 0.30000001192093
    end
    ;
    (Game.FadeOut)(l_18_3)
    ;
    (Game.FadeOutStream)(l_18_3 * 0.80000001192093)
    local l_18_4 = tCharacterScenarioLevels[l_18_0]
    if l_18_4 == nil or not l_18_4 then
      l_18_4 = l_18_0
    end
    ;
    (Game.AddPSF)(l_18_3 + 0.10000000149012, "Game.LoadScenarioWithoutFadeIn", "ssssi", l_18_4, l_18_1, l_18_2, "", 1)
  end
end

  FadeOutAndLoadWithoutFadeIn = l_0_1
  l_0_1 = function()
  -- function num : 0_18
  local l_19_0 = (Blackboard.GetProp)("GAME", "Player")
  local l_19_1 = (Game.GetPlayerBlackboardSectionName)()
  local l_19_2 = (Blackboard.GetProp)(l_19_1, "LevelID")
  local l_19_3 = (Blackboard.GetProp)(l_19_1, "ScenarioID")
  local l_19_4 = (Blackboard.GetProp)(l_19_1, "StartPoint")
  ;
  (Init.InitGameBlackboard)()
  ;
  (Game.SaveGame)("checkpoint", "", "", false)
  ;
  (Game.LoadScenario)(l_19_2, l_19_3, l_19_4, l_19_0)
end

  ResetBlackboardAndReload = l_0_1
  l_0_1 = function(l_20_0, l_20_1, l_20_2, l_20_3, l_20_4)
  -- function num : 0_19
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if l_20_3 == nil then
      l_20_3 = 0.66000002622604
    end
    local l_20_5 = tCharacterScenarioLevels[l_20_0]
    if l_20_5 == nil or not l_20_5 then
      l_20_5 = l_20_0
    end
    if l_20_4 then
      (Game.TransitionFadeOut)(l_20_3)
    else
      ;
      (Game.FadeOut)(l_20_3)
    end
    ;
    (Game.FadeOutStream)(l_20_3 * 0.80000001192093)
    ;
    (Game.AddPSF)(l_20_3 + 0.10000000149012, "Game.LoadScenario", "ssssi", l_20_5, l_20_1, l_20_2, "", 1)
  end
end

  FadeOutAndLoad = l_0_1
  l_0_1 = function(l_21_0, l_21_1, l_21_2, l_21_3)
  -- function num : 0_20
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if l_21_3 == nil then
      l_21_3 = 0.66000002622604
    end
    local l_21_4 = tCharacterScenarioLevels[l_21_0]
    if l_21_4 == nil or not l_21_4 then
      l_21_4 = l_21_0
    end
    ;
    (Game.FadeOutBG)(l_21_3)
    ;
    (Game.FadeOutStream)(l_21_3 * 0.80000001192093)
    ;
    (Game.AddPSF)(l_21_3 + 0.10000000149012, "Game.LoadScenario", "ssssi", l_21_4, l_21_1, l_21_2, "", 2)
  end
end

  FadeOutBGAndLoad = l_0_1
  l_0_1 = function(l_22_0)
  -- function num : 0_21
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if l_22_0 == nil then
      l_22_0 = 0.66000002622604
    end
    ;
    (Game.FadeOut)(l_22_0)
    ;
    (Game.FadeOutStream)(l_22_0 * 0.80000001192093)
    ;
    (Game.AddPSF)(l_22_0 + 0.10000000149012, "Game.ReloadCurrentScenario", "")
  end
end

  FadeOutAndReloadCurrentScenario = l_0_1
  l_0_1 = function(l_23_0, l_23_1, l_23_2, l_23_3, l_23_4)
  -- function num : 0_22
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if l_23_3 == nil then
      l_23_3 = 0.66000002622604
    end
    local l_23_5 = tCharacterScenarioLevels[l_23_0]
    if l_23_5 == nil or not l_23_5 then
      l_23_5 = l_23_0
    end
    ;
    (Game.TransitionFadeOut)(l_23_3)
    ;
    (Game.FadeOutStream)(l_23_3 * 0.80000001192093)
    ;
    (Game.AddPSF)(l_23_3 + 0.10000000149012, "Game.LoadScenario", "ssssi", l_23_5, l_23_1, l_23_2, l_23_4, 1)
  end
end

  FadeOutAndLoadWithPlayer = l_0_1
  l_0_1 = function(l_24_0, l_24_1)
  -- function num : 0_23
  if l_24_1 == nil then
    l_24_1 = 0.30000001192093
  end
  ;
  (Game.FadeOut)(l_24_1)
  ;
  (Game.AddPSF)(l_24_1 + 0.10000000149012, "Game.LaunchCutscene", "s", l_24_0)
end

  FadeOutAndCutscene = l_0_1
  l_0_1 = function(l_25_0, l_25_1)
  -- function num : 0_24
  if l_25_1 == nil then
    l_25_1 = 0.30000001192093
  end
  ;
  (Game.FadeOut)(l_25_1)
  ;
  (Game.AddPSF)(l_25_1 + 0.10000000149012, "Game.UnloadScenario", "s", l_25_0)
end

  FadeOutAndUnloadScenario = l_0_1
  l_0_1 = function(l_26_0, l_26_1)
  -- function num : 0_25
  if l_26_1 == nil then
    l_26_1 = 0.30000001192093
  end
  local l_26_2 = (Game.GetPlayer)()
  if l_26_2 ~= nil then
    (l_26_2.INPUT):IgnoreInputFor(l_26_1 + 0.10000000149012, "FadeOutAndSetCutsceneMode", true)
  end
  ;
  (Game.FadeOut)(l_26_1)
  ;
  (Game.AddPSF)(l_26_1 + 0.10000000149012, "Game.SetCutsceneMode", "s", l_26_0)
end

  FadeOutAndSetCutsceneMode = l_0_1
  l_0_1 = function(l_27_0, l_27_1, l_27_2, l_27_3, l_27_4)
  -- function num : 0_26
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R5 in 'UnsetPending'

  Cutscenes.NextLevelId = l_27_0
  -- DECOMPILER ERROR at PC3: Confused about usage of register: R5 in 'UnsetPending'

  Cutscenes.NextScenearioId = l_27_1
  -- DECOMPILER ERROR at PC5: Confused about usage of register: R5 in 'UnsetPending'

  Cutscenes.NextStartPoint = l_27_2
  if l_27_4 == nil then
    l_27_4 = 0.30000001192093
  end
  local l_27_5 = (Game.GetPlayer)()
  if l_27_5 ~= nil then
    (l_27_5.INPUT):IgnoreInputFor(l_27_4 + 0.10000000149012, "FadeOutAndLoadWithCutscene", true)
  end
  ;
  (Game.FadeOut)(l_27_4)
  ;
  (Game.AddPSF)(l_27_4 + 0.10000000149012, "Game.SetLoadingMode", "s", l_27_3)
end

  FadeOutAndLoadWithCutscene = l_0_1
  l_0_1 = function(l_28_0, l_28_1, l_28_2)
  -- function num : 0_27
  if l_28_0 == nil then
    l_28_0 = 0.30000001192093
  end
  if l_28_1 == nil then
    l_28_1 = false
  end
  if l_28_2 == nil then
    l_28_2 = false
  end
  ;
  (Game.FadeOut)(l_28_0)
  ;
  (Game.AddPSF)(l_28_0 + 0.10000000149012, "Scenario.GoToMainMenu", "bb", l_28_1, l_28_2)
end

  FadeOutAndGoToMainMenu = l_0_1
  l_0_1 = function(l_29_0, l_29_1)
  -- function num : 0_28
  if l_29_0 == true and loadingscreen then
    (loadingscreen.SetMainMenuLoadingScreen)()
  end
  if l_29_1 then
    (GUI.ResetMainMenuDebugGUI)("gui/scripts/msemenu_start.lua", "")
  end
  ;
  (Game.GoToMainMenu)()
end

  GoToMainMenu = l_0_1
  l_0_1 = function(l_30_0)
  -- function num : 0_29
  if l_30_0 == nil then
    l_30_0 = 0.30000001192093
  end
  ;
  (Game.FadeOut)(l_30_0)
end

  FadeOut = l_0_1
  l_0_1 = function(l_31_0)
  -- function num : 0_30
  if l_31_0 == nil then
    l_31_0 = 0.30000001192093
  end
  ;
  (Game.FadeIn)(0.10000000149012, l_31_0)
end

  FadeIn = l_0_1
  l_0_1 = function(l_32_0, l_32_1, ...)
  -- function num : 0_31
  for l_32_6,i_2 in ipairs(l_32_0) do
    if (Game.GetActor)(i_2) ~= nil then
      local l_32_8 = nil
      -- DECOMPILER ERROR at PC13: Confused about usage of register: R9 in 'UnsetPending'

      if ((Game.GetActor)(i_2))[l_32_1] ~= nil then
        (((Game.GetActor)(i_2))[l_32_1])(l_32_8, unpack(arg))
      end
    end
  end
end

  ForEachEntityIn = l_0_1
  l_0_1 = 0.20000000298023
  fSweetDeadStartDelay = l_0_1
  l_0_1 = 0.5
  fSweetDeadFadeOutTime = l_0_1
  l_0_1 = 0.5
  fSweetDeadBlackScreenTime = l_0_1
  l_0_1 = 0.5
  fSweetDeadFadeInTime = l_0_1
  l_0_1 = function(l_33_0)
  -- function num : 0_32
  local l_33_1 = (Game.GetPlayer)()
  if l_33_1.CurrentLife > 0 then
    (Scenario.DisableInput)()
    l_33_1:IgnoreDamageFor(fSweetDeadStartDelay + fSweetDeadFadeOutTime + fSweetDeadBlackScreenTime + fSweetDeadFadeInTime)
    -- DECOMPILER ERROR at PC19: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (l_33_1.ATTACK).bWantsEnabled = false
    l_33_1:IgnoreHangFor(fSweetDeadStartDelay + fSweetDeadFadeOutTime + fSweetDeadBlackScreenTime + fSweetDeadFadeInTime)
    l_33_1.Invulnerable = true
    if l_33_0 == nil then
      l_33_0 = (Blackboard.GetProp)((Game.GetPlayerBlackboardSectionName)(), "StartPoint")
    end
    ;
    (Game.AddSF)(fSweetDeadStartDelay, "Scenario.OnSweetDeadFadeOut", "s", l_33_0)
  end
end

  CheckSweetDead = l_0_1
  l_0_1 = function(l_34_0)
  -- function num : 0_33
  (Game.FadeOut)(fSweetDeadFadeOutTime)
  local l_34_1 = l_34_0
  ;
  (Game.AddSF)(fSweetDeadFadeOutTime + fSweetDeadBlackScreenTime, "Scenario.OnSweetDeadTeleport", "s", l_34_1)
end

  OnSweetDeadFadeOut = l_0_1
  l_0_1 = function(l_35_0)
  -- function num : 0_34
  (Game.TeleportEntityToStartPoint)((Game.GetPlayerName)(), l_35_0, fSweetDeadFadeInTime, true)
  ;
  (Game.FadeIn)(0.10000000149012, fSweetDeadFadeInTime)
  ;
  (Game.AddSF)(0, "Scenario.OnSweetDeadFinished", "")
end

  OnSweetDeadTeleport = l_0_1
  l_0_1 = function()
  -- function num : 0_35
  local l_36_0 = (Game.GetPlayer)()
  -- DECOMPILER ERROR at PC4: Confused about usage of register: R1 in 'UnsetPending'

  ;
  (l_36_0.ATTACK).bWantsEnabled = true
  l_36_0.Invulnerable = false
  ;
  (Scenario.EnableInput)()
  if CurrentScenario ~= nil and CurrentScenario.OnSweetDeadFinished ~= nil then
    (CurrentScenario.OnSweetDeadFinished)()
  end
end

  OnSweetDeadFinished = l_0_1
  l_0_1 = function()
  -- function num : 0_36
  local l_37_0 = (Game.GetPlayer)()
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R1 in 'UnsetPending'

  if l_37_0 ~= nil then
    (l_37_0.INPUT).bWantsEnabled = true
    ;
    (Game.DelSF)("Scenario.OnEndDisableInputFor")
  end
end

  EnableInput = l_0_1
  l_0_1 = function()
  -- function num : 0_37
  local l_38_0 = (Game.GetPlayer)()
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R1 in 'UnsetPending'

  if l_38_0 ~= nil then
    (l_38_0.INPUT).bWantsEnabled = false
    ;
    (Game.DelSF)("Scenario.OnEndDisableInputFor")
  end
end

  DisableInput = l_0_1
  l_0_1 = function(l_39_0)
  -- function num : 0_38
  local l_39_1 = (Game.GetPlayer)()
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R2 in 'UnsetPending'

  if l_39_1 ~= nil then
    (l_39_1.INPUT).bWantsEnabled = false
    ;
    (Game.AddSF)(l_39_0, "Scenario.OnEndDisableInputFor", "")
  end
end

  DisableInputFor = l_0_1
  l_0_1 = function()
  -- function num : 0_39
  local l_40_0 = (Game.GetPlayer)()
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R1 in 'UnsetPending'

  if l_40_0 ~= nil then
    (l_40_0.INPUT).bWantsEnabled = true
  end
end

  OnEndDisableInputFor = l_0_1
  l_0_1 = function(l_41_0)
  -- function num : 0_40
  if l_41_0 == nil then
    l_41_0 = false
  end
  local l_41_1 = true
  local l_41_2 = (Game.GetCurrentGameModeID)()
  if l_41_2 == "CUTSCENE" then
    l_41_1 = false
  end
  if l_41_1 then
    l_41_1 = not (Game.IsCutscenePlaying)()
  end
  do
    if l_41_1 and l_41_0 then
      local l_41_3 = (Game.GetPlayer)()
      if l_41_3 ~= nil then
        l_41_1 = (l_41_3.INPUT).bWantsEnabled
      end
    end
    return l_41_1
  end
end

  IsUserInteractionEnabled = l_0_1
  l_0_1 = function(l_42_0, l_42_1, l_42_2, l_42_3, l_42_4, l_42_5)
  -- function num : 0_41
  (Game.DelSF)("Scenario.PlayLogicCameraEnd")
  local l_42_6 = InitialCamera.LastLogicCameraID
  if l_42_3 ~= nil then
    l_42_6 = l_42_3
  end
  ;
  (Game.OverrideSoundListener)("OnTarget")
  ;
  (InitialCamera.CAMERA):SetLogicCameraParams(l_42_0, l_42_1)
  local l_42_7 = true
  if l_42_5 ~= nil and not l_42_5 then
    l_42_7 = false
  end
  if l_42_7 then
    DisableInput()
  end
  ;
  (Game.AddSF)(l_42_2, "Scenario.PlayLogicCameraEnd", "sbb", l_42_6, l_42_4, l_42_7)
end

  PlayLogicCamera = l_0_1
  l_0_1 = function(l_43_0, l_43_1, l_43_2)
  -- function num : 0_42
  (utils.LOG)(utils.LOGTYPE_LOGIC, "called PlayLogicCameraEnd " .. l_43_0)
  ;
  (Game.ResetOverrideSoundListener)()
  if l_43_2 then
    EnableInput()
  end
  ;
  (InitialCamera.CAMERA):SetLogicCameraParams(l_43_0, l_43_1)
end

  PlayLogicCameraEnd = l_0_1
  l_0_1 = function(l_44_0)
  -- function num : 0_43
  local l_44_1 = Blackboard.GetProp
  local l_44_2 = (string.upper)(l_44_0)
  do
    local l_44_3 = "ScenarioID"
    do return l_44_1(l_44_2, l_44_3) end
    -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

  GetPlayerCurrentScenario = l_0_1
  l_0_1 = function()
  -- function num : 0_44
  local l_45_0 = 0
  local l_45_1 = math.min
  local l_45_2 = l_45_0
  do
    local l_45_3 = 100
    do return l_45_1(l_45_2, l_45_3) end
    -- DECOMPILER ERROR at PC7: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

  GetGameProgressPct = l_0_1
  tGetGameProgressPctInTable, l_0_1 = l_0_1, {GameProgressPct = nil}
  l_0_1 = function()
  -- function num : 0_45
  tGetGameProgressPctInTable = (string.format)("%0.2f", GetGameProgressPct())
  return tGetGameProgressPctInTable
end

  GetGameProgressPctInTable = l_0_1
  l_0_1 = function(l_47_0, l_47_1)
  -- function num : 0_46
  local l_47_2 = (Game.GetActor)(l_47_0)
  if l_47_2 ~= nil then
    local l_47_3 = l_47_2.SMARTOBJECT
    if l_47_3 ~= nil then
      l_47_3:SetUseState(l_47_1)
    end
  end
end

  SetSmartObjectStateUse = l_0_1
  l_0_1 = function(l_48_0, l_48_1)
  -- function num : 0_47
  (Game.SetItemAmount)((Game.GetPlayerName)(), l_48_0, l_48_1)
  ;
  (Game.ReinitPlayerFromBlackboard)()
end

  SetItemAmount = l_0_1
  l_0_1 = function(l_49_0, l_49_1, l_49_2)
  -- function num : 0_48
  (utils.LOG)(utils.LOGTYPE_LOGIC, "Scenario Setting player position to " .. l_49_0 .. "," .. l_49_1 .. "," .. l_49_2)
  ;
  ((Game.GetPlayer)()).vPos = V3D(l_49_0, l_49_1, l_49_2)
end

  SetPlayerPosition = l_0_1
  l_0_1 = function(l_50_0, l_50_1, l_50_2, l_50_3)
  -- function num : 0_49
  for l_50_7,l_50_8 in pairs(CurrentScenario.tHazarous) do
    if l_50_7 ~= l_50_0 then
      local l_50_9 = (CurrentScenario.tHazarous)[l_50_7]
      if not l_50_3 and (Game.IsPoolActivated)(l_50_7) ~= l_50_3 then
        for l_50_13,l_50_14 in pairs(l_50_9[l_50_1]) do
          if l_50_14 == l_50_2 then
            return false
          end
        end
      end
    end
  end
  do return true end
  -- DECOMPILER ERROR at PC32: Confused about usage of register R4 for local variables in 'ReleaseLocals'

end

  CanaManageHazarousEntity = l_0_1
  l_0_1 = function(l_51_0, l_51_1)
  -- function num : 0_50
  if CurrentScenario.EnableHazarous ~= nil then
    (CurrentScenario.EnableHazarous)(l_51_0, l_51_1)
  end
  local l_51_2 = (CurrentScenario.tHazarous)[l_51_0]
  if l_51_2 ~= nil then
    for l_51_6,l_51_7 in pairs(l_51_2.Triggers) do
      if CanaManageHazarousEntity(l_51_0, "Triggers", l_51_7, l_51_1) then
        local l_51_8 = (Game.GetActor)(l_51_7)
        if l_51_8 ~= nil then
          l_51_8:SetWantsEnabled(not l_51_1)
        end
      end
    end
    for l_51_12,l_51_13 in pairs(l_51_2.SpawnGroups) do
      if CanaManageHazarousEntity(l_51_0, "SpawnGroups", l_51_13, l_51_1) then
        local l_51_14 = (Game.GetActor)(l_51_13)
        if l_51_14 ~= nil then
          if l_51_1 then
            (l_51_14.SPAWNGROUP):DisableSpawnGroup()
          else
            ;
            (l_51_14.SPAWNGROUP):EnableSpawnGroup()
          end
        end
      end
    end
    for l_51_18,l_51_19 in pairs(l_51_2.Usables) do
      if CanaManageHazarousEntity(l_51_0, "Usables", l_51_19, l_51_1) then
        local l_51_20 = (Game.GetActor)(l_51_19)
        if l_51_20 ~= nil then
          (l_51_20.USABLE):Activate(not l_51_1)
        end
      end
    end
  end
end

  EnableHazarous = l_0_1
  l_0_1 = function()
  -- function num : 0_51
  print("IncrementNumberOfNonReachableTriggers")
  ;
  ((Game.GetPlayerInfo)()):IncrementNumberOfNonReachableTriggers()
end

  IncrementNumberOfNonReachableTriggers = l_0_1
  l_0_1 = function()
  -- function num : 0_52
  print("DecrementNumberOfNonReachableTriggers")
  ;
  ((Game.GetPlayerInfo)()):DecrementNumberOfNonReachableTriggers()
end

  DecrementNumberOfNonReachableTriggers = l_0_1
  l_0_1 = function(l_54_0)
  -- function num : 0_53
  if l_54_0 ~= nil and l_54_0.AI ~= nil then
    return true
  else
    return false
  end
end

  CheckEmmyAlive = l_0_1
  l_0_1 = function(l_55_0, l_55_1, l_55_2)
  -- function num : 0_54
  if l_55_1 == nil or not l_55_1 then
    l_55_1 = true
  end
  local l_55_3 = (Blackboard.GetProp)((Game.GetPlayerBlackboardSectionName)(), "ScenarioID")
  if l_55_1 or l_55_3 == nil or l_55_3 ~= l_55_0 then
    (Game.SetRecoveryModeTemporarilyDisabled)(true)
    ;
    (Blackboard.Reset)()
    local l_55_4 = "StartPoint0"
    if l_55_2 ~= nil and l_55_2 ~= "" then
      l_55_4 = l_55_2
    end
    if (tScenarioMenuDefs.aScenarioPlayers)[l_55_0] == nil then
      (Game.DebugLoadScenario)((tScenarioMenuDefs.aScenarioDefs)[l_55_0], l_55_0, l_55_4, ((string.gmatch)((tScenarioMenuDefs.aScenarioDefs)[l_55_0], "%_(.+)$"))(), 1)
    else
      ;
      (Game.DebugLoadScenario)((tScenarioMenuDefs.aScenarioDefs)[l_55_0], l_55_0, l_55_4, (tScenarioMenuDefs.aScenarioPlayers)[l_55_0], 1)
    end
  end
  do
    return true
  end
end

  LoadScenario = l_0_1
  l_0_1 = function(l_56_0, l_56_1, l_56_2, l_56_3, l_56_4)
  -- function num : 0_55
  local l_56_5 = (Blackboard.GetProp)((Game.GetPlayerBlackboardSectionName)(), "ScenarioID")
  if l_56_5 == nil then
    return 
  end
  if ScenarioFadeTable == nil then
    ScenarioFadeTable = {}
  end
  -- DECOMPILER ERROR at PC21: Confused about usage of register: R6 in 'UnsetPending'

  if ScenarioFadeTable[l_56_5] == nil then
    ScenarioFadeTable[l_56_5] = {}
  end
  local l_56_6 = ScenarioFadeTable[l_56_5]
  if l_56_6[l_56_0] == nil then
    l_56_6[l_56_0] = {}
  end
  -- DECOMPILER ERROR at PC35: Confused about usage of register: R7 in 'UnsetPending'

  if (l_56_6[l_56_0])[l_56_1] == nil then
    (l_56_6[l_56_0])[l_56_1] = {}
  end
  -- DECOMPILER ERROR at PC44: Confused about usage of register: R7 in 'UnsetPending'

  if ((l_56_6[l_56_0])[l_56_1])[l_56_2] == nil then
    ((l_56_6[l_56_0])[l_56_1])[l_56_2] = {}
  end
  -- DECOMPILER ERROR at PC54: Confused about usage of register: R7 in 'UnsetPending'

  if (((l_56_6[l_56_0])[l_56_1])[l_56_2])[l_56_3] == nil then
    (((l_56_6[l_56_0])[l_56_1])[l_56_2])[l_56_3] = l_56_4
  end
  if l_56_6[l_56_2] == nil then
    l_56_6[l_56_2] = {}
  end
  -- DECOMPILER ERROR at PC66: Confused about usage of register: R7 in 'UnsetPending'

  if (l_56_6[l_56_2])[l_56_3] == nil then
    (l_56_6[l_56_2])[l_56_3] = {}
  end
  -- DECOMPILER ERROR at PC75: Confused about usage of register: R7 in 'UnsetPending'

  if ((l_56_6[l_56_2])[l_56_3])[l_56_0] == nil then
    ((l_56_6[l_56_2])[l_56_3])[l_56_0] = {}
  end
  -- DECOMPILER ERROR at PC85: Confused about usage of register: R7 in 'UnsetPending'

  if (((l_56_6[l_56_2])[l_56_3])[l_56_0])[l_56_1] == nil then
    (((l_56_6[l_56_2])[l_56_3])[l_56_0])[l_56_1] = l_56_4
  end
end

  AddFadeTransition = l_0_1
  l_0_1 = function(l_57_0, l_57_1, l_57_2, l_57_3)
  -- function num : 0_56
  if ScenarioFadeTable == nil then
    return nil
  end
  local l_57_4 = (Blackboard.GetProp)((Game.GetPlayerBlackboardSectionName)(), "ScenarioID")
  if ScenarioFadeTable[l_57_4] == nil then
    return nil
  end
  local l_57_5 = ScenarioFadeTable[l_57_4]
  if l_57_5[l_57_0] == nil then
    return nil
  else
    if (l_57_5[l_57_0])[l_57_1] == nil then
      return nil
    else
      if ((l_57_5[l_57_0])[l_57_1])[l_57_2] == nil then
        return nil
      else
        if (((l_57_5[l_57_0])[l_57_1])[l_57_2])[l_57_3] == nil then
          return nil
        else
          return (((l_57_5[l_57_0])[l_57_1])[l_57_2])[l_57_3]
        end
      end
    end
  end
end

  GetTransitionTypeOverride = l_0_1
  l_0_1 = function(l_58_0, l_58_1, l_58_2, l_58_3)
  -- function num : 0_57
  local l_58_4 = GetTransitionTypeOverride(l_58_0, l_58_1, l_58_2, l_58_3)
  if l_58_4 ~= nil then
    (Game.SetSubAreasPreferredTransitionType)(l_58_4)
  else
    ;
    (Game.SetSubAreasPreferredTransitionType)("FakeFade")
  end
end

  SubAreaChangeRequest = l_0_1
  l_0_1 = function()
  -- function num : 0_58
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 199)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 199)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 20)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 20)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_CAVE")
end

  SetSamusAbilities_STANDARD_EARLY = l_0_1
  l_0_1 = function()
  -- function num : 0_59
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 99)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 99)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 15)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 15)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_CAVE")
end

  SetSamusAbilities_CAVE = l_0_1
  l_0_1 = function()
  -- function num : 0_60
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 199)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 199)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_MAGMA")
end

  SetSamusAbilities_MAGMA = l_0_1
  l_0_1 = function()
  -- function num : 0_61
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_MAGMA_AFTERWIDE")
end

  SetSamusAbilities_MAGMA_AFTERWIDE = l_0_1
  l_0_1 = function()
  -- function num : 0_62
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_CAVE_AFTERVARIA")
end

  SetSamusAbilities_CAVE_AFTERVARIA = l_0_1
  l_0_1 = function()
  -- function num : 0_63
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_LAB")
end

  SetSamusAbilities_LAB = l_0_1
  l_0_1 = function()
  -- function num : 0_64
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 399)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 399)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_AQUA")
end

  SetSamusAbilities_AQUA = l_0_1
  l_0_1 = function()
  -- function num : 0_65
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 54)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 54)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_FOREST")
end

  SetSamusAbilities_FOREST = l_0_1
  l_0_1 = function()
  -- function num : 0_66
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 56)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 56)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_QUARANTINE")
end

  SetSamusAbilities_QUARANTINE = l_0_1
  l_0_1 = function()
  -- function num : 0_67
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 699)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 699)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 56)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 56)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_SANCTUARY")
end

  SetSamusAbilities_SANCTUARY = l_0_1
  l_0_1 = function()
  -- function num : 0_68
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 799)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 799)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 74)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 74)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_AQUA_AFTERGRAVITY")
end

  SetSamusAbilities_AQUA_AFTERGRAVITY = l_0_1
  l_0_1 = function()
  -- function num : 0_69
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 799)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 799)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 74)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 74)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_COOLDOWN")
end

  SetSamusAbilities_COOLDOWN = l_0_1
  l_0_1 = function()
  -- function num : 0_70
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 899)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 899)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 92)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 92)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_SHIPYARD")
end

  SetSamusAbilities_SHIPYARD = l_0_1
  l_0_1 = function()
  -- function num : 0_71
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 899)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 899)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 92)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 92)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_SANCTUARY_AFTERWAVE")
end

  SetSamusAbilities_SANCTUARY_AFTERWAVE = l_0_1
  l_0_1 = function()
  -- function num : 0_72
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 50)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 50)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 15)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 15)
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_FULLEQUIP")
end

  SetSamusAbilities_FULLEQUIP = l_0_1
  l_0_1 = function(l_74_0)
  -- function num : 0_73
  local l_74_1 = (string.gsub)(l_74_0, "SG_", "TG_PostBossCheckpoint_")
  local l_74_2 = (Game.GetActor)(l_74_1)
  if l_74_2 ~= nil then
    print("--- ACTIVATION TRIGGER " .. l_74_1 .. " ---")
    l_74_2.bEnabled = true
  end
  local l_74_3 = (string.gsub)(l_74_0, "SG_", "TG_SnapshotCheckpoint_")
  local l_74_4 = (Game.GetActor)(l_74_3)
  if l_74_4 ~= nil then
    print("--- DEACTIVATION TRIGGER " .. l_74_3 .. " ---")
    l_74_4.bEnabled = true
  end
end

  Activation_TG_PostBoss = l_0_1
  l_0_1 = 0.30000001192093
  fEmmyAbilityObtainedTimeToStart = l_0_1
  l_0_1 = 0.5
  fEmmyAbilityObtainedFadeOutTime = l_0_1
  l_0_1 = 0.050000000745058
  fEmmyAbilityObtainedFadeTime = l_0_1
  l_0_1 = 1
  fEmmyAbilityObtainedFadeInTime = l_0_1
  l_0_1 = ""
  sEmmyAbilityObtainedCallback = l_0_1
  l_0_1 = ""
  sEmmyAbilityObtainedFinalCallback = l_0_1
  l_0_1 = function()
  -- function num : 0_74
  (Game.PowerBombFade)(fEmmyAbilityObtainedFadeOutTime, fEmmyAbilityObtainedFadeTime, fEmmyAbilityObtainedFadeInTime)
  ;
  (Game.AddSF)(fEmmyAbilityObtainedFadeOutTime + fEmmyAbilityObtainedFadeTime * 0.5, "Scenario.EmmyAbilityObtained_ResetDarkness", "")
end

  EmmyAbilityObtained_Start = l_0_1
  l_0_1 = function()
  -- function num : 0_75
  (Game.AddSF)(fEmmyAbilityObtainedFadeInTime + fEmmyAbilityObtainedFadeTime * 0.5, "Scenario.EmmyAbilityObtained_RecoverInput", "")
  EmmyAbilityObtained_ShowMessageLaunchCallbacks()
  ;
  (Game.StopForceDarkness)("emmydeath", 0)
  ;
  (CurrentScenario.OnEmmyAbilityObtainedFadeOutCompleted)()
end

  EmmyAbilityObtained_ResetDarkness = l_0_1
  l_0_1 = function()
  -- function num : 0_76
  EmmyAbilityObtained_ShowMessageOmegaCannonTurnOff()
  local l_77_0 = (Game.GetPlayer)()
  if l_77_0 ~= nil then
    (l_77_0.INPUT):IgnoreInput(false, false, "EmmyAbilityObtained")
  end
end

  EmmyAbilityObtained_RecoverInput = l_0_1
  l_0_1 = function(l_78_0, l_78_1, l_78_2, l_78_3)
  -- function num : 0_77
  sEmmyAbilityObtainedCallback = l_78_1
  sEmmyAbilityObtainedFinalCallback = l_78_2
  if l_78_3 then
    (GUI.SetSamusMenuCompositionLuaCallbackOnClosed)("Scenario.EmmyAbilityObtained_ShowMessageLaunchCallbacks")
    ;
    (GUI.ShowMessage)(l_78_0, true, "", false)
  else
    ;
    (GUI.SetSamusMenuCompositionLuaCallbackOnClosed)("Scenario.EmmyAbilityObtained_ShowMessageCallback")
    ;
    (GUI.ShowMessage)(l_78_0, true, "", false)
  end
end

  EmmyAbilityObtained_ShowMessage = l_0_1
  l_0_1 = function()
  -- function num : 0_78
  (Game.AddSF)(-1, sEmmyAbilityObtainedCallback, "")
  ;
  (Game.AddSF)(-1, sEmmyAbilityObtainedFinalCallback, "")
end

  EmmyAbilityObtained_ShowMessageLaunchCallbacks = l_0_1
  l_0_1 = function()
  -- function num : 0_79
  local l_80_0 = (Game.GetPlayer)()
  if l_80_0 ~= nil then
    (l_80_0.INPUT):IgnoreInput(true, false, "EmmyAbilityObtained")
  end
  ;
  (Game.AddSF)(fEmmyAbilityObtainedTimeToStart, "Scenario.EmmyAbilityObtained_Start", "")
end

  EmmyAbilityObtained_ShowMessageCallback = l_0_1
  l_0_1 = function()
  -- function num : 0_80
  (GUI.ShowMessage)("#GUI_OMEGA_EMMY_1", true, "")
end

  EmmyAbilityObtained_ShowMessageOmegaCannonTurnOff = l_0_1
end

