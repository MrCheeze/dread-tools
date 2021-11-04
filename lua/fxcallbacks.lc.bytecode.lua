local L0_1, L1_1
L0_1 = {}
L1_1 = {}
L0_1.lfxenabled = L1_1
fxcallbacks = L0_1
L0_1 = fxcallbacks
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = {}
  L4_2 = Game
  L4_2 = L4_2.GetDefaultPlayer
  L4_2 = L4_2()
  L5_2 = Game
  L5_2 = L5_2.GetSecondaryPlayer
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2()
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L3_2[11] = L14_2
  L3_2[12] = L15_2
  L3_2[13] = L16_2
  L3_2[14] = L17_2
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 ~= nil then
      L9_2 = L8_2.FX
      if L9_2 ~= nil then
        L11_2 = L9_2
        L10_2 = L9_2.SetEffectEnabled
        L12_2 = A0_2
        L13_2 = A1_2
        L14_2 = A2_2
        L10_2(L11_2, L12_2, L13_2, L14_2)
        if A1_2 then
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = fxcallbacks
          L11_2 = L11_2.lfxenabled
          L12_2 = A0_2
          L10_2(L11_2, L12_2)
        else
          L10_2 = ipairs
          L11_2 = fxcallbacks
          L11_2 = L11_2.lfxenabled
          L10_2, L11_2, L12_2 = L10_2(L11_2)
          for L13_2, L14_2 in L10_2, L11_2, L12_2 do
            if L14_2 == A0_2 then
              L15_2 = table
              L15_2 = L15_2.remove
              L16_2 = fxcallbacks
              L16_2 = L16_2.lfxenabled
              L17_2 = L13_2
              L15_2(L16_2, L17_2)
            end
          end
        end
      end
    end
  end
end
L0_1.SetFxEnabledOnPlayer = L1_1
L0_1 = fxcallbacks
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = {}
  L1_2 = Game
  L1_2 = L1_2.GetDefaultPlayer
  L1_2 = L1_2()
  L2_2 = Game
  L2_2 = L2_2.GetSecondaryPlayer
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2()
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L0_2[10] = L10_2
  L0_2[11] = L11_2
  L0_2[12] = L12_2
  L0_2[13] = L13_2
  L0_2[14] = L14_2
  L0_2[15] = L15_2
  L0_2[16] = L16_2
  L1_2 = ipairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.FX
      if L6_2 ~= nil then
        L7_2 = ipairs
        L8_2 = fxcallbacks
        L8_2 = L8_2.lfxenabled
        L7_2, L8_2, L9_2 = L7_2(L8_2)
        for L10_2, L11_2 in L7_2, L8_2, L9_2 do
          L13_2 = L6_2
          L12_2 = L6_2.SetEffectEnabled
          L14_2 = L11_2
          L15_2 = true
          L16_2 = true
          L12_2(L13_2, L14_2, L15_2, L16_2)
        end
      end
    end
  end
end
L0_1.OnPlayerChange = L1_1
L0_1 = fxcallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = fxcallbacks
  L1_2 = {}
  L0_2.lfxenabled = L1_2
end
L0_1.OnPlayerDead = L1_1
