function LogicActionTrigger.main()
end
function LogicActionTrigger.Enable(_ARG_0_, _ARG_1_, _ARG_2_)
  if Game.GetActor(_ARG_0_) ~= nil then
    Game.GetActor(_ARG_0_):SetWantsEnabled(true)
  end
end
function LogicActionTrigger.Disable(_ARG_0_, _ARG_1_, _ARG_2_)
  if Game.GetActor(_ARG_0_) ~= nil then
    Game.GetActor(_ARG_0_):SetWantsEnabled(false)
  end
end
