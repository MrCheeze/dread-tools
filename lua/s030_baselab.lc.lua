function s030_baselab.main()
  s030_baselab.PatrolRoutesGeneration()
  s030_baselab.PatrolRoutesFinalNodesAssignation()
end
function s030_baselab.SetupDebugGameBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 22)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 22)
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
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end
function s030_baselab.InitFromBlackboard()
  Game.ReinitPlayerFromBlackboard()
  _UPVALUE0_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.LAB_EMMY_SPAWNED, false)
  _UPVALUE1_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.LAB_POSTXRELEASE_APPLIED, false)
  _UPVALUE2_ = Blackboard.GetProp("GAME_PROGRESS", "QUARENTINE_OPENED")
  if _UPVALUE2_ == true then
    s030_baselab.Activate_Setup_PostXRelease()
  end
end
function s030_baselab.Activate_Setup_PostXRelease()
  if _UPVALUE0_ == false then
    Game.PushSetup("PostXRelease", true, true)
    Scenario.WriteToBlackboard(Scenario.LUAPropIDs.LAB_POSTXRELEASE_APPLIED, "b", true)
    _UPVALUE0_ = true
  end
end
s030_baselab.tGetOnDeathOverrides = {ShowDeath = true, GoToMainMenu = false}
function s030_baselab.GetOnDeathOverrides()
  return s030_baselab.tGetOnDeathOverrides
end
function s030_baselab.OnBeforeGenerate()
end
function s030_baselab.OnEmmyBaseLabGenerated(_ARG_0_, _ARG_1_)
  CurrentScenario.oEmmyEntity = _ARG_1_
  AI.SetWorldGraphToEmmy("LE_WorldGraph", _ARG_1_.sName)
  s030_baselab.ChangePatrolEmmy("PATROLROUTE_01")
  print("EMMY: Generation OK. Starting patrol: " .. _ARG_1_.AI.sCurrentPatrol)
end
function s030_baselab.OnEnter_EmmyLAB_Deactivation()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
    CurrentScenario.oEmmyEntity.bEnabled = false
    print("EMMY DESACTIVADO")
  end
end
function s030_baselab.OnEnter_EmmyLAB_Presentation()
  print("ACTIVANDO EMMY")
  GUI.AddEmmyMissionLogEntry("#MLOG_ENCOUNTER_EMMY_LAB")
  if Game.GetActor("TG_EmmyLAB_Deactivation") ~= nil then
    Game.GetActor("TG_EmmyLAB_Deactivation").bEnabled = false
  end
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.LAB_EMMY_SPAWNED, "b", true)
  _UPVALUE0_ = true
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
    CurrentScenario.oEmmyEntity.bEnabled = false
    CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_EmmyPresentation").vPos
    CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_EmmyPresentation").vAng
    CurrentScenario.oEmmyEntity.bEnabled = true
    print("EMMY REACTIVADO")
  end
  if Game.GetActor("doorshutter_001") ~= nil then
    Game.GetActor("doorshutter_001").ANIMATION:SetAction("opened", true)
  end
end
function s030_baselab.EmmyLabSpawnSequenceEnd()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI:ForceStartChase()
  end
end
function s030_baselab.DelayedEmmyLABSpawnSequence()
  GUI.ShowMessage("#BASELAB_EMMY_PRESENTATION", true, "")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "OnEnter_EmmyLAB_Presentation")
  end
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
    CurrentScenario.oEmmyEntity.bEnabled = false
    CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_EmmyPresentation").vPos
    CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_EmmyPresentation").vAng
    CurrentScenario.oEmmyEntity.bEnabled = true
    print("EMMY REACTIVADO")
  end
end
function s030_baselab.OnEmmyBaseLabDead()
  Game.PushSetup("PostEmmy", true, true)
end
function s030_baselab.OnEmmyAbilityObtainedFadeOutCompleted()
  Game.GetActor("TG_EnablePostEmmyEnemies").bEnabled = true
  if Game.GetActor("centralunitmagmacontroller") ~= nil then
    Game.GetActor("centralunitmagmacontroller").CENTRALUNIT:OnEmmyAbilityObtainedFadeOutCompleted()
  end
end
function s030_baselab.DelayedOnEmmyBaseLabDead()
  GUI.ShowMessage("#PLACEHOLDER_EMMYBASELAB_KILLED", true, "")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "OnEmmyBaseLabDead")
  end
end
function s030_baselab.OnEmmyDeathMessageSkipped()
end
function s030_baselab.OnUnlockEmmyDoors()
  if Game.GetActor("centralunitmagmacontroller") ~= nil then
    Game.GetActor("centralunitmagmacontroller").CENTRALUNIT:UnlockDoors()
  else
    print("CENTRAL_UNIT: centralunitmagmacontroller not found")
  end
end
function s030_baselab.OnUnlockEmmyDoors()
  if Game.GetActor("centralunitmagmacontroller") ~= nil then
    Game.GetActor("centralunitmagmacontroller").CENTRALUNIT:UnlockDoors()
  else
    print("CENTRAL_UNIT: centralunitbaselabcontroller not found")
  end
end
function s030_baselab.OnLockEmmyDoors()
  if Game.GetActor("centralunitmagmacontroller") ~= nil then
    Game.GetActor("centralunitmagmacontroller").CENTRALUNIT:LockDoors()
  else
    print("CENTRAL_UNIT: centralunitbaselabcontroller not found")
  end
end
function s030_baselab.OnCheckpoint_SpeedBooster()
  s030_baselab.OnLockEmmyDoors()
end
function s030_baselab.PatrolRoutesGeneration()
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
  print("s030_baselab.PatrolRoutesGeneration(): Patrol designation OK")
end
function s030_baselab.PatrolRoutesFinalNodesAssignation()
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_01", {
    "WorldGraph_21"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_01", {
    "WorldGraph_16",
    "WorldGraph_15"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_5",
    "WorldGraph_11"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_21"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_22",
    "WorldGraph_24"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_26"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_04", {
    "WorldGraph_57",
    "WorldGraph_56"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_04", {
    "WorldGraph_30",
    "WorldGraph_31"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_56",
    "WorldGraph_38"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_46"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_46",
    "WorldGraph_47"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_56"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_31",
    "WorldGraph_35"
  }, 2)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_55"
  }, 3)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_65"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_56"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_60"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_72"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_09", {
    "WorldGraph_60"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_09", {
    "WorldGraph_81"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_75"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_81"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_11", {
    "WorldGraph_1"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_11", {
    "WorldGraph_11"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_11", {
    "WorldGraph_17"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_100",
    "WorldGraph_98"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_94",
    "WorldGraph_93"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_87",
    "WorldGraph_84"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_85",
    "WorldGraph_86"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_13", {
    "WorldGraph_109"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_109"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_117"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_115"
  }, 2)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_111",
    "WorldGraph_112"
  }, 3)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_101"
  }, 4)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_107",
    "WorldGraph_105"
  }, 5)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_104"
  }, 6)
  print("s030_baselab.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK")
end
function s030_baselab.ChangePatrolEmmy(_ARG_0_)
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI.sCurrentPatrol = _ARG_0_
    print("EMMY: Assigned route " .. _ARG_0_)
  else
    print("EMMY: Not found, route " .. _ARG_0_ .. " not assigned")
  end
end
function s030_baselab.OnEnter_PatrolEmmyActivator(_ARG_0_, _ARG_1_)
  s030_baselab.ChangePatrolEmmy((string.gsub(_ARG_0_.sName, "TG_PATROLEMMYACTIVATOR_", "PATROLROUTE_")))
end
function s030_baselab.OnExit_PatrolEmmyActivator(_ARG_0_, _ARG_1_)
end
function s030_baselab.OnEnter_EmmySpawnAfterAqua()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
    _UPVALUE0_ = true
    CurrentScenario.oEmmyEntity.bEnabled = false
    CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_EmmySpawnAfterAqua").vPos
    CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_EmmySpawnAfterAqua").vAng
    CurrentScenario.oEmmyEntity.bEnabled = true
    s030_baselab.ChangePatrolEmmy("PATROLROUTE_13")
  end
end
s030_baselab.tEmmyDoor = nil
function s030_baselab.OnWalkThroughEmmyDoor(_ARG_0_, _ARG_1_, _ARG_2_)
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) and _UPVALUE0_ then
    if _ARG_1_ then
      if CurrentScenario.oEmmyEntity ~= nil then
        if _ARG_2_ then
        else
        end
        if s030_baselab.EmmyRelocationDoor(_ARG_0_) ~= nil then
          print(Game.GetActor((s030_baselab.EmmyRelocationDoor(_ARG_0_))).sName)
          CurrentScenario.oEmmyEntity.bEnabled = false
          CurrentScenario.oEmmyEntity.vPos = Game.GetActor((s030_baselab.EmmyRelocationDoor(_ARG_0_))).vPos
          CurrentScenario.oEmmyEntity.vAng = Game.GetActor((s030_baselab.EmmyRelocationDoor(_ARG_0_))).vAng
          CurrentScenario.oEmmyEntity.bEnabled = true
        end
      end
    else
      CurrentScenario.oEmmyEntity.bEnabled = false
    end
  end
end
function s030_baselab.HardEmmyRelocationDoor(_ARG_0_)
  print("Door: Hard " .. _ARG_0_.sName)
  if _ARG_0_.sName == "dooremmy_000" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_000"
    }
  elseif _ARG_0_.sName == "dooremmy_001" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_004"
    }
  elseif _ARG_0_.sName == "dooremmy_003" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_010"
    }
  elseif _ARG_0_.sName == "dooremmy_004" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_010"
    }
  elseif _ARG_0_.sName == "dooremmy_005" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_015"
    }
  elseif _ARG_0_.sName == "dooremmy_006" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_016"
    }
  elseif _ARG_0_.sName == "dooremmy_008" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_022"
    }
  elseif _ARG_0_.sName == "dooremmy_009" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_021"
    }
  elseif _ARG_0_.sName == "dooremmy_010" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_026"
    }
  elseif _ARG_0_.sName == "dooremmy_012" then
    if _UPVALUE0_ then
      _UPVALUE0_ = false
      return "nil"
    else
      s030_baselab.tEmmyDoor = {
        "LM_EmmyEntrancePoint_027"
      }
    end
  else
    s030_baselab.tEmmyDoor = nil
  end
  if s030_baselab.tEmmyDoor ~= nil then
    return s030_baselab.tEmmyDoor[math.random(table.maxn(s030_baselab.tEmmyDoor))]
  else
    return nil
  end
end
function s030_baselab.EmmyRelocationDoor(_ARG_0_)
  if _ARG_0_.sName == "dooremmy_000" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_000",
      "LM_EmmyEntrancePoint_001",
      "LM_EmmyEntrancePoint_002",
      "LM_EmmyEntrancePoint_006"
    }
  elseif _ARG_0_.sName == "dooremmy_001" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_003",
      "LM_EmmyEntrancePoint_005",
      "LM_EmmyEntrancePoint_007"
    }
  elseif _ARG_0_.sName == "dooremmy_003" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_012",
      "LM_EmmyEntrancePoint_010"
    }
  elseif _ARG_0_.sName == "dooremmy_004" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_010",
      "LM_EmmyEntrancePoint_011",
      "LM_EmmyEntrancePoint_013"
    }
  elseif _ARG_0_.sName == "dooremmy_005" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_023",
      "LM_EmmyEntrancePoint_015",
      "LM_EmmyEntrancePoint_017"
    }
  elseif _ARG_0_.sName == "dooremmy_006" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_015",
      "LM_EmmyEntrancePoint_016",
      "LM_EmmyEntrancePoint_020"
    }
  elseif _ARG_0_.sName == "dooremmy_008" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_022",
      "LM_EmmyEntrancePoint_021",
      "LM_EmmyEntrancePoint_024"
    }
  elseif _ARG_0_.sName == "dooremmy_009" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_021",
      "LM_EmmyEntrancePoint_022"
    }
  elseif _ARG_0_.sName == "dooremmy_010" then
    s030_baselab.tEmmyDoor = {
      "LM_EmmyEntrancePoint_025",
      "LM_EmmyEntrancePoint_026"
    }
  elseif _ARG_0_.sName == "dooremmy_012" then
    if _UPVALUE0_ then
      _UPVALUE0_ = false
      return "nil"
    else
      s030_baselab.tEmmyDoor = {
        "LM_EmmyEntrancePoint_027",
        "LM_EmmyEntrancePoint_028",
        "LM_EmmyEntrancePoint_029"
      }
    end
  else
    s030_baselab.tEmmyDoor = nil
  end
  if s030_baselab.tEmmyDoor ~= nil then
    return s030_baselab.tEmmyDoor[math.random(table.maxn(s030_baselab.tEmmyDoor))]
  else
    return nil
  end
end
function s030_baselab.OnTeleport_Checkpoint_CU()
  Game.AddSF(1, "s030_baselab.Checkpoint_RelocatingEmmy_CU", "")
end
function s030_baselab.Checkpoint_RelocatingEmmy_CU()
  if CurrentScenario.oEmmyEntity ~= nil and Game.GetActor("LM_EmmyEntrancePoint_027") ~= nil then
    CurrentScenario.oEmmyEntity.bEnabled = false
    CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_EmmyEntrancePoint_027").vPos
    CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_EmmyEntrancePoint_027").vAng
    CurrentScenario.oEmmyEntity.bEnabled = true
    s030_baselab.ChangePatrolEmmy("PATROLROUTE_12")
  end
end
function s030_baselab.OnEnter_AP_04()
  if Game.GetActor("accesspoint_000") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_MAGMA_2" then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_LAB_1")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_LAB_1")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") > 0 then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_3")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
    end
  end
end
function s030_baselab.OnEnter_AP_06()
  if Game.GetActor("accesspoint_001") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_AQUA_1" then
      Game.GetActor("accesspoint_001").USABLE:ActiveDialogue("DIAG_ADAM_LAB_2")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_LAB_2")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") > 0 then
      Game.GetActor("accesspoint_001").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_3")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
    end
  end
end
function s030_baselab.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Scenario.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
function s030_baselab.OnSubAreaChange(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
end
function s030_baselab.OnEnter_ActivatePostBlackout()
  Game.PushSetup("PostBlackout", true, true)
  Game.StopMusic(true)
end
function s030_baselab.Event_ShakerNaut_Activation()
  if Game.GetActor("SP_Shakernaut_001B_shakernaut") ~= nil then
    Game.GetActor("SP_Shakernaut_001B_shakernaut").ANIMATION:SetAction("spawn_baselab_part015_relaxtopath", true)
  end
  if Game.GetActor("SP_Shakernaut_001B") ~= nil then
    Game.GetActor("SP_Shakernaut_001B").SPAWNPOINT:Deactivate()
  end
  if Game.GetActor("SP_Shakernaut_001") ~= nil then
    Game.GetActor("SP_Shakernaut_001").SPAWNPOINT:Activate()
  end
end
function s030_baselab.DetectingDirection()
  if Game.GetActor("SP_Shakernaut_001B_shakernaut") ~= nil then
    if Game.GetActor("SP_Shakernaut_001B_shakernaut").ANIMATION:IsPlayingAnim("spawn_baselab_part015_relaxtopath", false) then
      Game.AddSF(0, "s030_baselab.DetectingDirection", "")
    else
      if Game.GetPlayer() ~= nil then
      end
      if 0 < Game.GetPlayer().vPos - Game.GetActor("SP_Shakernaut_001B_shakernaut").vPos.x then
        Game.GetActor("SP_Shakernaut_001B_shakernaut").ANIMATION:SetAction("spawn_baselab_part015_turn_right", true)
      else
        Game.GetActor("SP_Shakernaut_001B_shakernaut").ANIMATION:SetAction("spawn_baselab_part015_turn_left", true)
      end
      Game.GetActor("SP_Shakernaut_001B_shakernaut").AI:SetNavigationDir((V3D(-1, 0, 0)))
    end
  end
end
function s030_baselab.OnEnter_ActivatePostBlackout2()
  Game.PushSetup("PostBlackout2", true, true)
  Game.StopMusic(true)
end
function s030_baselab.OnEnter_ActivatePostEmmyEnemies(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_PostEmmy_000") ~= nil then
    Game.GetActor("SG_PostEmmy_000").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_PostEmmy_001") ~= nil then
    Game.GetActor("SG_PostEmmy_001").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s030_baselab.OnCutscene39End()
  s030_baselab.EmmyLabSpawnSequenceEnd()
  if Game.GetActor("emmyvalve_reg_gen_002") ~= nil then
    Game.GetActor("emmyvalve_reg_gen_002").EMMYVALVE:CleanForceStateFlag()
  end
end
