function PowerUpGravitySuit.main()
end
PowerUpGravitySuit.Self = nil
function PowerUpGravitySuit.OnPickedUp(_ARG_0_)
  Game.PlayEntitySoundContinueOnDead("generic/obtencion.wav", _ARG_0_.sName, 1, 500, 4000, 1)
  if Game.GetActor("cutsceneplayer_31") ~= nil then
    _ARG_0_.MODELUPDATER.bWantsEnabled = false
    Game.GetActor("cutsceneplayer_31").CUTSCENE:TryLaunchCutscene()
  end
  PowerUpGravitySuit.Self = _ARG_0_
end
function PowerUpGravitySuit.ShowMessage()
  if PowerUpGravitySuit.Self ~= nil then
    PowerUpGravitySuit.Self.PICKABLE:OnItemEnd()
    Game.SaveGame("checkpoint", "", "SP_CUT_GravitySuit", false)
  end
end
function PowerUpGravitySuit.ChangeSuit()
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_GRAVITY_SUIT", 1, true)
  Game.GetPlayer().MODELUPDATER.sModelAlias = "Gravity"
  Game.GetPlayer().MODELUPDATER:ForceUpdate()
end
function PowerUpGravitySuit.OnItemEnd(_ARG_0_)
end
