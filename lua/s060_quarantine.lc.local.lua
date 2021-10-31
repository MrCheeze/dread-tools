-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/s060_quarantine.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

s060_quarantine.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

s060_quarantine.SetupDebugGameBlackboard = function()
  -- function num : 0_1
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 54)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 54)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
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
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end

-- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

s060_quarantine.InitFromBlackboard = function()
  -- function num : 0_2
  (Game.ReinitPlayerFromBlackboard)()
  ;
  (s060_quarantine.CheckGatesOpened)()
end

-- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

s060_quarantine.CheckGatesOpened = function()
  -- function num : 0_3
  local l_4_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
  if l_4_0 == true then
    local l_4_1 = (Game.GetActor)("ev_gatesealed_opened")
    if l_4_1 ~= nil then
      l_4_1.bEnabled = true
    end
    local l_4_2 = (Game.GetActor)("ev_gatesealed_closed")
    if l_4_2 ~= nil then
      (l_4_2.NAVMESHITEM):SetStage("removed")
      l_4_2.bEnabled = false
    end
  else
    do
      local l_4_3 = (Game.GetActor)("ev_gatesealed_opened")
      if l_4_3 ~= nil then
        l_4_3.bEnabled = false
      end
      local l_4_4 = (Game.GetActor)("ev_gatesealed_closed")
      if l_4_4 ~= nil then
        l_4_4.bEnabled = true
        ;
        (l_4_4.NAVMESHITEM):SetStage("initial")
      end
    end
  end
end

local l_0_0 = s060_quarantine
local l_0_1 = {}
l_0_1.ShowDeath = true
l_0_1.GoToMainMenu = false
l_0_0.tGetOnDeathOverrides = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_4
  return s060_quarantine.tGetOnDeathOverrides
end

l_0_0.GetOnDeathOverrides = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function(l_6_0, l_6_1)
  -- function num : 0_5
  if l_6_1 ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end

l_0_0.OnEntityGenerated = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function(l_7_0, l_7_1)
  -- function num : 0_6
  (Game.SetXparasite)(true)
end

l_0_0.OnEnter_XParasite_Activated = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function(l_8_0, l_8_1)
  -- function num : 0_7
  local l_8_2 = (Game.GetActor)("ev_gatesealed_opened")
  if l_8_2 ~= nil then
    l_8_2.bEnabled = true
  end
  local l_8_3 = (Game.GetActor)("ev_gatesealed_closed")
  if l_8_3 ~= nil then
    (l_8_3.NAVMESHITEM):SetStage("removed")
    l_8_3.bEnabled = false
  end
  local l_8_4 = (Game.GetActor)("ev_gatesealed_second")
  if l_8_4 ~= nil then
    (l_8_4.EVENTPROP):LaunchEvent()
  end
  if l_8_0 ~= nil then
    l_8_0.bEnabled = false
  end
end

l_0_0.OnEnter_TG_QuarentineOpen = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function(l_9_0, l_9_1, l_9_2, l_9_3)
  -- function num : 0_8
  (Scenario.SubAreaChangeRequest)(l_9_0, l_9_1, l_9_2, l_9_3)
end

l_0_0.SubAreaChangeRequest = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function(l_10_0, l_10_1, l_10_2, l_10_3, l_10_4)
  -- function num : 0_9
  local l_10_5 = (Game.GetActor)("TG_PostChozoWarriorEnemies")
  local l_10_6 = (Game.GetActor)("SG_ChozoWarriorX")
  if l_10_0 == "collision_camera_007" and l_10_2 == "collision_camera_004" then
    (Game.SaveGameToSnapshot)("ChozoWarriorX_Quarantine")
    ;
    (s060_quarantine.LaunchCutscene_67)()
  end
  if l_10_0 == "collision_camera_012" and l_10_2 == "collision_camera_011" then
    (s060_quarantine.LaunchCutscene_113)()
  end
  do
    if l_10_0 == "collision_camera_003" and l_10_2 == "collision_camera_002" then
      local l_10_7 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
      if l_10_7 == true then
        (s060_quarantine.LaunchCutscene_4)()
      end
    end
    if l_10_0 == "collision_camera_003" and l_10_2 == "collision_camera_005" then
      (s060_quarantine.LaunchCutscene_13)()
    end
    if l_10_0 == "collision_camera_004" and l_10_6 ~= nil then
      print((l_10_6.SPAWNGROUP).iNumDeaths)
      if (l_10_6.SPAWNGROUP).iNumDeaths > 1 then
        (Game.PopSetup)("SP_ChozoWarriorX_Phase2_chozowarriorx_Boss_Defeated", true, true)
        ;
        (Game.PushSetup)("PostChozoWarriorX", true, true)
        if l_10_5 ~= nil then
          l_10_5.bEnabled = true
        end
      end
    end
  end
end

l_0_0.OnSubAreaChange = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_10
  local l_11_0 = (Game.GetActor)("cutsceneplayer_67")
  if l_11_0 ~= nil then
    (l_11_0.CUTSCENE):TryLaunchCutscene()
  end
end

l_0_0.LaunchCutscene_67 = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_11
  local l_12_0 = (Game.GetActor)("cutsceneplayer_4")
  if l_12_0 ~= nil then
    (l_12_0.CUTSCENE):TryLaunchCutscene()
  end
end

l_0_0.LaunchCutscene_4 = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_12
  local l_13_0 = (Game.GetActor)("cutsceneplayer_13")
  if l_13_0 ~= nil then
    (l_13_0.CUTSCENE):TryLaunchCutscene()
  end
end

l_0_0.LaunchCutscene_13 = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_13
  local l_14_0 = (Game.GetActor)("SP_ChozoZombieX_000")
  if l_14_0 ~= nil then
    (Game.SpawnEntity)("SP_ChozoZombieX_000")
    ;
    (l_14_0.SPAWNPOINT):Activate()
  end
end

l_0_0.OnBeforeCutscene13Started = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_14
  local l_15_0 = (Game.GetActor)("cutsceneplayer_113")
  if l_15_0 ~= nil then
    (l_15_0.CUTSCENE):TryLaunchCutscene()
  end
end

l_0_0.LaunchCutscene_113 = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_15
  local l_16_0 = (Game.GetActor)("ev_gatesealed_second")
  if l_16_0 ~= nil then
    (l_16_0.EVENTPROP):ForceOpen()
  else
    print("ev_gatesealed_second actor not found")
  end
end

l_0_0.OnCutscene113Ended = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_16
  (s060_quarantine.OnCutscene113Ended)()
end

l_0_0.OnBeforeQuarantineDoorsOpenCutsceneStarts = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function(l_18_0, l_18_1)
  -- function num : 0_17
  local l_18_2 = (Game.GetActor)("SG_PostChozoWarrior")
  if l_18_2 ~= nil then
    (l_18_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_18_0.bEnabled = false
end

l_0_0.OnEnter_PostCWEnemies = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function(l_19_0, l_19_1)
  -- function num : 0_18
  local l_19_2 = (Game.GetActor)("spawngroup_003")
  local l_19_3 = (Game.GetActor)("SG_ChozoZombieX_000")
  local l_19_4 = (Game.GetActor)("SG_GooShockerX_000")
  local l_19_5 = (Game.GetActor)("SG_X_Cell_000")
  local l_19_6 = (Game.GetActor)("TG_Disable_SG_X_Cell_000")
  if l_19_6 ~= nil then
    l_19_6.bEnabled = true
  end
  if l_19_2 ~= nil then
    (l_19_2.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_19_3 ~= nil then
    (l_19_3.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_19_4 ~= nil then
    (l_19_4.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_19_5 ~= nil then
    (l_19_5.SPAWNGROUP):EnableSpawnGroup()
  end
  l_19_0.bEnabled = false
end

l_0_0.OnEnter_EnablePostPlasmaEnemies = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function(l_20_0, l_20_1)
  -- function num : 0_19
  local l_20_2 = (Game.GetActor)("SG_X_Cell_000")
  if l_20_2 ~= nil then
    (l_20_2.SPAWNGROUP):DisableSpawnGroup()
  end
  l_20_0.bEnabled = false
end

l_0_0.Disable_SG_X_Cell = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_20
  (Game.AddSF)(2.5, "s060_quarantine.ActivationTutoParasite_delayed", "")
end

l_0_0.ActivationTutoParasite = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_21
  local l_22_0 = (Game.GetActor)("TutoParasiteEnter")
  local l_22_1 = (Game.GetActor)("TutoParasiteExit")
  if l_22_0 ~= nil and l_22_1 ~= nil then
    l_22_0.bEnabled = true
    l_22_1.bEnabled = true
  end
end

l_0_0.ActivationTutoParasite_delayed = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_22
  (Game.SetCollisionCameraLocked)("collision_camera_003_B", true)
  print("OnEnter_ChangeCamera_003_B")
end

l_0_0.OnEnter_ChangeCamera_003_B = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_23
  (Game.SetCollisionCameraLocked)("collision_camera_003_B", false)
  print("OnExit_ChangeCamera_003_B")
end

l_0_0.OnExit_ChangeCamera_003_B = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_24
  local l_25_0 = (Game.GetActor)("TG_CameraChange_003_B")
  if l_25_0 ~= nil then
    l_25_0.bEnabled = false
  end
end

l_0_0.Disable_Camera_003_B = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_25
  (Game.SetCollisionCameraLocked)("collision_camera_MBL", true)
end

l_0_0.OnEnter_ChangeCamera_MBL = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_26
  (Game.SetCollisionCameraLocked)("collision_camera_MBL", false)
end

l_0_0.OnExit_ChangeCamera_MBL = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_27
  (Game.PushSetup)("Camera_MBL", true, true)
end

l_0_0.OnEnter_ChangeSetup_MBL = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_28
  (Game.PopSetup)("Camera_MBL", true, true)
end

l_0_0.OnExit_ChangeSetup_MBL = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_29
  (Game.SetCollisionCameraLocked)("collision_camera_004_B", true)
end

l_0_0.OnEnter_ChangeCamera_004_B = l_0_1
l_0_0 = s060_quarantine
l_0_1 = function()
  -- function num : 0_30
  (Game.SetCollisionCameraLocked)("collision_camera_004_B", false)
end

l_0_0.OnExit_ChangeCamera_004_B = l_0_1

