function Player.main()
end
function Player.SetAbilityUnlocked(_ARG_0_, _ARG_1_)
  if Game.GetPlayer() ~= nil and Game.GetPlayer().ABILITY ~= nil then
    Game.GetPlayer().ABILITY:SetAbilityUnlocked(_ARG_0_, _ARG_1_)
    Game.GetPlayer().ABILITY:TrySetSelectedAbility(_ARG_0_, true, true)
  end
end
function Player.IsAbilityActive(_ARG_0_)
  if Game.GetPlayer() ~= nil and Game.GetPlayer().ABILITY ~= nil then
    return Game.GetPlayer().ABILITY:IsAbilityActive(_ARG_0_)
  end
end
function Player.IsESActive()
  return Player.IsAbilityActive("EnergyShield")
end
function Player.UnlockPhaseDisplacement()
  Player.SetAbilityUnlocked("PhaseDisplacement", true)
end
function Player.UnlockEnergyWave()
  Player.SetAbilityUnlocked("EnergyWave", true)
end
function Player.UnlockEnergyShield()
  Player.SetAbilityUnlocked("EnergyShield", true)
end
function Player.UnlockScanningPulse()
  Game.LockAeionReserveTank()
  Player.SetAbilityUnlocked("ScanningPulse", true)
end
