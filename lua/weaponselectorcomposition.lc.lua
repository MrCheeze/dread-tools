local L0_1, L1_1
L0_1 = WeaponSelectorComposition
if not L0_1 then
  L0_1 = {}
end
WeaponSelectorComposition = L0_1
L0_1 = WeaponSelectorComposition
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = WeaponSelectorComposition
  L2_2 = L2_2.CreateWeaponSelectorComposition
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.Create = L1_1
L0_1 = WeaponSelectorComposition
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObjectEx
  L3_2 = A0_2
  L4_2 = "CDisplayObjectContainer"
  L5_2 = {}
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = nil
  L4_2 = WeaponSelectorComposition
  L4_2 = L4_2.CreateSamusWeaponsComposition
  L5_2 = "SamusWeapons"
  L6_2 = {}
  L6_2.X = "0.00313"
  L6_2.Y = "0.04583"
  L6_2.SizeX = "0.21250"
  L6_2.SizeY = "0.59583"
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
  L4_2 = WeaponSelectorComposition
  L4_2 = L4_2.CreateMorphWeaponsComposition
  L5_2 = "MorphWeapons"
  L6_2 = {}
  L6_2.X = "0.00313"
  L6_2.Y = "0.67083"
  L6_2.SizeX = "0.21250"
  L6_2.SizeY = "0.28333"
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
  L4_2 = L4_2.SetHierarchyProperties
  L5_2 = L2_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1.CreateWeaponSelectorComposition = L1_1
L0_1 = WeaponSelectorComposition
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
  L5_2 = "Weapon4Base"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.00000"
  L7_2.Y = "0.00000"
  L7_2.SizeX = "0.21250"
  L7_2.SizeY = "0.59583"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "ButtonHexagonBoost_Selected"
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
  L5_2 = "Weapon4Icon"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.02813"
  L7_2.Y = "0.19167"
  L7_2.SizeX = "0.15625"
  L7_2.SizeY = "0.20833"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Icon_WeaponBoostBeam"
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
  L5_2 = "Weapon1Base"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.00000"
  L7_2.Y = "0.00000"
  L7_2.SizeX = "0.21250"
  L7_2.SizeY = "0.28333"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "ButtonHexagonBig_Selected"
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
  L5_2 = "Weapon2Base"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.00000"
  L7_2.Y = "0.31250"
  L7_2.SizeX = "0.21250"
  L7_2.SizeY = "0.28333"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "ButtonHexagonBig_Selected"
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
  L5_2 = "Weapon1Icon"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.02813"
  L7_2.Y = "0.03750"
  L7_2.SizeX = "0.15625"
  L7_2.SizeY = "0.20833"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Icon_PowerBeam"
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
  L5_2 = "Weapon2Icon"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.02813"
  L7_2.Y = "0.35000"
  L7_2.SizeX = "0.15625"
  L7_2.SizeY = "0.20833"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Icon_PowerBeam"
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
L0_1.CreateSamusWeaponsComposition = L1_1
L0_1 = WeaponSelectorComposition
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
  L5_2 = "Weapon3Base"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.00000"
  L7_2.Y = "0.00000"
  L7_2.SizeX = "0.21250"
  L7_2.SizeY = "0.28333"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "ButtonHexagonBig_Selected"
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
  L5_2 = "Weapon3Icon"
  L6_2 = "CSprite"
  L7_2 = {}
  L7_2.X = "0.02813"
  L7_2.Y = "0.03750"
  L7_2.SizeX = "0.15625"
  L7_2.SizeY = "0.20833"
  L7_2.ScaleX = "1.00000"
  L7_2.ScaleY = "1.00000"
  L7_2.Angle = "0.00000"
  L7_2.FlipX = false
  L7_2.FlipY = false
  L7_2.Enabled = true
  L7_2.SkinItemType = ""
  L7_2.Autosize = false
  L7_2.SpriteSheetItem = "Icon_PowerBeam"
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
L0_1.CreateMorphWeaponsComposition = L1_1
