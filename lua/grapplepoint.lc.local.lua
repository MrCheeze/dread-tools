-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/grapplepoint.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

GrapplePoint.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

GrapplePoint.OnGrappleBeamAttached = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (math.random)(2)
  ;
  (Game.PlayEntitySound)("weapons/grapple_hit_0" .. l_2_1 .. ".wav", l_2_0.sName, 0.5, 100, 3000, 1)
end

-- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

GrapplePoint.OnGrappleBeamDetached = function(l_3_0)
  -- function num : 0_2
end

-- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

GrapplePoint.OnGrapplePullFinished = function(l_4_0, l_4_1, l_4_2)
  -- function num : 0_3
  if CurrentScenario ~= nil and CurrentScenario.OnGrapplePullFinished ~= nil then
    (CurrentScenario.OnGrapplePullFinished)(l_4_0, l_4_1)
  end
end


