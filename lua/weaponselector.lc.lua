local L0_1, L1_1
L0_1 = WeaponSelector
function L1_1()
  local L0_2, L1_2
  L0_2 = hud
  if L0_2 ~= nil then
    L0_2 = hud
    L0_2 = L0_2.oHUDRoot
    L1_2 = L0_2
    L0_2 = L0_2.UpdateWeaponsSelector
    L0_2(L1_2)
  end
end
L0_1.OnPlayerReinit = L1_1
L0_1 = WeaponSelector
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = hud
  if L2_2 ~= nil then
    L2_2 = hud
    L2_2 = L2_2.oHUDRoot
    L3_2 = L2_2
    L2_2 = L2_2.UpdateWeaponsSelector
    L2_2(L3_2)
  end
end
L0_1.OnNewPlayerCreated = L1_1
