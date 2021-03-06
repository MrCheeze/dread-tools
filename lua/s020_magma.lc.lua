function s020_magma.main()
  s020_magma.PatrolRoutesGeneration()
  s020_magma.PatrolRoutesFinalNodesAssignation()
end
function s020_magma.SetupDebugGameBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 20)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 20)
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
function s020_magma.InitFromBlackboard()
  Game.ReinitPlayerFromBlackboard()
  _UPVALUE0_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.MAGMA_COOLDOWN_APPLIED, false)
  _UPVALUE1_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.MAGMA_POSTXRELEASE_APPLIED, false)
  _UPVALUE2_ = Blackboard.GetProp("GAME_PROGRESS", "QUARENTINE_OPENED")
  if _UPVALUE2_ == true then
    s020_magma.Activate_Setup_PostXRelease()
  end
  if Game.GetCooldownFlag() == true then
    s020_magma.Enable_PistonOff()
    s020_magma.Cooldown_Activation()
  end
  if Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.COOLDOWN_FINISHED, false) then
    s020_magma.ThermalTrapChange()
    s020_magma.PistonDeactivation()
  end
  if _UPVALUE2_ ~= true then
    if Game.GetActor("ev_lavapump_mg_001") ~= nil then
      Game.GetActor("ev_lavapump_mg_001").MODELUPDATER:SetMeshVisible("Slime_MESH", false)
    end
    if Game.GetActor("fan_cooldown_000") ~= nil then
      Game.GetActor("fan_cooldown_000").MODELUPDATER:SetMeshVisible("Slime_MESH", false)
    end
  end
end
function s020_magma.Activate_Setup_PostXRelease()
  if _UPVALUE0_ == false then
    Game.PushSetup("PostXRelease", true, true)
    Scenario.WriteToBlackboard(Scenario.LUAPropIDs.MAGMA_POSTXRELEASE_APPLIED, "b", true)
    _UPVALUE0_ = true
  end
end
s020_magma.tGetOnDeathOverrides = {ShowDeath = true, GoToMainMenu = false}
function s020_magma.GetOnDeathOverrides()
  return s020_magma.tGetOnDeathOverrides
end
function s020_magma.OnBeforeGenerate()
end
function s020_magma.OnEmmyMagmaGenerated(_ARG_0_, _ARG_1_)
  CurrentScenario.oEmmyEntity = _ARG_1_
  AI.SetWorldGraphToEmmy("LE_WorldGraph", _ARG_1_.sName)
  s020_magma.ChangePatrolEmmy("PATROLROUTE_01")
  print("EMMY: Generation OK. Starting patrol: " .. _ARG_1_.AI.sCurrentPatrol)
end
function s020_magma.RelocateEmmy_AfterPresentation()
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.bEnabled = false
    CurrentScenario.oEmmyEntity.vPos = Game.GetActor("LM_EmmyEntrancePoint_024").vPos
    CurrentScenario.oEmmyEntity.vAng = Game.GetActor("LM_EmmyEntrancePoint_024").vAng
    CurrentScenario.oEmmyEntity.bEnabled = true
  end
  GUI.AddEmmyMissionLogEntry("#MLOG_ENCOUNTER_EMMY_MAGMA")
end
function s020_magma.OnEmmyMagmaDead()
  Game.PushSetup("PostEmmy", true, true)
end
function s020_magma.OnEmmyAbilityObtainedFadeOutCompleted()
  if Game.GetActor("centralunitmagmacontroller") ~= nil then
    Game.GetActor("centralunitmagmacontroller").CENTRALUNIT:OnEmmyAbilityObtainedFadeOutCompleted()
  end
end
function s020_magma.DelayedOnEmmyMagmaDead()
  GUI.ShowMessage("#PLACEHOLDER_EMMYMAGMA_KILLED", true, "")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "OnEmmyMagmaDead")
  end
end
function s020_magma.OnEmmyDeathMessageSkipped()
end
function s020_magma.OnUnlockEmmyDoors()
  if Game.GetActor("centralunitmagmacontroller") ~= nil then
    Game.GetActor("centralunitmagmacontroller").CENTRALUNIT:UnlockDoors()
  else
    print("CENTRAL_UNIT: centralunitmagmacontroller not found")
  end
end
function s020_magma.OnLockEmmyDoors()
  if Game.GetActor("centralunitmagmacontroller") ~= nil then
    Game.GetActor("centralunitmagmacontroller").CENTRALUNIT:LockDoors()
  else
    print("CENTRAL_UNIT: centralunitmagmacontroller not found")
  end
end
function s020_magma.OnCheckpoint_MorphBall()
  s020_magma.OnLockEmmyDoors()
end
function s020_magma.PatrolRoutesGeneration()
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
  print("s020_magma.PatrolRoutesGeneration(): Patrol designation OK")
end
function s020_magma.PatrolRoutesFinalNodesAssignation()
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_01", {
    "WorldGraph_41"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_01", {
    "WorldGraph_38"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_4",
    "WorldGraph_36"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_62",
    "WorldGraph_81"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_0",
    "WorldGraph_13",
    "WorldGraph_12"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_02", {
    "WorldGraph_11",
    "WorldGraph_59"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_35",
    "WorldGraph_31"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_26",
    "WorldGraph_36"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_83",
    "WorldGraph_64"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_03", {
    "WorldGraph_23",
    "WorldGraph_6"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_04", {
    "WorldGraph_27",
    "WorldGraph_36"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_04", {
    "WorldGraph_25",
    "WorldGraph_38"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_25",
    "WorldGraph_35",
    "WorldGraph_20"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_21",
    "WorldGraph_83"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_05", {
    "WorldGraph_64",
    "WorldGraph_33"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_58",
    "WorldGraph_53"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_50"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_06", {
    "WorldGraph_55",
    "WorldGraph_67"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_88"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_98",
    "WorldGraph_48"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_07", {
    "WorldGraph_54",
    "WorldGraph_60"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_60",
    "WorldGraph_41"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_49",
    "WorldGraph_54"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_58",
    "WorldGraph_54"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_48",
    "WorldGraph_80"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_08", {
    "WorldGraph_77",
    "WorldGraph_45"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_09", {
    "WorldGraph_71",
    "WorldGraph_73"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_09", {
    "WorldGraph_70",
    "WorldGraph_69"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_09", {
    "WorldGraph_77"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_09", {
    "WorldGraph_68",
    "WorldGraph_76"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_102"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_93",
    "WorldGraph_92"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_98",
    "WorldGraph_97"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_101",
    "WorldGraph_92"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_10", {
    "WorldGraph_99",
    "WorldGraph_91",
    "WorldGraph_94"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_11", {
    "WorldGraph_26",
    "WorldGraph_9"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_11", {
    "WorldGraph_109",
    "WorldGraph_27"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_75"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_12", {
    "WorldGraph_76",
    "WorldGraph_77"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_13", {
    "WorldGraph_57",
    "WorldGraph_65"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_13", {
    "WorldGraph_1",
    "WorldGraph_57"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_13", {
    "WorldGraph_3",
    "WorldGraph_59"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_13", {
    "WorldGraph_5",
    "WorldGraph_59"
  }, 1)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_81",
    "WorldGraph_11"
  }, 0)
  AI.SetPatrolFinalNode("LE_WorldGraph", "PATROLROUTE_14", {
    "WorldGraph_4",
    "WorldGraph_13"
  }, 1)
  print("s020_magma.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK")
end
function s020_magma.ChangePatrolEmmy(_ARG_0_)
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    CurrentScenario.oEmmyEntity.AI.sCurrentPatrol = _ARG_0_
    print("EMMY: Assigned route " .. _ARG_0_)
  else
    print("EMMY: Not found, route " .. _ARG_0_ .. " not assigned")
  end
end
function s020_magma.OnEnter_PatrolEmmyActivator(_ARG_0_, _ARG_1_)
  s020_magma.ChangePatrolEmmy((string.gsub(_ARG_0_.sName, "TG_PATROLEMMYACTIVATOR_", "PATROLROUTE_")))
end
function s020_magma.OnExit_PatrolEmmyActivator(_ARG_0_, _ARG_1_)
end
s020_magma.tEmmyDoor = nil
function s020_magma.OnWalkThroughEmmyDoor(_ARG_0_, _ARG_1_, _ARG_2_)
  if Scenario.CheckEmmyAlive(CurrentScenario.oEmmyEntity) then
    if _ARG_1_ then
      if CurrentScenario.oEmmyEntity ~= nil then
        if _ARG_2_ then
        else
        end
        if s020_magma.EmmyRelocationDoor(_ARG_0_) ~= nil then
          print(Game.GetActor((s020_magma.EmmyRelocationDoor(_ARG_0_))).sName)
          CurrentScenario.oEmmyEntity.bEnabled = false
          CurrentScenario.oEmmyEntity.vPos = Game.GetActor((s020_magma.EmmyRelocationDoor(_ARG_0_))).vPos
          CurrentScenario.oEmmyEntity.vAng = Game.GetActor((s020_magma.EmmyRelocationDoor(_ARG_0_))).vAng
          CurrentScenario.oEmmyEntity.bEnabled = true
        end
      end
    else
      CurrentScenario.oEmmyEntity.bEnabled = false
    end
  end
end
function s020_magma.HardEmmyRelocationDoor(_ARG_0_)
  print("Door: Hard " .. _ARG_0_.sName)
  if _ARG_0_.sName == "dooremmy" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_025"
    }
  elseif _ARG_0_.sName == "dooremmy_001" then
    if Blackboard.GetProp("s020_magma", "ev_dspiston_mg_001:ACTIVATABLE:Activated") ~= nil then
      s020_magma.tEmmyDoor = {
        "LM_EmmyEntrancePoint_017"
      }
    else
      s020_magma.tEmmyDoor = {
        "LM_EmmyEntrancePoint_004"
      }
    end
  elseif _ARG_0_.sName == "dooremmy_002" then
    if Blackboard.GetProp("s020_magma", "ev_tpiston_mg_001:ACTIVATABLE:Activated") ~= nil then
      s020_magma.tEmmyDoor = {
        "LM_EmmyEntrancePoint_021"
      }
    else
      s020_magma.tEmmyDoor = {
        "LM_EmmyEntrancePoint_006"
      }
    end
  elseif _ARG_0_.sName == "dooremmy_003" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_003"
    }
  elseif _ARG_0_.sName == "dooremmy_004" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_012"
    }
  elseif _ARG_0_.sName == "dooremmy_005" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_014"
    }
  elseif _ARG_0_.sName == "dooremmy_006" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_015"
    }
  elseif _ARG_0_.sName == "dooremmy_007" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_013"
    }
  elseif _ARG_0_.sName == "dooremmy_008" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_012"
    }
  elseif _ARG_0_.sName == "dooremmy_009" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_008"
    }
  else
    s020_magma.tEmmyDoor = nil
  end
  if s020_magma.tEmmyDoor ~= nil then
    return s020_magma.tEmmyDoor[math.random(table.maxn(s020_magma.tEmmyDoor))]
  else
    return nil
  end
end
function s020_magma.EmmyRelocationDoor(_ARG_0_)
  if _ARG_0_.sName == "dooremmy" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_005",
      "LM_EmmyEntrancePoint_006",
      "LM_EmmyEntrancePoint_025"
    }
  elseif _ARG_0_.sName == "dooremmy_001" then
    if Blackboard.GetProp("s020_magma", "ev_dspiston_mg_001:ACTIVATABLE:Activated") ~= nil then
      s020_magma.tEmmyDoor = {
        "LM_EmmyEntrancePoint_017"
      }
    else
      s020_magma.tEmmyDoor = {
        "LM_EmmyEntrancePoint_004"
      }
    end
  elseif _ARG_0_.sName == "dooremmy_002" then
    if Blackboard.GetProp("s020_magma", "ev_tpiston_mg_001:ACTIVATABLE:Activated") ~= nil then
      s020_magma.tEmmyDoor = {
        "LM_EmmyEntrancePoint_020",
        "LM_EmmyEntrancePoint_021",
        "LM_EmmyEntrancePoint_024"
      }
    else
      s020_magma.tEmmyDoor = {
        "LM_EmmyEntrancePoint_017",
        "LM_EmmyEntrancePoint_024",
        "LM_EmmyEntrancePoint_006"
      }
    end
  elseif _ARG_0_.sName == "dooremmy_003" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_002",
      "LM_EmmyEntrancePoint_003"
    }
  elseif _ARG_0_.sName == "dooremmy_004" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_000",
      "LM_EmmyEntrancePoint_012",
      "LM_EmmyEntrancePoint_015"
    }
  elseif _ARG_0_.sName == "dooremmy_005" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_014"
    }
  elseif _ARG_0_.sName == "dooremmy_006" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_015",
      "LM_EmmyEntrancePoint_014"
    }
  elseif _ARG_0_.sName == "dooremmy_007" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_010",
      "LM_EmmyEntrancePoint_009",
      "LM_EmmyEntrancePoint_013"
    }
  elseif _ARG_0_.sName == "dooremmy_008" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_012"
    }
  elseif _ARG_0_.sName == "dooremmy_009" then
    s020_magma.tEmmyDoor = {
      "LM_EmmyEntrancePoint_007",
      "LM_EmmyEntrancePoint_008",
      "LM_EmmyEntrancePoint_009"
    }
  else
    s020_magma.tEmmyDoor = nil
  end
  if s020_magma.tEmmyDoor ~= nil then
    return s020_magma.tEmmyDoor[math.random(table.maxn(s020_magma.tEmmyDoor))]
  else
    return nil
  end
end
function s020_magma.OnEnter_ChangeCamera_000_B()
  Game.SetCollisionCameraLocked("collision_camera_000_B", true)
  print("OnEnter_ChangeCamera_000_B")
end
function s020_magma.OnExit_ChangeCamera_000_B()
  Game.SetCollisionCameraLocked("collision_camera_000_B", false)
  print("OnExit_ChangeCamera_000_B")
end
function s020_magma.OnEnter_ChangeCamera_009_B()
  Game.SetCollisionCameraLocked("collision_camera_009_B", true)
  print("OnEnter_ChangeCamera_009_B")
end
function s020_magma.OnExit_ChangeCamera_009_B()
  Game.SetCollisionCameraLocked("collision_camera_009_B", false)
  print("OnExit_ChangeCamera_009_B")
end
function s020_magma.OnEnter_ChangeCamera_009_C()
  Game.SetCollisionCameraLocked("collision_camera_009_C", true)
end
function s020_magma.OnExit_ChangeCamera_009_C()
  Game.SetCollisionCameraLocked("collision_camera_009_C", false)
end
function s020_magma.OnEnter_ChangeCamera_015_B()
  Game.SetCollisionCameraLocked("collision_camera_015_B", true)
  print("OnEnter_ChangeCamera_015_B")
end
function s020_magma.OnExit_ChangeCamera_015_B()
  Game.SetCollisionCameraLocked("collision_camera_015_B", false)
  print("OnExit_ChangeCamera_015_B")
end
function s020_magma.OnEnter_ChangeCamera_023_B()
  Game.SetCollisionCameraLocked("collision_camera_023_B", true)
  print("OnEnter_ChangeCamera_023_B")
end
function s020_magma.OnExit_ChangeCamera_023_B()
  Game.SetCollisionCameraLocked("collision_camera_023_B", false)
  print("OnExit_ChangeCamera_023_B")
end
function s020_magma.OnEnter_ChangeCamera_024_B()
  Game.SetCollisionCameraLocked("collision_camera_024_B", true)
  print("OnEnter_ChangeCamera_024_B")
end
function s020_magma.OnExit_ChangeCamera_024_B()
  Game.SetCollisionCameraLocked("collision_camera_024_B", false)
  print("OnExit_ChangeCamera_024_B")
end
function s020_magma.OnEnter_ChangeCamera_025_B()
  Game.SetCollisionCameraLocked("collision_camera_025_B", true)
  print("OnEnter_ChangeCamera_025_B")
end
function s020_magma.OnExit_ChangeCamera_025_B()
  Game.SetCollisionCameraLocked("collision_camera_025_B", false)
  print("OnExit_ChangeCamera_025_B")
end
function s020_magma.OnEnter_ChangeCamera_026_B()
  Game.SetCollisionCameraLocked("collision_camera_026_B", true)
  print("OnEnter_ChangeCamera_026_B")
end
function s020_magma.OnExit_ChangeCamera_026_B()
  Game.SetCollisionCameraLocked("collision_camera_026_B", false)
  print("OnExit_ChangeCamera_026_B")
end
function s020_magma.OnEnter_ChangeCamera_051_B()
  Game.SetCollisionCameraLocked("collision_camera_051_B", true)
  print("OnEnter_ChangeCamera_051_B")
end
function s020_magma.OnExit_ChangeCamera_051_B()
  Game.SetCollisionCameraLocked("collision_camera_051_B", false)
  print("OnExit_ChangeCamera_051_B")
end
function s020_magma.Enable_TG__ZoomOutQuit()
  if Game.GetActor("TG_ZoomOutQuit") ~= nil then
    Game.GetActor("TG_ZoomOutQuit").TRIGGER.bWantsEnabled = true
  end
end
function s020_magma.Disable_MagnetRailCam()
  if Game.GetActor("camerarailpath") ~= nil then
    Game.GetActor("camerarailpath").bEnabled = false
  end
end
function s020_magma.Disable_CamToKraid()
  if Game.GetActor("CameraRail_PathToKraid") ~= nil then
    Game.GetActor("CameraRail_PathToKraid").bEnabled = false
  end
end
function s020_magma.Cooldown_Activation()
  if _UPVALUE0_ == false then
    Game.PushSetup("Cooldown", true, true)
    Scenario.WriteToBlackboard(Scenario.LUAPropIDs.MAGMA_COOLDOWN_APPLIED, "b", true)
    _UPVALUE0_ = true
  end
end
function s020_magma.Cooldown_Deactivation()
  Game.SetCooldownFlag(false)
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.COOLDOWN_FINISHED, "b", true)
  s020_magma.ThermalTrapChange()
  s020_magma.PistonDeactivation()
  Game.PushSetup("PostCooldown", true, true)
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.MAGMA_COOLDOWN_APPLIED, "b", false)
  _UPVALUE0_ = false
end
function s020_magma.ThermalTrapChange()
  if Game.GetActor("trap_thermal_horizontal_PRECOOL") ~= nil and Game.GetActor("trap_thermal_horizontal_POSTCOOL") ~= nil then
    Game.GetActor("trap_thermal_horizontal_POSTCOOL").bEnabled = true
    Game.GetActor("trap_thermal_horizontal_PRECOOL").bEnabled = false
  end
end
function s020_magma.PistonDeactivation()
  s020_magma.Enable_PistonOff()
  if Game.GetActor("ev_hpiston_mg_001") ~= nil and Game.GetActor("pistonmag01_001") ~= nil and Game.GetActor("shootactivatormag01_001") ~= nil and Game.GetActor("pistonmag01_off_post") ~= nil and Game.GetActor("shootactivatoroff_000_post") ~= nil then
    Game.GetActor("ev_hpiston_mg_001").bEnabled = false
    Game.GetActor("pistonmag01_001").bEnabled = false
    Game.GetActor("shootactivatormag01_001").bEnabled = false
    Game.GetActor("pistonmag01_off_post").bEnabled = true
    Game.GetActor("shootactivatoroff_000_post").bEnabled = true
  end
  if Game.GetActor("fusiblebox_000") ~= nil and Game.GetActor("fusiblebox_broken_000") ~= nil then
    Game.GetActor("fusiblebox_broken_000").bEnabled = true
    Game.GetActor("fusiblebox_000").bEnabled = false
  end
end
function s020_magma.Enable_PistonOff()
  if Game.GetActor("ev_hpiston_mg_001_off") ~= nil then
    Game.GetActor("ev_hpiston_mg_001_off").bEnabled = true
  end
end
function s020_magma.OnEnter_FadeOutCooldownX()
  print("FADE OUT COOLDOW-X")
  Game.FadeOut(0.6)
  s020_magma.fSFXVolume = Game.GetSFXVolume()
  Game.SetSFXVolume(0, 0.7)
  Game.StopMusicWithFade(0.6, true)
end
function s020_magma.OnEnter_AP_03()
  if Game.GetActor("accesspoint") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_3" then
      Game.GetActor("accesspoint").USABLE:ActiveDialogue("DIAG_ADAM_MAGMA_1")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_MAGMA_1")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" and Game.GetCooldownFlag() == false and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") > 0 then
      Game.GetActor("accesspoint").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_3")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
    end
  end
end
function s020_magma.OnEnter_AP_03B()
  if Game.GetActor("accesspoint_000") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_MAGMA_1" then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_MAGMA_2")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_MAGMA_2")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" and Game.GetCooldownFlag() == false and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") > 0 then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_3")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
    end
  end
end
function s020_magma.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Scenario.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
function s020_magma.OnSubAreaChange(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if s020_magma.IsKraidCombatBegin(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_) then
    s020_magma.Kraid_InitCutscene()
  end
  if _ARG_0_ == "collision_camera_009" and _ARG_1_ == "PostCooldown" then
    Game.PopSetup("Cooldown", true, true)
    Game.PushSetup("PostXRelease", true, true)
  elseif _UPVALUE0_ == true and _ARG_0_ == "collision_camera_004" and _ARG_2_ == "collision_camera_009" then
    if Game.GetActor("cutsceneplayer_78") ~= nil then
      Game.GetActor("cutsceneplayer_78").CUTSCENE:TryLaunchCutscene()
    end
  elseif _ARG_0_ == "collision_camera_052" and _ARG_2_ == "collision_camera_020" then
    if Game.GetActor("cutsceneplayer_38") ~= nil then
      Game.GetActor("cutsceneplayer_38").CUTSCENE:TryLaunchCutscene()
    end
  elseif _ARG_0_ == "collision_camera_063" and _ARG_2_ == "collision_camera_044" then
    Game.PlayCurrentEnvironmentMusic()
  elseif _ARG_0_ == "collision_camera_022" and _ARG_2_ == "collision_camera_030" then
    Game.StopMusic(true)
    Game.PlayCurrentEnvironmentMusic()
  end
end
function s020_magma.Kraid_InitCutscene()
  Game.PushSetup("Kraid_Stage_01", true, true)
  if Game.GetActor("cutsceneplayer_59") ~= nil then
    Game.GetActor("cutsceneplayer_59").CUTSCENE:TryLaunchCutscene()
  end
  if Game.GetActor("block_slide_reg_002") ~= nil then
    Game.GetActor("block_slide_reg_002").ANIMATION:SetAction("closed", true)
  end
end
function s020_magma.OnCutscene78Started()
  Game.SetActorVolumeOverride("Samus", 0, 0, "ALL")
  if s020_magma.fSFXVolume ~= nil then
  end
  Game.SetSFXVolume(s020_magma.fSFXVolume, 0)
end
function s020_magma.OnCutscene81Ended()
  s020_magma.Cooldown_Deactivation()
  Blackboard.SetProp("s010_cave", "SubareaSetupID[collision_camera_080]", "s", "Default>PostXRelease")
  Game.SetPlayerInteractMovementState()
end
function s020_magma.OnCutscene81Skipped()
  if Game.GetActor("fan_cooldown_000") ~= nil then
    Game.GetActor("fan_cooldown_000").ANIMATION:SetAction("relax", true)
    Game.GetActor("fan_cooldown_000").TIMELINECOMPONENT:EndAction("dissolve_in_cut_scene")
    Game.GetActor("fan_cooldown_000").TIMELINECOMPONENT:StartAction("dissolve_in_cut_scene_no_transition", -1, false)
  end
end
function s020_magma.OnBeforeCutscene0059Started()
  CurrentScenario.oKraid.AI:SetBossCamera(true, true)
end
function s020_magma.OnCutscene0059Ended()
end
function s020_magma.OnKraidGenerated(_ARG_0_, _ARG_1_)
  CurrentScenario.oKraid = _ARG_1_
  if CurrentScenario.oKraid ~= nil then
    CurrentScenario.oKraid.ANIMATION:SetAction("kraid_stage1", true)
    print("ANIMATION 1")
  end
end
function s020_magma.OnEnter_Kraid_Activation_Stage_02()
  Game.PushSetup("Kraid_Stage_02", true, true)
  if Game.GetActor("ev_kraid_platform") ~= nil then
    Game.GetActor("ev_kraid_platform").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
  if Game.GetActor("ev_kraid_structure") ~= nil then
    Game.GetActor("ev_kraid_structure").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
  if CurrentScenario.oKraid ~= nil then
    CurrentScenario.oKraid.ANIMATION:SetAction("kraid_stage2", true)
    print("ANIMATION 2")
  end
end
function s020_magma.OnEnter_Kraid_Activation_Stage_02B()
  if _UPVALUE0_ == false then
    Game.PushSetup("Kraid_Stage_02B", true, true)
    _UPVALUE0_ = true
  else
    Game.PopSetup("Kraid_Stage_02B", true, true)
    _UPVALUE0_ = false
  end
end
function s020_magma.OpenKraidMorphBallLauncherExit()
  if Game.GetActor("mblauncher_exit_gen_002") ~= nil then
    Game.GetActor("mblauncher_exit_gen_002").ANIMATION:SetAction("open", true)
  end
end
function s020_magma.OnEnter_Kraid_Activation_Stage_02(_ARG_0_, _ARG_1_)
  Game.AddSF(0.1, "s020_magma.Delayed_Kraid_Activation_Stage_02", "")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(true, false, "OnEnter_Kraid_Activation_Stage_02")
  end
end
function s020_magma.Delayed_Kraid_Activation_Stage_02()
  GUI.ShowMessage("#KRAID_STAGE_2", true, "s020_magma.Kraid_Activation_Stage_02_MessageSkipped")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "OnEnter_Kraid_Activation_Stage_02")
  end
end
function s020_magma.Kraid_Activation_Stage_02_MessageSkipped()
  Game.GetPlayer().vPos = V3D(-16900, -6900, 0)
  Game.PushSetup("Kraid_Stage_02", true, true)
  if Game.GetActor("ev_kraid_platform") ~= nil then
    Game.GetActor("ev_kraid_platform").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
  if Game.GetActor("ev_kraid_structure") ~= nil then
    Game.GetActor("ev_kraid_structure").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
  if CurrentScenario.oKraid ~= nil then
    CurrentScenario.oKraid.AI:ChangeKraidAnimToStage2()
  end
end
function s020_magma.Kraid_Activation_Stage_02_With_Cut_Scene()
  Game.PushSetup("Kraid_Stage_02", true, true)
  if Game.GetActor("ev_kraid_platform") ~= nil then
    Game.GetActor("ev_kraid_platform").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
  if Game.GetActor("ev_kraid_structure") ~= nil then
    Game.GetActor("ev_kraid_structure").CHANGE_STAGE_NAVMESH_ITEM:RefreshNavMeshState()
  end
end
function s020_magma.OnEnter_Kraid_Activation_Stage_03(_ARG_0_, _ARG_1_)
  GUI.ShowMessage("#KRAID_STAGE_3", true, "s020_magma.Kraid_Activation_Stage_03_MessageSkipped")
end
function s020_magma.Kraid_Activation_Stage_03_MessageSkipped()
  s020_magma.Kraid_Activation_Stage_03_CutsceneStart()
  s020_magma.Kraid_Activation_Stage_03_CutsceneEnd()
end
function s020_magma.Kraid_Activation_Stage_03_CutsceneStart()
  if Game.GetActor("TG_KraidRoars_Ambient") ~= nil then
    Game.GetActor("TG_KraidRoars_Ambient").bEnabled = false
  end
  Game.DeleteEntity("SP_Kraid_kraid")
  Game.PushSetup("Kraid_Stage_03", true, true)
end
function s020_magma.Kraid_Activation_Stage_03_CutsceneEnd()
  Game.SaveGame("checkpoint", "KraidDead", "SP_Checkpoint_Dead_Kraid", true)
end
function s020_magma.IsKraidCombatBegin(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "collision_camera_024" and _ARG_1_ == "Default" and _ARG_2_ == "collision_camera_063" and _ARG_3_ == "Default" then
    return true
  else
    return false
  end
end
function s020_magma.OnShootActivationCompleted(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "shootactivatormag01_000" and _ARG_1_ then
    Game.PushSetup("LavaDrained_Right", true, true)
  elseif _ARG_0_ == "shootactivatormag01" and _ARG_1_ then
    Game.PushSetup("LavaDrained_Left", true, true)
  end
end
function s020_magma.OnEnter_KraidZone_CameraShake()
  Game.PlayCameraFXPreset("KRAID_ROAR_WEAK")
  Game.PlayPresetSound("events/kraidscream")
  Game.PlayVibration("levels/magma/kraid_outscream_01.bnvib", false)
end
function s020_magma.OnEnter_ActivatePostEmmyEnemies(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_PostEmmy_007") ~= nil then
    Game.GetActor("SG_PostEmmy_007").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_PostEmmy_008") ~= nil then
    Game.GetActor("SG_PostEmmy_008").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_PostEmmy_Caterzilla") ~= nil then
    Game.GetActor("SG_PostEmmy_Caterzilla").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_PostEmmy_Poisonfly") ~= nil then
    Game.GetActor("SG_PostEmmy_Poisonfly").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_PostEmmy_Vulkran") ~= nil then
    Game.GetActor("SG_PostEmmy_Vulkran").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s020_magma.OnEnter_EnableEnemiesPistonLeft(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_Sclawk_000") ~= nil then
    Game.GetActor("SG_Sclawk_000").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_Sclawk_001") ~= nil then
    Game.GetActor("SG_Sclawk_001").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_Poisonfly_003A") ~= nil then
    Game.GetActor("SG_Poisonfly_003A").SPAWNGROUP:DisableSpawnGroup()
  end
  if Game.GetActor("SG_Poisonfly_003B") ~= nil then
    Game.GetActor("SG_Poisonfly_003B").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("spawngroup_026") ~= nil then
    Game.GetActor("spawngroup_026").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s020_magma.OnEnter_EnableEnemiesPistonRight(_ARG_0_, _ARG_1_)
  if Game.GetActor("spawngroup_007") ~= nil then
    Game.GetActor("spawngroup_007").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_Poisonfly_044") ~= nil then
    Game.GetActor("SG_Poisonfly_044").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s020_magma.OnEnter_PistonLeftMusicChange(_ARG_0_, _ARG_1_)
  Game.PushSetup("heat_zone_protected", true, false)
end
function s020_magma.OnExit_PistonLeftMusicChange(_ARG_0_, _ARG_1_)
  Game.PopSetup("heat_zone_protected", true, false)
  if not Game.IsPlayingPreset("s_magma_001") then
    Game.StopStream("streams/music/s_magma_001.wav")
  end
end
function s020_magma.OnEnter_SubArea_043_MusicChange(_ARG_0_, _ARG_1_)
  Game.PushSetup("heat_zone_protected_043", true, false)
end
function s020_magma.OnExit_SubArea_043_MusicChange(_ARG_0_, _ARG_1_)
  Game.PopSetup("heat_zone_protected_043", true, false)
end
function s020_magma.OnEnter_PistonRight_MusicChange(_ARG_0_, _ARG_1_)
  Game.PushSetup("heat_zone_protected_piston_right", true, false)
end
function s020_magma.OnExit_PistonRight_MusicChange(_ARG_0_, _ARG_1_)
  Game.PopSetup("heat_zone_protected_piston_right", true, false)
end
function s020_magma.OnEnter_Diffusion_MusicChange(_ARG_0_, _ARG_1_)
  Game.PushSetup("difussion_statueroom", true, false)
end
function s020_magma.OnExit_Diffusion_MusicChange(_ARG_0_, _ARG_1_)
  Game.PopSetup("difussion_statueroom", true, false)
end
function s020_magma.OnEnter_InsideTunnel_011(_ARG_0_, _ARG_1_)
  Game.PushSetup("InsideTunnel_011", true, false)
end
function s020_magma.OnExit_InsideTunnel_011(_ARG_0_, _ARG_1_)
  Game.PopSetup("InsideTunnel_011", true, false)
end
function s020_magma.DeviceHeatCameraFar000OnSetupInitialState()
  AI.SetWorldGraphNodeEnabled("LE_WorldGraph", "WorldGraph_119", true)
end
function s020_magma.DeviceHeatCameraFar000OnSetupUseState()
  AI.SetWorldGraphNodeEnabled("LE_WorldGraph", "WorldGraph_119", false)
end
function s020_magma.OnEmmyGrabStart(_ARG_0_)
  if Game.GetActor("TG_TutoOC_Exit") ~= nil and Game.GetActor("TG_TutoOC_Exit").bEnabled then
    Game.GetActor("TG_TutoOC_Enter").bEnabled = false
  end
end
function s020_magma.OnEmmyGrabEnd(_ARG_0_)
  if Game.GetActor("TG_TutoOC_Exit") ~= nil and Game.GetActor("TG_TutoOC_Exit").bEnabled then
    Game.GetActor("TG_TutoOC_Enter").bEnabled = true
  end
end
function s020_magma.OnCutscene38End()
  s020_magma.RelocateEmmy_AfterPresentation()
  if Game.GetActor("emmyvalve_reg_gen_001") ~= nil then
    Game.GetActor("emmyvalve_reg_gen_001").EMMYVALVE:CleanForceStateFlag()
  end
end
function s020_magma.cutsceneplayer_61()
  Game.PushSetup("Kraid_Stage_02", true, true)
end
function s020_magma.cutsceneplayer_61_zipline_mb()
  if Game.GetActor("cutsceneplayer_61_zipline_mb") ~= nil and Game.GetActor("cutsceneplayer_61") ~= nil then
    Game.GetActor("cutsceneplayer_61_zipline_mb").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_61")))
  end
  Game.PushSetup("Kraid_Stage_02", true, true)
end
function s020_magma.cutsceneplayer_80_grab()
  if Game.GetActor("cutsceneplayer_80_grab") ~= nil and Game.GetActor("cutsceneplayer_81") ~= nil then
    Game.GetActor("cutsceneplayer_80_grab").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_81")))
  end
end
