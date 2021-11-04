local L0_1, L1_1
L0_1 = CoreX_SuperGoliath
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = CoreX_SuperGoliath
function L1_1(A0_2)
  local L1_2
end
L0_1.LaunchDamageSound = L1_1
L0_1 = CoreX_SuperGoliath
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GUI
  L1_2 = L1_2.ShowMessage
  L2_2 = "#GUI_ITEM_ACQUIRED_LINE_BOMB"
  L3_2 = true
  L4_2 = ""
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "doorpowerclosed_003"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.LIFE
    L3_2 = L2_2
    L2_2 = L2_2.UnLockDoor
    L2_2(L3_2)
  end
  L2_2 = Game
  L2_2 = L2_2.SaveGame
  L3_2 = "checkpoint"
  L4_2 = "SuperGoliath_Dead"
  L5_2 = "SP_Checkpoint_LineBomb"
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.OnBigXAbsorbed = L1_1
