function CoreX_SuperQuetzoa.main()
end
function CoreX_SuperQuetzoa.LaunchDamageSound(_ARG_0_)
end
function CoreX_SuperQuetzoa.OnBigXAbsorbed(_ARG_0_)
  Game.PushSetup("PostSuperQuetzoaDead", true, false)
  GUI.ShowMessage("#GUI_ITEM_ACQUIRED_MULTI_LOCK", true, "", false)
  if Game.GetActor("doorpowerpower_014") ~= nil then
    Game.GetActor("doorpowerpower_014").LIFE:UnLockDoor()
  end
  Game.SaveGame("checkpoint", "SuperQuetzoa_Dead", "SP_Checkpoint_MultiLockOn", true)
end
