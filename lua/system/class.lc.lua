local L0_1, L1_1
L0_1 = class
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  if not A1_2 then
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 == "function" then
      A1_2 = A0_2
      A0_2 = nil
  end
  else
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 == "table" then
      L3_2 = pairs
      L4_2 = A0_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L2_2[L6_2] = L7_2
      end
      L2_2._base = A0_2
    end
  end
  L2_2.__index = L2_2
  L3_2 = {}
  function L4_2(A0_3, ...)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = {}
    L3_3 = setmetatable
    L4_3 = L2_3
    L5_3 = L2_2
    L3_3(L4_3, L5_3)
    L3_3 = A1_2
    if L3_3 then
      L3_3 = A1_2
      L4_3 = L2_3
      L5_3 = ...
      L3_3(L4_3, L5_3)
    else
      L3_3 = A0_2
      if L3_3 then
        L3_3 = A0_2
        L3_3 = L3_3.init
        if L3_3 then
          L3_3 = A0_2
          L3_3 = L3_3.init
          L4_3 = L2_3
          L5_3 = ...
          L3_3(L4_3, L5_3)
        end
      end
    end
    return L2_3
  end
  L3_2.__call = L4_2
  L2_2.init = A1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = getmetatable
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    while L2_3 do
      if L2_3 == A1_3 then
        L3_3 = true
        return L3_3
      end
      L2_3 = L2_3._base
    end
    L3_3 = false
    return L3_3
  end
  L2_2.is_a = L4_2
  L4_2 = setmetatable
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1.New = L1_1
L0_1 = class
function L1_1(A0_2, A1_2)
  local L2_2
  function L2_2(...)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A1_2
    L2_3 = A0_2
    L3_3 = unpack
    L4_3 = arg
    L3_3, L4_3 = L3_3(L4_3)
    return L1_3(L2_3, L3_3, L4_3)
  end
  return L2_2
end
L0_1.BindMethod = L1_1
L0_1 = class
function L1_1(A0_2, A1_2)
  local L2_2
  function L2_2(...)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    L2_3 = A0_2
    L3_3 = unpack
    L4_3 = arg
    L3_3, L4_3 = L3_3(L4_3)
    return L1_3(L2_3, L3_3, L4_3)
  end
  return L2_2
end
L0_1.BindMethodByName = L1_1
