local L0_1, L1_1
L0_1 = PowerUpGravitySuit
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = PowerUpGravitySuit
L0_1.Self = nil
L0_1 = PowerUpGravitySuit
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Game
  L1_2 = L1_2.PlayEntitySoundContinueOnDead
  L2_2 = "generic/obtencion.wav"
  L3_2 = A0_2.sName
  L4_2 = 1
  L5_2 = 500
  L6_2 = 4000
  L7_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "cutsceneplayer_31"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2.MODELUPDATER
    L2_2.bWantsEnabled = false
    L2_2 = L1_2.CUTSCENE
    L3_2 = L2_2
    L2_2 = L2_2.TryLaunchCutscene
    L2_2(L3_2)
  end
  L2_2 = PowerUpGravitySuit
  L2_2.Self = A0_2
end
L0_1.OnPickedUp = L1_1
L0_1 = PowerUpGravitySuit
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PowerUpGravitySuit
  L0_2 = L0_2.Self
  if L0_2 ~= nil then
    L0_2 = PowerUpGravitySuit
    L0_2 = L0_2.Self
    L0_2 = L0_2.PICKABLE
    L1_2 = L0_2
    L0_2 = L0_2.OnItemEnd
    L0_2(L1_2)
    L0_2 = Game
    L0_2 = L0_2.SaveGame
    L1_2 = "checkpoint"
    L2_2 = ""
    L3_2 = "SP_CUT_GravitySuit"
    L4_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
end
L0_1.ShowMessage = L1_1
L0_1 = PowerUpGravitySuit
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.INVENTORY
  L1_2 = L0_2
  L0_2 = L0_2.SetItemAmount
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = 1
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.MODELUPDATER
  L0_2.sModelAlias = "Gravity"
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.MODELUPDATER
  L1_2 = L0_2
  L0_2 = L0_2.ForceUpdate
  L0_2(L1_2)
end
L0_1.ChangeSuit = L1_1
L0_1 = PowerUpGravitySuit
function L1_1(A0_2)
  local L1_2
end
L0_1.OnItemEnd = L1_1
