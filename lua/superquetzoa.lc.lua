function SuperQuetzoa.main()
end
function SuperQuetzoa.BeginPlay(_ARG_0_)
  if Game.GetActor("doorpowerpower_014") ~= nil then
    Game.GetActor("doorpowerpower_014").LIFE:LockDoor()
  end
end
