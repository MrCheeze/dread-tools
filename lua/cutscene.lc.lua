local L0_1, L1_1
L0_1 = cutscene
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GUI
  L1_2 = L1_2.CreateDisplayObjectEx
  L2_2 = "Cutscene"
  L3_2 = "CDisplayObjectContainer"
  L4_2 = {}
  L4_2.StageID = "Up"
  L4_2.Enabled = true
  L4_2.Depth = "0.05"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObject
  L3_2 = L1_2
  L4_2 = "CutsceneStageLabel"
  L5_2 = "CLabel"
  L6_2 = {}
  L6_2.BottomY = "0.15"
  L6_2.LeftX = "0.02"
  L6_2.Outline = true
  L6_2.Enabled = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObject
  L3_2 = L1_2
  L4_2 = "CutsceneForceSkip"
  L5_2 = "CLabel"
  L6_2 = {}
  L6_2.BottomY = "0.15"
  L6_2.LeftX = "0.7"
  L6_2.Outline = true
  L6_2.Enabled = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  return L1_2
end
L0_1.Create = L1_1
L0_1 = cutscene
function L1_1(A0_2)
  local L1_2
end
L0_1.OnAnimatedCameraStarted = L1_1
L0_1 = cutscene
function L1_1(A0_2)
  local L1_2
end
L0_1.OnAnimatedCameraFinished = L1_1
