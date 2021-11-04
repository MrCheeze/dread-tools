local L0_1, L1_1
L0_1 = WarningComposition
if not L0_1 then
  L0_1 = {}
end
WarningComposition = L0_1
L0_1 = WarningComposition
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = WarningComposition
  L2_2 = L2_2.CreateWarningComposition
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.Create = L1_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/sprites_texturesplashlegal.lua"
L0_1(L1_1)
L0_1 = WarningComposition
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
  L5_2 = "Background"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.00000"
  L7_2.Y = "0.00000"
  L7_2.SizeX = "1.60000"
  L7_2.SizeY = "1.42222"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.Enabled = true
  L7_2.Autosize = true
  L7_2.BlendMode = "AlphaBlend"
  L7_2.USelMode = "Scale"
  L7_2.VSelMode = "Scale"
  L7_2.Image = "gui/textures/texturesplashlegal.bctex"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.AddChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = GUI
  L4_2 = L4_2.CreateDisplayObjectEx
  L5_2 = "PressALabel"
  L6_2 = "CLabel"
  L7_2 = {}
  L7_2.X = "0.35"
  L7_2.Y = "0.72"
  L7_2.SizeX = "0.4"
  L7_2.SizeY = "0.1"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.Enabled = true
  L7_2.Text = "Press A to continue"
  L7_2.Font = "digital_medium"
  L7_2.TextAlignment = "Centered"
  L7_2.Autosize = true
  L7_2.Outline = false
  L7_2.BlinkColorR = "1.00000"
  L7_2.BlinkColorG = "1.00000"
  L7_2.BlinkColorB = "1.00000"
  L7_2.Blink = "0.80000"
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
L0_1.CreateWarningComposition = L1_1
