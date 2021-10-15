local L0_1, L1_1
L0_1 = MiscMenuMedInfoSpaceComposition
if not L0_1 then
  L0_1 = {}
end
MiscMenuMedInfoSpaceComposition = L0_1
L0_1 = MiscMenuMedInfoSpaceComposition
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = MiscMenuMedInfoSpaceComposition
  L2_2 = L2_2.CreateMiscMenuMedInfoSpaceComposition
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.Create = L1_1
L0_1 = MiscMenuMedInfoSpaceComposition
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObjectEx
  L3_2 = A0_2
  L4_2 = "CDisplayObjectContainer"
  L5_2 = {}
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = nil
  L4_2 = GUI
  L4_2 = L4_2.CreateDisplayObjectEx
  L5_2 = "Label"
  L6_2 = "CLabel"
  L7_2 = {}
  L7_2.X = "0.01563"
  L7_2.Y = "0.03750"
  L7_2.SizeX = "0.59370"
  L7_2.SizeY = "0.08333"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.ColorR = "0.68000"
  L7_2.ColorG = "0.83000"
  L7_2.ColorB = "0.93000"
  L7_2.ColorA = "1.00000"
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Text = "INFO_GOES_HERE"
  L7_2.Font = "digital_medium"
  L7_2.TextAlignment = "Centered"
  L7_2.Autosize = false
  L7_2.Outline = false
  L7_2.EmbeddedSpritesSuffix = ""
  L7_2.BlinkColorR = "1.00000"
  L7_2.BlinkColorG = "1.00000"
  L7_2.BlinkColorB = "1.00000"
  L7_2.BlinkAlpha = "1.00000"
  L7_2.Blink = "-1.00000"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.AddChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = GUI
  L4_2 = L4_2.SetHierarchyProperties
  L5_2 = L2_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1.CreateMiscMenuMedInfoSpaceComposition = L1_1
