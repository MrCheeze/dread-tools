local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibraryWithName
L1_1 = "system/scripts/logiccallbacks.lua"
L2_1 = "logiccallbacks"
L0_1(L1_1, L2_1)
L0_1 = {}
L0_1.bAudioModified = false
L0_1.OnASyncLoadProfileFinishedCallback = nil
guicallbacks = L0_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.PlayCurrentEnvironmentMusic
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.GoToStateItemSpecialAbilities
  L0_2()
end
L0_1.GoToStateItemSpecialAbilities = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GoToStateItemStatus
  L0_2()
end
L0_1.GoToStateItemStatus = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = GUI
    L2_2 = L2_2.LaunchMessageAbilityAdquired
    L3_2 = A0_2
    L4_2 = "guicallbacks.GoToStateItemSpecialAbilities"
    L2_2(L3_2, L4_2)
  else
    L2_2 = GUI
    L2_2 = L2_2.LaunchMessagePowerUpAdquired
    L3_2 = A0_2
    L4_2 = "guicallbacks.GoToStateItemStatus"
    L2_2(L3_2, L4_2)
  end
end
L0_1.OnPickableItemPickedUp = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = GUI
  L0_2 = L0_2.LaunchMessageSequence
  L1_2 = 4
  L0_2(L1_2)
end
L0_1.OnScanningPulsePickedUp = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = hud
  if L2_2 then
    L2_2 = hud
    L2_2 = L2_2.OnPlayerAbilityActivatedChanged
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L0_1.OnAbilityActivatedChanged = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = hud
  if L1_2 then
    L1_2 = hud
    L1_2 = L1_2.OnPlayerFailedToSelectAbility
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L0_1.OnPlayerFailedToSelectAbility = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = hud
  if L2_2 then
    L2_2 = hud
    L2_2 = L2_2.OnPlayerFailedToActivateAbility
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.OnPlayerFailedToActivateAbility = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = minimap
  if L3_2 then
  end
end
L0_1.OnMinimapCellVisited = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = loadingscreen
  if L4_2 then
    L4_2 = loadingscreen
    L4_2 = L4_2.OnLoadScenarioRequest
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = minimap
  if L4_2 then
  end
end
L0_1.OnLoadScenarioRequest = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2
end
L0_1.OnTeleporterUse = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = hud
  if L0_2 then
    L0_2 = hud
    L0_2 = L0_2.OnContinuousDamageStart
    L0_2()
  end
end
L0_1.OnPlayerContinuousDamageStart = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = hud
  if L0_2 then
    L0_2 = hud
    L0_2 = L0_2.OnContinuousDamageEnd
    L0_2()
  end
end
L0_1.OnPlayerContinuousDamageEnd = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2
end
L0_1.OnFakeDeadFinished = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = hud
  if L2_2 then
    L2_2 = hud
    L2_2 = L2_2.OnNewPlayerCreated
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = WeaponSelector
  if L2_2 then
    L2_2 = WeaponSelector
    L2_2 = L2_2.OnNewPlayerCreated
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.OnNewPlayerCreated = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2
end
L0_1.OnProgressionDefItemAdded = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2)
end
L0_1.OnEnemyDefeated = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2
end
L0_1.OnSpecialControlEnabled = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = guicallbacks
  L2_2 = L2_2.OnASyncLoadProfileFinishedCallback
  if L2_2 then
    L2_2 = guicallbacks
    L2_2 = L2_2.OnASyncLoadProfileFinishedCallback
    L2_2 = L2_2.oCallback
    L3_2 = guicallbacks
    L3_2 = L3_2.OnASyncLoadProfileFinishedCallback
    L3_2 = L3_2.sItemName
    L4_2 = guicallbacks
    L4_2 = L4_2.OnASyncLoadProfileFinishedCallback
    L4_2 = L4_2.fActivate
    L2_2(L3_2, L4_2)
  end
end
L0_1.OnASyncLoadProfileFinished = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2)
end
L0_1.OnTeleporterUndisclosed = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
end
L0_1.OnTravelBookOpened = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
end
L0_1.OnTravelBookClosed = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
end
L0_1.OnMessageWindowOpened = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
end
L0_1.OnMessageWindowClosed = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2
end
L0_1.OnMinimapCustomMarkCreated = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2
end
L0_1.OnMinimapCustomMarkDestroyed = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = hud
  if L1_2 then
    L1_2 = hud
    L1_2 = L1_2.OnCurrentScenarioChanged
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L0_1.OnCurrentScenarioChanged = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
end
L0_1.OnCurrentMinimapStateUpdated = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = hud
  if L0_2 then
    L0_2 = hud
    L0_2 = L0_2.OnProgressionDefItemReviewed
    L0_2()
  end
end
L0_1.OnProgressionDefItemReviewed = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = hud
  if L0_2 then
    L0_2 = hud
    L0_2 = L0_2.OnSheetItemReviewed
    L0_2()
  end
end
L0_1.OnSheetItemReviewed = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = hud
  if L0_2 then
    L0_2 = hud
    L0_2 = L0_2.OnCreatureItemReviewed
    L0_2()
  end
end
L0_1.OnCreatureItemReviewed = L1_1
L0_1 = guicallbacks
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = menu_root
  if L2_2 ~= nil then
    L2_2 = menu_root
    L2_2 = L2_2.PopAllPopUps
    L2_2()
  end
  L2_2 = slots
  L2_2 = L2_2.SetAllDirty
  L2_2()
end
L0_1.OnASyncOpIOError = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2
end
L0_1.OnPadDisconnected = L1_1
L0_1 = guicallbacks
function L1_1(A0_2)
  local L1_2
end
L0_1.OnPadReconnected = L1_1
L0_1 = guicallbacks
function L1_1()
  local L0_2, L1_2
end
L0_1.OnPurchased = L1_1
