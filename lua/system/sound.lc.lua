local L0_1, L1_1
L0_1 = Sound
L0_1.fLastBlockSoundTimeStamp = 0
L0_1 = Sound
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = Sound
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = print
  L2_2 = "Playing Sync block sound at "
  L3_2 = A0_2.x
  L4_2 = ","
  L5_2 = A0_2.y
  L6_2 = ","
  L7_2 = A0_2.z
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L1_2(L2_2)
  L1_2 = Game
  L1_2 = L1_2.PlayPosSound
  L2_2 = " "
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L6_2 = 1.5
  L7_2 = 40000
  L8_2 = 50000
  L9_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.SyncBlockSound = L1_1
L0_1 = Sound
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = Game
  L2_2 = L2_2.GetTimeStamp
  L2_2 = L2_2()
  L3_2 = Sound
  L3_2 = L3_2.fLastBlockSoundTimeStamp
  L3_2 = L2_2 - L3_2
  if 0.15 < L3_2 then
    L3_2 = Sound
    L3_2.fLastBlockSoundTimeStamp = L2_2
    L3_2 = Game
    L3_2 = L3_2.PlayPosSound
    L4_2 = " "
    L5_2 = A0_2.x
    L6_2 = A0_2.y
    L7_2 = A0_2.z
    L8_2 = 1
    L9_2 = 2000
    L10_2 = 50000
    L11_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1.BlockSound = L1_1
L0_1 = Sound
function L1_1()
  local L0_2, L1_2
end
L0_1.OnMagicChanged = L1_1
L0_1 = Sound
function L1_1()
  local L0_2, L1_2
end
L0_1.OnMagicChangeFailure = L1_1
