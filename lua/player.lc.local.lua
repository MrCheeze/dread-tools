-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/player.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

Player.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

Player.SetAbilityUnlocked = function(l_2_0, l_2_1)
  -- function num : 0_1
  local l_2_2 = (Game.GetPlayer)()
  if l_2_2 ~= nil then
    local l_2_3 = l_2_2.ABILITY
    if l_2_3 ~= nil then
      l_2_3:SetAbilityUnlocked(l_2_0, l_2_1)
      l_2_3:TrySetSelectedAbility(l_2_0, true, true)
    end
  end
end

-- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

Player.IsAbilityActive = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = (Game.GetPlayer)()
  if l_3_1 ~= nil then
    local l_3_2 = l_3_1.ABILITY
    if l_3_2 ~= nil then
      local l_3_3, l_3_4 = l_3_2:IsAbilityActive, l_3_2
      do
        local l_3_5 = l_3_0
        do return l_3_3(l_3_4, l_3_5) end
        -- DECOMPILER ERROR at PC12: Confused about usage of register R4 for local variables in 'ReleaseLocals'

      end
    end
  end
end

-- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

Player.IsESActive = function()
  -- function num : 0_3
  local l_4_0 = Player.IsAbilityActive
  local l_4_1 = "EnergyShield"
  do return l_4_0(l_4_1) end
  -- DECOMPILER ERROR at PC5: Confused about usage of register R1 for local variables in 'ReleaseLocals'

end

-- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

Player.UnlockPhaseDisplacement = function()
  -- function num : 0_4
  (Player.SetAbilityUnlocked)("PhaseDisplacement", true)
end

-- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

Player.UnlockEnergyWave = function()
  -- function num : 0_5
  (Player.SetAbilityUnlocked)("EnergyWave", true)
end

-- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

Player.UnlockEnergyShield = function()
  -- function num : 0_6
  (Player.SetAbilityUnlocked)("EnergyShield", true)
end

-- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

Player.UnlockScanningPulse = function()
  -- function num : 0_7
  (Game.LockAeionReserveTank)()
  ;
  (Player.SetAbilityUnlocked)("ScanningPulse", true)
end


