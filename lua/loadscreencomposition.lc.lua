local L0_1, L1_1
L0_1 = LoadScreenComposition
if not L0_1 then
  L0_1 = {}
end
LoadScreenComposition = L0_1
L0_1 = LoadScreenComposition
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = LoadScreenComposition
  L2_2 = L2_2.CreateLoadScreenComposition
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.Create = L1_1
L0_1 = LoadScreenComposition
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
  L7_2.SizeX = "1.00000"
  L7_2.SizeY = "1.00000"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.ColorR = "0.00000"
  L7_2.ColorG = "0.00000"
  L7_2.ColorB = "0.00000"
  L7_2.ColorA = "1.00000"
  L7_2.Enabled = true
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "global/WhiteSquare"
  L7_2.BlendMode = "AlphaBlend"
  L7_2.USelMode = "Scale"
  L7_2.VSelMode = "Scale"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.AddChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = GUI
  L4_2 = L4_2.CreateDisplayObjectEx
  L5_2 = "CircleA"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.82500"
  L7_2.Y = "0.70833"
  L7_2.SizeX = "0.16000"
  L7_2.SizeY = "0.26666"
  L7_2.ScaleX = "0.00000"
  L7_2.ScaleY = "0.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.ColorR = "0.9000"
  L7_2.ColorG = "0.15000"
  L7_2.ColorB = "0.15000"
  L7_2.ColorA = "1.00000"
  L7_2.Enabled = true
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "TextureHudOpaque/circle_InnerAndOuter"
  L7_2.BlendMode = "Additive"
  L7_2.USelMode = "Scale"
  L7_2.VSelMode = "Scale"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.AddChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = GUI
  L4_2 = L4_2.CreateDisplayObjectEx
  L5_2 = "CircleB"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.48"
  L7_2.Y = "0.8"
  L7_2.SizeX = "0.16000"
  L7_2.SizeY = "0.26666"
  L7_2.ScaleX = "0.250000"
  L7_2.ScaleY = "0.250000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.ColorR = "0.9000"
  L7_2.ColorG = "0.90000"
  L7_2.ColorB = "1.00000"
  L7_2.ColorA = "1.00000"
  L7_2.Enabled = true
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "TextureHudOpaque/circle_central"
  L7_2.BlendMode = "Additive"
  L7_2.USelMode = "Scale"
  L7_2.VSelMode = "Scale"
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
L0_1.CreateLoadScreenComposition = L1_1
