-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/sound.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC1: Confused about usage of register: R0 in 'UnsetPending'

Sound.fLastBlockSoundTimeStamp = 0
-- DECOMPILER ERROR at PC4: Confused about usage of register: R0 in 'UnsetPending'

Sound.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC7: Confused about usage of register: R0 in 'UnsetPending'

Sound.SyncBlockSound = function(l_2_0)
  -- function num : 0_1
  print("Playing Sync block sound at " .. l_2_0.x .. "," .. l_2_0.y .. "," .. l_2_0.z)
  ;
  (Game.PlayPosSound)(" ", l_2_0.x, l_2_0.y, l_2_0.z, 1.5, 40000, 50000, 1)
end

-- DECOMPILER ERROR at PC10: Confused about usage of register: R0 in 'UnsetPending'

Sound.BlockSound = function(l_3_0, l_3_1)
  -- function num : 0_2
  local l_3_2 = (Game.GetTimeStamp)()
  -- DECOMPILER ERROR at PC9: Confused about usage of register: R3 in 'UnsetPending'

  if l_3_2 - Sound.fLastBlockSoundTimeStamp > 0.15000000596046 then
    Sound.fLastBlockSoundTimeStamp = l_3_2
    ;
    (Game.PlayPosSound)(" ", l_3_0.x, l_3_0.y, l_3_0.z, 1, 2000, 50000, 1)
  end
end

-- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

Sound.OnMagicChanged = function()
  -- function num : 0_3
end

-- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

Sound.OnMagicChangeFailure = function()
  -- function num : 0_4
end


