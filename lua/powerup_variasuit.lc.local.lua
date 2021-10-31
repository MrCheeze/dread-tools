-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/powerup_variasuit.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

PowerUpVariaSuit.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC4: Confused about usage of register: R0 in 'UnsetPending'

PowerUpVariaSuit.Self = nil
-- DECOMPILER ERROR at PC7: Confused about usage of register: R0 in 'UnsetPending'

PowerUpVariaSuit.OnPickedUp = function(l_2_0)
  -- function num : 0_1
  (Game.PlayEntitySoundContinueOnDead)("generic/obtencion.wav", l_2_0.sName, 1, 500, 4000, 1)
  local l_2_1 = (Game.GetActor)("cutsceneplayer_30")
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R2 in 'UnsetPending'

  if l_2_1 ~= nil then
    (l_2_0.MODELUPDATER).bWantsEnabled = false
    ;
    (l_2_1.CUTSCENE):TryLaunchCutscene()
  end
  -- DECOMPILER ERROR at PC21: Confused about usage of register: R2 in 'UnsetPending'

  PowerUpVariaSuit.Self = l_2_0
end

-- DECOMPILER ERROR at PC10: Confused about usage of register: R0 in 'UnsetPending'

PowerUpVariaSuit.ShowMessage = function()
  -- function num : 0_2
  if PowerUpVariaSuit.Self ~= nil then
    ((PowerUpVariaSuit.Self).PICKABLE):OnItemEnd()
    ;
    (Game.SaveGame)("checkpoint", "", "SP_CUT_VariaSuit", false)
  end
end

-- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

PowerUpVariaSuit.ChangeSuit = function()
  -- function num : 0_3
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_VARIA_SUIT", 1, true)
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  ;
  (((Game.GetPlayer)()).MODELUPDATER).sModelAlias = "Varia"
  ;
  (((Game.GetPlayer)()).MODELUPDATER):ForceUpdate()
end

-- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

PowerUpVariaSuit.OnItemEnd = function(l_5_0)
  -- function num : 0_4
end


