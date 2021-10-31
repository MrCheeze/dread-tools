-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/s090_skybase.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

s090_skybase.main = function()
  -- function num : 0_0
  (Blackboard.SetProp)("GAME_PROGRESS", "TeleportWorldUnlocked", "b", true)
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

s090_skybase.InitFromBlackboard = function()
  -- function num : 0_1
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Game.ReinitPlayerFromBlackboard)()
  ;
  (Game.PopSetup)("ChangeCamera_002_Distance", true, true)
end

-- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

s090_skybase.SetupDebugGameBlackboard = function()
  -- function num : 0_2
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 999)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 999)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 84)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 84)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 3)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 3)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end

local l_0_0 = s090_skybase
local l_0_1 = {}
l_0_1.ShowDeath = true
l_0_1.GoToMainMenu = false
l_0_0.tGetOnDeathOverrides = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_3
  return s090_skybase.tGetOnDeathOverrides
end

l_0_0.GetOnDeathOverrides = l_0_1
l_0_0 = s090_skybase
l_0_1 = function(l_5_0, l_5_1)
  -- function num : 0_4
  if l_5_1 ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end

l_0_0.OnEntityGenerated = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_5
  (Game.AddSF)(0.5, "s090_skybase.CommanderCutscenePresentation", "")
end

l_0_0.OnComanderElevatorFinished = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_6
  local l_7_0 = (Game.GetActor)("cutsceneplayer_86")
  if l_7_0 ~= nil then
    (l_7_0.CUTSCENE):TryLaunchCutscene()
  end
end

l_0_0.CommanderCutscenePresentation = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_7
  (GUI.ShowMessage)("#COMMANDER_CUTSCENE_ACCESSPOINT_REVEAL", true, "s090_skybase.OnComanderElevatorFinished_MessageSkipped")
  local l_8_0 = (Game.GetPlayer)()
  if l_8_0 ~= nil then
    (l_8_0.INPUT):IgnoreInput(false, false, "OnComanderElevatorFinished")
  end
end

l_0_0.Delayed_OnComanderElevatorFinished = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_8
end

l_0_0.OnComanderElevatorFinished_MessageSkipped = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_9
  local l_10_0 = (Game.GetActor)("SG_ChozoCommander")
  if l_10_0 ~= nil then
    (l_10_0.SPAWNGROUP):EnableSpawnGroup()
  end
end

l_0_0.ActivateCommanderSpawnGroup = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_10
  (Game.StopMusicStream)(0, 1, 3)
end

l_0_0.FadeOutCommanderMusic1 = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_11
  (Game.StopMusicStream)(1, 1, 3)
end

l_0_0.FadeOutCommanderMusic2 = l_0_1
l_0_0 = s090_skybase
l_0_1 = function(l_13_0, l_13_1, l_13_2, l_13_3)
  -- function num : 0_12
  (Scenario.SubAreaChangeRequest)(l_13_0, l_13_1, l_13_2, l_13_3)
end

l_0_0.SubAreaChangeRequest = l_0_1
l_0_0 = s090_skybase
l_0_1 = function(l_14_0, l_14_1, l_14_2, l_14_3, l_14_4)
  -- function num : 0_13
end

l_0_0.OnSubAreaChange = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_14
  (Game.PushSetup)("ChangeCamera_002_Distance", true, true)
end

l_0_0.OnEnter_ChangeCamera_002_Near = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_15
  (Game.PopSetup)("ChangeCamera_002_Distance", true, true)
end

l_0_0.OnEnter_ChangeCamera_002_Far = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_16
  (((Game.GetCamera)()).CAMERA):SetLogicCameraParams("CAM_Near", true)
end

l_0_0.OnEnter_ChangeInterp = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_17
  (((Game.GetCamera)()).CAMERA):SetLogicCameraParams("CAM_Default", true)
end

l_0_0.OnExit_ChangeInterp = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_18
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_HYPER_SUIT", 1, true)
  ;
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_WEAPON_HYPER_BEAM", 1, true)
  ;
  (((Game.GetPlayer)()).LIFE):StopLifeAlarmSFX()
  -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

  ;
  (((Game.GetPlayer)()).MODELUPDATER).sModelAlias = "Hyper"
end

l_0_0.ObtainHyperSuit = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_19
  local l_20_0 = (Game.GetActor)("cutsceneplayer_101")
  if l_20_0 ~= nil then
    local l_20_1 = (Game.GetActor)("cutsceneplayer_101_left")
    if l_20_1 ~= nil then
      (l_20_0.CUTSCENE):QueueCutscenePlayer(l_20_1)
    end
  end
end

l_0_0.cutsceneplayer_101_left = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_20
  local l_21_0 = (Game.GetActor)("cutsceneplayer_101")
  if l_21_0 ~= nil then
    local l_21_1 = (Game.GetActor)("cutsceneplayer_101_right")
    if l_21_1 ~= nil then
      (l_21_0.CUTSCENE):QueueCutscenePlayer(l_21_1)
    end
  end
end

l_0_0.cutsceneplayer_101_right = l_0_1
l_0_0 = s090_skybase
l_0_1 = function()
  -- function num : 0_21
  local l_22_0 = (Game.GetPlayer)()
  if l_22_0 ~= nil then
    local l_22_1 = l_22_0.INVENTORY
    if l_22_1 ~= nil then
      l_22_1:SetItemAmount("ITEM_HYPER_SUIT", 1, true)
    end
    local l_22_2 = l_22_0.MODELUPDATER
    if l_22_2 ~= nil then
      l_22_2.sModelAlias = "Hyper"
      ;
      (l_22_2.ForceUpdate)()
    end
    ;
    (Game.LoadScenario)("c10_samus", "s080_shipyard", "SP_Checkpoint_CommanderX", "", 1)
    ;
    (Game.PlayCutsceneOnScenarioLoaded)("cutsceneplayer_108", true, true, true, false, false, "", "", 0, 0, 0)
  end
end

l_0_0.cutsceneplayer_108_end = l_0_1

