function s010_cave.main()
  s010_cave.PatrolRoutesGeneration()
  s010_cave.PatrolRoutesFinalNodesAssignation()
end
function s010_cave.SetupDebugGameBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 99)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 99)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 10)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 10)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end
function s010_cave.OnLoadScenarioFinished()
  if not _UPVALUE0_ then
    Game.ResetFader()
    Game.FadeOut(0)
  end
end
function s010_cave.InitFromBlackboard()
  Game.ReinitPlayerFromBlackboard()
  if CurrentScenario.oEmmyProtoEntity ~= nil then
    print("ProtoEmmyAntiguo presente")
  end
  s010_cave.Event_WaterPoolInfiltration_Deactivate()
  _UPVALUE0_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.CAVES_GAME_INTRO, false)
  _UPVALUE1_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.CAVES_EMMY_SPAWNED, false)
  _UPVALUE2_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED, false)
  _UPVALUE3_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.CAVES_COOLDOWN_APPLIED, false)
  _UPVALUE4_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.CAVES_POSTXRELEASE_APPLIED, false)
  _UPVALUE5_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.CAVES_TUTO_MAP_DONE, false)
  _UPVALUE6_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.CAVES_TUTO_MAP_ROOM_DONE, false)
  _UPVALUE7_ = Blackboard.GetProp("GAME_PROGRESS", "QUARENTINE_OPENED")
  s010_cave.CheckScorpiusDead()
  if Game.GetFromGameBlackboardSection("PlayedCutscenes", "CutScenePlayed[cutscenes/0049centralunitdetectsamus01/0049centralunitdetectsamus01.bmscu]") == 0 and Game.GetActor("DoorEmmy11") ~= nil then
    Game.GetActor("DoorEmmy11").STARTPOINT:SetSaveGameToCheckpoint(false)
  end
  if _UPVALUE7_ == true then
    s010_cave.Activate_Setup_PostXRelease()
  end
  if Game.GetCooldownFlag() == true then
    if _UPVALUE3_ == false then
      s010_cave.Cooldown_Activation()
    end
  elseif _UPVALUE3_ == true then
    s010_cave.Cooldown_Deactivation()
  end
  if Blackboard.GetProp("GAME_PROGRESS", "CUTSCENE_THEATRE_CUTSCENE") ~= nil then
    print((Blackboard.GetProp("GAME_PROGRESS", "CUTSCENE_THEATRE_CUTSCENE")))
    Game.LaunchCutscene((Blackboard.GetProp("GAME_PROGRESS", "CUTSCENE_THEATRE_CUTSCENE")))
  end
  if not _UPVALUE0_ then
    s010_cave.OnBegin_Cutscene_intro_space()
  end
end
function s010_cave.Activate_Setup_PostXRelease()
  if _UPVALUE0_ == false then
    Game.PushSetup("PostXRelease", true, true)
    Scenario.WriteToBlackboard(Scenario.LUAPropIDs.CAVES_POSTXRELEASE_APPLIED, "b", true)
    _UPVALUE0_ = true
  end
end
function s010_cave.OnBegin_Cutscene_intro_space()
  if Game.GetActor("cutsceneplayer_intro_space") ~= nil then
    if Game.GetActor("cutsceneplayer_intro_flashbackinit") ~= nil then
      Game.GetActor("cutsceneplayer_intro_space").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_flashbackinit")))
      if Game.GetActor("cutsceneplayer_intro_landing") ~= nil then
        Game.GetActor("cutsceneplayer_intro_flashbackinit").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_landing")))
        if Game.GetActor("cutsceneplayer_intro_arrivalatrium") ~= nil then
          Game.GetActor("cutsceneplayer_intro_landing").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_arrivalatrium")))
          if Game.GetActor("cutsceneplayer_intro_fight") ~= nil then
            Game.GetActor("cutsceneplayer_intro_arrivalatrium").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_fight")))
            if Game.GetActor("cutsceneplayer_intro_flashbackend") ~= nil then
              Game.GetActor("cutsceneplayer_intro_fight").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_flashbackend")))
            end
          end
        end
      end
    end
    Game.GetActor("cutsceneplayer_intro_space").CUTSCENE:TryLaunchCutscene()
  end
end
function s010_cave.OnEnd_Cutscene_intro_end()
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.CAVES_GAME_INTRO, "b", true)
  _UPVALUE0_ = true
  Game.PushSetup("PostIntro", true, true)
  Game.PlayCurrentEnvironmentMusic()
  Game.SaveGame("savedata", "IntroEnd", "StartPoint0", true)
end
function s010_cave.OnEmmyCaveDead()
  Game.PushSetup("PostEmmy", true, true)
end
function s010_cave.OnEmmyAbilityObtainedFadeOutCompleted()
  if Game.GetActor("ev_entercu_cv_001") ~= nil then
    Game.GetActor("ev_entercu_cv_001").TUNNEL_TRAP:SetOpenState()
  end
  Game.GetActor("Door062 (PW-PW, Special)").LIFE:LockDoor()
  if Game.GetActor("SG_WarLotus_000") ~= nil then
    Game.GetActor("SG_WarLotus_000").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("PRP_CV_CentralUnitCaves") ~= nil then
    Game.GetActor("PRP_CV_CentralUnitCaves").CENTRALUNIT:OnEmmyAbilityObtainedFadeOutCompleted()
  end
end
function s010_cave.DelayedOnEmmyCaveDead()
end
function s010_cave.OnEmmyDeathMessageSkipped()
end
s010_cave.tGetOnDeathOverrides = {ShowDeath = true, GoToMainMenu = false}
function s010_cave.GetOnDeathOverrides()
  return s010_cave.tGetOnDeathOverrides
end
function s010_cave.SPRTutoTriggerEnable()
  Game.AddSF(0.1, "s010_cave.DelayedSPRTutoTriggerEnable", "")
end
function s010_cave.DelayedSPRTutoTriggerEnable()
  if Game.GetActor("SPRCentralUnitTutoTrigger") ~= nil then
    Game.GetActor("SPRCentralUnitTutoTrigger").bEnabled = true
  end
end
function s010_cave.SPBTutoTriggerEnable()
  Game.AddSF(0.1, "s010_cave.DelayedSPBTutoTriggerEnable", "")
end
function s010_cave.DelayedSPBTutoTriggerEnable()
  if Game.GetActor("SPBCentralUnitTutoTrigger") ~= nil then
    Game.GetActor("SPBCentralUnitTutoTrigger").bEnabled = true
  end
end
function s010_cave.OnBeforeGenerate()
end
function s010_cave.OnEmmyCaveGenerated(_ARG_0_, _ARG_1_)
  CurrentScenario.oEmmyEntity = _ARG_1_
  AI.SetWorldGraphToEmmy("LE_WorldGraph", _ARG_1_.sName)
  s010_cave.ChangePatrolEmmy("PATROLROUTE_02")
  print("EMMY: Generation OK. Starting patrol: " .. _ARG_1_.AI.sCurrentPatrol)
end
function s010_cave.EmmyCaveSpawnSequence()
  if Game.GetActor("Door062 (PW-PW, Special)") ~= nil then
    Game.GetActor("Door062 (PW-PW, Special)").LIFE:CloseDoor(true, true, true)
    Game.GetActor("Door062 (PW-PW, Special)").LIFE:LockDoor()
  end
  if Game.GetActor("PRP_CV_CentralUnitCaves") ~= nil then
    Game.GetActor("PRP_CV_CentralUnitCaves").CENTRALUNIT:Activate()
  else
    print("CENTRAL_UNIT: PRP_CV_CentralUnitCaves not found")
  end
  if Game.GetActor("TG_EnableSpawnEmmy") ~= nil then
    Game.GetActor("TG_EnableSpawnEmmy").bEnabled = false
  end
  GUI.AddEmmyMissionLogEntry("#MLOG_ENCOUNTER_EMMY_CAVE")
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.bEnabled = true
  end
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.CAVES_EMMY_SPAWNED, "b", true)
  _UPVALUE0_ = true
end
function s010_cave.EmmyCaveSpawnSequenceEnd()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI:OnPresentationCutsceneEnd()
  end
end
function s010_cave.EmmyProtoSpawnSequence()
  if Game.GetActor("PRP_CV_CentralUnitProto") ~= nil then
    Game.GetActor("PRP_CV_CentralUnitProto").CENTRALUNIT:Activate()
  else
    print("CENTRAL_UNIT: PRP_CV_CentralUnitProto not found")
  end
  GUI.AddEmmyMissionLogEntry("#MLOG_ENCOUNTER_PROTOEMMY_CAVE")
end
function s010_cave.OnEmmyProtoGenerated(_ARG_0_, _ARG_1_)
  CurrentScenario.oEmmyProtoEntity = _ARG_1_
end
function s010_cave.EmmyProtoClimbSequenceMessageSkipped()
  if Game.GetPlayer() ~= nil and Game.GetActor("LM_AfterEmmyProtoClimbSequence_Samus") ~= nil then
    Game.GetPlayer().vPos = Game.GetActor("LM_AfterEmmyProtoClimbSequence_Samus").vPos
    Game.GetPlayer().vAng = Game.GetActor("LM_AfterEmmyProtoClimbSequence_Samus").vAng
  end
  if CurrentScenario.oEmmyProtoEntity ~= nil and Game.GetActor("LM_AfterEmmyProtoClimbSequence_Emmy") ~= nil then
    CurrentScenario.oEmmyProtoEntity.bEnabled = false
    CurrentScenario.oEmmyProtoEntity.vPos = Game.GetActor("LM_AfterEmmyProtoClimbSequence_Emmy").vPos
    CurrentScenario.oEmmyProtoEntity.vAng = Game.GetActor("LM_AfterEmmyProtoClimbSequence_Emmy").vAng
    CurrentScenario.oEmmyProtoEntity.bEnabled = true
  end
end
function s010_cave.OnProtoEmmyCantClimbCutsceneStart()
  if CurrentScenario.oEmmyProtoEntity ~= nil and Game.GetActor("LM_AfterEmmyProtoClimbSequence_Emmy") ~= nil then
    CurrentScenario.oEmmyProtoEntity.bEnabled = false
    CurrentScenario.oEmmyProtoEntity.vPos = Game.GetActor("LM_AfterEmmyProtoClimbSequence_Emmy").vPos
    CurrentScenario.oEmmyProtoEntity.vAng = Game.GetActor("LM_AfterEmmyProtoClimbSequence_Emmy").vAng
    CurrentScenario.oEmmyProtoEntity.ANIMATION:SetAction("relax", true)
    CurrentScenario.oEmmyProtoEntity.bEnabled = true
  end
end
function s010_cave.OnProtoEmmyCantClimbCutsceneEnd()
  print("OnProtoEmmyCantClimbCutsceneEnd")
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyProtoEntity) then
    CurrentScenario.oEmmyProtoEntity.AI:OnPresentationCutsceneEnd()
  end
end
function s010_cave.OnProtoEmmyWalkThroughCentralUnitDoor()
  if Game.GetActor("TG_PROTOEMMY_ACTIVATE") ~= nil then
    Game.GetActor("TG_PROTOEMMY_ACTIVATE").bEnabled = true
  end
  if Game.GetActor("TG_PROTOEMMY_ACTIVATE_TIMER") ~= nil then
    Game.GetActor("TG_PROTOEMMY_ACTIVATE_TIMER").bEnabled = true
  end
end
function s010_cave.OnAimCameraPossess()
  if Game.GetActor("TG_PROTOEMMY_ACTIVATE_TIMER") ~= nil and Game.GetActor("TG_PROTOEMMY_ACTIVATE_TIMER").bEnabled == false and Game.GetActor("TG_PROTOEMMY_ACTIVATE") ~= nil and Game.GetActor("TG_PROTOEMMY_ACTIVATE").bEnabled then
    s010_cave.OnEnter_ActivateProtoEmmy()
    Game.GetActor("TG_PROTOEMMY_ACTIVATE").bEnabled = false
  end
end
function s010_cave.OnEnter_ActivateProtoEmmy()
  if CurrentScenario.oEmmyProtoEntity ~= nil then
    CurrentScenario.oEmmyProtoEntity.bEnabled = true
    CurrentScenario.oEmmyProtoEntity.AI:StandStillFor(1)
  end
  if Game.GetActor("TG_PROTOEMMY_ACTIVATE") ~= nil then
    Game.GetActor("TG_PROTOEMMY_ACTIVATE").bEnabled = false
  end
  if Game.GetActor("TG_PROTOEMMY_ACTIVATE_TIMER") ~= nil then
    Game.GetActor("TG_PROTOEMMY_ACTIVATE_TIMER").bEnabled = false
  end
end
function s010_cave.OnEnter_ActivateProtoEmmyTimer()
  Game.AddSF(3, "s010_cave.OnAimCameraPossess", "")
  if Game.GetActor("TG_PROTOEMMY_ACTIVATE_TIMER") ~= nil then
    Game.GetActor("TG_PROTOEMMY_ACTIVATE_TIMER").bEnabled = false
  end
end
function s010_cave.PatrolRoutesGeneration()
  if Game.GetActor("SP_Emmy") ~= nil then
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_01")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_02")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_03")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_04")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_05")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_06")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_07")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_08")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_09")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_10")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_11")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_12")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_13")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_14")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_15")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLTUTOFOCUS")
  end
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_01", "LS_PATROLEMMY_01")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_02", "LS_PATROLEMMY_02")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_03", "LS_PATROLEMMY_03")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_04", "LS_PATROLEMMY_04")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_05", "LS_PATROLEMMY_05")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_06", "LS_PATROLEMMY_06")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_07", "LS_PATROLEMMY_07")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_08", "LS_PATROLEMMY_08")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_09", "LS_PATROLEMMY_09")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_10", "LS_PATROLEMMY_10")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_11", "LS_PATROLEMMY_11")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_12", "LS_PATROLEMMY_12")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_13", "LS_PATROLEMMY_13")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_14", "LS_PATROLEMMY_14")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_15", "LS_PATROLEMMY_15")
  AI.AddPatrol("LE_WorldGraph", "PATROLTUTOFOCUS", "LS_PATROLTUTOFOCUS")
  print("s010_cave.PatrolRoutesGeneration(): Patrol designation OK")
end
function s010_cave.PatrolRoutesFinalNodesAssignation()
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_01", {
    "WorldGraph_60"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_01", {
    "WorldGraph_69",
    "WorldGraph_70",
    "WorldGraph_72"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_73",
    "WorldGraph_70"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_51",
    "WorldGraph_60"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_59"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_65"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_59"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_52",
    "WorldGraph_53"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_36"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_45"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_04", {
    "WorldGraph_36"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_04", {
    "WorldGraph_44",
    "WorldGraph_45"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_04", {
    "WorldGraph_52"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_04", {
    "WorldGraph_50"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_04", {
    "WorldGraph_60",
    "WorldGraph_61"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_32",
    "WorldGraph_38"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_34",
    "WorldGraph_37"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_41",
    "WorldGraph_42"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_25"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_28",
    "WorldGraph_37"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_40"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_15",
    "WorldGraph_22"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_9",
    "WorldGraph_11"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_16",
    "WorldGraph_18"
  }, 2)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_25",
    "WorldGraph_33"
  }, 3)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_9"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_1"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_15"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_09", {
    "WorldGraph_2"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_09", {
    "WorldGraph_4"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_09", {
    "WorldGraph_0",
    "WorldGraph_7"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_111",
    "WorldGraph_112"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_105",
    "WorldGraph_103"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_98",
    "WorldGraph_101"
  }, 2)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_11", {
    "WorldGraph_116",
    "WorldGraph_126"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_11", {
    "WorldGraph_115",
    "WorldGraph_123"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_59"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_92"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_56"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_60"
  }, 2)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_13", {
    "WorldGraph_71",
    "WorldGraph_73"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_13", {
    "WorldGraph_72",
    "WorldGraph_65"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_13", {
    "WorldGraph_97",
    "WorldGraph_93"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_13", {
    "WorldGraph_90"
  }, 2)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_88"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_96"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_80",
    "WorldGraph_79"
  }, 2)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_76"
  }, 2)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_15", {
    "WorldGraph_88"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_15", {
    "WorldGraph_80"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_15", {
    "WorldGraph_76"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_15", {
    "WorldGraph_85"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLTUTOFOCUS", {
    "WorldGraph_21"
  }, 0)
  print("s010_cave.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK")
end
function s010_cave.ChangePatrolEmmy(_ARG_0_)
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI.sCurrentPatrol = _ARG_0_
    print("EMMY: Assigned route " .. _ARG_0_)
  else
    print("EMMY: Not found, route " .. _ARG_0_ .. " not assigned")
  end
end
function s010_cave.OnEnter_PatrolEmmyActivator(_ARG_0_, _ARG_1_)
  s010_cave.ChangePatrolEmmy((string.gsub(_ARG_0_.sName, "TG_PATROLEMMYACTIVATOR_", "PATROLROUTE_")))
end
function s010_cave.OnExit_PatrolEmmyActivator(_ARG_0_, _ARG_1_)
end
s010_cave.tEmmyDoor = nil
function s010_cave.OnWalkThroughEmmyDoor(_ARG_0_, _ARG_1_, _ARG_2_)
  if _UPVALUE0_ and Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    if _ARG_1_ then
      if CurrentScenario.oEmmyEntity ~= nil then
        if _ARG_2_ then
          sTeleportLandmark = s010_cave.HardEmmyRelocationDoor(_ARG_0_)
        else
          sTeleportLandmark = s010_cave.EmmyRelocationDoor(_ARG_0_)
        end
        if sTeleportLandmark ~= nil then
          print((Game.GetActor(sTeleportLandmark)))
          if Game.GetActor(sTeleportLandmark) ~= nil then
            CurrentScenario.oEmmyEntity.bEnabled = false
            CurrentScenario.oEmmyEntity.vPos = Game.GetActor(sTeleportLandmark).vPos
            CurrentScenario.oEmmyEntity.vAng = Game.GetActor(sTeleportLandmark).vAng
            if s010_cave.Check_WakeUpCU_Completed(_ARG_0_) then
              CurrentScenario.oEmmyEntity.bEnabled = true
            end
          end
        end
      end
    else
      CurrentScenario.oEmmyEntity.bEnabled = false
    end
  end
end
function s010_cave.HardEmmyRelocationDoor(_ARG_0_)
  print("Door: Hard " .. _ARG_0_.sName)
  if _ARG_0_.sName == "DoorEmmy03" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_004"
    }
  elseif _ARG_0_.sName == "DoorEmmy02" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_005"
    }
  elseif _ARG_0_.sName == "DoorEmmy01" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_008"
    }
  elseif _ARG_0_.sName == "DoorEmmy10" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_012"
    }
  elseif _ARG_0_.sName == "DoorEmmy11" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_011",
      "LM_EmmyEntrancePoint_013"
    }
  elseif _ARG_0_.sName == "DoorEmmy06" or _ARG_0_.sName == "DoorEmmy07" then
    if Blackboard.GetProp("s010_cave", "TG_TutoFocus_Caves_001:TRIGGER:Enabled") == false then
      s010_cave.tEmmyDoor = {
        "LM_EmmyEntrancePoint_000"
      }
    else
      s010_cave.tEmmyDoor = nil
    end
  else
    s010_cave.tEmmyDoor = nil
  end
  if s010_cave.tEmmyDoor ~= nil then
    return s010_cave.tEmmyDoor[math.random(table.maxn(s010_cave.tEmmyDoor))]
  else
    return nil
  end
end
function s010_cave.EmmyRelocationDoor(_ARG_0_)
  if _ARG_0_.sName == "DoorEmmy03" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_003",
      "LM_EmmyEntrancePoint_004"
    }
  elseif _ARG_0_.sName == "DoorEmmy02" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_005",
      "LM_EmmyEntrancePoint_006"
    }
  elseif _ARG_0_.sName == "DoorEmmy01" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_008",
      "LM_EmmyEntrancePoint_009",
      "LM_EmmyEntrancePoint_010"
    }
  elseif _ARG_0_.sName == "DoorEmmy10" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_011",
      "LM_EmmyEntrancePoint_012"
    }
  elseif _ARG_0_.sName == "DoorEmmy11" then
    s010_cave.tEmmyDoor = {
      "LM_EmmyEntrancePoint_011",
      "LM_EmmyEntrancePoint_013"
    }
  elseif _ARG_0_.sName == "DoorEmmy06" or _ARG_0_.sName == "DoorEmmy07" then
    if Blackboard.GetProp("s010_cave", "TG_TutoFocus_Caves_001:TRIGGER:Enabled") == false then
      s010_cave.tEmmyDoor = {
        "LM_EmmyEntrancePoint_000",
        "LM_EmmyEntrancePoint_001",
        "LM_EmmyEntrancePoint_002"
      }
    else
      s010_cave.tEmmyDoor = nil
    end
  else
    s010_cave.tEmmyDoor = nil
  end
  if s010_cave.tEmmyDoor ~= nil then
    return s010_cave.tEmmyDoor[math.random(table.maxn(s010_cave.tEmmyDoor))]
  else
    return nil
  end
end
function s010_cave.OnTeleport_Checkpoint_CU()
  Game.AddSF(1, "s010_cave.Checkpoint_RelocatingEmmy_CU", "")
end
function s010_cave.Checkpoint_RelocatingEmmy_CU()
  if CurrentScenario.oEmmyEntity ~= nil and Game.GetActor("LM_EmmyDestroySearchLandmark01") ~= nil then
    CurrentScenario.oEmmyEntity.bEnabled = false
    CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_EmmyDestroySearchLandmark01").vPos
    CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_EmmyDestroySearchLandmark01").vAng
    CurrentScenario.oEmmyEntity.bEnabled = true
    s010_cave.ChangePatrolEmmy("PATROLROUTE_14")
  end
end
function s010_cave.ActivateGrabOverride_Right()
  if Game.GetActor("LS_EmmyGrabOverride_000") ~= nil and Game.GetActor("LS_EmmyGrabOverride_001") ~= nil then
    Game.GetActor("LS_EmmyGrabOverride_001").bEnabled = false
    Game.GetActor("LS_EmmyGrabOverride_000").bEnabled = true
  end
end
function s010_cave.ActivateGrabOverride_Left()
  if Game.GetActor("LS_EmmyGrabOverride_000") ~= nil and Game.GetActor("LS_EmmyGrabOverride_001") ~= nil then
    Game.GetActor("LS_EmmyGrabOverride_000").bEnabled = false
    Game.GetActor("LS_EmmyGrabOverride_001").bEnabled = true
  end
end
function s010_cave.EmmyCaveTryToEndStagger()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) and Game.GetActor("LS_EmmyEndStagger_000") ~= nil and Game.GetActor("LS_EmmyEndStagger_000").LOGICSHAPE:IsActorInside(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI:ForceStopStagger()
  end
end
s010_cave.tWaterPoolsToEnable = {
  "PRP_CV_watercave02",
  "PRP_CV_watercave05",
  "waterstream01_caveinit",
  "waterstream01_caveinit_001",
  "waterstream01_caveinit_002",
  "waterstream01_caveinit_003",
  "waterstream01_caveinit_004",
  "waterstream01_caveinit_005"
}
function s010_cave.Event_WaterPoolInfiltration_Activate()
  print("Event_WaterPoolInfiltration started!")
  for _FORV_3_, _FORV_4_ in ipairs(s010_cave.tWaterPoolsToEnable) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    else
      print("Entity " .. _FORV_4_ .. " not found")
    end
  end
  if Game.GetActor("Watervalve_fillmap") ~= nil then
    Game.SetMinimapRegionVisited("Watervalve_fillmap")
  end
end
function s010_cave.Event_WaterPoolInfiltration_Deactivate()
  for _FORV_3_, _FORV_4_ in ipairs(s010_cave.tWaterPoolsToEnable) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    else
      print("Entity " .. _FORV_4_ .. " not found")
    end
  end
end
function s010_cave.Event_EmmyPatrolFocusTutorial_DisableEmmy()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.bEnabled = false
  else
    print("Emmy not found")
  end
  Game.GetActor("Door062 (PW-PW, Special)").LIFE:UnLockDoor()
  print("Emmy deshabilitado")
end
function s010_cave.Event_EmmyWaterValveTutorial()
  print("Event: Water valve tutorial")
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.bEnabled = false
    CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_Emmy_WaterPlant").vPos
    CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_Emmy_WaterPlant").vAng
    CurrentScenario.oEmmyEntity.bEnabled = true
    CurrentScenario.oEmmyEntity.ANIMATION:SetAction("standby", true)
  end
end
function s010_cave.Event_EmmyPatrolFocusTutorial()
  if Game.GetPlayer() ~= nil then
    print("Event: Patrol Focus Tutorial")
    if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
      CurrentScenario.oEmmyEntity.bEnabled = false
      CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_TutoFocus_EmmyNoFocusTutorialPoint").vPos
      CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_TutoFocus_EmmyNoFocusTutorialPoint").vAng
      CurrentScenario.oEmmyEntity.bEnabled = true
    else
      print("Emmy not found")
    end
  end
end
function s010_cave.OnEnter_ChangeMusic_ScrewAttack()
  Game.PushSetup("ScrewAttack", true, true)
end
function s010_cave.OnExit_ChangeMusic_ScrewAttack()
  Game.PopSetup("ScrewAttack", true, true)
end
function s010_cave.OnEnter_ChangeCamera_003_B()
  Game.SetCollisionCameraLocked("collision_camera_003_B", true)
end
function s010_cave.OnCaptionFinished()
  print("caption finished")
end
function s010_cave.OnExit_ChangeCamera_003_B()
  Game.SetCollisionCameraLocked("collision_camera_003_B", false)
end
function s010_cave.OnEnter_ChangeCamera_003_C()
  Game.SetCollisionCameraLocked("collision_camera_003_C", true)
end
function s010_cave.OnExit_ChangeCamera_003_C()
  Game.SetCollisionCameraLocked("collision_camera_003_C", false)
end
function s010_cave.OnEnter_ChangeCamera_050_B()
  Game.SetCollisionCameraLocked("collision_camera_050_B", true)
end
function s010_cave.OnExit_ChangeCamera_050_B()
  Game.SetCollisionCameraLocked("collision_camera_050_B", false)
end
function s010_cave.OnEnter_ChangeCamera_056_B()
  Game.SetCollisionCameraLocked("collision_camera_056_B", true)
end
function s010_cave.OnExit_ChangeCamera_056_B()
  Game.SetCollisionCameraLocked("collision_camera_056_B", false)
end
function s010_cave.OnEnter_ChangeCamera_056_C()
  Game.SetCollisionCameraLocked("collision_camera_056_C", true)
end
function s010_cave.OnExit_ChangeCamera_056_C()
  Game.SetCollisionCameraLocked("collision_camera_056_C", false)
end
function s010_cave.OnEnter_ChangeCamera_064B()
  if Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_CENTRAL_UNIT_DECAYED_ENERGY") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_CENTRAL_UNIT_DECAYED_ENERGY") > 0 then
    Game.SetCollisionCameraLocked("collision_camera_064B", false)
  else
    Game.SetCollisionCameraLocked("collision_camera_064B", true)
  end
end
function s010_cave.OnExit_ChangeCamera_064B()
  Game.SetCollisionCameraLocked("collision_camera_064B", false)
end
function s010_cave.OnEnter_ChangeCamera_015_B()
  Game.SetCollisionCameraLocked("collision_camera_015_B", true)
end
function s010_cave.OnExit_ChangeCamera_015_B()
  Game.SetCollisionCameraLocked("collision_camera_015_B", false)
end
function s010_cave.OnEnter_ChangeCamera_031_B()
  Game.SetCollisionCameraLocked("collision_camera_031_B", true)
end
function s010_cave.OnExit_ChangeCamera_031_B()
  Game.SetCollisionCameraLocked("collision_camera_031_B", false)
end
function s010_cave.OnEnter_ChangeCamera_048_C()
  Game.GetActor("TG_ChangeCamera_048_B").bEnabled = false
  print("OnEnter_ChangeCamera_048_C")
  Game.SetCollisionCameraLocked("collision_camera_048_C", true)
end
function s010_cave.OnEnter_ChangeCamera_048_C_Delayed()
  Game.GetActor("TG_ChangeCamera_048_C").bEnabled = true
end
function s010_cave.OnExit_ChangeCamera_048_C()
  Game.SetCollisionCameraLocked("collision_camera_048_C", false)
  print("OnExit_ChangeCamera_048_C")
  Game.AddSF(0, "s010_cave.OnEnter_ChangeCamera_048_B_Delayed", "")
end
function s010_cave.OnEnter_ChangeCamera_048_B()
  Game.GetActor("TG_ChangeCamera_048_C").bEnabled = false
  Game.SetCollisionCameraLocked("collision_camera_048_B", true)
  print("OnEnter_ChangeCamera_048_B")
end
function s010_cave.OnEnter_ChangeCamera_048_B_Delayed()
  Game.GetActor("TG_ChangeCamera_048_B").bEnabled = true
end
function s010_cave.OnExit_ChangeCamera_048_B()
  Game.SetCollisionCameraLocked("collision_camera_048_B", false)
  print("OnExit_ChangeCamera_048_B")
  Game.AddSF(0, "s010_cave.OnEnter_ChangeCamera_048_C_Delayed", "")
end
function s010_cave.OnEnter_DisableCamera_048()
  Game.PushSetup("DisableCamera_048", false, true)
end
function s010_cave.OnExit_DisableCamera_048()
  Game.PopSetup("DisableCamera_048", false, true)
end
function s010_cave.OnEnter_ChangeCamera_023_B()
  Game.PushSetup("ChangeCamera_023_B", false, true)
end
function s010_cave.OnExit_ChangeCamera_023_B()
  Game.PopSetup("ChangeCamera_023_B", false, true)
end
function s010_cave.OnEnter_ChangeCamera_091_B()
  Game.SetCollisionCameraLocked("collision_camera_091_B", true)
end
function s010_cave.OnExit_ChangeCamera_091_B()
  Game.SetCollisionCameraLocked("collision_camera_091_B", false)
end
function s010_cave.OnEnter_ChangeCamera_Far()
  Game.GetCamera().CAMERA:SetLogicCameraParams("CAM_Far", true)
  print("OnEnter_ChangeCamera_Far")
end
function s010_cave.OnExit_ChangeCamera_Far()
  Game.GetCamera().CAMERA:SetLogicCameraParams("CAM_Default", true)
  print("OnExit_ChangeCamera_Far")
end
function s010_cave.OnEnter_EnableFade()
  print("Enable Fade")
  Game.SetSubAreasPreferredTransitionType("Fade")
end
function s010_cave.OnExit_DisableFade()
  print("Disable Fade")
  Game.SetSubAreasPreferredTransitionType("None")
end
function s010_cave.OnEnter_DeactivationEmmy_CameraRail_CU()
  print("EMMY DEACTIVATE")
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    print("EMMY DEACTIVATION")
    CurrentScenario.oEmmyEntity.bEnabled = false
  end
end
function s010_cave.OnExit_ActivationEmmy_CameraRail_CU()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.bEnabled = false
    CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_EnterEmmyZoneSecondTime").vPos
    CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_EnterEmmyZoneSecondTime").vAng
    CurrentScenario.oEmmyEntity.bEnabled = true
  end
end
function s010_cave.OnEnter_AP_01()
  if Game.GetActor("PRP_CV_AccessPoint001") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_AQUA_2" then
      Game.GetActor("PRP_CV_AccessPoint001").USABLE:ActiveDialogue("DIAG_ADAM_CAVE_4")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_CAVE_4")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" and Game.GetCooldownFlag() == false and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") > 0 then
      Game.GetActor("PRP_CV_AccessPoint001").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_3")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
    end
  end
end
function s010_cave.OnEnter_AP_02()
  if Game.GetActor("PRP_CV_AccessPoint002") ~= nil and Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_1" then
      Game.GetActor("PRP_CV_AccessPoint002").USABLE:ActiveDialogue("DIAG_ADAM_CAVE_2")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_CAVE_2")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_2" then
      if Blackboard.GetProp("s010_cave", "PRP_CV_ThermalDevice:USABLE:Used") ~= nil then
        Game.GetActor("PRP_CV_AccessPoint002").USABLE:ActiveDialogue("DIAG_ADAM_CAVE_3")
        Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_CAVE_3")
      end
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" and Game.GetCooldownFlag() == false and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") > 0 then
      Game.GetActor("PRP_CV_AccessPoint002").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_3")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
    end
  end
end
function s010_cave.OnLE_Platform_Elevator_FromMagma(_ARG_0_, _ARG_1_, _ARG_2_)
  Elevator.Use("c10_samus", "s020_magma", "ST_FromCave", _ARG_2_)
end
function s010_cave.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Scenario.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
function s010_cave.OnSubAreaChange(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "collision_camera_005" and _ARG_2_ == "collision_camera_006" then
    if _ARG_4_ and _UPVALUE0_ == false then
      Game.SetSubAreasPreferredTransitionType("None")
    elseif Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity.bEnabled == false and _UPVALUE1_ == true then
      CurrentScenario.oEmmyEntity.bEnabled = true
      print("EMMY REACTIVATION AFTER WAKE-UP CU")
    end
    if Game.GetActor("cutsceneplayer_37") ~= nil then
      Game.GetActor("cutsceneplayer_37").CUTSCENE:TryLaunchCutscene()
    end
  elseif _ARG_0_ == "collision_camera_064" and _ARG_2_ == "collision_camera_074" then
    if _ARG_4_ and Game.GetActor("TG_EnableSubareaChangeFade_001") ~= nil then
      Game.GetActor("TG_EnableSubareaChangeFade_001").bEnabled = false
    end
    if Game.GetActor("cutsceneplayer_48") ~= nil then
      Game.GetActor("cutsceneplayer_48").CUTSCENE:TryLaunchCutscene()
    end
  elseif _ARG_0_ == "collision_camera_002" and _ARG_2_ == "collision_camera_003" then
    if Game.GetActor("cutsceneplayer_5") ~= nil then
      Game.GetActor("cutsceneplayer_5").CUTSCENE:TryLaunchCutscene()
    end
  elseif _ARG_0_ == "collision_camera_000" and _ARG_2_ == "collision_camera_068" then
    if Game.GetActor("cutsceneplayer_3") ~= nil then
      Game.GetActor("cutsceneplayer_3").CUTSCENE:TryLaunchCutscene()
    end
  elseif _ARG_0_ == "collision_camera_073" and _ARG_2_ == "collision_camera_020" then
    if Game.GetActor("cutsceneplayer_54") ~= nil then
      Game.GetActor("cutsceneplayer_54").CUTSCENE:TryLaunchCutscene()
    end
  elseif _ARG_0_ == "collision_camera_049" and _ARG_2_ == "collision_camera_090" then
    if Game.GetActor("cutsceneplayer_50") ~= nil then
      Game.GetActor("cutsceneplayer_50").CUTSCENE:TryLaunchCutscene()
    end
  elseif _ARG_0_ == "collision_camera_003" and _ARG_2_ == "collision_camera_018" then
    if Game.GetActor("cutsceneplayer_49-1") ~= nil then
      Game.GetActor("cutsceneplayer_49-1").CUTSCENE:TryLaunchCutscene()
    end
  elseif _ARG_0_ == "collision_camera_018" and _ARG_2_ == "collision_camera_005" then
    if Game.GetActor("cutsceneplayer_49-1") ~= nil and Game.GetActor("cutsceneplayer_49-1").CUTSCENE:HasCutsceneBeenPlayed() == true and Game.GetActor("cutsceneplayer_49-2") ~= nil then
      Game.GetActor("cutsceneplayer_49-2").CUTSCENE:TryLaunchCutscene()
    end
    if not _UPVALUE1_ then
      Scenario.WriteToBlackboard(Scenario.LUAPropIDs.CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED, "b", true)
      _UPVALUE1_ = true
    end
  end
end
s010_cave.tTriggersToEnable = {
  "TG_ChainReaction_Camera_001",
  "TG_ChainReaction_SteamJet_016",
  "TG_ChainReaction_SteamJet_017"
}
function s010_cave.OnEnter_ChainReaction_Steamjet(_ARG_0_, _ARG_1_)
  Game.EnableEntityComponent(string.gsub(_ARG_0_.sName, "TG_ChainReaction_SteamJet_", "steammag01_chainreaction_"), "ACTIVATABLE")
end
function s010_cave.OnEnter_ChainReaction_Steamjet_CameraShake()
  Game.PlayCameraFXPreset("CHAINREACTION_BIG_EXP")
  Game.PlayPresetSound("chainreaction_rumble_sound_03")
  Game.PlayVibration("props/chainreaction/chain_reaction_rumble_03.bnvib", false)
end
function s010_cave.InitChainReaction()
  Game.AddSF(2.5, "s010_cave.ChainReaction_Preparation", "")
  if Game.GetActor("camRail_PreChain") ~= nil then
    Game.GetActor("camRail_PreChain").bEnabled = false
  end
end
function s010_cave.ChainReaction_Preparation()
  Game.PlayCameraFXPreset("CHAINREACTION_MED_EXP")
  Game.PlayPresetSound("chainreaction_rumble_sound_02")
  Game.PlayVibration("props/chainreaction/chain_reaction_rumble_02.bnvib", false)
  Game.PushSetup("ChainReaction", true, true)
  Game.AddSF(2, "s010_cave.ChainReaction_WaterPumpStep1", "")
end
function s010_cave.ChainReaction_WaterPumpStep1()
  for _FORV_3_, _FORV_4_ in ipairs(s010_cave.tTriggersToEnable) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  if Game.GetActor("ev_chainreaction_cv_001") ~= nil then
    Game.PlayCameraFXPreset("CHAINREACTION_MED_EXP")
    Game.PlayPresetSound("chainreaction_rumble_sound_02")
    Game.PlayVibration("props/chainreaction/chain_reaction_rumble_02.bnvib", false)
    Game.GetActor("ev_chainreaction_cv_001").CHAIN_REACTION_ACTION_SWITCHER:ChangeActionAndNavhMeshStage("action1", "action1")
  end
end
function s010_cave.ChainReaction_Drop_CV_002()
  if Game.GetActor("ev_chainreaction_cv_fx_006") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_006"):StartTimeline("q_001", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_007") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_007"):StartTimeline("q_delay01_001", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_011") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_011"):StartTimeline("q_delay01_002", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_008") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_008"):StartTimeline("q_002", true)
  end
end
function s010_cave.ChainReaction_Drop_CV_003()
  if Game.GetActor("ev_chainreaction_cv_003") ~= nil then
    Game.PlayCameraFXPreset("CHAINREACTION_MED_EXP")
    Game.PlayPresetSound("chainreaction_rumble_sound_02")
    Game.PlayVibration("props/chainreaction/chain_reaction_rumble_02.bnvib", false)
    Game.GetActor("ev_chainreaction_cv_003").ACTIVATABLE:Activate()
  end
  if Game.GetActor("ev_chainreaction_cv_fx_001") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_001"):StartTimeline("q_001", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_003") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_003"):StartTimeline("q_delay01_003", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_009") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_009"):StartTimeline("q_002", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_010") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_010"):StartTimeline("q_delay01_002", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_018") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_018"):StartTimeline("q_delay02_001", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_015") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_015"):StartTimeline("q_delay02_001", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_016") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_016"):StartTimeline("q_delay01_002", true)
  end
end
function s010_cave.ChainReaction_WaterPumpPreStep2()
  if Game.GetActor("ev_chainreaction_cv_001") ~= nil then
    Game.PlayCameraFXPreset("CHAINREACTION_SMALL_EXP")
    Game.GetActor("ev_chainreaction_cv_001").ANIMATION:SetAction("preaction2")
  end
end
function s010_cave.ChainReaction_WaterPumpStep2()
  if Game.GetActor("ev_chainreaction_cv_001") ~= nil then
    Game.PlayCameraFXPreset("CHAINREACTION_BIG_EXP")
    Game.PlayPresetSound("chainreaction_rumble_sound_03")
    Game.PlayVibration("props/chainreaction/chain_reaction_rumble_03.bnvib", false)
    Game.GetActor("ev_chainreaction_cv_001").CHAIN_REACTION_ACTION_SWITCHER:ChangeActionAndNavhMeshStage("action2", "action2")
  end
end
function s010_cave.ChainReaction_WaterPumpPreStep3()
  if Game.GetActor("ev_chainreaction_cv_001") ~= nil then
    Game.PlayCameraFXPreset("CHAINREACTION_SMALL_EXP")
    Game.PlayPresetSound("chainreaction_rumble_sound_01")
    Game.PlayVibration("props/chainreaction/chain_reaction_rumble_01.bnvib", false)
    Game.GetActor("ev_chainreaction_cv_001").ANIMATION:SetAction("preaction3")
  end
end
function s010_cave.ChainReaction_WaterPumpStep3()
  if Game.GetActor("ev_chainreaction_cv_001") ~= nil then
    Game.PlayCameraFXPreset("CHAINREACTION_BIG_EXP")
    Game.PlayPresetSound("chainreaction_rumble_sound_03")
    Game.PlayVibration("props/chainreaction/chain_reaction_rumble_03.bnvib", false)
    Game.GetActor("ev_chainreaction_cv_001").CHAIN_REACTION_ACTION_SWITCHER:ChangeActionAndNavhMeshStage("action3", "action3")
  end
end
function s010_cave.ChainReaction_Drop_CV_005()
  if Game.GetActor("ev_chainreaction_cv_005") ~= nil then
    Game.PlayCameraFXPreset("CHAINREACTION_MED_EXP")
    Game.PlayPresetSound("chainreaction_rumble_sound_02")
    Game.PlayVibration("props/chainreaction/chain_reaction_rumble_02.bnvib", false)
    Game.GetActor("ev_chainreaction_cv_005").ACTIVATABLE:Activate()
  end
  if Game.GetActor("ev_chainreaction_cv_fx_004") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_004"):StartTimeline("q_001", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_000") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_000"):StartTimeline("q_delay01_001", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_005") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_005"):StartTimeline("q_delay02_003", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_002") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_002"):StartTimeline("q_002", true)
  end
end
function s010_cave.ChainReaction_Drop_CV_006()
  if Game.GetActor("ev_chainreaction_cv_fx_014") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_014"):StartTimeline("q_001", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_012") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_012"):StartTimeline("q_003", true)
  end
  if Game.GetActor("ev_chainreaction_cv_fx_013") ~= nil then
    Game.GetActor("ev_chainreaction_cv_fx_013"):StartTimeline("q_004", true)
  end
end
function s010_cave.ChainReaction_BigExplosion()
  Game.StopCameraFXPreset("CHAINREACTION_SOFT")
  Game.PlayCameraFXPreset("QUEEN_SHAKING_JUMP")
  Game.PlayPresetSound("events/chainreaction_bigexplosion")
  Game.PlayVibration("props/chainreaction/chainreaction_bigexplosion.bnvib", false)
  if Game.GetActor("env_heat_gen_001_CR_END") ~= nil then
    Game.GetActor("env_heat_gen_001_CR_END").bEnabled = true
    Game.GetActor("env_heat_gen_001_CR_END").ACTIVATABLE:Activate(1)
  end
end
function s010_cave.ChainReaction_ChangeFinalSetup()
  Game.PopSetup("ChainReaction", true, true)
  Game.PushSetup("Post_ChainReaction", true, true)
  if Game.GetActor("ev_chainreaction_cv_004") ~= nil then
    Game.GetActor("ev_chainreaction_cv_004").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
  if Game.GetActor("ev_chainreaction_cv_004_a") ~= nil then
    Game.GetActor("ev_chainreaction_cv_004_a").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
  if Game.GetActor("ev_chainreaction_cv_009") ~= nil then
    Game.GetActor("ev_chainreaction_cv_009").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
  if Game.GetActor("ev_chainreaction_cv_010") ~= nil then
    Game.GetActor("ev_chainreaction_cv_010").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
  if Game.GetActor("db_reg_cv_022") ~= nil then
    Game.GetActor("db_reg_cv_022").NAVMESHITEM:OverrideInitialStage("initial")
    Game.GetActor("db_reg_cv_022").NAVMESHITEM:ChangeStage("initial")
  end
end
function s010_cave.ShakingCameraDelayed()
  Game.PlayCameraFXPreset("CHAINREACTION_SOFT")
end
function s010_cave.ShakingCameraHeatCompleted()
  Game.PlayCameraFXPreset("CHAINREACTION_BIG_EXP")
  Game.PlayPresetSound("chainreaction_rumble_sound_03")
  Game.PlayVibration("props/chainreaction/chain_reaction_rumble_03.bnvib", false)
end
function s010_cave.OnEnter_ChainReaction_ChangeCamera(_ARG_0_, _ARG_1_)
  Game.SetCollisionCameraLocked(string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "collision_camera_CR_"), true)
  Game.StopCameraFXPreset("CHAINREACTION_SOFT")
  _UPVALUE0_ = string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_")
  if Game.GetActor((string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_"))) ~= nil then
    if Game.GetActor((string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_"))).bEnabled == false then
      Game.GetActor((string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_"))).bEnabled = true
      if string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_001" then
        Game.AddSF(4, "s010_cave.ChainReaction_HeatZone_001_Activated", "")
      elseif string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_002" then
        Game.AddSF(4, "s010_cave.ChainReaction_HeatZone_002_Activated", "")
      elseif string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_003" then
        Game.AddSF(11, "s010_cave.ChainReaction_HeatZone_003_Activated", "")
      elseif string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_004" then
        Game.AddSF(6, "s010_cave.ChainReaction_HeatZone_004_Activated", "")
      elseif string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_005" then
        Game.AddSF(6, "s010_cave.ChainReaction_HeatZone_005_Activated", "")
      end
    elseif string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_001" and _UPVALUE1_ then
      s010_cave.ShakingCameraDelayed()
    elseif string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_002" and _UPVALUE2_ then
      s010_cave.ShakingCameraDelayed()
    elseif string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_003" and _UPVALUE3_ then
      s010_cave.ShakingCameraDelayed()
    elseif string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_004" and _UPVALUE4_ then
      s010_cave.ShakingCameraDelayed()
    elseif string.gsub(_ARG_0_.sName, "TG_ChainReaction_Camera_", "env_heat_gen_001_CR_") == "env_heat_gen_001_CR_005" and _UPVALUE5_ then
      s010_cave.ShakingCameraDelayed()
    end
  end
end
function s010_cave.ChainReaction_HeatZone_001_Activated()
  _UPVALUE0_ = true
  if _UPVALUE1_ == "env_heat_gen_001_CR_001" then
    s010_cave.ShakingCameraDelayed()
  end
end
function s010_cave.ChainReaction_HeatZone_002_Activated()
  _UPVALUE0_ = true
  if _UPVALUE1_ == "env_heat_gen_001_CR_002" then
    s010_cave.ShakingCameraDelayed()
  end
end
function s010_cave.ChainReaction_HeatZone_003_Activated()
  _UPVALUE0_ = true
  if _UPVALUE1_ == "env_heat_gen_001_CR_003" then
    s010_cave.ShakingCameraDelayed()
  end
end
function s010_cave.ChainReaction_HeatZone_004_Activated()
  _UPVALUE0_ = true
  if _UPVALUE1_ == "env_heat_gen_001_CR_004" then
    s010_cave.ShakingCameraDelayed()
  end
end
function s010_cave.ChainReaction_HeatZone_005_Activated()
  _UPVALUE0_ = true
  if _UPVALUE1_ == "env_heat_gen_001_CR_005" then
    s010_cave.ShakingCameraDelayed()
  end
end
function s010_cave.OnEnter_ChainReaction_ChangeCamera_000()
  Game.SetCollisionCameraLocked("collision_camera_CR_001", false)
end
function s010_cave.OnEnter_ChainReaction_ChangeCamera_006()
  Game.SetCollisionCameraLocked("collision_camera_CR_005", false)
end
function s010_cave.OnEnter_StartCUProtoEmmy()
  if Game.GetActor("TG_PROTOEMMY_BEHAVIOR_002") ~= nil then
    Game.GetActor("TG_PROTOEMMY_BEHAVIOR_002").bEnabled = false
  end
  if Game.GetActor("TG_PROTOEMMY_BEHAVIOR_001") ~= nil then
    Game.GetActor("TG_PROTOEMMY_BEHAVIOR_001").bEnabled = false
  end
  if Game.GetActor("TG_PROTOEMMY_BEHAVIOR_003") ~= nil then
    Game.GetActor("TG_PROTOEMMY_BEHAVIOR_003").bEnabled = true
  end
  if Game.GetActor("TG_PROTOEMMY_BEHAVIOR") ~= nil then
    Game.GetActor("TG_PROTOEMMY_BEHAVIOR").bEnabled = false
  end
end
function s010_cave.OnEnter_EndCUProtoEmmy()
  if Game.GetActor("TG_PROTOEMMY_BEHAVIOR_002") ~= nil then
    Game.GetActor("TG_PROTOEMMY_BEHAVIOR_002").bEnabled = true
  end
  if Game.GetActor("TG_PROTOEMMY_BEHAVIOR_001") ~= nil then
    Game.GetActor("TG_PROTOEMMY_BEHAVIOR_001").bEnabled = true
  end
  if Game.GetActor("TG_PROTOEMMY_BEHAVIOR_003") ~= nil then
    Game.GetActor("TG_PROTOEMMY_BEHAVIOR_003").bEnabled = false
  end
  if Game.GetActor("TG_PROTOEMMY_BEHAVIOR") ~= nil then
    Game.GetActor("TG_PROTOEMMY_BEHAVIOR").bEnabled = true
  end
end
function s010_cave.SetCooldownFlag(_ARG_0_)
  Game.SetCooldownFlag(_ARG_0_)
end
function s010_cave.GetCooldownFlag(_ARG_0_)
  Game.GetCooldownFlag(_ARG_0_)
end
function s010_cave.OnEnter_CoolDownEvent(_ARG_0_, _ARG_1_)
  _ARG_0_.bEnabled = false
  Game.AddSF(0.8, "s010_cave.Delayed_CoolDownEventCutscenePlaceholder", "")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(true, false, "CoolDownCutscene")
  end
end
function s010_cave.Delayed_CoolDownEventCutscenePlaceholder()
  GUI.ShowMessage("#CUT_COOLDOWN", true, "s010_cave.Skipped_CoolDownEventCutscenePlaceholder")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "CoolDownCutscene")
  end
end
function s010_cave.Skipped_CoolDownEventCutscenePlaceholder()
  s010_cave.Cooldown_Activation()
end
function s010_cave.Cooldown_Activation()
  if Game.GetCurrentGameModeID() ~= "EDITOR" then
    Game.SetCooldownFlag(true)
    if _UPVALUE0_ == false then
      Game.PushSetup("Cooldown", true, true)
      Scenario.WriteToBlackboard(Scenario.LUAPropIDs.CAVES_COOLDOWN_APPLIED, "b", true)
      _UPVALUE0_ = true
      if Game.GetActor("elevator_aqua_000_platform") ~= nil then
        Game.GetActor("elevator_aqua_000_platform").bEnabled = false
      end
    end
  end
end
function s010_cave.Cooldown_Deactivation()
  if _UPVALUE0_ == true then
    Game.PopSetup("Cooldown", true, true)
    Scenario.WriteToBlackboard(Scenario.LUAPropIDs.CAVES_COOLDOWN_APPLIED, "b", false)
    _UPVALUE0_ = false
  end
end
function s010_cave.OnCutsceneTheater()
end
function s010_cave.OnBefore_Cutscene_5_Begins()
  if Game.GetActor("cutsceneplayer_5") ~= nil then
    Game.GetActor("cutsceneplayer_5").CUTSCENE:SetTakePlayMode(4, "Loop")
  end
end
function s010_cave.OnBegin_Cutscene_5()
  if Game.GetActor("cutsceneplayer_5") ~= nil then
    Game.GetActor("cutsceneplayer_5").CUTSCENE:TryLaunchCutscene()
  end
end
function s010_cave.OnMeleeTutorialInputPressed()
  if Game.GetActor("cutsceneplayer_5") ~= nil then
    Game.GetActor("cutsceneplayer_5").CUTSCENE:ContinueCutsceneIfTakeLooped()
  end
end
function s010_cave.OnCutscene0049_01Ended()
  Game.FadeIn(0, 0.5)
end
function s010_cave.OnCutscene0049_02Ended()
  Game.FadeIn(0, 0.5)
end
function s010_cave.OnCutscene0050_Ended()
end
function s010_cave.OpenTrapDoorCutscene50()
end
function s010_cave.Check_WakeUpCU_Completed(_ARG_0_)
  if _ARG_0_.sName == "DoorEmmy11" and not _UPVALUE0_ then
    return false
  else
    return true
  end
end
function s010_cave.OnCutscene34Ended()
  if Game.GetActor("Door058 (PW-PW)") ~= nil then
    Game.GetActor("Door058 (PW-PW)").LIFE:ForceOpenDoor(false, "0034protoemmyappears")
  end
end
function s010_cave.CloseProtoEmmyCeilingGate()
  if Game.GetActor("LE_GateProtoEmmy") ~= nil then
    Game.GetActor("LE_GateProtoEmmy").ANIMATION:SetAction("close")
  end
end
function s010_cave.OpenProtoEmmyCorridorPowerDoor()
  if Game.GetActor("Door058 (PW-PW)") ~= nil then
    Game.SetActorVolumeOverride("Door058 (PW-PW)", 0, 0, "ALL")
    Game.GetActor("Door058 (PW-PW)").LIFE:ForceOpenDoor(true, "0034protoemmyappears")
  end
end
function s010_cave.SetVariaSuitForCutscene()
  Game.SetSendReports(false)
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_VARIA_SUIT", 1, true)
  Game.SetSendReports(true)
end
function s010_cave.RemoveVariaSuitForCutscene()
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_VARIA_SUIT", 0, true)
  Game.GetPlayer().MODELUPDATER.sModelAlias = "Default"
  Game.GetPlayer().MODELUPDATER:ForceUpdate()
end
function s010_cave.SetPlasmaBeamForCutscene()
  Game.SetSendReports(false)
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_PLASMA_BEAM", 1, true)
  Game.SetSendReports(true)
end
function s010_cave.RemovePlasmaBeamForCutscene()
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_PLASMA_BEAM", 0, true)
end
function s010_cave.OnBeforeCutscene0001FlashbackEndStarted()
  s010_cave.RemoveVariaSuitForCutscene()
  s010_cave.RemovePlasmaBeamForCutscene()
end
function s010_cave.OnBeforeCutscene0001IntroLandingStarted()
  s010_cave.SetVariaSuitForCutscene()
  s010_cave.SetPlasmaBeamForCutscene()
end
function s010_cave.OnBeforeCutscene0001IntroSpaceStarted()
  s010_cave.SetVariaSuitForCutscene()
  s010_cave.SetPlasmaBeamForCutscene()
end
function s010_cave.OnBeforeCutscene0001FlashbackInitStarted()
  s010_cave.RemoveVariaSuitForCutscene()
  s010_cave.RemovePlasmaBeamForCutscene()
end
function s010_cave.OnCutscene0057Ended()
  s010_cave.SwapScorpiusStatues()
end
function s010_cave.OnCutscene0057Finished()
  Game.ResetAndStopUpdateSpecialEnergy()
end
function s010_cave.CheckScorpiusDead()
  if Game.GetActor("SG_Scorpius") ~= nil then
    print(Game.GetActor("SG_Scorpius").SPAWNGROUP.iNumDeaths)
    if Game.GetActor("SG_Scorpius").SPAWNGROUP.iNumDeaths > 0 then
      s010_cave.SwapScorpiusStatues()
    end
  end
end
function s010_cave.SwapScorpiusStatues()
  if Game.GetActor("ev_scorpiusstatue_end") ~= nil then
    Game.GetActor("ev_scorpiusstatue_end").bEnabled = true
  end
  if Game.GetActor("cut_54_scorpiusstatue") ~= nil then
    Game.GetActor("cut_54_scorpiusstatue").bEnabled = false
  end
end
function s010_cave.OnCutscene0007Finished()
  if Game.GetActor("elevator_with_cutscene_aqua_000") ~= nil then
    Game.GetActor("elevator_with_cutscene_aqua_000").USABLE.bFadeInActived = false
  end
end
function s010_cave.OnScorpiusPresentationFinished()
  if Game.GetActor("SP_Scorpius_scorpius") ~= nil then
    Game.GetActor("SP_Scorpius_scorpius").AI:NotifyAfterPresentation()
  end
end
function s010_cave.OnScorpiusPresentationSkipped()
  Game.StopMusic(true)
end
function s010_cave.OnEnter_FinishScorpiusEvent(_ARG_0_, _ARG_1_)
  Game.PopSetup("Scorpius_Event", true, true)
  if Game.GetActor("SG_Bigfist_000") ~= nil then
    Game.GetActor("SG_Bigfist_000").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_ScorpiusEventEnemies") ~= nil then
    Game.GetActor("SG_ScorpiusEventEnemies").SPAWNGROUP:DisableSpawnGroup()
  end
  if Game.GetActor("TG_EnableEnemiesAfterScorpiusTail") ~= nil then
    Game.GetActor("TG_EnableEnemiesAfterScorpiusTail").bEnabled = true
  end
  _ARG_0_.bEnabled = false
end
function s010_cave.OnEnter_EnableEnemiesAfterScorpiusTail(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_ScorpiusEventEnemies") ~= nil then
    Game.GetActor("SG_ScorpiusEventEnemies").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s010_cave.OnEnter_InitScorpiusEvent(_ARG_0_, _ARG_1_)
  print("INIT SCORPIUS ANIMATION EVENT")
  Game.PushSetup("Scorpius_Event", true, true)
  _ARG_0_.bEnabled = false
end
function s010_cave.OnEnter_ScorpiusFirstShown(_ARG_0_, _ARG_1_)
  print("ScorpiusFirstAppearance")
  Game.PushSetup("ScorpiusFirstAppearance", true, true)
  _ARG_0_.bEnabled = false
end
function s010_cave.OnEnter_ActivatePostEmmyEnemies(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_PostEmmy_002") ~= nil then
    Game.GetActor("SG_PostEmmy_002").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_PostEmmy_003") ~= nil then
    Game.GetActor("SG_PostEmmy_003").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s010_cave.FakeAdamDialogueWeightPlate()
  if Game.GetActor("PRP_CV_AccessPoint001_WeightPlate") ~= nil then
    Game.GetActor("PRP_CV_AccessPoint001_WeightPlate").SMARTOBJECT:SetStateDuringFakeAdamDialogueCutScene()
  end
end
function s010_cave.FakeAdamDialogueBegins()
  if Game.GetActor("PRP_CV_AccessPoint001_WeightPlate") ~= nil then
    Game.GetActor("PRP_CV_AccessPoint001_WeightPlate").SMARTOBJECT:SetStateAfterCutScene()
  end
  Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_CAVE_1")
  Blackboard.SetProp("GAME_PROGRESS", "SHOWADAMDIALOGUE", "b", true)
end
function s010_cave.DiscoverAccessPointOnCutScene()
  if Game.GetActor("PRP_CV_AccessPoint001") ~= nil then
    Game.GetActor("PRP_CV_AccessPoint001").USABLE:Discover(true)
    Game.GetActor("PRP_CV_AccessPoint001"):StartTimeline("discovernotransition", true)
  end
end
function s010_cave.DiscoverNotransitionAccessPointOnCutScene()
  if Game.GetActor("PRP_CV_AccessPoint001") ~= nil then
    Game.GetActor("PRP_CV_AccessPoint001").USABLE:Discover(false)
  end
end
function s010_cave.Enter_CWX_Arena()
  if Game.GetPlayer() ~= nil and Game.GetActor("LM_EnteringCWXArena") ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(true, false, "Enter_CWX_Arena")
    Game.GetPlayer().ANIMATION:SetAction("fall", true)
    Game.GetPlayer().vPos = Game.GetActor("LM_EnteringCWXArena").vPos
    Game.GetPlayer().vAng = Game.GetActor("LM_EnteringCWXArena").vAng
    Game.ForceConvertToSamus()
  end
end
function s010_cave.Exit_CWX_Arena()
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "Enter_CWX_Arena")
  end
end
function s010_cave.EnablePostScorpiusTrigger()
  if Game.GetActor("TG_AfterScorpiusBattle") ~= nil then
    Game.GetActor("TG_AfterScorpiusBattle").bEnabled = true
  end
  if Game.GetActor("TG_ActivateArenaSpawngroup") ~= nil then
    Game.GetActor("TG_ActivateArenaSpawngroup").bEnabled = true
  end
end
function s010_cave.OnEnter_ScorpiusArenaAfterBattle(_ARG_0_, _ARG_1_)
  Game.GetActor("Door062 (PW-PW, Special)").LIFE:UnLockDoor()
  Game.PopSetup("SP_Scorpius_scorpius_Boss_Defeated", true, true)
  Game.PushSetup("PostScorpius", true, true)
  _ARG_0_.bEnabled = false
end
function s010_cave.OnEnter_ActivateArenaSpawngroup(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_Bigfist_007") ~= nil then
    Game.GetActor("SG_Bigfist_007").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s010_cave.ActivationMeleeTutoReminder()
  Game.AddSF(3, "s010_cave.ActivationMeleeTutoReminder_delayed", "")
end
function s010_cave.ActivationMeleeTutoReminder_02()
  Game.AddSF(2, "s010_cave.ActivationMeleeTutoReminder_02_delayed", "")
end
function s010_cave.ActivationMeleeTutoReminder_03()
  Game.AddSF(2, "s010_cave.ActivationMeleeTutoReminder_03_delayed", "")
end
function s010_cave.ActivationMeleeTutoReminder_delayed()
  if Game.GetActor("MeleeTutoTriggerEnter") ~= nil and Game.GetActor("MeleeTutoTriggerExit") ~= nil then
    Game.GetActor("MeleeTutoTriggerEnter").bEnabled = true
    Game.GetActor("MeleeTutoTriggerExit").bEnabled = true
  end
  if Game.GetActor("MeleeTutoTriggerExit_002") ~= nil then
    Game.GetActor("MeleeTutoTriggerExit_002").bEnabled = true
  end
  if Game.GetActor("MeleeTutoTriggerExit_003") ~= nil then
    Game.GetActor("MeleeTutoTriggerExit_003").bEnabled = true
  end
end
function s010_cave.ActivationMeleeTutoReminder_02_delayed()
  if Game.GetActor("MeleeTutoTriggerEnter_002") ~= nil then
    Game.GetActor("MeleeTutoTriggerEnter_002").bEnabled = true
  end
end
function s010_cave.ActivationMeleeTutoReminder_03_delayed()
  if Game.GetActor("MeleeTutoTriggerEnter_003") ~= nil then
    Game.GetActor("MeleeTutoTriggerEnter_003").bEnabled = true
  end
end
function s010_cave.OnUsableFinishInteract(_ARG_0_)
  if _ARG_0_.sName == "PRP_CV_AccessPoint001" then
    s010_cave.OnTutoMapOptionsBegins(true)
  elseif _ARG_0_.sName == "PRP_CV_MapStation001" then
    s010_cave.OnTutoMapRoomBegins(true)
  end
end
function s010_cave.OnUsableCancelUse(_ARG_0_)
  if _ARG_0_.sName == "PRP_CV_AccessPoint001" then
    s010_cave.OnTutoMapOptionsBegins(true)
  elseif _ARG_0_.sName == "PRP_CV_MapStation001" then
    s010_cave.OnTutoMapRoomBegins(true)
  end
end
function s010_cave.OnUsablePrepareUse(_ARG_0_)
  if _ARG_0_.sName == "PRP_CV_AccessPoint001" then
    s010_cave.OnTutoMapOptionsBegins(false)
  elseif _ARG_0_.sName == "PRP_CV_MapStation001" then
    s010_cave.OnTutoMapRoomBegins(false)
  end
end
function s010_cave.OnUsableUse(_ARG_0_)
  if _ARG_0_.sName == "LE_Elevator_FromMagma" and not _UPVALUE0_ then
    Scenario.WriteToBlackboard(Scenario.LUAPropIDs.CAVES_TUTO_MAP_ROOM_DONE, "b", true)
  end
end
function s010_cave.OnTutoMapOptionsBegins(_ARG_0_)
  if Game.GetActor("MapOptionsTutoTriggerEnter") ~= nil and Game.GetActor("MapOptionsTutoTriggerExit") ~= nil then
    if not _UPVALUE0_ and _ARG_0_ then
      Game.GetActor("MapOptionsTutoTriggerEnter").bEnabled = true
      Game.GetActor("MapOptionsTutoTriggerExit").bEnabled = true
    else
      Game.GetActor("MapOptionsTutoTriggerEnter").bEnabled = false
      Game.GetActor("MapOptionsTutoTriggerExit").bEnabled = false
    end
  end
end
function s010_cave.OnTutoMapOptionsEnds()
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.CAVES_TUTO_MAP_DONE, "b", true)
  _UPVALUE0_ = true
  print(_UPVALUE0_)
end
function s010_cave.OnTutoMapRoomBegins(_ARG_0_)
  if Game.GetActor("MapRoomTutoTriggerEnter") ~= nil and Game.GetActor("MapRoomTutoTriggerExit") ~= nil then
    if not _UPVALUE0_ and _ARG_0_ then
      Game.GetActor("MapRoomTutoTriggerEnter").bEnabled = true
      Game.GetActor("MapRoomTutoTriggerExit").bEnabled = true
    else
      Game.GetActor("MapRoomTutoTriggerEnter").bEnabled = false
      Game.GetActor("MapRoomTutoTriggerExit").bEnabled = false
    end
  end
end
function s010_cave.OnTutoMapRoomEnds()
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.CAVES_TUTO_MAP_ROOM_DONE, "b", true)
  _UPVALUE0_ = true
  print(_UPVALUE0_)
end
function s010_cave.EnableChozoWarriorX(_ARG_0_, _ARG_1_)
  Game.PushSetup("ChozoWarriorX", true, true)
end
function s010_cave.PostChozoWarriorX(_ARG_0_, _ARG_1_)
  Game.PopSetup("ChozoWarriorX", true, true)
end
function s010_cave.cutsceneplayer_intro_space_full()
  if Game.GetActor("cutsceneplayer_intro_space") ~= nil and Game.GetActor("cutsceneplayer_intro_flashbackinit") ~= nil then
    Game.GetActor("cutsceneplayer_intro_space").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_flashbackinit")))
    if Game.GetActor("cutsceneplayer_intro_landing") ~= nil then
      Game.GetActor("cutsceneplayer_intro_flashbackinit").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_landing")))
      if Game.GetActor("cutsceneplayer_intro_arrivalatrium") ~= nil then
        Game.GetActor("cutsceneplayer_intro_landing").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_arrivalatrium")))
        if Game.GetActor("cutsceneplayer_intro_fight") ~= nil then
          Game.GetActor("cutsceneplayer_intro_arrivalatrium").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_fight")))
          if Game.GetActor("cutsceneplayer_intro_flashbackend") ~= nil then
            Game.GetActor("cutsceneplayer_intro_fight").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_intro_flashbackend")))
          end
        end
      end
    end
  end
end
function s010_cave.cutsceneplayer_3()
  Game.AddSF(0.1, "s010_cave.cutsceneplayer_3_delayed", "")
end
function s010_cave.cutsceneplayer_3_delayed()
  if Game.GetActor("PRP_CV_AccessPoint001") ~= nil then
    Game.GetActor("PRP_CV_AccessPoint001").bEnabled = false
  end
end
function s010_cave.cutsceneplayer_48()
  Game.AddSF(0.1, "s010_cave.cutsceneplayer_48_delayed", "")
end
function s010_cave.cutsceneplayer_48_delayed()
  if Game.GetActor("PRP_CV_AccessPoint001") ~= nil then
    Game.GetActor("PRP_CV_AccessPoint001").bEnabled = false
  end
end
function s010_cave.cutsceneplayer_54_delayed()
  if Game.GetActor("SP_Scorpius_scorpius") ~= nil then
    Game.GetActor("SP_Scorpius_scorpius").bEnabled = false
  end
end
function s010_cave.cutsceneplayer_55()
  Game.AddSF(0.1, "s010_cave.cutsceneplayer_55_delayed", "")
end
function s010_cave.cutsceneplayer_55_delayed()
  if Game.GetActor("SP_Scorpius_scorpius") ~= nil then
    Game.GetActor("SP_Scorpius_scorpius").bEnabled = false
  end
end
function s010_cave.cutsceneplayer_155()
  Game.AddSF(0.1, "s010_cave.cutsceneplayer_155_delayed", "")
end
function s010_cave.cutsceneplayer_155_delayed()
  if Game.GetActor("SP_Scorpius_scorpius") ~= nil then
    Game.GetActor("SP_Scorpius_scorpius").bEnabled = false
  end
end
function s010_cave.cutsceneplayer_57()
  Game.AddSF(0.1, "s010_cave.cutsceneplayer_57_delayed", "")
end
function s010_cave.cutsceneplayer_57_delayed()
  if Game.GetActor("SP_Scorpius_scorpius") ~= nil then
    Game.GetActor("SP_Scorpius_scorpius").bEnabled = false
  end
end
