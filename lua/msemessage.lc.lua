local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/gui_global_constants.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = {}
L0_1.oRoot = nil
L0_1.oRootFPS = nil
L0_1.oMessageFPS = nil
L0_1.oMessageVersion = nil
L0_1.oMessageFreeCam = nil
msemessage = L0_1
L0_1 = msemessage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = msemessage
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObjectEx
  L3_2 = A0_2
  L4_2 = "CDisplayObjectContainer"
  L5_2 = {}
  L5_2.StageID = "Up"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.oRoot = L2_2
  L1_2 = msemessage
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObject
  L3_2 = msemessage
  L3_2 = L3_2.oRoot
  L4_2 = "FPS"
  L5_2 = "CDisplayObjectContainer"
  L6_2 = {}
  L6_2.StageID = "Up"
  L6_2.ColorA = "0.0"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2.oRootFPS = L2_2
  L1_2 = msemessage
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObject
  L3_2 = msemessage
  L3_2 = L3_2.oRootFPS
  L4_2 = "FPSLabel"
  L5_2 = "CLabel"
  L6_2 = {}
  L6_2.MinCharWidth = "14"
  L6_2.RightX = "0.05"
  L6_2.TopY = "0.9"
  L6_2.Font = "digital_big"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2.oMessageFPS = L2_2
  L1_2 = GUI
  L1_2 = L1_2.SetProperties
  L2_2 = msemessage
  L2_2 = L2_2.oMessageFPS
  L3_2 = gui_global_colors
  L3_2 = L3_2.tFPS
  L1_2(L2_2, L3_2)
  L1_2 = GUI
  L1_2 = L1_2.SetLabelText
  L2_2 = msemessage
  L2_2 = L2_2.oMessageFPS
  L3_2 = "FPS"
  L1_2(L2_2, L3_2)
  L1_2 = msemessage
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObject
  L3_2 = msemessage
  L3_2 = L3_2.oRoot
  L4_2 = "Version"
  L5_2 = "CLabel"
  L6_2 = {}
  L6_2.StageID = "Down"
  L6_2.LeftX = "0.01"
  L6_2.BottomY = "0.01"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2.oMessageVersion = L2_2
  L1_2 = GUI
  L1_2 = L1_2.SetProperties
  L2_2 = msemessage
  L2_2 = L2_2.oMessageVersion
  L3_2 = {}
  L3_2.ColorA = "0.4"
  L3_2.Outline = true
  L3_2.Enabled = false
  L1_2(L2_2, L3_2)
  L1_2 = msemessage
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObject
  L3_2 = msemessage
  L3_2 = L3_2.oRoot
  L4_2 = "FreeCam"
  L5_2 = "CLabel"
  L6_2 = {}
  L6_2.LeftX = "0.05"
  L6_2.BottomY = "0.11"
  L6_2.Font = "digital_medium"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2.oMessageFreeCam = L2_2
  L1_2 = msemessage
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObject
  L3_2 = msemessage
  L3_2 = L3_2.oRoot
  L4_2 = "MemoryStats"
  L5_2 = "CText"
  L6_2 = {}
  L6_2.StageID = "Down"
  L6_2.LeftX = "0.1"
  L6_2.BottomY = "0.01"
  L6_2.TextAlignment = "Left"
  L6_2.Font = "digital_small"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2.oMemoryStats = L2_2
  L1_2 = msemessage
  L1_2 = L1_2.oRoot
  return L1_2
end
L0_1.Create = L1_1
L0_1 = msemessage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = msemessage
    L1_2 = L1_2.oMessageFreeCam
    if L1_2 ~= nil then
      L1_2 = GUI
      L1_2 = L1_2.SetLabelText
      L2_2 = msemessage
      L2_2 = L2_2.oMessageFreeCam
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.SetTextFreeCam = L1_1
L0_1 = msemessage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = msemessage
    L1_2 = L1_2.oMessageVersion
    if L1_2 ~= nil then
      L1_2 = GUI
      L1_2 = L1_2.SetLabelText
      L2_2 = msemessage
      L2_2 = L2_2.oMessageVersion
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
      L1_2 = GUI
      L1_2 = L1_2.SetProperties
      L2_2 = msemessage
      L2_2 = L2_2.oMessageVersion
      L3_2 = {}
      L3_2.ColorR = "1.0"
      L3_2.ColorG = "1.0"
      L3_2.ColorB = "1.0"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.SetTextVersion = L1_1
L0_1 = msemessage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GUI
  L1_2 = L1_2.SetProperties
  L2_2 = msemessage
  L2_2 = L2_2.oMessageVersion
  L3_2 = {}
  L3_2.Enabled = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.SetTextVersionEnabled = L1_1
L0_1 = msemessage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GUI
  L1_2 = L1_2.SetProperties
  L2_2 = msemessage
  L2_2 = L2_2.oMemoryStats
  L3_2 = {}
  L3_2.Enabled = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.SetMemoryStatsEnabled = L1_1
L0_1 = msemessage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = msemessage
    L1_2 = L1_2.oMemoryStats
    if L1_2 ~= nil then
      L1_2 = GUI
      L1_2 = L1_2.SetLabelText
      L2_2 = msemessage
      L2_2 = L2_2.oMemoryStats
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
      L1_2 = GUI
      L1_2 = L1_2.SetProperties
      L2_2 = msemessage
      L2_2 = L2_2.oMemoryStats
      L3_2 = {}
      L3_2.ColorR = "1.0"
      L3_2.ColorG = "1.0"
      L3_2.ColorB = "1.0"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.SetMemoryStatsText = L1_1
L0_1 = msemessage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = msemessage
    L1_2 = L1_2.oMessageFPS
    if L1_2 ~= nil then
      L1_2 = GUI
      L1_2 = L1_2.SetLabelText
      L2_2 = msemessage
      L2_2 = L2_2.oMessageFPS
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.SetTextFPS = L1_1
L0_1 = msemessage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = msemessage
  L1_2 = L1_2.SetTextFPS
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = msemessage
  L1_2 = L1_2.oRootFPS
  if L1_2 ~= nil then
    L1_2 = GUI
    L1_2 = L1_2.SetProperties
    L2_2 = msemessage
    L2_2 = L2_2.oRootFPS
    L3_2 = {}
    L3_2.Enabled = true
    L3_2.FadeColorR = "-1.0"
    L3_2.FadeColorG = "-1.0"
    L3_2.FadeColorB = "-1.0"
    L3_2.FadeColorA = "0.6"
    L3_2.FadeTime = "0.5"
    L1_2(L2_2, L3_2)
  end
end
L0_1.ShowFPS = L1_1
L0_1 = msemessage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    A0_2 = 0.3
  end
  L1_2 = msemessage
  L1_2 = L1_2.oRootFPS
  if L1_2 ~= nil then
    if A0_2 == 0 then
      L1_2 = GUI
      L1_2 = L1_2.SetProperties
      L2_2 = msemessage
      L2_2 = L2_2.oRootFPS
      L3_2 = {}
      L3_2.Enabled = true
      L3_2.ColorA = "0.0"
      L3_2.FadeTime = "0.0"
      L1_2(L2_2, L3_2)
    else
      L1_2 = GUI
      L1_2 = L1_2.SetProperties
      L2_2 = msemessage
      L2_2 = L2_2.oRootFPS
      L3_2 = {}
      L3_2.Enabled = true
      L3_2.FadeColorR = "-1.0"
      L3_2.FadeColorG = "-1.0"
      L3_2.FadeColorB = "-1.0"
      L3_2.FadeColorA = "0.0"
      L3_2.FadeTime = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.HideFPS = L1_1
