function s070_basesanc.main()
  s070_basesanc.PatrolRoutesGeneration()
  s070_basesanc.PatrolRoutesFinalNodesAssignation()
  s070_basesanc.m_bSkipAquaOpening = false
end
function s070_basesanc.SetupDebugGameBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 399)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 399)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 38)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 38)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end
function s070_basesanc.InitFromBlackboard()
  Game.ReinitPlayerFromBlackboard()
  _UPVALUE0_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.SANC_POSTXRELEASE_APPLIED, false)
  _UPVALUE1_ = Blackboard.GetProp("GAME_PROGRESS", "QUARENTINE_OPENED")
  if _UPVALUE1_ == true then
    s070_basesanc.Activate_Setup_PostXRelease()
  end
  if Game.GetActor("emmy_sanc_deactivated") ~= nil then
    if Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.SANC_EMMY_DEACTIVATED_ENABLED, false) == true then
      Game.GetActor("emmy_sanc_deactivated").bEnabled = true
    else
      Game.GetActor("emmy_sanc_deactivated").bEnabled = false
    end
  end
end
function s070_basesanc.Activate_Setup_PostXRelease()
  if _UPVALUE0_ == false then
    Game.PushSetup("PostXRelease", true, true)
    Scenario.WriteToBlackboard(Scenario.LUAPropIDs.SANC_POSTXRELEASE_APPLIED, "b", true)
    _UPVALUE0_ = true
  end
end
s070_basesanc.tGetOnDeathOverrides = {ShowDeath = true, GoToMainMenu = false}
function s070_basesanc.GetOnDeathOverrides()
  return s070_basesanc.tGetOnDeathOverrides
end
function s070_basesanc.OnEntityGenerated(_ARG_0_, _ARG_1_)
  if _ARG_1_ ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end
function s070_basesanc.OnEnter_ChangeCamera_012_B()
  Game.SetCollisionCameraLocked("collision_camera_012_B", true)
  print("OnEnter_ChangeCamera_012_B")
end
function s070_basesanc.OnExit_ChangeCamera_012_B()
  Game.SetCollisionCameraLocked("collision_camera_012_B", false)
  print("OnExit_ChangeCamera_012_B")
end
function s070_basesanc.OnEnter_ChangeCamera_012_C()
  Game.SetCollisionCameraLocked("collision_camera_012_C", true)
  print("OnEnter_ChangeCamera_012_C")
end
function s070_basesanc.OnExit_ChangeCamera_012_C()
  Game.SetCollisionCameraLocked("collision_camera_012_C", false)
  print("OnExit_ChangeCamera_012_C")
end
function s070_basesanc.OnEnter_ChangeCamera_003_B()
  Game.SetCollisionCameraLocked("collision_camera_003_B", true)
  print("OnEnter_ChangeCamera_003_B")
end
function s070_basesanc.OnExit_ChangeCamera_003_B()
  Game.SetCollisionCameraLocked("collision_camera_003_B", false)
  print("OnExit_ChangeCamera_003_B")
end
function s070_basesanc.OnEnter_ChangeCamera_024_A()
  Game.GetActor("TG_ChangeCamera_024_B").bEnabled = false
  print("OnEnter_ChangeCamera_024_A")
  Game.SetCollisionCameraLocked("collision_camera_024_A", true)
end
function s070_basesanc.OnEnter_ChangeCamera_024_A_Delayed()
  Game.GetActor("TG_ChangeCamera_024_A").bEnabled = true
end
function s070_basesanc.OnExit_ChangeCamera_024_A()
  Game.SetCollisionCameraLocked("collision_camera_024_A", false)
  print("OnExit_ChangeCamera_024_A")
  Game.AddSF(0, "s070_basesanc.OnEnter_ChangeCamera_024_B_Delayed", "")
end
function s070_basesanc.OnEnter_ChangeCamera_024_B()
  Game.GetActor("TG_ChangeCamera_024_A").bEnabled = false
  Game.SetCollisionCameraLocked("collision_camera_024_B", true)
  print("OnEnter_ChangeCamera_024_B")
end
function s070_basesanc.OnEnter_ChangeCamera_024_B_Delayed()
  Game.GetActor("TG_ChangeCamera_024_B").bEnabled = true
end
function s070_basesanc.OnExit_ChangeCamera_024_B()
  Game.SetCollisionCameraLocked("collision_camera_024_B", false)
  print("OnExit_ChangeCamera_024_B")
  Game.AddSF(0, "s070_basesanc.OnEnter_ChangeCamera_024_A_Delayed", "")
end
function s070_basesanc.OnEnter_ChangeCamera_024_C()
  Game.SetCollisionCameraLocked("collision_camera_024_C", true)
end
function s070_basesanc.OnExit_ChangeCamera_024_C()
  Game.SetCollisionCameraLocked("collision_camera_024_C", false)
end
function s070_basesanc.OnEnter_ChangeCamera_030_B()
  Game.SetCollisionCameraLocked("collision_camera_030_B", true)
end
function s070_basesanc.OnExit_ChangeCamera_030_B()
  Game.SetCollisionCameraLocked("collision_camera_030_B", false)
end
function s070_basesanc.OnEnter_ChangeCamera_038_B()
  Game.SetCollisionCameraLocked("collision_camera_038_B", true)
end
function s070_basesanc.OnExit_ChangeCamera_038_B()
  Game.SetCollisionCameraLocked("collision_camera_038_B", false)
end
function s070_basesanc.AddProfessorDialogueToMissionLog()
  for _FORV_4_ = 1, 26 do
    table.insert({}, "#CAPTION_PROFESSOREVENT_PAGE_" .. string.format("%02d", _FORV_4_))
    if _FORV_4_ == 5 or _FORV_4_ == 11 then
      table.insert({}, ("#CAPTION_PROFESSOREVENT_PAGE_" .. string.format("%02d", _FORV_4_)) .. "_B")
    end
  end
  _FOR_.AddDialogMissionLogEntry({})
end
function s070_basesanc.OnAfter_Cutscene_40_Part1()
  if s070_basesanc.m_bSkipAquaOpening == false and Game.GetActor("cutsceneplayer_40b_part1") ~= nil and Game.GetCurrentCutsceneStr() ~= Game.GetActor("cutsceneplayer_40b_part1").CUTSCENE:GetCutscene().oDefinition.sId then
    Game.GetActor("cutsceneplayer_40b_part1").CUTSCENE:TryLaunchCutscene()
  end
  Game.SetAquaGateOpeningEventEndLUACallback("s070_basesanc.LaunchCutscene40_Part2b")
end
function s070_basesanc.OnSkip_Cutscene_40_Part1()
  s070_basesanc.m_bSkipAquaOpening = true
  if Game.GetActor("cutsceneplayer_40b_part1") ~= nil then
    Game.GetActor("cutsceneplayer_40b_part1").CUTSCENE:LaunchCutsceneImmediate()
    Game.GetActor("cutsceneplayer_40b_part1").CUTSCENE:SkipCutscene(true)
  end
end
function s070_basesanc.OnAfter_Cutscene_40_Part2a()
  Game.LaunchAquaGateOpening(s070_basesanc.m_bSkipAquaOpening)
end
function s070_basesanc.OnSkip_Cutscene_40_Part2a()
  s070_basesanc.m_bSkipAquaOpening = true
end
function s070_basesanc.LaunchCutscene40_Part2b(_ARG_0_)
  if Game.GetActor("cutsceneplayer_40b_part2") ~= nil then
    if _ARG_0_ == true then
      Game.SetSkippingQueuedCutscenes(true)
      if Game.GetActor("PRP_professor_death") ~= nil then
        Game.GetActor("PRP_professor_death"):SetVisible(true)
      end
    end
    Game.GetActor("cutsceneplayer_40b_part2").CUTSCENE:GetCutscene():SetFadeInOnStart(false)
    Game.GetActor("cutsceneplayer_40b_part2").CUTSCENE:LaunchCutsceneImmediate()
    if _ARG_0_ == true then
      Game.GetActor("cutsceneplayer_40b_part2").CUTSCENE:SkipCutscene(true)
    end
  end
end
function s070_basesanc.OnBefore_Cutscene_40_Part2bStarted()
  Game.SpawnEntity("SP_ChozoRobotSoldier")
  if Game.GetActor("CAM_ChozoRobotSoldier") ~= nil then
    Game.GetActor("CAM_ChozoRobotSoldier").LOGICCAMERA:GetLogicCamera().fMinExtraZDist = 2630
  end
end
function s070_basesanc.AddEmmyProfessorToMissionLog()
  GUI.AddEmmyMissionLogEntry("#MLOG_ENCOUNTER_EMMY_SANC")
  s070_basesanc.AddProfessorDialogueToMissionLog()
end
function s070_basesanc.OnAfter_Cutscene_40_Part2b()
  s070_basesanc.Professor_MET()
  s070_basesanc.m_bSkipAquaOpening = false
  Game.AddSF(0.5, "s070_basesanc.Delayed_RestoreRobotSoldierLogicCameraMinZ", "")
end
function s070_basesanc.Delayed_RestoreRobotSoldierLogicCameraMinZ()
  if Game.GetActor("CAM_ChozoRobotSoldier") ~= nil then
    Game.GetActor("CAM_ChozoRobotSoldier").LOGICCAMERA:GetLogicCamera().fMinExtraZDist = 1630
  end
end
function s070_basesanc.OnBossDeath(_ARG_0_)
  if _ARG_0_ == "SP_ChozoRobotSoldier_chozorobotsoldier" then
    Game.AddSF(2.5, "s070_basesanc.Delayed_Professor_CUT", "")
    if Game.GetActor("doorpowerpower_002") ~= nil then
      Game.GetActor("doorpowerpower_002").LIFE:LockDoor()
    end
    if Game.GetActor("emmy_sanc_deactivated") ~= nil then
      Game.GetActor("emmy_sanc_deactivated").bEnabled = true
      Scenario.WriteToBlackboard(Scenario.LUAPropIDs.SANC_EMMY_DEACTIVATED_ENABLED, "b", true)
      Game.GetActor("emmy_sanc_deactivated"):SetVisible(true)
    end
  end
end
function s070_basesanc.Delayed_Professor_CUT()
  if Game.GetActor("cutsceneplayer_40c") ~= nil then
    Game.GetActor("cutsceneplayer_40c").CUTSCENE:LaunchCutscene()
  end
  if Game.GetActor("doorpowerpower_002") ~= nil then
    Game.GetActor("doorpowerpower_002").LIFE:UnLockDoor()
  end
  Game.RemoveBossCameraCtrl()
end
function s070_basesanc.OnAfter_Cutscene_40_Part3()
end
function s070_basesanc.Professor_MET()
  Blackboard.SetProp("GAME_PROGRESS", "PROFESSOR_MET", "b", true)
end
function s070_basesanc.OnBeforeGenerate()
end
function s070_basesanc.OnEmmyBaseSancGenerated(_ARG_0_, _ARG_1_)
end
function s070_basesanc.OnCentralUnitEmmyReady(_ARG_0_, _ARG_1_)
  CurrentScenario.oEmmyEntity = _ARG_1_
  AI.SetWorldGraphToEmmy("LE_WorldGraph", _ARG_1_.sName)
  s070_basesanc.ChangePatrolEmmy("PATROLROUTE_01")
  print("EMMY: Generation OK. Starting patrol: " .. _ARG_1_.AI.sCurrentPatrol)
  if Blackboard.GetProp("GAME_PROGRESS", "QUARENTINE_OPENED") == true and CurrentScenario.oEmmyEntity.AI.bTargetInsideEmmyZone then
    print("QUARANTINE IS OPENED")
  else
    CurrentScenario.oEmmyEntity.bEnabled = false
    print("QUARANTINE IS NOT OPENED")
  end
end
function s070_basesanc.OnEmmySancDead()
  Game.PushSetup("PostEmmy", true, true)
end
function s070_basesanc.OnEmmyAbilityObtainedFadeOutCompleted()
  Game.GetActor("TG_EnablePostEmmyEnemies").bEnabled = true
  if Game.GetActor("centralunitmagmacontroller") ~= nil then
    Game.GetActor("centralunitmagmacontroller").CENTRALUNIT:OnEmmyAbilityObtainedFadeOutCompleted()
  end
end
function s070_basesanc.DelayedOnEmmySancDead()
  GUI.ShowMessage("#PLACEHOLDER_WAVEBEAM_OBTAINED", true, "")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "OnEmmySancDead")
  end
end
function s070_basesanc.OnEmmyDeathMessageSkipped()
end
function s070_basesanc.OnUnlockEmmyDoors()
  if Game.GetActor("centralunitmagmacontroller") ~= nil then
    Game.GetActor("centralunitmagmacontroller").CENTRALUNIT:UnlockDoors()
  else
    print("CENTRAL_UNIT: centralunitmagmacontroller not found")
  end
end
function s070_basesanc.PatrolRoutesGeneration()
  if Game.GetActor("SP_Emmy") ~= nil then
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_01")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_02")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_03")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_05")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_06")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_07")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_08")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_10")
    Game.GetActor("SP_Emmy").SPAWNPOINT:AddPatrolShape("LS_PATROLEMMY_11")
  end
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_01", "LS_PATROLEMMY_01")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_02", "LS_PATROLEMMY_02")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_03", "LS_PATROLEMMY_03")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_05", "LS_PATROLEMMY_05")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_06", "LS_PATROLEMMY_06")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_07", "LS_PATROLEMMY_07")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_08", "LS_PATROLEMMY_08")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_10", "LS_PATROLEMMY_10")
  AI.AddPatrol("LE_WorldGraph", "PATROLROUTE_11", "LS_PATROLEMMY_11")
  print("s070_basesanc.PatrolRoutesGeneration(): Patrol designation OK")
end
function s070_basesanc.PatrolRoutesFinalNodesAssignation()
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_01", {
    "WorldGraph_1"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_01", {
    "WorldGraph_4"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_1"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_6"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_8",
    "WorldGraph_10"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_6",
    "WorldGraph_7"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_12"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_20"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_12"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_16"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_18"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_23"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_27",
    "WorldGraph_28"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_29"
  }, 2)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_31"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_25"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_36"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_40"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_44"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_11", {
    "WorldGraph_46",
    "WorldGraph_78",
    "WorldGraph_51"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_11", {
    "WorldGraph_49"
  }, 1)
  print("s070_basesanc.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK")
end
function s070_basesanc.ChangePatrolEmmy(_ARG_0_)
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI.sCurrentPatrol = _ARG_0_
    print("EMMY: Assigned route " .. _ARG_0_)
  else
    print("EMMY: Not found, route " .. _ARG_0_ .. " not assigned")
  end
end
function s070_basesanc.OnEnter_PatrolEmmyActivator(_ARG_0_, _ARG_1_)
  s070_basesanc.ChangePatrolEmmy((string.gsub(_ARG_0_.sName, "TG_PATROLEMMYACTIVATOR_", "PATROLROUTE_")))
end
function s070_basesanc.OnExit_PatrolEmmyActivator(_ARG_0_, _ARG_1_)
end
s070_basesanc.tEmmyDoor = nil
function s070_basesanc.OnWalkThroughEmmyDoor(_ARG_0_, _ARG_1_, _ARG_2_)
  if Blackboard.GetProp("GAME_PROGRESS", "QUARENTINE_OPENED") == true and Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    if Game.GetActor("emmy_sanc_deactivated") ~= nil then
      Game.GetActor("emmy_sanc_deactivated").bEnabled = false
      Scenario.WriteToBlackboard(Scenario.LUAPropIDs.SANC_EMMY_DEACTIVATED_ENABLED, "b", false)
    end
    if _ARG_1_ then
      if CurrentScenario.oEmmyEntity ~= nil then
        if _ARG_2_ then
          sTeleportLandmark = s070_basesanc.HardEmmyRelocationDoor(_ARG_0_)
        else
          sTeleportLandmark = s070_basesanc.EmmyRelocationDoor(_ARG_0_)
        end
        if sTeleportLandmark ~= nil then
          print(Game.GetActor(sTeleportLandmark).sName)
          CurrentScenario.oEmmyEntity.bEnabled = false
          CurrentScenario.oEmmyEntity.vPos = Game.GetActor(sTeleportLandmark).vPos
          CurrentScenario.oEmmyEntity.vAng = Game.GetActor(sTeleportLandmark).vAng
          CurrentScenario.oEmmyEntity.bEnabled = true
        end
      end
    else
      CurrentScenario.oEmmyEntity.bEnabled = false
    end
  end
  if Game.GetActor("TG_EmmyZipline004Behavior") ~= nil then
    Game.GetActor("TG_EmmyZipline004Behavior").bEnabled = false
  end
end
function s070_basesanc.HardEmmyRelocationDoor(_ARG_0_)
  print("Door: Hard " .. _ARG_0_.sName)
  if _ARG_0_.sName == "dooremmy_002" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_005"
    }
  elseif _ARG_0_.sName == "dooremmy_003" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_011"
    }
  elseif _ARG_0_.sName == "dooremmy_004" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_008"
    }
  elseif _ARG_0_.sName == "dooremmy_005" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_006"
    }
  elseif _ARG_0_.sName == "dooremmy_006" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_012"
    }
  elseif _ARG_0_.sName == "dooremmy_008" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_017",
      "LM_EmmyEntrancePoint_014"
    }
  else
    s070_basesanc.tEmmyDoor = nil
  end
  if s070_basesanc.tEmmyDoor ~= nil then
    return s070_basesanc.tEmmyDoor[math.random(table.maxn(s070_basesanc.tEmmyDoor))]
  else
    return nil
  end
end
function s070_basesanc.EmmyRelocationDoor(_ARG_0_)
  if _ARG_0_.sName == "dooremmy_002" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_003",
      "LM_EmmyEntrancePoint_005"
    }
  elseif _ARG_0_.sName == "dooremmy_003" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_010",
      "LM_EmmyEntrancePoint_011"
    }
  elseif _ARG_0_.sName == "dooremmy_004" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_008",
      "LM_EmmyEntrancePoint_009"
    }
  elseif _ARG_0_.sName == "dooremmy_005" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_005",
      "LM_EmmyEntrancePoint_006",
      "LM_EmmyEntrancePoint_007"
    }
  elseif _ARG_0_.sName == "dooremmy_006" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_012",
      "LM_EmmyEntrancePoint_013",
      "LM_EmmyEntrancePoint_014"
    }
  elseif _ARG_0_.sName == "dooremmy_008" then
    s070_basesanc.tEmmyDoor = {
      "LM_EmmyEntrancePoint_017",
      "LM_EmmyEntrancePoint_014"
    }
  else
    s070_basesanc.tEmmyDoor = nil
  end
  if s070_basesanc.tEmmyDoor ~= nil then
    return s070_basesanc.tEmmyDoor[math.random(table.maxn(s070_basesanc.tEmmyDoor))]
  else
    return nil
  end
end
function s070_basesanc.OnEnter_EmmyRelocated_Phase2()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
    CurrentScenario.oEmmyEntity.bEnabled = false
    CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_EmmyLocation_Phase2").vPos
    CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_EmmyLocation_Phase2").vAng
    CurrentScenario.oEmmyEntity.bEnabled = true
  end
end
s070_basesanc.bFootStepPlatform000Opened = true
s070_basesanc.bFootStepPlatform001Opened = true
function s070_basesanc.OnShutterOpened(_ARG_0_)
  if _ARG_0_.sName == "footstepplatform_000" then
    s070_basesanc.bFootStepPlatform000Opened = true
  elseif _ARG_0_.sName == "footstepplatform_001" then
    s070_basesanc.bFootStepPlatform001Opened = true
  end
  if (s070_basesanc.bFootStepPlatform000Opened == false and s070_basesanc.bFootStepPlatform001Opened == false) == true and (s070_basesanc.bFootStepPlatform000Opened == false and s070_basesanc.bFootStepPlatform001Opened == false) == false and CurrentScenario.oEmmyEntity ~= nil and Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI:StopSancShutterPerceptionModifier()
  end
end
function s070_basesanc.OnShutterClosed(_ARG_0_)
  if _ARG_0_.sName == "footstepplatform_000" then
    s070_basesanc.bFootStepPlatform000Opened = false
  elseif _ARG_0_.sName == "footstepplatform_001" then
    s070_basesanc.bFootStepPlatform001Opened = false
  end
  if s070_basesanc.bFootStepPlatform000Opened == false and s070_basesanc.bFootStepPlatform001Opened == false and CurrentScenario.oEmmyEntity ~= nil and Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI:StartSancShutterPerceptionModifier("LS_EmmyTrap", "LM_EmmyTrap")
  end
end
function s070_basesanc.OnEnterEmmyZipline004Activator()
  if Game.GetActor("TG_EmmyZipline004Behavior") ~= nil then
    Game.GetActor("TG_EmmyZipline004Behavior").bEnabled = true
  end
end
function s070_basesanc.OnEnterEmmyZipline004Behavior()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI.bZipLine004Behavior = true
  end
end
function s070_basesanc.OnExitEmmyZipline004Behavior()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI.bZipLine004Behavior = false
  end
end
function s070_basesanc.RobotSnapshotToCheckpoint()
  Game.SaveSnapshotToCheckpoint("Checkpoint_Pre_ChozoRobots", "Checkpoint_Pre_ChozoRobots", _UPVALUE0_, true)
  print("guardo snapshot")
end
function s070_basesanc.OnEnter_SnapshotRobots_BottomRight()
  _UPVALUE0_ = "SP_Checkpoint_TwoChozoRobots"
  print("actualizo startpoint:" .. _UPVALUE0_)
end
function s070_basesanc.OnEnter_SnapshotRobots_TopRight()
  _UPVALUE0_ = "SP_Checkpoint_TwoChozoRobots_TopRight"
  print("actualizo startpoint:" .. _UPVALUE0_)
end
function s070_basesanc.OnEnter_SnapshotRobots_BottomLeft()
  _UPVALUE0_ = "SP_Checkpoint_TwoChozoRobots_BottomLeft"
  print("actualizo startpoint:" .. _UPVALUE0_)
end
function s070_basesanc.OnEnter_SnapshotRobots_TopLeft()
  _UPVALUE0_ = "SP_Checkpoint_TwoChozoRobots_TopLeft"
  print("actualizo startpoint:" .. _UPVALUE0_)
end
function s070_basesanc.CheckChozoRobots_State()
  if Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON") > 0 and Game.GetActor("SG_2ChozoRobots") ~= nil then
    print(Game.GetActor("SG_2ChozoRobots").SPAWNGROUP.iNumDeaths)
    if Game.GetActor("SG_2ChozoRobots").SPAWNGROUP.iNumDeaths > 1 then
      Game.PopSetup("Post2ChozoRobots", true, true)
    else
      Game.PushSetup("2ChozoRobots", true, true)
    end
  end
end
function s070_basesanc.CloseShutter(_ARG_0_, _ARG_1_)
  if Game.GetActor("doorshutter_000") ~= nil then
    Game.GetActor("doorshutter_000").LIFE:LockDoor()
  end
  if Game.GetActor("doorshutter_001") ~= nil then
    Game.GetActor("doorshutter_001").LIFE:LockDoor()
  end
  if Game.GetActor("doorshutter_002") ~= nil then
    Game.GetActor("doorshutter_002").LIFE:LockDoor()
  end
  if Game.GetActor("doorshutter_003") ~= nil then
    Game.GetActor("doorshutter_003").LIFE:LockDoor()
  end
  _ARG_0_.bEnabled = false
end
function s070_basesanc.OnEnter_PresentationCRS(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_2ChozoRobots") ~= nil then
    Game.GetActor("SG_2ChozoRobots").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s070_basesanc.OpenShutter()
  if Game.GetActor("doorshutter_000") ~= nil then
    Game.GetActor("doorshutter_000").LIFE:UnLockDoor()
  end
  if Game.GetActor("doorshutter_001") ~= nil then
    Game.GetActor("doorshutter_001").LIFE:UnLockDoor()
  end
  if Game.GetActor("doorshutter_002") ~= nil then
    Game.GetActor("doorshutter_002").LIFE:UnLockDoor()
  end
  if Game.GetActor("doorshutter_003") ~= nil then
    Game.GetActor("doorshutter_003").LIFE:UnLockDoor()
  end
end
function s070_basesanc.CRS_DetectingDirection()
  if Game.GetActor("SP_ChozoRobotSoldier_000_chozorobotsoldier") ~= nil then
    s070_basesanc.CRS_EvaluatingDirection((Game.GetActor("SP_ChozoRobotSoldier_000_chozorobotsoldier")))
  end
end
function s070_basesanc.CRS_DetectingDirection_B()
  if Game.GetActor("SP_ChozoRobotSoldier_001_chozorobotsoldier") ~= nil then
    s070_basesanc.CRS_EvaluatingDirection((Game.GetActor("SP_ChozoRobotSoldier_001_chozorobotsoldier")))
  end
end
function s070_basesanc.CRS_EvaluatingDirection(_ARG_0_)
  print("----- DETECTING DIRECTION -----")
  if _ARG_0_ ~= nil then
    if Game.GetPlayer() ~= nil then
    end
    if 0 < Game.GetPlayer().vPos - _ARG_0_.vPos.x then
      print("----- TURN RIGHT -----")
      _ARG_0_.ANIMATION:SetAction("spawn_front_turn_right", true)
    else
      print("----- TURN LEFT -----")
      _ARG_0_.ANIMATION:SetAction("spawn_front_turn_left", true)
    end
  end
end
function s070_basesanc.OnEnter_AP_08()
  if Game.GetActor("accesspoint_000") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_FOREST_2" then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_SANC_1")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_SANC_1")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" then
      if Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") > 0 then
        Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_3")
        Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
      end
    elseif Blackboard.GetProp("s070_basesanc", "accesspoint_000:USABLE:Used") ~= true then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("")
    end
  end
end
function s070_basesanc.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Scenario.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
function s070_basesanc.OnSubAreaChange(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "collision_camera_005" and _ARG_1_ == "Default" then
    Game.PushSetup("PostChozoRobotSoldier_Arena", true, true)
  end
  if _ARG_2_ == "collision_camera_005" and _ARG_3_ == "Default" then
    Game.PushSetup("PostChozoRobotSoldier", true, true)
  end
  if _ARG_0_ == "collision_camera_027" and _ARG_1_ == "PostSuperQuetzoaDead" then
    Game.PushSetup("PostSuperQuetzoaArena", true, true)
  end
  if _ARG_0_ == "collision_camera_017" and _ARG_1_ == "2ChozoRobots" and Game.GetActor("SG_2ChozoRobots") ~= nil then
    print(Game.GetActor("SG_2ChozoRobots").SPAWNGROUP.iNumDeaths)
    if Game.GetActor("SG_2ChozoRobots").SPAWNGROUP.iNumDeaths > 1 then
      Game.PopSetup("2ChozoRobots", true, true)
      Game.PushSetup("Post2ChozoRobots", false, true)
    end
  end
end
function s070_basesanc.ActivateGooShockers()
  Game.PushSetup("PostSuperQuetzoa", true, true)
end
function s070_basesanc.OnEnter_PostSuperQuetzoaEnemies(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_PostSuperQuetzoa") ~= nil then
    Game.GetActor("SG_PostSuperQuetzoa").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s070_basesanc.OnEnter_ActivatePostEmmyEnemies(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_PostEmmy_000") ~= nil then
    Game.GetActor("SG_PostEmmy_000").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s070_basesanc.Post_SuperQuetzoa_Dead(_ARG_0_, _ARG_1_)
  Game.PopSetup("SP_SuperQuetzoa_CoreX_core_x_superquetzoa_Boss_Defeated", false, false)
  Game.PushSetup("PostSuperQuetzoaDead", true, false)
end
function s070_basesanc.OnEnter_MusicChange_SpaceJump(_ARG_0_, _ARG_1_)
  Game.PushSetup("SpaceJump", true, false)
end
function s070_basesanc.OnExit_MusicChange_SpaceJump(_ARG_0_, _ARG_1_)
  Game.PopSetup("SpaceJump", true, false)
end
function s070_basesanc.OnEnter_MusicChange_SpaceJumpWater(_ARG_0_, _ARG_1_)
  Game.PushSetup("SpaceJumpWater", true, false)
end
function s070_basesanc.OnExit_MusicChange_SpaceJumpWater(_ARG_0_, _ARG_1_)
  Game.PopSetup("SpaceJumpWater", true, false)
end
function s070_basesanc.cutsceneplayer_40_full()
  if Game.GetActor("cutsceneplayer_40") ~= nil and Game.GetActor("cutsceneplayer_40b_part1") ~= nil then
    Game.GetActor("cutsceneplayer_40").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_40b_part1")))
    if Game.GetActor("cutsceneplayer_40b_part2") ~= nil then
      Game.GetActor("cutsceneplayer_40b_part1").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_40b_part2")))
      if Game.GetActor("cutsceneplayer_40c") ~= nil then
        Game.GetActor("cutsceneplayer_40b_part2").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_40c")))
      end
    end
  end
end
