-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/s010_cave.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

s010_cave.main = function()
  -- function num : 0_0
  (s010_cave.PatrolRoutesGeneration)()
  ;
  (s010_cave.PatrolRoutesFinalNodesAssignation)()
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

s010_cave.SetupDebugGameBlackboard = function()
  -- function num : 0_1
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 99)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 99)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 10)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 10)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end

local l_0_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
local l_0_1 = false
local l_0_2 = false
local l_0_3 = false
local l_0_4 = false
local l_0_5 = false
local l_0_6 = false
local l_0_7 = false
local l_0_8 = false
local l_0_9 = false
local l_0_10 = false
local l_0_11 = false
local l_0_12 = ""
local l_0_13 = false
local l_0_14 = false
-- DECOMPILER ERROR at PC28: Confused about usage of register: R15 in 'UnsetPending'

s010_cave.OnLoadScenarioFinished = function()
  -- function num : 0_2 , upvalues : l_0_2
  if not l_0_2 then
    (Game.ResetFader)()
    ;
    (Game.FadeOut)(0)
  end
end

-- DECOMPILER ERROR at PC39: Confused about usage of register: R15 in 'UnsetPending'

s010_cave.InitFromBlackboard = function()
  -- function num : 0_3 , upvalues : l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_13, l_0_14, l_0_0
  (Game.ReinitPlayerFromBlackboard)()
  if CurrentScenario.oEmmyProtoEntity ~= nil then
    print("ProtoEmmyAntiguo presente")
  end
  ;
  (s010_cave.Event_WaterPoolInfiltration_Deactivate)()
  l_0_2 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).CAVES_GAME_INTRO, false)
  l_0_3 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).CAVES_EMMY_SPAWNED, false)
  l_0_4 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED, false)
  l_0_5 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).CAVES_COOLDOWN_APPLIED, false)
  l_0_6 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).CAVES_POSTXRELEASE_APPLIED, false)
  l_0_13 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).CAVES_TUTO_MAP_DONE, false)
  l_0_14 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).CAVES_TUTO_MAP_ROOM_DONE, false)
  l_0_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
  ;
  (s010_cave.CheckScorpiusDead)()
  do
    if (Game.GetFromGameBlackboardSection)("PlayedCutscenes", "CutScenePlayed[cutscenes/0049centralunitdetectsamus01/0049centralunitdetectsamus01.bmscu]") == 0 then
      local l_4_0 = (Game.GetActor)("DoorEmmy11")
      if l_4_0 ~= nil then
        (l_4_0.STARTPOINT):SetSaveGameToCheckpoint(false)
      end
    end
    if l_0_0 == true then
      (s010_cave.Activate_Setup_PostXRelease)()
    end
    -- DECOMPILER ERROR at PC111: Unhandled construct in 'MakeBoolean' P1

    if (Game.GetCooldownFlag)() == true and l_0_5 == false then
      (s010_cave.Cooldown_Activation)()
    end
    if l_0_5 == true then
      (s010_cave.Cooldown_Deactivation)()
    end
    local l_4_1 = (Blackboard.GetProp)("GAME_PROGRESS", "CUTSCENE_THEATRE_CUTSCENE")
    if l_4_1 ~= nil then
      print(l_4_1)
      ;
      (Game.LaunchCutscene)(l_4_1)
    end
    if not l_0_2 then
      (s010_cave.OnBegin_Cutscene_intro_space)()
    end
  end
end

-- DECOMPILER ERROR at PC43: Confused about usage of register: R15 in 'UnsetPending'

s010_cave.Activate_Setup_PostXRelease = function()
  -- function num : 0_4 , upvalues : l_0_6
  if l_0_6 == false then
    (Game.PushSetup)("PostXRelease", true, true)
    ;
    (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).CAVES_POSTXRELEASE_APPLIED, "b", true)
    l_0_6 = true
  end
end

-- DECOMPILER ERROR at PC46: Confused about usage of register: R15 in 'UnsetPending'

s010_cave.OnBegin_Cutscene_intro_space = function()
  -- function num : 0_5
  local l_6_0 = (Game.GetActor)("cutsceneplayer_intro_space")
  if l_6_0 ~= nil then
    local l_6_1 = (Game.GetActor)("cutsceneplayer_intro_flashbackinit")
    if l_6_1 ~= nil then
      (l_6_0.CUTSCENE):QueueCutscenePlayer(l_6_1)
      local l_6_2 = (Game.GetActor)("cutsceneplayer_intro_landing")
      if l_6_2 ~= nil then
        (l_6_1.CUTSCENE):QueueCutscenePlayer(l_6_2)
        local l_6_3 = (Game.GetActor)("cutsceneplayer_intro_arrivalatrium")
        if l_6_3 ~= nil then
          (l_6_2.CUTSCENE):QueueCutscenePlayer(l_6_3)
          local l_6_4 = (Game.GetActor)("cutsceneplayer_intro_fight")
          if l_6_4 ~= nil then
            (l_6_3.CUTSCENE):QueueCutscenePlayer(l_6_4)
            local l_6_5 = (Game.GetActor)("cutsceneplayer_intro_flashbackend")
            if l_6_5 ~= nil then
              (l_6_4.CUTSCENE):QueueCutscenePlayer(l_6_5)
            end
          end
        end
      end
    end
    do
      ;
      (l_6_0.CUTSCENE):TryLaunchCutscene()
    end
  end
end

-- DECOMPILER ERROR at PC50: Confused about usage of register: R15 in 'UnsetPending'

s010_cave.OnEnd_Cutscene_intro_end = function()
  -- function num : 0_6 , upvalues : l_0_2
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).CAVES_GAME_INTRO, "b", true)
  l_0_2 = true
  ;
  (Game.PushSetup)("PostIntro", true, true)
  ;
  (Game.PlayCurrentEnvironmentMusic)()
  ;
  (Game.SaveGame)("savedata", "IntroEnd", "StartPoint0", true)
end

-- DECOMPILER ERROR at PC53: Confused about usage of register: R15 in 'UnsetPending'

s010_cave.OnEmmyCaveDead = function()
  -- function num : 0_7
  (Game.PushSetup)("PostEmmy", true, true)
end

-- DECOMPILER ERROR at PC56: Confused about usage of register: R15 in 'UnsetPending'

s010_cave.OnEmmyAbilityObtainedFadeOutCompleted = function()
  -- function num : 0_8
  local l_9_0 = (Game.GetActor)("ev_entercu_cv_001")
  if l_9_0 ~= nil then
    (l_9_0.TUNNEL_TRAP):SetOpenState()
  end
  ;
  (((Game.GetActor)("Door062 (PW-PW, Special)")).LIFE):LockDoor()
  local l_9_1 = (Game.GetActor)("SG_WarLotus_000")
  if l_9_1 ~= nil then
    (l_9_1.SPAWNGROUP):EnableSpawnGroup()
  end
  local l_9_2 = (Game.GetActor)("PRP_CV_CentralUnitCaves")
  if l_9_2 ~= nil then
    (l_9_2.CENTRALUNIT):OnEmmyAbilityObtainedFadeOutCompleted()
  end
end

-- DECOMPILER ERROR at PC59: Confused about usage of register: R15 in 'UnsetPending'

s010_cave.DelayedOnEmmyCaveDead = function()
  -- function num : 0_9
end

-- DECOMPILER ERROR at PC62: Confused about usage of register: R15 in 'UnsetPending'

s010_cave.OnEmmyDeathMessageSkipped = function()
  -- function num : 0_10
end

local l_0_15 = s010_cave
local l_0_16 = {}
l_0_16.ShowDeath = true
l_0_16.GoToMainMenu = false
l_0_15.tGetOnDeathOverrides = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_11
  return s010_cave.tGetOnDeathOverrides
end

l_0_15.GetOnDeathOverrides = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_12
  (Game.AddSF)(0.10000000149012, "s010_cave.DelayedSPRTutoTriggerEnable", "")
end

l_0_15.SPRTutoTriggerEnable = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_13
  local l_14_0 = (Game.GetActor)("SPRCentralUnitTutoTrigger")
  if l_14_0 ~= nil then
    l_14_0.bEnabled = true
  end
end

l_0_15.DelayedSPRTutoTriggerEnable = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_14
  (Game.AddSF)(0.10000000149012, "s010_cave.DelayedSPBTutoTriggerEnable", "")
end

l_0_15.SPBTutoTriggerEnable = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_15
  local l_16_0 = (Game.GetActor)("SPBCentralUnitTutoTrigger")
  if l_16_0 ~= nil then
    l_16_0.bEnabled = true
  end
end

l_0_15.DelayedSPBTutoTriggerEnable = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_16
end

l_0_15.OnBeforeGenerate = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_18_0, l_18_1)
  -- function num : 0_17
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  CurrentScenario.oEmmyEntity = l_18_1
  ;
  (AI.SetWorldGraphToEmmy)("LE_WorldGraph", l_18_1.sName)
  ;
  (s010_cave.ChangePatrolEmmy)("PATROLROUTE_02")
  print("EMMY: Generation OK. Starting patrol: " .. (l_18_1.AI).sCurrentPatrol)
end

l_0_15.OnEmmyCaveGenerated = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_18 , upvalues : l_0_3
  local l_19_0 = (Game.GetActor)("Door062 (PW-PW, Special)")
  if l_19_0 ~= nil then
    (l_19_0.LIFE):CloseDoor(true, true, true)
    ;
    (l_19_0.LIFE):LockDoor()
  end
  local l_19_1 = (Game.GetActor)("PRP_CV_CentralUnitCaves")
  if l_19_1 ~= nil then
    (l_19_1.CENTRALUNIT):Activate()
  else
    print("CENTRAL_UNIT: PRP_CV_CentralUnitCaves not found")
  end
  local l_19_2 = (Game.GetActor)("TG_EnableSpawnEmmy")
  if l_19_2 ~= nil then
    l_19_2.bEnabled = false
  end
  ;
  (GUI.AddEmmyMissionLogEntry)("#MLOG_ENCOUNTER_EMMY_CAVE")
  -- DECOMPILER ERROR at PC48: Confused about usage of register: R3 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    (CurrentScenario.oEmmyEntity).bEnabled = true
  end
  ;
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).CAVES_EMMY_SPAWNED, "b", true)
  l_0_3 = true
end

l_0_15.EmmyCaveSpawnSequence = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_19
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI):OnPresentationCutsceneEnd()
  end
end

l_0_15.EmmyCaveSpawnSequenceEnd = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_20
  local l_21_0 = (Game.GetActor)("PRP_CV_CentralUnitProto")
  if l_21_0 ~= nil then
    (l_21_0.CENTRALUNIT):Activate()
  else
    print("CENTRAL_UNIT: PRP_CV_CentralUnitProto not found")
  end
  ;
  (GUI.AddEmmyMissionLogEntry)("#MLOG_ENCOUNTER_PROTOEMMY_CAVE")
end

l_0_15.EmmyProtoSpawnSequence = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_22_0, l_22_1)
  -- function num : 0_21
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  CurrentScenario.oEmmyProtoEntity = l_22_1
end

l_0_15.OnEmmyProtoGenerated = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_22
  local l_23_0 = (Game.GetActor)("LM_AfterEmmyProtoClimbSequence_Samus")
  local l_23_1 = (Game.GetPlayer)()
  if l_23_1 ~= nil and l_23_0 ~= nil then
    l_23_1.vPos = l_23_0.vPos
    l_23_1.vAng = l_23_0.vAng
  end
  local l_23_2 = (Game.GetActor)("LM_AfterEmmyProtoClimbSequence_Emmy")
  -- DECOMPILER ERROR at PC27: Confused about usage of register: R3 in 'UnsetPending'

  if CurrentScenario.oEmmyProtoEntity ~= nil and l_23_2 ~= nil then
    (CurrentScenario.oEmmyProtoEntity).bEnabled = false
    -- DECOMPILER ERROR at PC31: Confused about usage of register: R3 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyProtoEntity).vPos = l_23_2.vPos
    -- DECOMPILER ERROR at PC35: Confused about usage of register: R3 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyProtoEntity).vAng = l_23_2.vAng
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R3 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyProtoEntity).bEnabled = true
  end
end

l_0_15.EmmyProtoClimbSequenceMessageSkipped = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_23
  local l_24_0 = (Game.GetActor)("LM_AfterEmmyProtoClimbSequence_Emmy")
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

  if CurrentScenario.oEmmyProtoEntity ~= nil and l_24_0 ~= nil then
    (CurrentScenario.oEmmyProtoEntity).bEnabled = false
    -- DECOMPILER ERROR at PC16: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyProtoEntity).vPos = l_24_0.vPos
    -- DECOMPILER ERROR at PC20: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyProtoEntity).vAng = l_24_0.vAng
    ;
    ((CurrentScenario.oEmmyProtoEntity).ANIMATION):SetAction("relax", true)
    -- DECOMPILER ERROR at PC30: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyProtoEntity).bEnabled = true
  end
end

l_0_15.OnProtoEmmyCantClimbCutsceneStart = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_24
  print("OnProtoEmmyCantClimbCutsceneEnd")
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyProtoEntity) then
    ((CurrentScenario.oEmmyProtoEntity).AI):OnPresentationCutsceneEnd()
  end
end

l_0_15.OnProtoEmmyCantClimbCutsceneEnd = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_25
  local l_26_0 = (Game.GetActor)("TG_PROTOEMMY_ACTIVATE")
  if l_26_0 ~= nil then
    l_26_0.bEnabled = true
  end
  local l_26_1 = (Game.GetActor)("TG_PROTOEMMY_ACTIVATE_TIMER")
  if l_26_1 ~= nil then
    l_26_1.bEnabled = true
  end
end

l_0_15.OnProtoEmmyWalkThroughCentralUnitDoor = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_26
  local l_27_0 = (Game.GetActor)("TG_PROTOEMMY_ACTIVATE_TIMER")
  if l_27_0 ~= nil and l_27_0.bEnabled == false then
    local l_27_1 = (Game.GetActor)("TG_PROTOEMMY_ACTIVATE")
    if l_27_1 ~= nil and l_27_1.bEnabled then
      (s010_cave.OnEnter_ActivateProtoEmmy)()
      l_27_1.bEnabled = false
    end
  end
end

l_0_15.OnAimCameraPossess = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_27
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R0 in 'UnsetPending'

  if CurrentScenario.oEmmyProtoEntity ~= nil then
    (CurrentScenario.oEmmyProtoEntity).bEnabled = true
    ;
    ((CurrentScenario.oEmmyProtoEntity).AI):StandStillFor(1)
  end
  local l_28_0 = (Game.GetActor)("TG_PROTOEMMY_ACTIVATE")
  if l_28_0 ~= nil then
    l_28_0.bEnabled = false
  end
  local l_28_1 = (Game.GetActor)("TG_PROTOEMMY_ACTIVATE_TIMER")
  if l_28_1 ~= nil then
    l_28_1.bEnabled = false
  end
end

l_0_15.OnEnter_ActivateProtoEmmy = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_28
  (Game.AddSF)(3, "s010_cave.OnAimCameraPossess", "")
  local l_29_0 = (Game.GetActor)("TG_PROTOEMMY_ACTIVATE_TIMER")
  if l_29_0 ~= nil then
    l_29_0.bEnabled = false
  end
end

l_0_15.OnEnter_ActivateProtoEmmyTimer = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_29
  local l_30_0 = (Game.GetActor)("SP_Emmy")
  if l_30_0 ~= nil then
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_01")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_02")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_03")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_04")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_05")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_06")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_07")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_08")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_09")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_10")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_11")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_12")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_13")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_14")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_15")
    ;
    (l_30_0.SPAWNPOINT):AddPatrolShape("LS_PATROLTUTOFOCUS")
  end
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_01", "LS_PATROLEMMY_01")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_02", "LS_PATROLEMMY_02")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_03", "LS_PATROLEMMY_03")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_04", "LS_PATROLEMMY_04")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_05", "LS_PATROLEMMY_05")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_06", "LS_PATROLEMMY_06")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_07", "LS_PATROLEMMY_07")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_08", "LS_PATROLEMMY_08")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_09", "LS_PATROLEMMY_09")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_10", "LS_PATROLEMMY_10")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_11", "LS_PATROLEMMY_11")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_12", "LS_PATROLEMMY_12")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_13", "LS_PATROLEMMY_13")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_14", "LS_PATROLEMMY_14")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_15", "LS_PATROLEMMY_15")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLTUTOFOCUS", "LS_PATROLTUTOFOCUS")
  print("s010_cave.PatrolRoutesGeneration(): Patrol designation OK")
end

l_0_15.PatrolRoutesGeneration = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_30
  local l_31_0 = AI.SetPatrolFinalNode
  local l_31_1 = "LE_WorldGraph"
  local l_31_2 = "PATROLROUTE_01"
  local l_31_3 = {}
  -- DECOMPILER ERROR at PC6: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC7: Overwrote pending register: R4 in 'AssignReg'

  l_31_0(l_31_1, l_31_2, l_31_3, "WorldGraph_60")
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_01"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_69", "WorldGraph_70", "WorldGraph_72"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_02"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_73", "WorldGraph_70"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_02"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_51", "WorldGraph_60"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_02"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_59"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_03"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_65"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_03"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_59"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_03"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_52", "WorldGraph_53"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_03"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_36"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_03"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_45"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_04"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_36"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_04"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_44", "WorldGraph_45"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_04"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_52"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_04"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_50"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_04"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_60", "WorldGraph_61"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_05"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_32", "WorldGraph_38"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_05"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_34", "WorldGraph_37"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_05"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_41", "WorldGraph_42"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_06"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_25"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_06"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_28", "WorldGraph_37"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_06"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_40"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_07"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_15", "WorldGraph_22"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_07"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_9", "WorldGraph_11"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_07"
  l_31_0(l_31_1, l_31_2, l_31_3, 2)
  l_31_3 = {"WorldGraph_16", "WorldGraph_18"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_07"
  l_31_0(l_31_1, l_31_2, l_31_3, 3)
  l_31_3 = {"WorldGraph_25", "WorldGraph_33"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_08"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_9"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_08"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_1"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_08"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_15"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_09"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_2"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_09"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_4"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_09"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_0", "WorldGraph_7"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_10"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_111", "WorldGraph_112"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_10"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_105", "WorldGraph_103"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_10"
  l_31_0(l_31_1, l_31_2, l_31_3, 2)
  l_31_3 = {"WorldGraph_98", "WorldGraph_101"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_11"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_116", "WorldGraph_126"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_11"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_115", "WorldGraph_123"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_12"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_59"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_12"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_92"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_12"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_56"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_12"
  l_31_0(l_31_1, l_31_2, l_31_3, 2)
  l_31_3 = {"WorldGraph_60"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_13"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_71", "WorldGraph_73"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_13"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_72", "WorldGraph_65"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_13"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_97", "WorldGraph_93"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_13"
  l_31_0(l_31_1, l_31_2, l_31_3, 2)
  l_31_3 = {"WorldGraph_90"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_14"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_88"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_14"
  l_31_0(l_31_1, l_31_2, l_31_3, 1)
  l_31_3 = {"WorldGraph_96"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_14"
  l_31_0(l_31_1, l_31_2, l_31_3, 2)
  l_31_3 = {"WorldGraph_80", "WorldGraph_79"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_14"
  l_31_0(l_31_1, l_31_2, l_31_3, 2)
  l_31_3 = {"WorldGraph_76"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_15"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_88"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_15"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_80"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_15"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_76"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLROUTE_15"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_85"}
  l_31_0 = AI
  l_31_0 = l_31_0.SetPatrolFinalNode
  l_31_1 = "LE_WorldGraph"
  l_31_2 = "PATROLTUTOFOCUS"
  l_31_0(l_31_1, l_31_2, l_31_3, 0)
  l_31_3 = {"WorldGraph_21"}
  l_31_0 = print
  l_31_1 = "s010_cave.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK"
  l_31_0(l_31_1)
end

l_0_15.PatrolRoutesFinalNodesAssignation = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_32_0)
  -- function num : 0_31
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI).sCurrentPatrol = l_32_0
    print("EMMY: Assigned route " .. l_32_0)
  else
    print("EMMY: Not found, route " .. l_32_0 .. " not assigned")
  end
end

l_0_15.ChangePatrolEmmy = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_33_0, l_33_1)
  -- function num : 0_32
  local l_33_2 = (string.gsub)(l_33_0.sName, "TG_PATROLEMMYACTIVATOR_", "PATROLROUTE_")
  ;
  (s010_cave.ChangePatrolEmmy)(l_33_2)
end

l_0_15.OnEnter_PatrolEmmyActivator = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_34_0, l_34_1)
  -- function num : 0_33
end

l_0_15.OnExit_PatrolEmmyActivator = l_0_16
l_0_15 = s010_cave
l_0_15.tEmmyDoor = nil
l_0_15 = s010_cave
l_0_16 = function(l_35_0, l_35_1, l_35_2)
  -- function num : 0_34 , upvalues : l_0_3
  -- DECOMPILER ERROR at PC22: Unhandled construct in 'MakeBoolean' P1

  if l_0_3 and (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and l_35_1 and CurrentScenario.oEmmyEntity ~= nil then
    if l_35_2 then
      sTeleportLandmark = (s010_cave.HardEmmyRelocationDoor)(l_35_0)
    else
      sTeleportLandmark = (s010_cave.EmmyRelocationDoor)(l_35_0)
    end
    if sTeleportLandmark ~= nil then
      local l_35_3 = (Game.GetActor)(sTeleportLandmark)
      print(l_35_3)
      -- DECOMPILER ERROR at PC43: Confused about usage of register: R4 in 'UnsetPending'

      if l_35_3 ~= nil then
        (CurrentScenario.oEmmyEntity).bEnabled = false
        -- DECOMPILER ERROR at PC47: Confused about usage of register: R4 in 'UnsetPending'

        ;
        (CurrentScenario.oEmmyEntity).vPos = l_35_3.vPos
        -- DECOMPILER ERROR at PC51: Confused about usage of register: R4 in 'UnsetPending'

        ;
        (CurrentScenario.oEmmyEntity).vAng = l_35_3.vAng
        -- DECOMPILER ERROR at PC60: Confused about usage of register: R4 in 'UnsetPending'

        if (s010_cave.Check_WakeUpCU_Completed)(l_35_0) then
          (CurrentScenario.oEmmyEntity).bEnabled = true
        end
      end
    end
  end
  do
    -- DECOMPILER ERROR at PC64: Confused about usage of register: R3 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
  end
end

l_0_15.OnWalkThroughEmmyDoor = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_36_0)
  -- function num : 0_35
  print("Door: Hard " .. l_36_0.sName)
  if l_36_0.sName == "DoorEmmy03" then
    local l_36_1 = s010_cave
    local l_36_2 = {}
    -- DECOMPILER ERROR at PC11: No list found for R2 , SetList fails

  else
    do
      if l_36_0.sName == "DoorEmmy02" then
        local l_36_3 = s010_cave
        local l_36_4 = {}
        -- DECOMPILER ERROR at PC19: Overwrote pending register: R3 in 'AssignReg'

        -- DECOMPILER ERROR at PC20: No list found for R2 , SetList fails

      else
        do
          if l_36_0.sName == "DoorEmmy01" then
            local l_36_5 = s010_cave
            local l_36_6 = {}
            -- DECOMPILER ERROR at PC28: Overwrote pending register: R3 in 'AssignReg'

            -- DECOMPILER ERROR at PC29: No list found for R2 , SetList fails

          else
            do
              if l_36_0.sName == "DoorEmmy10" then
                local l_36_7 = s010_cave
                local l_36_8 = {}
                -- DECOMPILER ERROR at PC37: Overwrote pending register: R3 in 'AssignReg'

                -- DECOMPILER ERROR at PC38: No list found for R2 , SetList fails

              else
                do
                  if l_36_0.sName == "DoorEmmy11" then
                    local l_36_9 = s010_cave
                    local l_36_10 = {}
                    -- DECOMPILER ERROR at PC46: Overwrote pending register: R3 in 'AssignReg'

                    -- DECOMPILER ERROR at PC48: No list found for R2 , SetList fails

                  else
                    do
                      -- DECOMPILER ERROR at PC60: Overwrote pending register: R3 in 'AssignReg'

                      if l_36_0.sName == "DoorEmmy06" or l_36_0.sName == "DoorEmmy07" then
                        local l_36_11 = (Blackboard.GetProp)("s010_cave", "LM_EmmyEntrancePoint_004")
                        if l_36_11 == false then
                          local l_36_12 = s010_cave
                          local l_36_13 = {}
                          -- DECOMPILER ERROR at PC66: Overwrote pending register: R4 in 'AssignReg'

                          -- DECOMPILER ERROR at PC67: No list found for R3 , SetList fails

                        else
                          do
                            do
                              -- DECOMPILER ERROR at PC71: Confused about usage of register: R2 in 'UnsetPending'

                              -- DECOMPILER ERROR at PC74: Confused about usage of register: R1 in 'UnsetPending'

                              -- DECOMPILER ERROR at PC85: Overwrote pending register: R4 in 'AssignReg'

                              if s010_cave.tEmmyDoor ~= nil then
                                return (s010_cave.tEmmyDoor)[(math.random)((table.maxn)(("LM_EmmyEntrancePoint_013").tEmmyDoor))]
                              else
                                return nil
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

l_0_15.HardEmmyRelocationDoor = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_37_0)
  -- function num : 0_36
  if l_37_0.sName == "DoorEmmy03" then
    local l_37_1 = s010_cave
    local l_37_2 = {}
    -- DECOMPILER ERROR at PC7: No list found for R2 , SetList fails

  else
    do
      if l_37_0.sName == "DoorEmmy02" then
        local l_37_3 = s010_cave
        local l_37_4 = {}
        -- DECOMPILER ERROR at PC15: Overwrote pending register: R3 in 'AssignReg'

        -- DECOMPILER ERROR at PC16: Overwrote pending register: R4 in 'AssignReg'

        -- DECOMPILER ERROR at PC17: No list found for R2 , SetList fails

      else
        do
          if l_37_0.sName == "DoorEmmy01" then
            local l_37_5 = s010_cave
            local l_37_6 = {}
            -- DECOMPILER ERROR at PC25: Overwrote pending register: R3 in 'AssignReg'

            -- DECOMPILER ERROR at PC26: Overwrote pending register: R4 in 'AssignReg'

            -- DECOMPILER ERROR at PC28: No list found for R2 , SetList fails

          else
            do
              if l_37_0.sName == "DoorEmmy10" then
                local l_37_7 = s010_cave
                local l_37_8 = {}
                -- DECOMPILER ERROR at PC36: Overwrote pending register: R3 in 'AssignReg'

                -- DECOMPILER ERROR at PC37: Overwrote pending register: R4 in 'AssignReg'

                -- DECOMPILER ERROR at PC38: No list found for R2 , SetList fails

              else
                do
                  if l_37_0.sName == "DoorEmmy11" then
                    local l_37_9 = s010_cave
                    local l_37_10 = {}
                    -- DECOMPILER ERROR at PC46: Overwrote pending register: R3 in 'AssignReg'

                    -- DECOMPILER ERROR at PC47: Overwrote pending register: R4 in 'AssignReg'

                    -- DECOMPILER ERROR at PC48: No list found for R2 , SetList fails

                  else
                    do
                      -- DECOMPILER ERROR at PC60: Overwrote pending register: R3 in 'AssignReg'

                      if l_37_0.sName == "DoorEmmy06" or l_37_0.sName == "DoorEmmy07" then
                        local l_37_11 = (Blackboard.GetProp)("s010_cave", "LM_EmmyEntrancePoint_003")
                        if l_37_11 == false then
                          local l_37_12 = s010_cave
                          local l_37_13 = {}
                          -- DECOMPILER ERROR at PC66: Overwrote pending register: R4 in 'AssignReg'

                          -- DECOMPILER ERROR at PC67: Overwrote pending register: R5 in 'AssignReg'

                          -- DECOMPILER ERROR at PC69: No list found for R3 , SetList fails

                        else
                          do
                            do
                              -- DECOMPILER ERROR at PC73: Confused about usage of register: R2 in 'UnsetPending'

                              -- DECOMPILER ERROR at PC76: Confused about usage of register: R1 in 'UnsetPending'

                              -- DECOMPILER ERROR at PC87: Overwrote pending register: R4 in 'AssignReg'

                              if s010_cave.tEmmyDoor ~= nil then
                                return (s010_cave.tEmmyDoor)[(math.random)((table.maxn)(("LM_EmmyEntrancePoint_004").tEmmyDoor))]
                              else
                                return nil
                              end
                              -- WARNING: undefined locals caused missing assignments!
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

l_0_15.EmmyRelocationDoor = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_37
  (Game.AddSF)(1, "s010_cave.Checkpoint_RelocatingEmmy_CU", "")
end

l_0_15.OnTeleport_Checkpoint_CU = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_38
  if CurrentScenario.oEmmyEntity ~= nil then
    local l_39_0 = (Game.GetActor)("LM_EmmyDestroySearchLandmark01")
    -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

    if l_39_0 ~= nil then
      (CurrentScenario.oEmmyEntity).bEnabled = false
      -- DECOMPILER ERROR at PC16: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vPos = l_39_0.vPos
      -- DECOMPILER ERROR at PC20: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vAng = l_39_0.vAng
      -- DECOMPILER ERROR at PC23: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = true
      ;
      (s010_cave.ChangePatrolEmmy)("PATROLROUTE_14")
    end
  end
end

l_0_15.Checkpoint_RelocatingEmmy_CU = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_39
  local l_40_0 = (Game.GetActor)("LS_EmmyGrabOverride_000")
  local l_40_1 = (Game.GetActor)("LS_EmmyGrabOverride_001")
  if l_40_0 ~= nil and l_40_1 ~= nil then
    l_40_1.bEnabled = false
    l_40_0.bEnabled = true
  end
end

l_0_15.ActivateGrabOverride_Right = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_40
  local l_41_0 = (Game.GetActor)("LS_EmmyGrabOverride_000")
  local l_41_1 = (Game.GetActor)("LS_EmmyGrabOverride_001")
  if l_41_0 ~= nil and l_41_1 ~= nil then
    l_41_0.bEnabled = false
    l_41_1.bEnabled = true
  end
end

l_0_15.ActivateGrabOverride_Left = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_41
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    local l_42_0 = (Game.GetActor)("LS_EmmyEndStagger_000")
    if l_42_0 ~= nil and (l_42_0.LOGICSHAPE):IsActorInside(CurrentScenario.oEmmyEntity) then
      ((CurrentScenario.oEmmyEntity).AI):ForceStopStagger()
    end
  end
end

l_0_15.EmmyCaveTryToEndStagger = l_0_16
l_0_15 = s010_cave
l_0_15.tWaterPoolsToEnable, l_0_16 = l_0_16, {"PRP_CV_watercave02", "PRP_CV_watercave05", "waterstream01_caveinit", "waterstream01_caveinit_001", "waterstream01_caveinit_002", "waterstream01_caveinit_003", "waterstream01_caveinit_004", "waterstream01_caveinit_005"}
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_42
  print("Event_WaterPoolInfiltration started!")
  for l_43_3,l_43_4 in ipairs(s010_cave.tWaterPoolsToEnable) do
    local l_43_5 = (Game.GetActor)(l_43_4)
    if l_43_5 ~= nil then
      l_43_5.bEnabled = true
    else
      print("Entity " .. l_43_4 .. " not found")
    end
  end
  local l_43_6 = (Game.GetActor)("Watervalve_fillmap")
  if l_43_6 ~= nil then
    (Game.SetMinimapRegionVisited)("Watervalve_fillmap")
  end
end

l_0_15.Event_WaterPoolInfiltration_Activate = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_43
  for l_44_3,l_44_4 in ipairs(s010_cave.tWaterPoolsToEnable) do
    local l_44_5 = (Game.GetActor)(l_44_4)
    if l_44_5 ~= nil then
      l_44_5.bEnabled = false
    else
      print("Entity " .. l_44_4 .. " not found")
    end
  end
end

l_0_15.Event_WaterPoolInfiltration_Deactivate = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_44
  -- DECOMPILER ERROR at PC9: Confused about usage of register: R0 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    (CurrentScenario.oEmmyEntity).bEnabled = false
  else
    print("Emmy not found")
  end
  ;
  (((Game.GetActor)("Door062 (PW-PW, Special)")).LIFE):UnLockDoor()
  print("Emmy deshabilitado")
end

l_0_15.Event_EmmyPatrolFocusTutorial_DisableEmmy = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_45
  print("Event: Water valve tutorial")
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    local l_46_0 = (Game.GetActor)("LM_Emmy_WaterPlant")
    -- DECOMPILER ERROR at PC16: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
    -- DECOMPILER ERROR at PC20: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vPos = l_46_0.vPos
    -- DECOMPILER ERROR at PC24: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vAng = l_46_0.vAng
    -- DECOMPILER ERROR at PC27: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = true
    ;
    ((CurrentScenario.oEmmyEntity).ANIMATION):SetAction("standby", true)
  end
end

l_0_15.Event_EmmyWaterValveTutorial = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_46
  local l_47_0 = (Game.GetPlayer)()
  if l_47_0 ~= nil then
    print("Event: Patrol Focus Tutorial")
    if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
      local l_47_1 = (Game.GetActor)("LM_TutoFocus_EmmyNoFocusTutorialPoint")
      -- DECOMPILER ERROR at PC21: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = false
      -- DECOMPILER ERROR at PC25: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vPos = l_47_1.vPos
      -- DECOMPILER ERROR at PC29: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vAng = l_47_1.vAng
      -- DECOMPILER ERROR at PC32: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = true
    else
      do
        print("Emmy not found")
      end
    end
  end
end

l_0_15.Event_EmmyPatrolFocusTutorial = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_47
  (Game.PushSetup)("ScrewAttack", true, true)
end

l_0_15.OnEnter_ChangeMusic_ScrewAttack = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_48
  (Game.PopSetup)("ScrewAttack", true, true)
end

l_0_15.OnExit_ChangeMusic_ScrewAttack = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_49
  (Game.SetCollisionCameraLocked)("collision_camera_003_B", true)
end

l_0_15.OnEnter_ChangeCamera_003_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_50
  print("caption finished")
end

l_0_15.OnCaptionFinished = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_51
  (Game.SetCollisionCameraLocked)("collision_camera_003_B", false)
end

l_0_15.OnExit_ChangeCamera_003_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_52
  (Game.SetCollisionCameraLocked)("collision_camera_003_C", true)
end

l_0_15.OnEnter_ChangeCamera_003_C = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_53
  (Game.SetCollisionCameraLocked)("collision_camera_003_C", false)
end

l_0_15.OnExit_ChangeCamera_003_C = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_54
  (Game.SetCollisionCameraLocked)("collision_camera_050_B", true)
end

l_0_15.OnEnter_ChangeCamera_050_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_55
  (Game.SetCollisionCameraLocked)("collision_camera_050_B", false)
end

l_0_15.OnExit_ChangeCamera_050_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_56
  (Game.SetCollisionCameraLocked)("collision_camera_056_B", true)
end

l_0_15.OnEnter_ChangeCamera_056_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_57
  (Game.SetCollisionCameraLocked)("collision_camera_056_B", false)
end

l_0_15.OnExit_ChangeCamera_056_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_58
  (Game.SetCollisionCameraLocked)("collision_camera_056_C", true)
end

l_0_15.OnEnter_ChangeCamera_056_C = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_59
  (Game.SetCollisionCameraLocked)("collision_camera_056_C", false)
end

l_0_15.OnExit_ChangeCamera_056_C = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_60
  local l_61_0 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_CENTRAL_UNIT_DECAYED_ENERGY")
  if l_61_0 ~= nil and l_61_0 > 0 then
    (Game.SetCollisionCameraLocked)("collision_camera_064B", false)
  else
    ;
    (Game.SetCollisionCameraLocked)("collision_camera_064B", true)
  end
end

l_0_15.OnEnter_ChangeCamera_064B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_61
  (Game.SetCollisionCameraLocked)("collision_camera_064B", false)
end

l_0_15.OnExit_ChangeCamera_064B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_62
  (Game.SetCollisionCameraLocked)("collision_camera_015_B", true)
end

l_0_15.OnEnter_ChangeCamera_015_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_63
  (Game.SetCollisionCameraLocked)("collision_camera_015_B", false)
end

l_0_15.OnExit_ChangeCamera_015_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_64
  (Game.SetCollisionCameraLocked)("collision_camera_031_B", true)
end

l_0_15.OnEnter_ChangeCamera_031_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_65
  (Game.SetCollisionCameraLocked)("collision_camera_031_B", false)
end

l_0_15.OnExit_ChangeCamera_031_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_66
  local l_67_0 = (Game.GetActor)("TG_ChangeCamera_048_B")
  l_67_0.bEnabled = false
  print("OnEnter_ChangeCamera_048_C")
  ;
  (Game.SetCollisionCameraLocked)("collision_camera_048_C", true)
end

l_0_15.OnEnter_ChangeCamera_048_C = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_67
  ((Game.GetActor)("TG_ChangeCamera_048_C")).bEnabled = true
end

l_0_15.OnEnter_ChangeCamera_048_C_Delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_68
  (Game.SetCollisionCameraLocked)("collision_camera_048_C", false)
  print("OnExit_ChangeCamera_048_C")
  ;
  (Game.AddSF)(0, "s010_cave.OnEnter_ChangeCamera_048_B_Delayed", "")
end

l_0_15.OnExit_ChangeCamera_048_C = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_69
  local l_70_0 = (Game.GetActor)("TG_ChangeCamera_048_C")
  l_70_0.bEnabled = false
  ;
  (Game.SetCollisionCameraLocked)("collision_camera_048_B", true)
  print("OnEnter_ChangeCamera_048_B")
end

l_0_15.OnEnter_ChangeCamera_048_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_70
  ((Game.GetActor)("TG_ChangeCamera_048_B")).bEnabled = true
end

l_0_15.OnEnter_ChangeCamera_048_B_Delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_71
  (Game.SetCollisionCameraLocked)("collision_camera_048_B", false)
  print("OnExit_ChangeCamera_048_B")
  ;
  (Game.AddSF)(0, "s010_cave.OnEnter_ChangeCamera_048_C_Delayed", "")
end

l_0_15.OnExit_ChangeCamera_048_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_72
  (Game.PushSetup)("DisableCamera_048", false, true)
end

l_0_15.OnEnter_DisableCamera_048 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_73
  (Game.PopSetup)("DisableCamera_048", false, true)
end

l_0_15.OnExit_DisableCamera_048 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_74
  (Game.PushSetup)("ChangeCamera_023_B", false, true)
end

l_0_15.OnEnter_ChangeCamera_023_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_75
  (Game.PopSetup)("ChangeCamera_023_B", false, true)
end

l_0_15.OnExit_ChangeCamera_023_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_76
  (Game.SetCollisionCameraLocked)("collision_camera_091_B", true)
end

l_0_15.OnEnter_ChangeCamera_091_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_77
  (Game.SetCollisionCameraLocked)("collision_camera_091_B", false)
end

l_0_15.OnExit_ChangeCamera_091_B = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_78
  (((Game.GetCamera)()).CAMERA):SetLogicCameraParams("CAM_Far", true)
  print("OnEnter_ChangeCamera_Far")
end

l_0_15.OnEnter_ChangeCamera_Far = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_79
  (((Game.GetCamera)()).CAMERA):SetLogicCameraParams("CAM_Default", true)
  print("OnExit_ChangeCamera_Far")
end

l_0_15.OnExit_ChangeCamera_Far = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_80
  print("Enable Fade")
  ;
  (Game.SetSubAreasPreferredTransitionType)("Fade")
end

l_0_15.OnEnter_EnableFade = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_81
  print("Disable Fade")
  ;
  (Game.SetSubAreasPreferredTransitionType)("None")
end

l_0_15.OnExit_DisableFade = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_82
  print("EMMY DEACTIVATE")
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    print("EMMY DEACTIVATION")
    -- DECOMPILER ERROR at PC15: Confused about usage of register: R0 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
  end
end

l_0_15.OnEnter_DeactivationEmmy_CameraRail_CU = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_83
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    local l_84_0 = (Game.GetActor)("LM_EnterEmmyZoneSecondTime")
    -- DECOMPILER ERROR at PC13: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
    -- DECOMPILER ERROR at PC17: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vPos = l_84_0.vPos
    -- DECOMPILER ERROR at PC21: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vAng = l_84_0.vAng
    -- DECOMPILER ERROR at PC24: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = true
  end
end

l_0_15.OnExit_ActivationEmmy_CameraRail_CU = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_84
  local l_85_0 = (Game.GetActor)("PRP_CV_AccessPoint001")
  local l_85_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_85_0 ~= nil then
    if l_85_1 == "DIAG_ADAM_AQUA_2" then
      (l_85_0.USABLE):ActiveDialogue("DIAG_ADAM_CAVE_4")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_CAVE_4")
    else
      if l_85_1 == "DIAG_ADAM_CAVE_4" and (Game.GetCooldownFlag)() == false then
        local l_85_2 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK")
        if l_85_2 ~= nil and l_85_2 > 0 then
          (l_85_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_3")
          ;
          (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
        end
      end
    end
  end
end

l_0_15.OnEnter_AP_01 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_85
  local l_86_0 = (Game.GetActor)("PRP_CV_AccessPoint002")
  local l_86_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_86_0 ~= nil and l_86_1 ~= nil then
    if l_86_1 == "DIAG_ADAM_CAVE_1" then
      (l_86_0.USABLE):ActiveDialogue("DIAG_ADAM_CAVE_2")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_CAVE_2")
    else
      if l_86_1 == "DIAG_ADAM_CAVE_2" then
        local l_86_2 = (Blackboard.GetProp)("s010_cave", "PRP_CV_ThermalDevice:USABLE:Used")
        if l_86_2 ~= nil then
          (l_86_0.USABLE):ActiveDialogue("DIAG_ADAM_CAVE_3")
          ;
          (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_CAVE_3")
        end
      else
        do
          if l_86_1 == "DIAG_ADAM_CAVE_4" and (Game.GetCooldownFlag)() == false then
            local l_86_3 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK")
            if l_86_3 ~= nil and l_86_3 > 0 then
              (l_86_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_3")
              ;
              (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
            end
          end
        end
      end
    end
  end
end

l_0_15.OnEnter_AP_02 = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_87_0, l_87_1, l_87_2)
  -- function num : 0_86
  (Elevator.Use)("c10_samus", "s020_magma", "ST_FromCave", l_87_2)
end

l_0_15.OnLE_Platform_Elevator_FromMagma = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_88_0, l_88_1, l_88_2, l_88_3)
  -- function num : 0_87
  (Scenario.SubAreaChangeRequest)(l_88_0, l_88_1, l_88_2, l_88_3)
end

l_0_15.SubAreaChangeRequest = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_89_0, l_89_1, l_89_2, l_89_3, l_89_4)
  -- function num : 0_88 , upvalues : l_0_3, l_0_4
  if l_89_0 == "collision_camera_005" and l_89_2 == "collision_camera_006" then
    if l_89_4 and l_0_3 == false then
      (Game.SetSubAreasPreferredTransitionType)("None")
    else
      -- DECOMPILER ERROR at PC31: Confused about usage of register: R5 in 'UnsetPending'

      if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and (CurrentScenario.oEmmyEntity).bEnabled == false and l_0_4 == true then
        (CurrentScenario.oEmmyEntity).bEnabled = true
        print("EMMY REACTIVATION AFTER WAKE-UP CU")
      end
    end
    local l_89_5 = (Game.GetActor)("cutsceneplayer_37")
    if l_89_5 ~= nil then
      (l_89_5.CUTSCENE):TryLaunchCutscene()
    end
  else
    do
      if l_89_0 == "collision_camera_064" and l_89_2 == "collision_camera_074" then
        do
          if l_89_4 then
            local l_89_6 = (Game.GetActor)("TG_EnableSubareaChangeFade_001")
            if l_89_6 ~= nil then
              l_89_6.bEnabled = false
            end
          end
          do
            local l_89_7 = (Game.GetActor)("cutsceneplayer_48")
            if l_89_7 ~= nil then
              (l_89_7.CUTSCENE):TryLaunchCutscene()
            end
            if l_89_0 == "collision_camera_002" and l_89_2 == "collision_camera_003" then
              local l_89_8 = (Game.GetActor)("cutsceneplayer_5")
              if l_89_8 ~= nil then
                (l_89_8.CUTSCENE):TryLaunchCutscene()
              end
            else
              do
                if l_89_0 == "collision_camera_000" and l_89_2 == "collision_camera_068" then
                  local l_89_9 = (Game.GetActor)("cutsceneplayer_3")
                  if l_89_9 ~= nil then
                    (l_89_9.CUTSCENE):TryLaunchCutscene()
                  end
                else
                  do
                    if l_89_0 == "collision_camera_073" and l_89_2 == "collision_camera_020" then
                      local l_89_10 = (Game.GetActor)("cutsceneplayer_54")
                      if l_89_10 ~= nil then
                        (l_89_10.CUTSCENE):TryLaunchCutscene()
                      end
                    else
                      do
                        if l_89_0 == "collision_camera_049" and l_89_2 == "collision_camera_090" then
                          local l_89_11 = (Game.GetActor)("cutsceneplayer_50")
                          if l_89_11 ~= nil then
                            (l_89_11.CUTSCENE):TryLaunchCutscene()
                          end
                        else
                          do
                            if l_89_0 == "collision_camera_003" and l_89_2 == "collision_camera_018" then
                              local l_89_12 = (Game.GetActor)("cutsceneplayer_49-1")
                              if l_89_12 ~= nil then
                                (l_89_12.CUTSCENE):TryLaunchCutscene()
                              end
                            else
                              do
                                if l_89_0 == "collision_camera_018" and l_89_2 == "collision_camera_005" then
                                  local l_89_13 = (Game.GetActor)("cutsceneplayer_49-1")
                                  do
                                    if l_89_13 ~= nil and (l_89_13.CUTSCENE):HasCutsceneBeenPlayed() == true then
                                      local l_89_14 = (Game.GetActor)("cutsceneplayer_49-2")
                                      if l_89_14 ~= nil then
                                        (l_89_14.CUTSCENE):TryLaunchCutscene()
                                      end
                                    end
                                    if not l_0_4 then
                                      (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED, "b", true)
                                      l_0_4 = true
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

l_0_15.OnSubAreaChange = l_0_16
l_0_15 = s010_cave
l_0_15.tTriggersToEnable, l_0_16 = l_0_16, {"TG_ChainReaction_Camera_001", "TG_ChainReaction_SteamJet_016", "TG_ChainReaction_SteamJet_017"}
l_0_15 = s010_cave
l_0_16 = function(l_90_0, l_90_1)
  -- function num : 0_89
  local l_90_2 = (string.gsub)(l_90_0.sName, "TG_ChainReaction_SteamJet_", "steammag01_chainreaction_")
  ;
  (Game.EnableEntityComponent)(l_90_2, "ACTIVATABLE")
end

l_0_15.OnEnter_ChainReaction_Steamjet = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_90
  (Game.PlayCameraFXPreset)("CHAINREACTION_BIG_EXP")
  ;
  (Game.PlayPresetSound)("chainreaction_rumble_sound_03")
  ;
  (Game.PlayVibration)("props/chainreaction/chain_reaction_rumble_03.bnvib", false)
end

l_0_15.OnEnter_ChainReaction_Steamjet_CameraShake = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_91
  (Game.AddSF)(2.5, "s010_cave.ChainReaction_Preparation", "")
  local l_92_0 = (Game.GetActor)("camRail_PreChain")
  if l_92_0 ~= nil then
    l_92_0.bEnabled = false
  end
end

l_0_15.InitChainReaction = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_92
  (Game.PlayCameraFXPreset)("CHAINREACTION_MED_EXP")
  ;
  (Game.PlayPresetSound)("chainreaction_rumble_sound_02")
  ;
  (Game.PlayVibration)("props/chainreaction/chain_reaction_rumble_02.bnvib", false)
  ;
  (Game.PushSetup)("ChainReaction", true, true)
  ;
  (Game.AddSF)(2, "s010_cave.ChainReaction_WaterPumpStep1", "")
end

l_0_15.ChainReaction_Preparation = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_93
  for l_94_3,l_94_4 in ipairs(s010_cave.tTriggersToEnable) do
    local l_94_5 = (Game.GetActor)(l_94_4)
    if l_94_5 ~= nil then
      l_94_5.bEnabled = true
    end
  end
  local l_94_6 = (Game.GetActor)("ev_chainreaction_cv_001")
  if l_94_6 ~= nil then
    (Game.PlayCameraFXPreset)("CHAINREACTION_MED_EXP")
    ;
    (Game.PlayPresetSound)("chainreaction_rumble_sound_02")
    ;
    (Game.PlayVibration)("props/chainreaction/chain_reaction_rumble_02.bnvib", false)
    ;
    (l_94_6.CHAIN_REACTION_ACTION_SWITCHER):ChangeActionAndNavhMeshStage("action1", "action1")
  end
end

l_0_15.ChainReaction_WaterPumpStep1 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_94
  local l_95_0 = (Game.GetActor)("ev_chainreaction_cv_fx_006")
  if l_95_0 ~= nil then
    l_95_0:StartTimeline("q_001", true)
  end
  local l_95_1 = (Game.GetActor)("ev_chainreaction_cv_fx_007")
  if l_95_1 ~= nil then
    l_95_1:StartTimeline("q_delay01_001", true)
  end
  local l_95_2 = (Game.GetActor)("ev_chainreaction_cv_fx_011")
  if l_95_2 ~= nil then
    l_95_2:StartTimeline("q_delay01_002", true)
  end
  local l_95_3 = (Game.GetActor)("ev_chainreaction_cv_fx_008")
  if l_95_3 ~= nil then
    l_95_3:StartTimeline("q_002", true)
  end
end

l_0_15.ChainReaction_Drop_CV_002 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_95
  local l_96_0 = (Game.GetActor)("ev_chainreaction_cv_003")
  if l_96_0 ~= nil then
    (Game.PlayCameraFXPreset)("CHAINREACTION_MED_EXP")
    ;
    (Game.PlayPresetSound)("chainreaction_rumble_sound_02")
    ;
    (Game.PlayVibration)("props/chainreaction/chain_reaction_rumble_02.bnvib", false)
    ;
    (l_96_0.ACTIVATABLE):Activate()
  end
  local l_96_1 = (Game.GetActor)("ev_chainreaction_cv_fx_001")
  if l_96_1 ~= nil then
    l_96_1:StartTimeline("q_001", true)
  end
  local l_96_2 = (Game.GetActor)("ev_chainreaction_cv_fx_003")
  if l_96_2 ~= nil then
    l_96_2:StartTimeline("q_delay01_003", true)
  end
  local l_96_3 = (Game.GetActor)("ev_chainreaction_cv_fx_009")
  if l_96_3 ~= nil then
    l_96_3:StartTimeline("q_002", true)
  end
  local l_96_4 = (Game.GetActor)("ev_chainreaction_cv_fx_010")
  if l_96_4 ~= nil then
    l_96_4:StartTimeline("q_delay01_002", true)
  end
  local l_96_5 = (Game.GetActor)("ev_chainreaction_cv_fx_018")
  if l_96_5 ~= nil then
    l_96_5:StartTimeline("q_delay02_001", true)
  end
  local l_96_6 = (Game.GetActor)("ev_chainreaction_cv_fx_015")
  if l_96_6 ~= nil then
    l_96_6:StartTimeline("q_delay02_001", true)
  end
  local l_96_7 = (Game.GetActor)("ev_chainreaction_cv_fx_016")
  if l_96_7 ~= nil then
    l_96_7:StartTimeline("q_delay01_002", true)
  end
end

l_0_15.ChainReaction_Drop_CV_003 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_96
  local l_97_0 = (Game.GetActor)("ev_chainreaction_cv_001")
  if l_97_0 ~= nil then
    (Game.PlayCameraFXPreset)("CHAINREACTION_SMALL_EXP")
    ;
    (l_97_0.ANIMATION):SetAction("preaction2")
  end
end

l_0_15.ChainReaction_WaterPumpPreStep2 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_97
  local l_98_0 = (Game.GetActor)("ev_chainreaction_cv_001")
  if l_98_0 ~= nil then
    (Game.PlayCameraFXPreset)("CHAINREACTION_BIG_EXP")
    ;
    (Game.PlayPresetSound)("chainreaction_rumble_sound_03")
    ;
    (Game.PlayVibration)("props/chainreaction/chain_reaction_rumble_03.bnvib", false)
    ;
    (l_98_0.CHAIN_REACTION_ACTION_SWITCHER):ChangeActionAndNavhMeshStage("action2", "action2")
  end
end

l_0_15.ChainReaction_WaterPumpStep2 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_98
  local l_99_0 = (Game.GetActor)("ev_chainreaction_cv_001")
  if l_99_0 ~= nil then
    (Game.PlayCameraFXPreset)("CHAINREACTION_SMALL_EXP")
    ;
    (Game.PlayPresetSound)("chainreaction_rumble_sound_01")
    ;
    (Game.PlayVibration)("props/chainreaction/chain_reaction_rumble_01.bnvib", false)
    ;
    (l_99_0.ANIMATION):SetAction("preaction3")
  end
end

l_0_15.ChainReaction_WaterPumpPreStep3 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_99
  local l_100_0 = (Game.GetActor)("ev_chainreaction_cv_001")
  if l_100_0 ~= nil then
    (Game.PlayCameraFXPreset)("CHAINREACTION_BIG_EXP")
    ;
    (Game.PlayPresetSound)("chainreaction_rumble_sound_03")
    ;
    (Game.PlayVibration)("props/chainreaction/chain_reaction_rumble_03.bnvib", false)
    ;
    (l_100_0.CHAIN_REACTION_ACTION_SWITCHER):ChangeActionAndNavhMeshStage("action3", "action3")
  end
end

l_0_15.ChainReaction_WaterPumpStep3 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_100
  local l_101_0 = (Game.GetActor)("ev_chainreaction_cv_005")
  if l_101_0 ~= nil then
    (Game.PlayCameraFXPreset)("CHAINREACTION_MED_EXP")
    ;
    (Game.PlayPresetSound)("chainreaction_rumble_sound_02")
    ;
    (Game.PlayVibration)("props/chainreaction/chain_reaction_rumble_02.bnvib", false)
    ;
    (l_101_0.ACTIVATABLE):Activate()
  end
  local l_101_1 = (Game.GetActor)("ev_chainreaction_cv_fx_004")
  if l_101_1 ~= nil then
    l_101_1:StartTimeline("q_001", true)
  end
  local l_101_2 = (Game.GetActor)("ev_chainreaction_cv_fx_000")
  if l_101_2 ~= nil then
    l_101_2:StartTimeline("q_delay01_001", true)
  end
  local l_101_3 = (Game.GetActor)("ev_chainreaction_cv_fx_005")
  if l_101_3 ~= nil then
    l_101_3:StartTimeline("q_delay02_003", true)
  end
  local l_101_4 = (Game.GetActor)("ev_chainreaction_cv_fx_002")
  if l_101_4 ~= nil then
    l_101_4:StartTimeline("q_002", true)
  end
end

l_0_15.ChainReaction_Drop_CV_005 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_101
  local l_102_0 = (Game.GetActor)("ev_chainreaction_cv_fx_014")
  if l_102_0 ~= nil then
    l_102_0:StartTimeline("q_001", true)
  end
  local l_102_1 = (Game.GetActor)("ev_chainreaction_cv_fx_012")
  if l_102_1 ~= nil then
    l_102_1:StartTimeline("q_003", true)
  end
  local l_102_2 = (Game.GetActor)("ev_chainreaction_cv_fx_013")
  if l_102_2 ~= nil then
    l_102_2:StartTimeline("q_004", true)
  end
end

l_0_15.ChainReaction_Drop_CV_006 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_102
  (Game.StopCameraFXPreset)("CHAINREACTION_SOFT")
  ;
  (Game.PlayCameraFXPreset)("QUEEN_SHAKING_JUMP")
  ;
  (Game.PlayPresetSound)("events/chainreaction_bigexplosion")
  ;
  (Game.PlayVibration)("props/chainreaction/chainreaction_bigexplosion.bnvib", false)
  local l_103_0 = (Game.GetActor)("env_heat_gen_001_CR_END")
  if l_103_0 ~= nil then
    l_103_0.bEnabled = true
    ;
    (l_103_0.ACTIVATABLE):Activate(1)
  end
end

l_0_15.ChainReaction_BigExplosion = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_103
  (Game.PopSetup)("ChainReaction", true, true)
  ;
  (Game.PushSetup)("Post_ChainReaction", true, true)
  local l_104_0 = (Game.GetActor)("ev_chainreaction_cv_004")
  if l_104_0 ~= nil then
    (l_104_0.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
  local l_104_1 = (Game.GetActor)("ev_chainreaction_cv_004_a")
  if l_104_1 ~= nil then
    (l_104_1.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
  local l_104_2 = (Game.GetActor)("ev_chainreaction_cv_009")
  if l_104_2 ~= nil then
    (l_104_2.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
  local l_104_3 = (Game.GetActor)("ev_chainreaction_cv_010")
  if l_104_3 ~= nil then
    (l_104_3.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
  local l_104_4 = (Game.GetActor)("db_reg_cv_022")
  if l_104_4 ~= nil then
    (l_104_4.NAVMESHITEM):OverrideInitialStage("initial")
    ;
    (l_104_4.NAVMESHITEM):ChangeStage("initial")
  end
end

l_0_15.ChainReaction_ChangeFinalSetup = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_104
  (Game.PlayCameraFXPreset)("CHAINREACTION_SOFT")
end

l_0_15.ShakingCameraDelayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_105
  (Game.PlayCameraFXPreset)("CHAINREACTION_BIG_EXP")
  ;
  (Game.PlayPresetSound)("chainreaction_rumble_sound_03")
  ;
  (Game.PlayVibration)("props/chainreaction/chain_reaction_rumble_03.bnvib", false)
end

l_0_15.ShakingCameraHeatCompleted = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_107_0, l_107_1)
  -- function num : 0_106 , upvalues : l_0_12, l_0_7, l_0_8, l_0_9, l_0_10, l_0_11
  local l_107_2 = (string.gsub)(l_107_0.sName, "TG_ChainReaction_Camera_", "collision_camera_CR_")
  ;
  (Game.SetCollisionCameraLocked)(l_107_2, true)
  ;
  (Game.StopCameraFXPreset)("CHAINREACTION_SOFT")
  local l_107_3 = (string.gsub)(l_107_0.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_")
  local l_107_4 = (Game.GetActor)(l_107_3)
  l_0_12 = l_107_3
  if l_107_4 ~= nil then
    if l_107_4.bEnabled == false then
      l_107_4.bEnabled = true
      local l_107_5 = 4
      local l_107_6 = 4
      if l_107_3 == "env_heat_gen_001_CR_001" then
        (Game.AddSF)(4, "s010_cave.ChainReaction_HeatZone_001_Activated", "")
        l_107_5 = 4
        l_107_6 = 8
      else
        if l_107_3 == "env_heat_gen_001_CR_002" then
          (Game.AddSF)(4, "s010_cave.ChainReaction_HeatZone_002_Activated", "")
          l_107_5 = 4
          l_107_6 = 8
        else
          if l_107_3 == "env_heat_gen_001_CR_003" then
            (Game.AddSF)(11, "s010_cave.ChainReaction_HeatZone_003_Activated", "")
            l_107_5 = 11
            l_107_6 = 15
          else
            if l_107_3 == "env_heat_gen_001_CR_004" then
              (Game.AddSF)(6, "s010_cave.ChainReaction_HeatZone_004_Activated", "")
              l_107_5 = 6
              l_107_6 = 10
            else
              if l_107_3 == "env_heat_gen_001_CR_005" then
                (Game.AddSF)(6, "s010_cave.ChainReaction_HeatZone_005_Activated", "")
                l_107_5 = 6
                l_107_6 = 10
              end
            end
          end
        end
      end
    else
      do
        if l_107_3 == "env_heat_gen_001_CR_001" and l_0_7 then
          (s010_cave.ShakingCameraDelayed)()
        else
          if l_107_3 == "env_heat_gen_001_CR_002" and l_0_8 then
            (s010_cave.ShakingCameraDelayed)()
          else
            if l_107_3 == "env_heat_gen_001_CR_003" and l_0_9 then
              (s010_cave.ShakingCameraDelayed)()
            else
              if l_107_3 == "env_heat_gen_001_CR_004" and l_0_10 then
                (s010_cave.ShakingCameraDelayed)()
              else
                if l_107_3 == "env_heat_gen_001_CR_005" and l_0_11 then
                  (s010_cave.ShakingCameraDelayed)()
                end
              end
            end
          end
        end
      end
    end
  end
end

l_0_15.OnEnter_ChainReaction_ChangeCamera = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_107 , upvalues : l_0_7, l_0_12
  l_0_7 = true
  if l_0_12 == "env_heat_gen_001_CR_001" then
    (s010_cave.ShakingCameraDelayed)()
  end
end

l_0_15.ChainReaction_HeatZone_001_Activated = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_108 , upvalues : l_0_8, l_0_12
  l_0_8 = true
  if l_0_12 == "env_heat_gen_001_CR_002" then
    (s010_cave.ShakingCameraDelayed)()
  end
end

l_0_15.ChainReaction_HeatZone_002_Activated = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_109 , upvalues : l_0_9, l_0_12
  l_0_9 = true
  if l_0_12 == "env_heat_gen_001_CR_003" then
    (s010_cave.ShakingCameraDelayed)()
  end
end

l_0_15.ChainReaction_HeatZone_003_Activated = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_110 , upvalues : l_0_10, l_0_12
  l_0_10 = true
  if l_0_12 == "env_heat_gen_001_CR_004" then
    (s010_cave.ShakingCameraDelayed)()
  end
end

l_0_15.ChainReaction_HeatZone_004_Activated = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_111 , upvalues : l_0_11, l_0_12
  l_0_11 = true
  if l_0_12 == "env_heat_gen_001_CR_005" then
    (s010_cave.ShakingCameraDelayed)()
  end
end

l_0_15.ChainReaction_HeatZone_005_Activated = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_112
  (Game.SetCollisionCameraLocked)("collision_camera_CR_001", false)
end

l_0_15.OnEnter_ChainReaction_ChangeCamera_000 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_113
  (Game.SetCollisionCameraLocked)("collision_camera_CR_005", false)
end

l_0_15.OnEnter_ChainReaction_ChangeCamera_006 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_114
  local l_115_0 = (Game.GetActor)("TG_PROTOEMMY_BEHAVIOR_002")
  if l_115_0 ~= nil then
    l_115_0.bEnabled = false
  end
  local l_115_1 = (Game.GetActor)("TG_PROTOEMMY_BEHAVIOR_001")
  if l_115_1 ~= nil then
    l_115_1.bEnabled = false
  end
  local l_115_2 = (Game.GetActor)("TG_PROTOEMMY_BEHAVIOR_003")
  if l_115_2 ~= nil then
    l_115_2.bEnabled = true
  end
  local l_115_3 = (Game.GetActor)("TG_PROTOEMMY_BEHAVIOR")
  if l_115_3 ~= nil then
    l_115_3.bEnabled = false
  end
end

l_0_15.OnEnter_StartCUProtoEmmy = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_115
  local l_116_0 = (Game.GetActor)("TG_PROTOEMMY_BEHAVIOR_002")
  if l_116_0 ~= nil then
    l_116_0.bEnabled = true
  end
  local l_116_1 = (Game.GetActor)("TG_PROTOEMMY_BEHAVIOR_001")
  if l_116_1 ~= nil then
    l_116_1.bEnabled = true
  end
  local l_116_2 = (Game.GetActor)("TG_PROTOEMMY_BEHAVIOR_003")
  if l_116_2 ~= nil then
    l_116_2.bEnabled = false
  end
  local l_116_3 = (Game.GetActor)("TG_PROTOEMMY_BEHAVIOR")
  if l_116_3 ~= nil then
    l_116_3.bEnabled = true
  end
end

l_0_15.OnEnter_EndCUProtoEmmy = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_117_0)
  -- function num : 0_116
  (Game.SetCooldownFlag)(l_117_0)
end

l_0_15.SetCooldownFlag = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_118_0)
  -- function num : 0_117
  (Game.GetCooldownFlag)(l_118_0)
end

l_0_15.GetCooldownFlag = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_119_0, l_119_1)
  -- function num : 0_118
  l_119_0.bEnabled = false
  ;
  (Game.AddSF)(0.80000001192093, "s010_cave.Delayed_CoolDownEventCutscenePlaceholder", "")
  local l_119_2 = (Game.GetPlayer)()
  if l_119_2 ~= nil then
    (l_119_2.INPUT):IgnoreInput(true, false, "CoolDownCutscene")
  end
end

l_0_15.OnEnter_CoolDownEvent = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_119
  (GUI.ShowMessage)("#CUT_COOLDOWN", true, "s010_cave.Skipped_CoolDownEventCutscenePlaceholder")
  local l_120_0 = (Game.GetPlayer)()
  if l_120_0 ~= nil then
    (l_120_0.INPUT):IgnoreInput(false, false, "CoolDownCutscene")
  end
end

l_0_15.Delayed_CoolDownEventCutscenePlaceholder = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_120
  (s010_cave.Cooldown_Activation)()
end

l_0_15.Skipped_CoolDownEventCutscenePlaceholder = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_121 , upvalues : l_0_5
  if (Game.GetCurrentGameModeID)() ~= "EDITOR" then
    (Game.SetCooldownFlag)(true)
    if l_0_5 == false then
      (Game.PushSetup)("Cooldown", true, true)
      ;
      (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).CAVES_COOLDOWN_APPLIED, "b", true)
      l_0_5 = true
      local l_122_0 = (Game.GetActor)("elevator_aqua_000_platform")
      if l_122_0 ~= nil then
        l_122_0.bEnabled = false
      end
    end
  end
end

l_0_15.Cooldown_Activation = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_122 , upvalues : l_0_5
  if l_0_5 == true then
    (Game.PopSetup)("Cooldown", true, true)
    ;
    (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).CAVES_COOLDOWN_APPLIED, "b", false)
    l_0_5 = false
  end
end

l_0_15.Cooldown_Deactivation = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_123
  -- WARNING: undefined locals caused missing assignments!
end

l_0_15.OnCutsceneTheater = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_124
  local l_125_0 = (Game.GetActor)("cutsceneplayer_5")
  if l_125_0 ~= nil then
    (l_125_0.CUTSCENE):SetTakePlayMode(4, "Loop")
  end
end

l_0_15.OnBefore_Cutscene_5_Begins = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_125
  local l_126_0 = (Game.GetActor)("cutsceneplayer_5")
  if l_126_0 ~= nil then
    (l_126_0.CUTSCENE):TryLaunchCutscene()
  end
end

l_0_15.OnBegin_Cutscene_5 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_126
  local l_127_0 = (Game.GetActor)("cutsceneplayer_5")
  if l_127_0 ~= nil then
    (l_127_0.CUTSCENE):ContinueCutsceneIfTakeLooped()
  end
end

l_0_15.OnMeleeTutorialInputPressed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_127
  (Game.FadeIn)(0, 0.5)
end

l_0_15.OnCutscene0049_01Ended = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_128
  (Game.FadeIn)(0, 0.5)
end

l_0_15.OnCutscene0049_02Ended = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_129
end

l_0_15.OnCutscene0050_Ended = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_130
end

l_0_15.OpenTrapDoorCutscene50 = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_132_0)
  -- function num : 0_131 , upvalues : l_0_4
  if l_132_0.sName == "DoorEmmy11" and not l_0_4 then
    return false
  else
    return true
  end
end

l_0_15.Check_WakeUpCU_Completed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_132
  local l_133_0 = (Game.GetActor)("Door058 (PW-PW)")
  if l_133_0 ~= nil then
    (l_133_0.LIFE):ForceOpenDoor(false, "0034protoemmyappears")
  end
end

l_0_15.OnCutscene34Ended = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_133
  local l_134_0 = (Game.GetActor)("LE_GateProtoEmmy")
  if l_134_0 ~= nil then
    (l_134_0.ANIMATION):SetAction("close")
  end
end

l_0_15.CloseProtoEmmyCeilingGate = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_134
  local l_135_0 = (Game.GetActor)("Door058 (PW-PW)")
  if l_135_0 ~= nil then
    (Game.SetActorVolumeOverride)("Door058 (PW-PW)", 0, 0, "ALL")
    ;
    (l_135_0.LIFE):ForceOpenDoor(true, "0034protoemmyappears")
  end
end

l_0_15.OpenProtoEmmyCorridorPowerDoor = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_135
  (Game.SetSendReports)(false)
  ;
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_VARIA_SUIT", 1, true)
  ;
  (Game.SetSendReports)(true)
end

l_0_15.SetVariaSuitForCutscene = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_136
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_VARIA_SUIT", 0, true)
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  ;
  (((Game.GetPlayer)()).MODELUPDATER).sModelAlias = "Default"
  ;
  (((Game.GetPlayer)()).MODELUPDATER):ForceUpdate()
end

l_0_15.RemoveVariaSuitForCutscene = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_137
  (Game.SetSendReports)(false)
  ;
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_WEAPON_PLASMA_BEAM", 1, true)
  ;
  (Game.SetSendReports)(true)
end

l_0_15.SetPlasmaBeamForCutscene = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_138
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_WEAPON_PLASMA_BEAM", 0, true)
end

l_0_15.RemovePlasmaBeamForCutscene = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_139
  (s010_cave.RemoveVariaSuitForCutscene)()
  ;
  (s010_cave.RemovePlasmaBeamForCutscene)()
end

l_0_15.OnBeforeCutscene0001FlashbackEndStarted = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_140
  (s010_cave.SetVariaSuitForCutscene)()
  ;
  (s010_cave.SetPlasmaBeamForCutscene)()
end

l_0_15.OnBeforeCutscene0001IntroLandingStarted = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_141
  (s010_cave.SetVariaSuitForCutscene)()
  ;
  (s010_cave.SetPlasmaBeamForCutscene)()
end

l_0_15.OnBeforeCutscene0001IntroSpaceStarted = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_142
  (s010_cave.RemoveVariaSuitForCutscene)()
  ;
  (s010_cave.RemovePlasmaBeamForCutscene)()
end

l_0_15.OnBeforeCutscene0001FlashbackInitStarted = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_143
  (s010_cave.SwapScorpiusStatues)()
end

l_0_15.OnCutscene0057Ended = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_144
  (Game.ResetAndStopUpdateSpecialEnergy)()
end

l_0_15.OnCutscene0057Finished = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_145
  local l_146_0 = (Game.GetActor)("SG_Scorpius")
  if l_146_0 ~= nil then
    print((l_146_0.SPAWNGROUP).iNumDeaths)
    if (l_146_0.SPAWNGROUP).iNumDeaths > 0 then
      (s010_cave.SwapScorpiusStatues)()
    end
  end
end

l_0_15.CheckScorpiusDead = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_146
  local l_147_0 = (Game.GetActor)("cut_54_scorpiusstatue")
  local l_147_1 = (Game.GetActor)("ev_scorpiusstatue_end")
  if l_147_1 ~= nil then
    l_147_1.bEnabled = true
  end
  if l_147_0 ~= nil then
    l_147_0.bEnabled = false
  end
end

l_0_15.SwapScorpiusStatues = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_147
  local l_148_0 = (Game.GetActor)("elevator_with_cutscene_aqua_000")
  -- DECOMPILER ERROR at PC7: Confused about usage of register: R1 in 'UnsetPending'

  if l_148_0 ~= nil then
    (l_148_0.USABLE).bFadeInActived = false
  end
end

l_0_15.OnCutscene0007Finished = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_148
  local l_149_0 = (Game.GetActor)("SP_Scorpius_scorpius")
  if l_149_0 ~= nil then
    (l_149_0.AI):NotifyAfterPresentation()
  end
end

l_0_15.OnScorpiusPresentationFinished = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_149
  (Game.StopMusic)(true)
end

l_0_15.OnScorpiusPresentationSkipped = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_151_0, l_151_1)
  -- function num : 0_150
  (Game.PopSetup)("Scorpius_Event", true, true)
  local l_151_2 = (Game.GetActor)("SG_Bigfist_000")
  if l_151_2 ~= nil then
    (l_151_2.SPAWNGROUP):EnableSpawnGroup()
  end
  local l_151_3 = (Game.GetActor)("SG_ScorpiusEventEnemies")
  if l_151_3 ~= nil then
    (l_151_3.SPAWNGROUP):DisableSpawnGroup()
  end
  local l_151_4 = (Game.GetActor)("TG_EnableEnemiesAfterScorpiusTail")
  if l_151_4 ~= nil then
    l_151_4.bEnabled = true
  end
  l_151_0.bEnabled = false
end

l_0_15.OnEnter_FinishScorpiusEvent = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_152_0, l_152_1)
  -- function num : 0_151
  local l_152_2 = (Game.GetActor)("SG_ScorpiusEventEnemies")
  if l_152_2 ~= nil then
    (l_152_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_152_0.bEnabled = false
end

l_0_15.OnEnter_EnableEnemiesAfterScorpiusTail = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_153_0, l_153_1)
  -- function num : 0_152
  print("INIT SCORPIUS ANIMATION EVENT")
  ;
  (Game.PushSetup)("Scorpius_Event", true, true)
  l_153_0.bEnabled = false
end

l_0_15.OnEnter_InitScorpiusEvent = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_154_0, l_154_1)
  -- function num : 0_153
  print("ScorpiusFirstAppearance")
  ;
  (Game.PushSetup)("ScorpiusFirstAppearance", true, true)
  l_154_0.bEnabled = false
end

l_0_15.OnEnter_ScorpiusFirstShown = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_155_0, l_155_1)
  -- function num : 0_154
  local l_155_2 = (Game.GetActor)("SG_PostEmmy_002")
  local l_155_3 = (Game.GetActor)("SG_PostEmmy_003")
  if l_155_2 ~= nil then
    (l_155_2.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_155_3 ~= nil then
    (l_155_3.SPAWNGROUP):EnableSpawnGroup()
  end
  l_155_0.bEnabled = false
end

l_0_15.OnEnter_ActivatePostEmmyEnemies = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_155
  local l_156_0 = (Game.GetActor)("PRP_CV_AccessPoint001_WeightPlate")
  if l_156_0 ~= nil then
    (l_156_0.SMARTOBJECT):SetStateDuringFakeAdamDialogueCutScene()
  end
end

l_0_15.FakeAdamDialogueWeightPlate = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_156
  local l_157_0 = (Game.GetActor)("PRP_CV_AccessPoint001_WeightPlate")
  if l_157_0 ~= nil then
    (l_157_0.SMARTOBJECT):SetStateAfterCutScene()
  end
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_CAVE_1")
  ;
  (Blackboard.SetProp)("GAME_PROGRESS", "SHOWADAMDIALOGUE", "b", true)
end

l_0_15.FakeAdamDialogueBegins = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_157
  local l_158_0 = (Game.GetActor)("PRP_CV_AccessPoint001")
  if l_158_0 ~= nil then
    (l_158_0.USABLE):Discover(true)
    l_158_0:StartTimeline("discovernotransition", true)
  end
end

l_0_15.DiscoverAccessPointOnCutScene = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_158
  local l_159_0 = (Game.GetActor)("PRP_CV_AccessPoint001")
  if l_159_0 ~= nil then
    (l_159_0.USABLE):Discover(false)
  end
end

l_0_15.DiscoverNotransitionAccessPointOnCutScene = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_159
  local l_160_0 = (Game.GetActor)("LM_EnteringCWXArena")
  local l_160_1 = (Game.GetPlayer)()
  if l_160_1 ~= nil and l_160_0 ~= nil then
    (l_160_1.INPUT):IgnoreInput(true, false, "Enter_CWX_Arena")
    ;
    (l_160_1.ANIMATION):SetAction("fall", true)
    l_160_1.vPos = l_160_0.vPos
    l_160_1.vAng = l_160_0.vAng
    ;
    (Game.ForceConvertToSamus)()
  end
end

l_0_15.Enter_CWX_Arena = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_160
  local l_161_0 = (Game.GetPlayer)()
  if l_161_0 ~= nil then
    (l_161_0.INPUT):IgnoreInput(false, false, "Enter_CWX_Arena")
  end
end

l_0_15.Exit_CWX_Arena = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_161
  local l_162_0 = (Game.GetActor)("TG_AfterScorpiusBattle")
  if l_162_0 ~= nil then
    l_162_0.bEnabled = true
  end
  local l_162_1 = (Game.GetActor)("TG_ActivateArenaSpawngroup")
  if l_162_1 ~= nil then
    l_162_1.bEnabled = true
  end
end

l_0_15.EnablePostScorpiusTrigger = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_163_0, l_163_1)
  -- function num : 0_162
  (((Game.GetActor)("Door062 (PW-PW, Special)")).LIFE):UnLockDoor()
  ;
  (Game.PopSetup)("SP_Scorpius_scorpius_Boss_Defeated", true, true)
  ;
  (Game.PushSetup)("PostScorpius", true, true)
  l_163_0.bEnabled = false
end

l_0_15.OnEnter_ScorpiusArenaAfterBattle = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_164_0, l_164_1)
  -- function num : 0_163
  local l_164_2 = (Game.GetActor)("SG_Bigfist_007")
  if l_164_2 ~= nil then
    (l_164_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_164_0.bEnabled = false
end

l_0_15.OnEnter_ActivateArenaSpawngroup = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_164
  (Game.AddSF)(3, "s010_cave.ActivationMeleeTutoReminder_delayed", "")
end

l_0_15.ActivationMeleeTutoReminder = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_165
  (Game.AddSF)(2, "s010_cave.ActivationMeleeTutoReminder_02_delayed", "")
end

l_0_15.ActivationMeleeTutoReminder_02 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_166
  (Game.AddSF)(2, "s010_cave.ActivationMeleeTutoReminder_03_delayed", "")
end

l_0_15.ActivationMeleeTutoReminder_03 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_167
  local l_168_0 = (Game.GetActor)("MeleeTutoTriggerEnter")
  local l_168_1 = (Game.GetActor)("MeleeTutoTriggerExit")
  if l_168_0 ~= nil and l_168_1 ~= nil then
    l_168_0.bEnabled = true
    l_168_1.bEnabled = true
  end
  local l_168_2 = (Game.GetActor)("MeleeTutoTriggerExit_002")
  if l_168_2 ~= nil then
    l_168_2.bEnabled = true
  end
  local l_168_3 = (Game.GetActor)("MeleeTutoTriggerExit_003")
  if l_168_3 ~= nil then
    l_168_3.bEnabled = true
  end
end

l_0_15.ActivationMeleeTutoReminder_delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_168
  local l_169_0 = (Game.GetActor)("MeleeTutoTriggerEnter_002")
  if l_169_0 ~= nil then
    l_169_0.bEnabled = true
  end
end

l_0_15.ActivationMeleeTutoReminder_02_delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_169
  local l_170_0 = (Game.GetActor)("MeleeTutoTriggerEnter_003")
  if l_170_0 ~= nil then
    l_170_0.bEnabled = true
  end
end

l_0_15.ActivationMeleeTutoReminder_03_delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_171_0)
  -- function num : 0_170
  if l_171_0.sName == "PRP_CV_AccessPoint001" then
    (s010_cave.OnTutoMapOptionsBegins)(true)
  else
    if l_171_0.sName == "PRP_CV_MapStation001" then
      (s010_cave.OnTutoMapRoomBegins)(true)
    end
  end
end

l_0_15.OnUsableFinishInteract = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_172_0)
  -- function num : 0_171
  if l_172_0.sName == "PRP_CV_AccessPoint001" then
    (s010_cave.OnTutoMapOptionsBegins)(true)
  else
    if l_172_0.sName == "PRP_CV_MapStation001" then
      (s010_cave.OnTutoMapRoomBegins)(true)
    end
  end
end

l_0_15.OnUsableCancelUse = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_173_0)
  -- function num : 0_172
  if l_173_0.sName == "PRP_CV_AccessPoint001" then
    (s010_cave.OnTutoMapOptionsBegins)(false)
  else
    if l_173_0.sName == "PRP_CV_MapStation001" then
      (s010_cave.OnTutoMapRoomBegins)(false)
    end
  end
end

l_0_15.OnUsablePrepareUse = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_174_0)
  -- function num : 0_173 , upvalues : l_0_14
  if l_174_0.sName == "LE_Elevator_FromMagma" and not l_0_14 then
    (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).CAVES_TUTO_MAP_ROOM_DONE, "b", true)
  end
end

l_0_15.OnUsableUse = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_175_0)
  -- function num : 0_174 , upvalues : l_0_13
  local l_175_1 = (Game.GetActor)("MapOptionsTutoTriggerEnter")
  local l_175_2 = (Game.GetActor)("MapOptionsTutoTriggerExit")
  if l_175_1 ~= nil and l_175_2 ~= nil then
    if not l_0_13 and l_175_0 then
      l_175_1.bEnabled = true
      l_175_2.bEnabled = true
    else
      l_175_1.bEnabled = false
      l_175_2.bEnabled = false
    end
  end
end

l_0_15.OnTutoMapOptionsBegins = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_175 , upvalues : l_0_13
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).CAVES_TUTO_MAP_DONE, "b", true)
  l_0_13 = true
  print(l_0_13)
end

l_0_15.OnTutoMapOptionsEnds = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_177_0)
  -- function num : 0_176 , upvalues : l_0_14
  local l_177_1 = (Game.GetActor)("MapRoomTutoTriggerEnter")
  local l_177_2 = (Game.GetActor)("MapRoomTutoTriggerExit")
  if l_177_1 ~= nil and l_177_2 ~= nil then
    if not l_0_14 and l_177_0 then
      l_177_1.bEnabled = true
      l_177_2.bEnabled = true
    else
      l_177_1.bEnabled = false
      l_177_2.bEnabled = false
    end
  end
end

l_0_15.OnTutoMapRoomBegins = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_177 , upvalues : l_0_14
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).CAVES_TUTO_MAP_ROOM_DONE, "b", true)
  l_0_14 = true
  print(l_0_14)
end

l_0_15.OnTutoMapRoomEnds = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_179_0, l_179_1)
  -- function num : 0_178
  (Game.PushSetup)("ChozoWarriorX", true, true)
end

l_0_15.EnableChozoWarriorX = l_0_16
l_0_15 = s010_cave
l_0_16 = function(l_180_0, l_180_1)
  -- function num : 0_179
  (Game.PopSetup)("ChozoWarriorX", true, true)
end

l_0_15.PostChozoWarriorX = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_180
  local l_181_0 = (Game.GetActor)("cutsceneplayer_intro_space")
  if l_181_0 ~= nil then
    local l_181_1 = (Game.GetActor)("cutsceneplayer_intro_flashbackinit")
    if l_181_1 ~= nil then
      (l_181_0.CUTSCENE):QueueCutscenePlayer(l_181_1)
      local l_181_2 = (Game.GetActor)("cutsceneplayer_intro_landing")
      if l_181_2 ~= nil then
        (l_181_1.CUTSCENE):QueueCutscenePlayer(l_181_2)
        local l_181_3 = (Game.GetActor)("cutsceneplayer_intro_arrivalatrium")
        if l_181_3 ~= nil then
          (l_181_2.CUTSCENE):QueueCutscenePlayer(l_181_3)
          local l_181_4 = (Game.GetActor)("cutsceneplayer_intro_fight")
          if l_181_4 ~= nil then
            (l_181_3.CUTSCENE):QueueCutscenePlayer(l_181_4)
            local l_181_5 = (Game.GetActor)("cutsceneplayer_intro_flashbackend")
            if l_181_5 ~= nil then
              (l_181_4.CUTSCENE):QueueCutscenePlayer(l_181_5)
            end
          end
        end
      end
    end
  end
end

l_0_15.cutsceneplayer_intro_space_full = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_181
  (Game.AddSF)(0.10000000149012, "s010_cave.cutsceneplayer_3_delayed", "")
end

l_0_15.cutsceneplayer_3 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_182
  local l_183_0 = (Game.GetActor)("PRP_CV_AccessPoint001")
  if l_183_0 ~= nil then
    l_183_0.bEnabled = false
  end
end

l_0_15.cutsceneplayer_3_delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_183
  (Game.AddSF)(0.10000000149012, "s010_cave.cutsceneplayer_48_delayed", "")
end

l_0_15.cutsceneplayer_48 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_184
  local l_185_0 = (Game.GetActor)("PRP_CV_AccessPoint001")
  if l_185_0 ~= nil then
    l_185_0.bEnabled = false
  end
end

l_0_15.cutsceneplayer_48_delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_185
  local l_186_0 = (Game.GetActor)("SP_Scorpius_scorpius")
  if l_186_0 ~= nil then
    l_186_0.bEnabled = false
  end
end

l_0_15.cutsceneplayer_54_delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_186
  (Game.AddSF)(0.10000000149012, "s010_cave.cutsceneplayer_55_delayed", "")
end

l_0_15.cutsceneplayer_55 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_187
  local l_188_0 = (Game.GetActor)("SP_Scorpius_scorpius")
  if l_188_0 ~= nil then
    l_188_0.bEnabled = false
  end
end

l_0_15.cutsceneplayer_55_delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_188
  (Game.AddSF)(0.10000000149012, "s010_cave.cutsceneplayer_155_delayed", "")
end

l_0_15.cutsceneplayer_155 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_189
  local l_190_0 = (Game.GetActor)("SP_Scorpius_scorpius")
  if l_190_0 ~= nil then
    l_190_0.bEnabled = false
  end
end

l_0_15.cutsceneplayer_155_delayed = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_190
  (Game.AddSF)(0.10000000149012, "s010_cave.cutsceneplayer_57_delayed", "")
end

l_0_15.cutsceneplayer_57 = l_0_16
l_0_15 = s010_cave
l_0_16 = function()
  -- function num : 0_191
  local l_192_0 = (Game.GetActor)("SP_Scorpius_scorpius")
  if l_192_0 ~= nil then
    l_192_0.bEnabled = false
  end
end

l_0_15.cutsceneplayer_57_delayed = l_0_16

