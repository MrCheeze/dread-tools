local L0_1, L1_1
L0_1 = IngameMenuLowerSpaceComposition
if not L0_1 then
  L0_1 = {}
end
IngameMenuLowerSpaceComposition = L0_1
L0_1 = IngameMenuLowerSpaceComposition
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IngameMenuLowerSpaceComposition
  L2_2 = L2_2.CreateIngameMenuLowerSpaceComposition
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.Create = L1_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/sprites_texturehud.lua"
L0_1(L1_1)
L0_1 = IngameMenuLowerSpaceComposition
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
  L5_2 = "StandardOrnamentLowerBL"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.00000"
  L7_2.Y = "0.00417"
  L7_2.SizeX = "0.50000"
  L7_2.SizeY = "0.12083"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "ButtonStandardOrnament"
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
  L5_2 = "BackgroundOrnamentDown"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.50000"
  L7_2.Y = "0.00417"
  L7_2.SizeX = "0.51875"
  L7_2.SizeY = "0.12499"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "ButtonDownOrnament_03"
  L7_2.BlendMode = "AlphaBlend"
  L7_2.USelMode = "Scale"
  L7_2.VSelMode = "Scale"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.AddChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = IngameMenuLowerSpaceComposition
  L4_2 = L4_2.CreateLowerInfoComposition
  L5_2 = "LowerInfoComposition"
  L6_2 = {}
  L6_2.X = "0.18750"
  L6_2.Y = "0.00417"
  L6_2.SizeX = "0.63438"
  L6_2.SizeY = "0.12500"
  L6_2.ScaleX = "1.00000"
  L6_2.ScaleY = "1.00000"
  L6_2.Angle = "0.00000"
  L6_2.FlipX = false
  L6_2.FlipY = false
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.AddChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = GUI
  L4_2 = L4_2.CreateDisplayObjectEx
  L5_2 = "ButtonSelectMiscBase"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.00000"
  L7_2.Y = "0.01250"
  L7_2.SizeX = "0.18751"
  L7_2.SizeY = "0.09582"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "ButtonFooterCorner"
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
  L5_2 = "ButtonSelectMiscIconA"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.03125"
  L7_2.Y = "0.02500"
  L7_2.SizeX = "0.07812"
  L7_2.SizeY = "0.07916"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Icon_MapMenu"
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
L0_1.CreateIngameMenuLowerSpaceComposition = L1_1
L0_1 = IngameMenuLowerSpaceComposition
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
  L5_2 = "DNACounter"
  L6_2 = "CText"
  L7_2 = {}
  L7_2.X = "0.07500"
  L7_2.Y = "0.02500"
  L7_2.SizeX = "0.04407"
  L7_2.SizeY = "0.05833"
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
  L7_2.Text = ""
  L7_2.Font = "digital_hefty"
  L7_2.TextAlignment = "Left"
  L7_2.Autosize = true
  L7_2.Outline = true
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
  L4_2 = L4_2.CreateDisplayObjectEx
  L5_2 = "MetroidCounter"
  L6_2 = "CText"
  L7_2 = {}
  L7_2.X = "0.50000"
  L7_2.Y = "0.02500"
  L7_2.SizeX = "0.04407"
  L7_2.SizeY = "0.05833"
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
  L7_2.Text = ""
  L7_2.Font = "digital_hefty"
  L7_2.TextAlignment = "Left"
  L7_2.Autosize = true
  L7_2.Outline = true
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
  L4_2 = L4_2.CreateDisplayObjectEx
  L5_2 = "DNAMechCounter"
  L6_2 = "CText"
  L7_2 = {}
  L7_2.X = "0.24688"
  L7_2.Y = "0.02500"
  L7_2.SizeX = "0.12499"
  L7_2.SizeY = "0.05833"
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
  L7_2.Text = "10 / 10"
  L7_2.Font = "digital_hefty"
  L7_2.TextAlignment = "Left"
  L7_2.Autosize = true
  L7_2.Outline = true
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
  L4_2 = L4_2.CreateDisplayObjectEx
  L5_2 = "IconDNA"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.01875"
  L7_2.Y = "0.03333"
  L7_2.SizeX = "0.04687"
  L7_2.SizeY = "0.07500"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Icon_MetroidDNACount"
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
  L5_2 = "MetroidRadar"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.42812"
  L7_2.Y = "0.02917"
  L7_2.SizeX = "0.06250"
  L7_2.SizeY = "0.09166"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Icon_Metroid_Base"
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
  L5_2 = "MetroidRadarColor"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.42812"
  L7_2.Y = "0.02917"
  L7_2.SizeX = "0.06250"
  L7_2.SizeY = "0.09166"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Icon_Metroid_Color"
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
  L5_2 = "MetroidRadarWhite"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.42812"
  L7_2.Y = "0.02917"
  L7_2.SizeX = "0.06250"
  L7_2.SizeY = "0.09166"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Icon_Metroid_Highlight"
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
  L5_2 = "DNAMechIcon"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.17188"
  L7_2.Y = "0.02500"
  L7_2.SizeX = "0.06562"
  L7_2.SizeY = "0.09166"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "IconL_MetroidDNAData"
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
  L5_2 = "DNAFlare"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "-0.02813"
  L7_2.Y = "0.00833"
  L7_2.SizeX = "0.18751"
  L7_2.SizeY = "0.12498"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Flare_01"
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
  L5_2 = "MechFlare"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.11250"
  L7_2.Y = "0.00833"
  L7_2.SizeX = "0.31251"
  L7_2.SizeY = "0.12498"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Flare_01"
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
  L5_2 = "MetroidFlare"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.39063"
  L7_2.Y = "0.00833"
  L7_2.SizeX = "0.21564"
  L7_2.SizeY = "0.12498"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Flare_01"
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
L0_1.CreateLowerInfoComposition = L1_1
