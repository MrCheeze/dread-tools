-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/class.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

class.New = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = {}
  if not l_1_1 and type(l_1_0) == "function" then
    l_1_1 = l_1_0
    l_1_0 = nil
  else
    if type(l_1_0) == "table" then
      for l_1_6,l_1_7 in pairs(l_1_0) do
        l_1_2[l_1_6] = l_1_7
      end
      l_1_2._base = l_1_0
    end
  end
  l_1_2.__index = l_1_2
  local l_1_8 = {}
  l_1_8.__call = function(l_2_0, ...)
    -- function num : 0_0_0 , upvalues : l_1_2, l_1_1, l_1_0
    setmetatable({}, l_1_2)
    -- DECOMPILER ERROR at PC9: Confused about usage of register: R2 in 'UnsetPending'

    if l_1_1 then
      l_1_1({}, ...)
    else
      -- DECOMPILER ERROR at PC22: Confused about usage of register: R2 in 'UnsetPending'

      if l_1_0 and l_1_0.init then
        (l_1_0.init)({}, ...)
      end
    end
    -- DECOMPILER ERROR at PC25: Confused about usage of register: R2 in 'UnsetPending'

    return {}
  end

  l_1_2.init = l_1_1
  l_1_2.is_a = function(l_3_0, l_3_1)
    -- function num : 0_0_1
    local l_3_2 = getmetatable(l_3_0)
    while l_3_2 do
      if l_3_2 == l_3_1 then
        return true
      end
      l_3_2 = l_3_2._base
    end
    return false
  end

  setmetatable(l_1_2, l_1_8)
  return l_1_2
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

class.BindMethod = function(l_2_0, l_2_1)
  -- function num : 0_1
  return function(...)
    -- function num : 0_1_0 , upvalues : l_2_1, l_2_0
    local l_3_1 = l_2_1
    do
      local l_3_2, l_3_3 = l_2_0, unpack(arg)
      do return l_3_1(l_3_2, l_3_3) end
      -- DECOMPILER ERROR at PC7: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end

end

-- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

class.BindMethodByName = function(l_3_0, l_3_1)
  -- function num : 0_2
  return function(...)
    -- function num : 0_2_0 , upvalues : l_3_0, l_3_1
    local l_4_1 = l_3_0[l_3_1]
    do
      local l_4_2, l_4_3 = l_3_0, unpack(arg)
      do return l_4_1(l_4_2, l_4_3) end
      -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end

end


