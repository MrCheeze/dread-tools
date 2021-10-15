local L0_1, L1_1, L2_1
L0_1 = {}
L0_1.oHUDRoot = nil
L0_1.iContinuousDamageCount = 0
hud = L0_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/scenariomenu_game.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = hud_settings
if not L0_1 then
  L0_1 = {}
end
hud_settings = L0_1
L0_1 = hud
L0_1.sDefaultTutorialFont = "digital_hefty"
L0_1 = hud
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = hud
  L1_2.bIngameMinimapEnabledOverride = nil
  L1_2 = hud
  L1_2.bBossHUDEnabled = false
  L1_2 = hud
  L2_2 = GUI
  L2_2 = L2_2.GetDisplayObject
  L3_2 = "IngameMenuRoot.BasicHUDComposition"
  L2_2 = L2_2(L3_2)
  L1_2.oHUDRoot = L2_2
  L1_2 = hud
  L1_2 = L1_2.oHUDRoot
  return L1_2
end
L0_1.Create = L1_1
