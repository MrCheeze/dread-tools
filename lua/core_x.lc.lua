function CoreX_SuperGoliath.main()
end
function CoreX_SuperGoliath.LaunchDamageSound(_ARG_0_)
end
function CoreX_SuperGoliath.OnBigXAbsorbed(_ARG_0_)
  GUI.ShowMessage("#GUI_ITEM_ACQUIRED_LINE_BOMB", true, "", false)
  if Game.GetActor("doorpowerclosed_003") ~= nil then
    Game.GetActor("doorpowerclosed_003").LIFE:UnLockDoor()
  end
  Game.SaveGame("checkpoint", "SuperGoliath_Dead", "SP_Checkpoint_LineBomb", true)
end
