Game.ImportLibrary("system/scripts/savegame.lua", false)
Game.ImportLibrary("gui/scripts/msemenu_debug_locations.lua", false)
msemenu = {}
msemenu.DebugMenuRoot = nil
msemenu.DebugMenuMain = nil
msemenu.DebugMenuInfoPanel = nil
msemenu.aAreasLevels = {}
msemenu.aAreasPresavedGames = {}
function msemenu.GetMenuItemByKey(_ARG_0_, _ARG_1_)
  if _ARG_0_ ~= nil and _ARG_0_[_ARG_1_] == nil then
    for _FORV_6_, _FORV_7_ in pairs(_ARG_0_) do
      if type(_FORV_7_) == "table" and _FORV_7_.ItemKey == _ARG_1_ then
        break
      end
    end
  end
  return _FORV_7_.ItemContent
end
function msemenu.GetCurrentMenuItemByKey(_ARG_0_)
  return msemenu.GetMenuItemByKey(msemenu.CurrentMenu, _ARG_0_)
end
function msemenu.GenerateDebugFlagsTable(_ARG_0_, _ARG_1_, _ARG_2_)
  for _FORV_8_, _FORV_9_ in pairs((Game.GetMenuDebugFlags())) do
    for _FORV_15_, _FORV_16_ in ipairs((utils.Split(_FORV_9_, " | "))) do
    end
    if {
      [_FORV_16_] = {}
    }[_FORV_16_]._ITEMS == nil then
      {
        [_FORV_16_] = {}
      }[_FORV_16_]._ITEMS = {}
    end
    table.insert({
      [_FORV_16_] = {}
    }[_FORV_16_]._ITEMS, _FORV_8_)
  end
  return (msemenu.ReplaceItemsInTable({
    [_FORV_16_] = {}
  }, _ARG_0_, _ARG_1_, _ARG_2_))
end
function msemenu.ReplaceItemsInTable(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return (function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
    if _ARG_0_._ITEMS then
      return msemenu.GenerateCustomItems(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_0_._ITEMS)
    end
    for _FORV_7_, _FORV_8_ in pairs(_ARG_0_) do
      _ARG_0_[_FORV_7_] = _UPVALUE0_(_ARG_0_[_FORV_7_], _ARG_1_, _ARG_2_, _ARG_3_)
    end
    return _ARG_0_
  end)(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
function msemenu.GenerateCustomItems(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  for _FORV_8_, _FORV_9_ in ipairs(_ARG_3_) do
    if _ARG_2_ then
      {
        ItemKey = _FORV_9_,
        ItemContent = {GetCurrentValue = _ARG_1_}
      }.ItemContent.OnDirActivated = _ARG_0_
    else
      {
        ItemKey = _FORV_9_,
        ItemContent = {GetCurrentValue = _ARG_1_}
      }.ItemContent.OnActivated = _ARG_0_
    end
    table.insert({}, {
      ItemKey = _FORV_9_,
      ItemContent = {GetCurrentValue = _ARG_1_}
    })
  end
  return {}
end
function msemenu.GenerateDefaultItems(_ARG_0_, _ARG_1_)
  for _FORV_6_, _FORV_7_ in ipairs(_ARG_1_) do
    table.insert({}, {
      ItemKey = _FORV_7_,
      ItemContent = {
        OnDirActivated = function(_ARG_0_, _ARG_1_)
          if _ARG_1_ == "ActivationButton" then
            return _UPVALUE0_(_ARG_0_)
          end
        end
      }
    })
  end
  return {}
end
function msemenu.GenerateDefaultTableItems(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_1_ == nil then
    return {}
  end
  for _FORV_7_, _FORV_8_ in ipairs(_ARG_1_) do
    table.insert({}, {
      ItemKey = _FORV_8_[_ARG_2_],
      ItemContent = {
        OnDirActivated = function(_ARG_0_, _ARG_1_)
          if _ARG_1_ == "ActivationButton" then
            return _UPVALUE0_(_UPVALUE1_)
          end
        end
      }
    })
  end
  return {}
end
function msemenu.GenerateDefaultItemsWithAlias(_ARG_0_, _ARG_1_, _ARG_2_)
  for _FORV_7_, _FORV_8_ in ipairs(_ARG_1_) do
    table.insert({}, {
      ItemKey = _ARG_2_[_FORV_8_],
      ItemContent = {
        OnDirActivated = function(_ARG_0_, _ARG_1_)
          if _ARG_1_ == "ActivationButton" then
            return _UPVALUE0_(_UPVALUE1_)
          end
        end
      }
    })
  end
  return {}
end
function msemenu.FilterEntityIDValue(_ARG_0_)
  return _ARG_0_ == "[PLAYER]" and Game.GetPlayerName() or _ARG_0_
end
function msemenu.GenerateComponentVarEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if type(_ARG_3_) == "number" then
  elseif type(_ARG_3_) == "string" then
  elseif type(_ARG_3_) == "boolean" then
  end
  return (msemenu.GenerateComponentBoolVarEntry(_ARG_0_, _ARG_1_, _ARG_2_))
end
function msemenu.GenerateComponentNumberVarEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "Right" then
        Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_] = Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_] + _UPVALUE3_
      else
        Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_] = Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_] - _UPVALUE3_
      end
    end,
    GetCurrentValue = function()
      return Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_, _UPVALUE1_)))[_UPVALUE1_][_UPVALUE2_]
    end
  }
end
function msemenu.GenerateComponentBoolVarEntry(_ARG_0_, _ARG_1_, _ARG_2_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_] = not Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_]
    end,
    GetCurrentValue = function()
      return Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_]
    end
  }
end
function msemenu.GenerateComponentValuesVarEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  function UpdateValueIdx(_ARG_0_)
    sItemValue = msemenu.GetCurrentMenuItemByKey(_ARG_0_).GetCurrentValue(sItemID)
    for _FORV_4_ = 1, #_UPVALUE0_ do
      if msemenu.FilterEntityIDValue(_UPVALUE0_[_FORV_4_]) == sItemValue then
        _UPVALUE1_ = _FORV_4_ - 1
      end
    end
  end
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      UpdateValueIdx(_ARG_0_)
      if _ARG_1_ == "Right" then
        _UPVALUE1_ = (_UPVALUE1_ + 1) % #_UPVALUE2_
      else
        _UPVALUE1_ = (_UPVALUE1_ + -1) % #_UPVALUE2_
      end
      Entity[_UPVALUE3_][_UPVALUE4_] = msemenu.FilterEntityIDValue(_UPVALUE2_[_UPVALUE1_ + 1])
    end,
    GetCurrentValue = function()
      return Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_]
    end
  }
end
function msemenu.GenerateEntityNumberMsgEntry(_ARG_0_, _ARG_1_, _ARG_2_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "Right" then
        Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_] = Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_] + _UPVALUE2_
      else
        Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_] = Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_] - _UPVALUE2_
      end
    end,
    GetCurrentValue = function()
      return Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_]
    end
  }
end
function msemenu.GenerateEntityBoolMsgEntry(_ARG_0_, _ARG_1_, _ARG_2_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _UPVALUE1_ ~= nil then
        Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_] = not Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_]
      else
        Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE2_] = not Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE2_]
      end
    end,
    GetCurrentValue = function()
      if _UPVALUE1_ ~= nil then
        return Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_][_UPVALUE2_]
      else
        return Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE2_]
      end
    end
  }
end
function msemenu.GenerateEntityValuesMsgEntry(_ARG_0_, _ARG_1_, _ARG_2_)
  function UpdateValueIdx(_ARG_0_)
    sItemValue = msemenu.GetCurrentMenuItemByKey(_ARG_0_).GetCurrentValue(sItemID)
    for _FORV_4_ = 1, #_UPVALUE0_ do
      if msemenu.FilterEntityIDValue(_UPVALUE0_[_FORV_4_]) == sItemValue then
        _UPVALUE1_ = _FORV_4_ - 1
      end
    end
  end
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      UpdateValueIdx(_ARG_0_)
      if _ARG_1_ == "Right" then
        _UPVALUE1_ = (_UPVALUE1_ + 1) % #_UPVALUE2_
      else
        _UPVALUE1_ = (_UPVALUE1_ + -1) % #_UPVALUE2_
      end
      Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE3_] = msemenu.FilterEntityIDValue(_UPVALUE2_[_UPVALUE1_ + 1])
    end,
    GetCurrentValue = function()
      return Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_]
    end
  }
end
function msemenu.SwitchInputPreset()
  return {
    OnDirActivated = function()
      Game.GetPlayerInfo():SwitchInputPreset()
    end,
    GetCurrentValue = function()
      return Game.GetPlayerInfo().sInputPreset
    end
  }
end
function msemenu.GenerateShowRewards()
  return {
    OnDirActivated = function()
      Game.ShowEndGameCredits(true)
    end,
    GetCurrentValue = "Show Rewards"
  }
end
function msemenu.SelectCloserAI()
  return {
    OnDirActivated = function()
      Game.SelectCloserAI()
      Game.RefreshSelectedAIAttackPreset()
      msemenu.Update("items. Debug.AI. SELECTED")
    end,
    GetCurrentValue = function()
      if Game.GetSelectedAI() ~= nil then
        return Game.GetSelectedAI().sName
      else
        return "NO_ENTITY"
      end
    end
  }
end
function msemenu.SwitchControlledAI()
  return {
    OnDirActivated = function()
      Game.SetControlledAI(not Game.GetControlledAI())
      if Game.GetControlledAI() and Game.GetSelectedAI() ~= nil then
        msemenu.Update("items. Debug.AI. SELECTED")
      end
    end,
    GetCurrentValue = function()
      if Game.GetControlledAI() then
        return "TRUE"
      else
        return "FALSE"
      end
    end
  }
end
function msemenu.SwitchAIForcedAttack()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "ActivationButton" or _ARG_1_ == "Right" then
        Game.SwitchSelectedAIAttack(true)
      else
        Game.SwitchSelectedAIAttack(false)
      end
      Game.RefreshSelectedAIAttackPreset()
      msemenu.Update("items. Debug.AI. SELECTED")
    end,
    GetCurrentValue = function()
      if Game.GetSelectedAI() ~= nil then
        if Game.GetSelectedAI().AI.sForcedAttack == nil or Game.GetSelectedAI().AI.sForcedAttack == "" then
          return "-"
        else
          return Game.GetSelectedAI().AI.sForcedAttack
        end
      else
        return "-"
      end
    end
  }
end
function msemenu.SwitchAIForcedAttackPreset()
  return {
    OnDirActivated = function()
      Game.SwitchSelectedAIAttackPreset()
    end,
    GetCurrentValue = function()
      if Game.GetSelectedAI() ~= nil then
        if Game.GetSelectedAI().AI.sForcedAttack == nil or Game.GetSelectedAI().AI.sForcedAttack == "" then
          return "-"
        elseif Game.GetSelectedAI().AI.iForcedAttackPreset == nil then
          return "-"
        else
          return tostring(Game.GetSelectedAI().AI.iForcedAttackPreset + 1)
        end
      else
        return "-"
      end
    end
  }
end
function msemenu.AutoAimActive()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.GetDefaultPlayer().AIM ~= nil then
        Game.GetDefaultPlayer().AIM.bAutoAimActive = not Game.GetDefaultPlayer().AIM.bAutoAimActive
      end
    end,
    GetCurrentValue = function()
      if Game.GetDefaultPlayer().AIM ~= nil then
        return Game.GetDefaultPlayer().AIM.bAutoAimActive
      end
      return false
    end
  }
end
function msemenu.AutoAimWidth()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.GetDefaultPlayer().AIM ~= nil then
        if _ARG_1_ == "Right" then
        else
        end
        Game.GetDefaultPlayer().AIM.fCurrentAutoAimWidth = Game.GetDefaultPlayer().AIM.fCurrentAutoAimWidth + 5 - 5
      end
    end,
    GetCurrentValue = function()
      if Game.GetDefaultPlayer().AIM ~= nil then
        return Game.GetDefaultPlayer().AIM.fCurrentAutoAimWidth
      end
      return 0
    end
  }
end
function msemenu.AutoAimConeLength()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.GetDefaultPlayer().AIM ~= nil then
        if _ARG_1_ == "Right" then
        else
        end
        Game.GetDefaultPlayer().AIM.fCurrentAutoAimConeLength = Game.GetDefaultPlayer().AIM.fCurrentAutoAimConeLength + 5 - 5
      end
    end,
    GetCurrentValue = function()
      if Game.GetDefaultPlayer().AIM ~= nil then
        return Game.GetDefaultPlayer().AIM.fCurrentAutoAimConeLength
      end
      return 0
    end
  }
end
function msemenu.SwitchAttacksEnabled()
  return {
    OnDirActivated = function()
      if Game.AttacksEnabled() then
        Game.DisableAttacks()
      else
        Game.EnableAttacks()
      end
    end,
    GetCurrentValue = function()
      if Game.AttacksEnabled() then
        return "ENABLED"
      else
        return "DISABLED"
      end
    end
  }
end
function msemenu.ReloadTrees()
  Game.ReloadBehaviorTrees()
end
function msemenu.SwitchOpticalCamoWaitForEndDetectionEnabled()
  return {
    OnDirActivated = function()
      if Game.CamoEndDetectionCountDownIgnored() then
        Game.ActivateCamoEndDetectionCountdown()
      else
        Game.IgnoreCamoEndDetectionCountdown()
      end
    end,
    GetCurrentValue = function()
      if Game.CamoEndDetectionCountDownIgnored() then
        return "ENABLED"
      else
        return "DISABLED"
      end
    end
  }
end
function msemenu.ReloadTrees()
  Game.ReloadBehaviorTrees()
end
function msemenu.SwitchLockOnBeep()
  return {
    OnDirActivated = function()
      if Game.GetDefaultPlayer() ~= nil and Game.GetDefaultPlayer().AIM ~= nil then
        if Game.GetDefaultPlayer().AIM.bLockOnSoundAllowed then
          Game.GetDefaultPlayer().AIM.bLockOnSoundAllowed = false
        else
          Game.GetDefaultPlayer().AIM.bLockOnSoundAllowed = true
        end
      end
    end,
    GetCurrentValue = function()
      if Game.GetDefaultPlayer() ~= nil and Game.GetDefaultPlayer().AIM ~= nil then
        if Game.GetDefaultPlayer().AIM.bLockOnSoundAllowed then
          return "ENABLED"
        else
          return "DISABLED"
        end
      else
        return "-"
      end
    end
  }
end
function msemenu.SwitchIgnoreShellWithIceBeam()
  return {
    OnDirActivated = function()
      if Game.GetPlayerInfo().bIgnoreShellWithIceBeam then
        Game.GetPlayerInfo().bIgnoreShellWithIceBeam = false
      else
        Game.GetPlayerInfo().bIgnoreShellWithIceBeam = true
      end
    end,
    GetCurrentValue = function()
      if Game.GetPlayerInfo().bIgnoreShellWithIceBeam then
        return "IGNORED"
      else
        return "NOT IGNORED"
      end
    end
  }
end
function msemenu.SwitchRevealTilesMode()
  return {
    OnDirActivated = function()
      if Game.GetRevealTilesMode() == "AnyWeapon" then
        Game.SetRevealTilesMode("JustPowerBomb")
      else
        Game.SetRevealTilesMode("AnyWeapon")
      end
    end,
    GetCurrentValue = function()
      return Game.GetRevealTilesMode()
    end
  }
end
function msemenu.SwitchSuit()
  return {
    OnDirActivated = function()
      if Game.GetPlayer().MODELUPDATER.sModelAlias == "Default" then
        Game.GetPlayer().MODELUPDATER.sModelAlias = "Varia"
      elseif Game.GetPlayer().MODELUPDATER.sModelAlias == "Varia" then
        Game.GetPlayer().MODELUPDATER.sModelAlias = "Gravity"
      else
        Game.GetPlayer().MODELUPDATER.sModelAlias = "Default"
      end
    end,
    GetCurrentValue = function()
      return Game.GetPlayer().MODELUPDATER.sModelAlias
    end
  }
end
function msemenu.ChangeLowPassFilterCutoffFreq()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "Right" then
        Game.SetLowPassFilterCutOff(Game.GetLowPassFilterCutOff() + 20)
      else
        Game.SetLowPassFilterCutOff(Game.GetLowPassFilterCutOff() - 20)
      end
    end,
    GetCurrentValue = function()
      return Game.GetLowPassFilterCutOff()
    end
  }
end
function msemenu.EnableMusic()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsMusicEnabled() then
        Game.EnableMusic(false)
      else
        Game.EnableMusic(true)
      end
    end,
    GetCurrentValue = function()
      return Game.IsMusicEnabled()
    end
  }
end
function msemenu.EnableSFX()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsSFXEnabled() then
        Game.EnableSFX(false)
      else
        Game.EnableSFX(true)
      end
    end,
    GetCurrentValue = function()
      return Game.IsSFXEnabled()
    end
  }
end
function msemenu.EnableEnvironmentMusic()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsEnvironmentMusicEnabled() then
        Game.EnableEnvironmentMusic(false)
      else
        Game.EnableEnvironmentMusic(true)
      end
    end,
    GetCurrentValue = function()
      return Game.IsEnvironmentMusicEnabled()
    end
  }
end
function msemenu.StopMusic()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Game.StopMusic(true)
    end
  }
end
msemenu.sStreamPlaying = ""
msemenu.fDebugVolume = 0
msemenu.fFactor = 0
msemenu.bMuteSFX = false
function msemenu.DebugStopStream()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Game.StopStream()
      msemenu.sStreamPlaying = ""
    end
  }
end
function msemenu.DebugPlayStream(_ARG_0_)
  msemenu.sStreamPlaying = _ARG_0_
  msemenu.fDebugVolume = Game.DebugGetStreamVolumeFromData(_ARG_0_)
  Game.DebugPlayStream(_ARG_0_)
end
function msemenu.DebugSetEnvFactor()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "Right" then
        Game.SetCurrentEnvMultiplier(Game.GetCurrentEnvMultiplier() + 0.025)
      else
        Game.SetCurrentEnvMultiplier(Game.GetCurrentEnvMultiplier() - 0.025)
      end
    end,
    GetCurrentValue = function()
      return Game.GetCurrentEnvMultiplier()
    end
  }
end
function msemenu.GeneratePlayStreamItems(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    table.insert({
      GetCurrentValue = function()
        if msemenu.sStreamPlaying ~= nil and msemenu.sStreamPlaying ~= "" then
          return msemenu.sStreamPlaying:match("([^/]+)$"):gsub(".wav$", "")
        else
          return "NO_STREAM"
        end
      end
    }, {
      ItemKey = _FORV_6_:match("([^/]+)$"):gsub(".wav$", ""),
      ItemContent = {
        OnDirActivated = function(_ARG_0_, _ARG_1_)
          if msemenu.sStreamPlaying ~= _UPVALUE0_ then
            msemenu.DebugPlayStream(_UPVALUE0_)
          elseif _ARG_1_ == "ActivationButton" then
            Game.StopStream()
            msemenu.sStreamPlaying = ""
          else
            msemenu.fDebugVolume = Game.DebugGetStreamVolumeFromData(msemenu.sStreamPlaying)
            if _ARG_1_ == "Right" then
              msemenu.fDebugVolume = msemenu.fDebugVolume + 0.025
            else
              msemenu.fDebugVolume = msemenu.fDebugVolume - 0.025
            end
            if msemenu.fDebugVolume < 0.05 then
              msemenu.fDebugVolume = 0.05
            elseif msemenu.fDebugVolume > 1 then
              msemenu.fDebugVolume = 1
            end
            Game.DebugSetStreamVol(msemenu.sStreamPlaying, msemenu.fDebugVolume, true)
          end
        end,
        GetCurrentValue = function()
          return Game.DebugGetStreamVolumeFromData(_UPVALUE0_)
        end
      }
    })
  end
  return {
    GetCurrentValue = function()
      if msemenu.sStreamPlaying ~= nil and msemenu.sStreamPlaying ~= "" then
        return msemenu.sStreamPlaying:match("([^/]+)$"):gsub(".wav$", "")
      else
        return "NO_STREAM"
      end
    end
  }
end
function msemenu.GenerateSetEnvironmentMultiplierItems(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    table.insert({
      GetCurrentValue = function()
        if msemenu.sStreamPlaying ~= nil and msemenu.sStreamPlaying ~= "" then
          return msemenu.sStreamPlaying:match("([^/]+)$"):gsub(".wav$", "")
        else
          return "NO_STREAM"
        end
      end
    }, {
      ItemKey = _FORV_6_:match("([^/]+)$"):gsub(".wav$", ""),
      ItemContent = {
        OnDirActivated = function(_ARG_0_, _ARG_1_)
          if msemenu.sStreamPlaying ~= _UPVALUE0_ then
            msemenu.DebugPlayStream(_UPVALUE0_)
          elseif _ARG_1_ == "ActivationButton" then
            Game.StopStream()
            msemenu.sStreamPlaying = ""
          else
            msemenu.fFactor = Game.DebugGetEnvironmentMultiplier(msemenu.sStreamPlaying)
            if _ARG_1_ == "Right" then
              msemenu.fFactor = msemenu.fFactor + 0.025
            else
              msemenu.fFactor = msemenu.fFactor - 0.025
            end
            if msemenu.fFactor < 0.05 then
              msemenu.fFactor = 0.05
            elseif msemenu.fFactor > 1 then
              msemenu.fFactor = 1
            end
            Game.DebugSetEnvironmentMultiplier(msemenu.sStreamPlaying, msemenu.fFactor)
          end
        end,
        GetCurrentValue = function()
          return Game.DebugGetEnvironmentMultiplier(_UPVALUE0_)
        end
      }
    })
  end
  return {
    GetCurrentValue = function()
      if msemenu.sStreamPlaying ~= nil and msemenu.sStreamPlaying ~= "" then
        return msemenu.sStreamPlaying:match("([^/]+)$"):gsub(".wav$", "")
      else
        return "NO_STREAM"
      end
    end
  }
end
function msemenu.DebugSetStreamVolume()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      msemenu.fDebugVolume = Game.DebugGetStreamVolumeFromData(msemenu.sStreamPlaying)
      if _ARG_1_ == "Right" then
        msemenu.fDebugVolume = msemenu.fDebugVolume + 0.025
      else
        msemenu.fDebugVolume = msemenu.fDebugVolume - 0.025
      end
      if msemenu.fDebugVolume < 0.05 then
        msemenu.fDebugVolume = 0.05
      elseif msemenu.fDebugVolume > 1 then
        msemenu.fDebugVolume = 1
      end
      Game.DebugSetStreamVol(msemenu.sStreamPlaying, msemenu.fDebugVolume, true)
    end,
    GetCurrentValue = function()
      return msemenu.fDebugVolume
    end
  }
end
function msemenu.DebugSetSpeakerMode()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Game.SetForceHeadphonesPlugged(not Game.AreHeadphonesPlugged())
    end,
    GetCurrentValue = function()
      if Game.AreHeadphonesPlugged() then
        return "HEADPHONES"
      else
        return "SPEAKERS"
      end
    end
  }
end
function msemenu.DebugSetHeadPhoneMultiplier()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "Right" then
      else
      end
      Game.SetHeadphonesMultiplier(Game.GetHeadphonesMultiplier() + 0.025 - 0.025)
    end,
    GetCurrentValue = function()
      return Game.GetHeadphonesMultiplier()
    end
  }
end
function msemenu.DebugMuteSfx()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      msemenu.bMuteSFX = not msemenu.bMuteSFX
      Game.SetSFXMuted(msemenu.bMuteSFX)
    end,
    GetCurrentValue = function()
      return msemenu.bMuteSFX
    end
  }
end
function msemenu.GenerateMusicTable(_ARG_0_)
  for _FORV_5_ in string.gmatch(_ARG_0_, "([^|]+)") do
    table.insert({}, _FORV_5_)
  end
  return {}
end
function msemenu.EnableEnvironmentSound()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsEnvironmentSoundEnabled() then
        Game.EnableEnvironmentSounds(false)
      else
        Game.EnableEnvironmentSounds(true)
      end
    end,
    GetCurrentValue = function()
      return Game.IsEnvironmentSoundEnabled()
    end
  }
end
function msemenu.EnableEnvironmentSoundEffects()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsEnvironmentSoundEffectsEnabled() then
        Game.EnableEnvironmentSoundEffects(false)
      else
        Game.EnableEnvironmentSoundEffects(true)
      end
    end,
    GetCurrentValue = function()
      return Game.IsEnvironmentSoundEffectsEnabled()
    end
  }
end
function msemenu.EnableMetroidRadarSound()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsMetroidRadarSoundEnabled() then
        Game.EnableMetroidRadarSound(false)
      else
        Game.EnableMetroidRadarSound(true)
      end
    end,
    GetCurrentValue = function()
      return Game.IsMetroidRadarSoundEnabled()
    end
  }
end
function msemenu.SwitchHUDMode()
  return {
    OnDirActivated = function()
      if hud.oHUDRoot and hud.oHUDRoot:FindChild("Character") then
        if hud.oHUDRoot:FindChild("Character").StageID == "Up" then
          hud.oHUDRoot:FindChild("Character").StageID = "Down"
        else
          hud.oHUDRoot:FindChild("Character").StageID = "Up"
        end
      end
    end,
    GetCurrentValue = function()
      if hud.oHUDRoot and hud.oHUDRoot:FindChild("Character") then
        return hud.oHUDRoot:FindChild("Character").StageID
      end
      return ""
    end
  }
end
function msemenu.SwitchPlayerLifeLocked()
  return {
    OnDirActivated = function()
      Game.SwitchPlayerLifeLocked()
    end,
    GetCurrentValue = function()
      return Game.GetPlayerLifeLocked()
    end
  }
end
function msemenu.SwitchInfiniteAmmo()
  return {
    OnDirActivated = function()
      Game.SwitchInfiniteAmmo()
    end,
    GetCurrentValue = function()
      return Game.GetInfiniteAmmoEnabled()
    end
  }
end
function msemenu.SwitchPlayerSpecialEnergyLocked()
  return {
    OnDirActivated = function()
      Game.SwitchPlayerSpecialEnergyLocked()
    end,
    GetCurrentValue = function()
      return Game.GetPlayerSpecialEnergyLocked()
    end
  }
end
function msemenu.SwitchSpaceJump()
  return {
    OnDirActivated = function()
      Game.SwitchSpaceJump()
    end,
    GetCurrentValue = function()
      return Game.GetSpaceJump()
    end
  }
end
function msemenu.SwitchDoubleJump()
  return {
    OnDirActivated = function()
      Game.SwitchDoubleJump()
    end,
    GetCurrentValue = function()
      return Game.GetDoubleJump()
    end
  }
end
function msemenu.UnlockAllRewards()
  Game.CloseIngameMenu()
  Game.AddSF(0, "Game.UnlockAllRewards", "")
end
function msemenu.KillAllEnemies()
  Game.CloseIngameMenu()
  Game.AddSF(0, "Game.KillAllEnemies", "")
end
function msemenu.ResetAmiibosTimestamp()
  Game.ResetAmiibosTimestamp()
end
function msemenu.KillEmmy()
  Game.CloseIngameMenu()
  Game.AddSF(0, "Game.KillEmmy", "")
end
function msemenu.KillCurrentBoss()
  Game.CloseIngameMenu()
  Game.AddSF(0, "Game.KillCurrentBoss", "")
  Game.SetIAmACheater()
end
function msemenu.SwitchForceSkipCutscenes()
  return {
    OnDirActivated = function()
      if Game.IsForceSkipCutscenes() then
        Game.SetForceSkipCutscenes(false)
      else
        Game.SetForceSkipCutscenes(true)
      end
    end,
    GetCurrentValue = function()
      return Game.IsForceSkipCutscenes()
    end
  }
end
function msemenu.RecoverSpecialEnergy()
  if Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY") ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", (Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY")))
  end
  Game.GetPlayer().SPECIALENERGY:Fill()
end
function msemenu.RecoverLife()
  Game.GetPlayer().LIFE.fCurrentLife = Game.GetPlayer().LIFE.fMaxLife
end
function msemenu.RecoverAmmo()
  if Game.GetPlayer() ~= nil and Game.GetPlayer().INVENTORY ~= nil then
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_MISSILE_CURRENT", Game.GetItemAmount(Game.GetPlayerName(), "ITEM_WEAPON_MISSILE_MAX"), true)
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_POWER_BOMB_CURRENT", Game.GetItemAmount(Game.GetPlayerName(), "ITEM_WEAPON_POWER_BOMB_MAX"), true)
    Game.ReinitPlayerFromBlackboard()
  end
end
function msemenu.UnlockChargeBeam()
  if Game.GetPlayer() ~= nil and Game.GetPlayer().INVENTORY ~= nil then
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_CHARGE_BEAM", 1, true)
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_DIFFUSION_BEAM", 0, true)
    guicallbacks.OnPlayerReinit()
  end
end
function msemenu.UnlockDiffusionBeam()
  if Game.GetPlayer() ~= nil and Game.GetPlayer().INVENTORY ~= nil then
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_CHARGE_BEAM", 1, true)
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_DIFFUSION_BEAM", 1, true)
    guicallbacks.OnPlayerReinit()
  end
end
function msemenu.UnlockGrappleBeam()
  if Game.GetPlayer() ~= nil and Game.GetPlayer().INVENTORY ~= nil then
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_GRAPPLE_BEAM", 1, true)
    guicallbacks.OnPlayerReinit()
  end
end
function msemenu.UnlockPowerBeam()
  if Game.GetPlayer() ~= nil and Game.GetPlayer().INVENTORY ~= nil then
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_WIDE_BEAM", 0, true)
    guicallbacks.OnPlayerReinit()
  end
end
function msemenu.UnlockWideBeam()
  if Game.GetPlayer() ~= nil and Game.GetPlayer().INVENTORY ~= nil then
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_WIDE_BEAM", 1, true)
    guicallbacks.OnPlayerReinit()
  end
end
function msemenu.UnlockScrewAttack()
  if Game.GetPlayer() ~= nil and Game.GetPlayer().INVENTORY ~= nil then
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_SCREW_ATTACK", 1, true)
    guicallbacks.OnPlayerReinit()
  end
end
function msemenu.UnlockEnergyShield()
  Samus.SetAbilityUnlocked("EnergyShield", true)
  guicallbacks.OnPlayerReinit()
end
function msemenu.UnlockEnergyWave()
  Samus.SetAbilityUnlocked("EnergyWave", true)
  guicallbacks.OnPlayerReinit()
end
function msemenu.UnlockPhaseDisplacement()
  Samus.SetAbilityUnlocked("PhaseDisplacement", true)
  guicallbacks.OnPlayerReinit()
end
function msemenu.UnlockScanningPulse()
  Samus.SetAbilityUnlocked("ScanningPulse", true)
  guicallbacks.OnPlayerReinit()
end
function msemenu.GainCentralUnitSpbSprWeapon()
  Game.GainCentralUnitSpbSprWeapon()
  Game.ReinitPlayerFromBlackboard()
end
function msemenu.GainAllItemsAndPowerUps()
  if Game.GetPlayer() ~= nil then
    if Game.GetPlayer().SPECIALENERGY ~= nil then
      Game.GetPlayer().SPECIALENERGY.fMaxEnergy = 2200
      Game.GetPlayer().SPECIALENERGY.fEnergy = 2200
    end
    if Game.GetPlayer().LIFE ~= nil then
      Game.GetPlayer().LIFE.fMaxLife = 1099
      Game.GetPlayer().LIFE.fCurrentLife = 1099
    end
    if Game.GetPlayer().INVENTORY ~= nil then
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_MAX_LIFE", 799, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_CURRENT_LIFE", 799, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_MAX_SPECIAL_ENERGY", 1000, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_CURRENT_SPECIAL_ENERGY", 1000, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_MISSILE_CURRENT", 150, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_MISSILE_MAX", 150, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_POWER_BOMB", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_POWER_BOMB_CURRENT", 10, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_POWER_BOMB_MAX", 10, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_GRAVITY_SUIT", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_VARIA_SUIT", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_BOMB", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_CHARGE_BEAM", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_DIFFUSION_BEAM", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_GRAPPLE_BEAM", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_WIDE_BEAM", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_ICE_BEAM", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_WAVE_BEAM", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_SPAZER_BEAM", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_PLASMA_BEAM", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_SUPER_MISSILE", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_ICE_MISSILE", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_LINE_BOMB", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_MULTILOCKON", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_SPECIAL_ENERGY", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_DOUBLE_JUMP", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_MORPH_BALL", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_SCREW_ATTACK", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_SPACE_JUMP", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_SPRING_BALL", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_MAGNET_GLOVE", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_FLOOR_SLIDE", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_OPTIC_CAMOUFLAGE", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_SPEED_BOOSTER", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_GHOST_AURA", 1, true)
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_SONAR", 1, true)
      Game.ReinitPlayerFromBlackboard()
    end
  end
end
function msemenu.CurrentMinimapVisitAndScanAllCells()
  Game.CurrentMinimapVisitAndScanAllCells()
end
function msemenu.ScanVisitDiscoverEverything()
  Game.ScanVisitDiscoverEverything()
end
function msemenu.HideScenario()
  Game.HideScenario()
end
function msemenu.ShowScenario()
  Game.ShowScenario()
end
function msemenu.GenerateEntityFunctionMsgEntry(_ARG_0_, _ARG_1_, ...)
  return function(_ARG_0_)
    Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_)))[_UPVALUE1_](Game.GetActor((msemenu.FilterEntityIDValue(_UPVALUE0_))), unpack(_UPVALUE2_))
  end
end
function msemenu.GenerateBlackboardBoolMsgEntry(_ARG_0_, _ARG_1_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Blackboard.SetProp(_UPVALUE0_, _UPVALUE1_, "b", not Blackboard.GetProp(_UPVALUE0_, _UPVALUE1_))
    end,
    GetCurrentValue = function()
      return Blackboard.GetProp(_UPVALUE0_, _UPVALUE1_)
    end
  }
end
function msemenu.GenerateInventoryEntry(_ARG_0_, _ARG_1_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsDebugPadButtonPressed("L1") and _UPVALUE0_.IncrementSlow ~= nil then
      elseif Game.IsDebugPadButtonPressed("R1") and _UPVALUE0_.IncrementFast ~= nil then
      elseif _UPVALUE0_.Increment ~= nil then
      end
      if _ARG_1_ == "Right" then
        Game.SetItemAmount(Game.GetPlayerName(), _UPVALUE1_, Game.GetItemAmount(Game.GetPlayerName(), _UPVALUE1_) + _UPVALUE0_.Increment)
      else
        Game.SetItemAmount(Game.GetPlayerName(), _UPVALUE1_, Game.GetItemAmount(Game.GetPlayerName(), _UPVALUE1_) - _UPVALUE0_.Increment)
      end
      Game.ReinitPlayerFromBlackboard()
      Game.SetIAmACheater()
    end,
    GetCurrentValue = function()
      return Game.GetItemAmount(Game.GetPlayerName(), _UPVALUE0_)
    end
  }
end
function msemenu.GenerateInventoryItems()
  for _FORV_4_, _FORV_5_ in pairs(debuginventory) do
  end
  return {
    [_FORV_4_] = msemenu.GenerateInventoryEntry(_FORV_4_, _FORV_5_)
  }
end
function msemenu.GenerateWeaponList()
  for _FORV_4_, _FORV_5_ in ipairs(debugweapons) do
    table.insert({}, {
      ItemKey = _FORV_5_[1],
      ItemContent = msemenu.GenerateInventoryListEntry(_FORV_5_[1], _FORV_5_)
    })
  end
  return {}
end
function msemenu.GenerateItemsList()
  for _FORV_4_, _FORV_5_ in ipairs(debugitems) do
    table.insert({}, {
      ItemKey = _FORV_5_[1],
      ItemContent = msemenu.GenerateInventoryListEntry(_FORV_5_[1], _FORV_5_)
    })
  end
  return {}
end
function msemenu.GenerateAbilitiesList()
  for _FORV_4_, _FORV_5_ in ipairs(debugabilities) do
    table.insert({}, {
      ItemKey = _FORV_5_[1],
      ItemContent = msemenu.GenerateInventoryListEntry(_FORV_5_[1], _FORV_5_)
    })
  end
  return {}
end
function msemenu.GenerateInventoryListEntry(_ARG_0_, _ARG_1_)
  return {
    OnActivated = function(_ARG_0_)
      if _UPVALUE0_.Amount ~= nil then
      end
      if Game.GetItemAmount(Game.GetPlayerName(), _UPVALUE0_.Item) > 0 then
        Game.SetItemAmount(Game.GetPlayerName(), _UPVALUE0_.Item, 0)
        if _UPVALUE0_.ItemMax ~= nil then
          Game.SetItemAmount(Game.GetPlayerName(), _UPVALUE0_.ItemMax, 0)
        end
      else
        Game.SetItemAmount(Game.GetPlayerName(), _UPVALUE0_.Item, _UPVALUE0_.Amount)
        if _UPVALUE0_.ItemMax ~= nil then
          Game.SetItemAmount(Game.GetPlayerName(), _UPVALUE0_.ItemMax, _UPVALUE0_.Amount)
        end
      end
      Game.ReinitPlayerFromBlackboard()
    end,
    GetCurrentValue = function()
      if Game.GetItemAmount(Game.GetPlayerName(), _UPVALUE0_.Item) > 0 then
        return "ON"
      else
        return "OFF"
      end
    end
  }
end
function msemenu.GeneratePlayCutsceneDefWithPreload(_ARG_0_)
  return function()
    Game.LaunchCutsceneInViewerMode("cutscenes/" .. _UPVALUE0_.Name .. "/takes/01/" .. _UPVALUE0_.Name .. "01.bmscu")
    Game.FadeIn(0.1, 0.2)
  end
end
function msemenu.GenerateCutscene2DItems(_ARG_0_, _ARG_1_)
  for _FORV_6_, _FORV_7_ in pairs(_ARG_0_) do
    if _ARG_1_ then
      {
        [_FORV_7_.Name] = {},
        [_FORV_7_.Name] = msemenu.GeneratePlayCutsceneDefWithPreload(_FORV_7_)
      }[_FORV_7_.Name][".PlayAll (with Preload)"] = msemenu.GeneratePlayCutsceneDefWithPreload(_FORV_7_)
      for _FORV_11_ = 1, _FORV_7_.NumTakes do
        {
          [_FORV_7_.Name] = {},
          [_FORV_7_.Name] = msemenu.GeneratePlayCutsceneDefWithPreload(_FORV_7_)
        }[_FORV_7_.Name][string.format("%02d", _FORV_11_)] = function()
          Game.LaunchCutsceneInViewerMode(_UPVALUE0_)
          Game.FadeIn(0.1, 0.2)
        end
      end
    else
    end
  end
  return {
    [_FORV_7_.Name] = {},
    [_FORV_7_.Name] = msemenu.GeneratePlayCutsceneDefWithPreload(_FORV_7_)
  }
end
function msemenu.GenerateCutscene3DItems(_ARG_0_, _ARG_1_)
  for _FORV_6_, _FORV_7_ in pairs(_ARG_0_) do
    if _ARG_1_ then
    else
    end
  end
  return {
    [string.sub("[" .. string.sub(_FORV_7_.Player, 5) .. "]" .. _FORV_6_, 0, 25)] = function()
      Game.CSDirectorSetNumStages(1)
      Game.CSDirectorSetStageCfg(0, _UPVALUE0_, _UPVALUE1_, _UPVALUE2_, _UPVALUE3_.Player, _UPVALUE3_.Map)
      Game.CSDirectorEnableLoadingScreen(true)
      Game.CSDirectorPlay()
    end,
    [_FORV_7_.Name] = msemenu.GeneratePlayCutsceneDefWithPreload(_FORV_7_)
  }
end
msemenu.MenuList = nil
msemenu.CurrentMenuPath = nil
msemenu.CurrentMenu = nil
msemenu.OnClosed = nil
function msemenu.main()
end
function msemenu.close()
  GUI.SetProperties("DebugMenu", {Enabled = false})
  GUI.SetProperties("HUD", {Enabled = true})
  Game.TogglePause()
  if msemenu.OnClosed ~= nil then
    msemenu.OnClosed()
  end
end
function msemenu.GetParentMenuPath(_ARG_0_)
  return string.gmatch(_ARG_0_, "(.*)%.[^%.]+$")()
end
function msemenu.GetMenu(_ARG_0_)
  for _FORV_5_ in _ARG_0_:gmatch("[_%w ][_%w #@-%-]*") do
  end
  return (msemenu.GetMenuItemByKey(msemenu, _FORV_5_))
end
function msemenu.GetValueString(_ARG_0_)
  if type(_ARG_0_) == "number" then
  else
  end
  return (tostring(_ARG_0_))
end
function msemenu.Update(_ARG_0_)
  msemenu.CurrentMenuPath = _ARG_0_
  msemenu.CurrentMenu = msemenu.GetMenu(_ARG_0_)
  if msemenu.CurrentMenu == nil then
    utils.LOG(utils.LOGTYPE_DEFAULT, "MENU IS NIL")
    return
  end
  for _FORV_10_, _FORV_11_ in pairs(msemenu.CurrentMenu) do
    if type(_FORV_11_) == "table" and _FORV_11_.ItemKey ~= nil then
    end
    if type(_FORV_11_.ItemContent) == "table" then
      if _FORV_11_.ItemContent.GetCurrentValue ~= nil then
      elseif _FORV_11_.ItemContent.OnDirActivated == nil and _FORV_11_.ItemContent.OnActivated == nil then
      end
    end
    table.insert({}, "[" .. _FORV_11_.ItemKey .. "]")
    table.insert({}, "[SUBMENU]")
    table.insert({}, true)
    table.insert({}, false)
    table.insert({}, false)
  end
  GUI.SetMenuListValues(msemenu.DebugMenuMain:FindChild("ListComposition"), {}, {}, {}, {}, {}, false)
end
function msemenu.Refresh()
  msemenu.Update(msemenu.CurrentMenuPath)
  if msemenu.items[" Debug"] ~= nil then
    if msemenu.items[" Debug"].Entities ~= nil then
      msemenu.UpdateEntitiesMenu()
    end
    if msemenu.items[" Debug"].Locations ~= nil then
      msemenu.items[" Debug"].Locations = {}
      if CurrentScenarioID ~= nil then
      end
      if msemenu_debug_locations[CurrentScenarioID] ~= nil then
        for _FORV_5_, _FORV_6_ in ipairs(msemenu_debug_locations[CurrentScenarioID]) do
          msemenu.items[" Debug"].Locations[_FORV_6_[1]] = function()
            Game.GetPlayer().vPos = V3D(_UPVALUE0_[1], _UPVALUE0_[2], _UPVALUE0_[3])
            Game.CloseDebugMenu(2)
          end
        end
      end
    end
  end
end
function msemenu.OnItemActivated(_ARG_0_, _ARG_1_, _ARG_2_)
  if type((msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))))) == "table" then
    if msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).OnDirActivated ~= nil then
      if msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).GetCurrentValue then
        GUI.SetMenuListValue(msemenu.DebugMenuMain:FindChild("ListComposition"), _ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"), msemenu.GetValueString(msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).GetCurrentValue((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*")))), true, false)
      elseif msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).OnDirActivated(_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"), _ARG_2_.ActivationDir) ~= nil and type((msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).OnDirActivated(_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"), _ARG_2_.ActivationDir))) ~= "table" then
        GUI.SetMenuListValue(msemenu.DebugMenuMain:FindChild("ListComposition"), _ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"), msemenu.GetValueString((msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).OnDirActivated(_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"), _ARG_2_.ActivationDir))), true, false)
      elseif msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).OnDirActivated(_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"), _ARG_2_.ActivationDir) ~= nil and type((msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).OnDirActivated(_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"), _ARG_2_.ActivationDir))) == "table" and _ARG_2_.ActivationDir == "ActivationButton" then
        msemenu.CurrentMenu[_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*")] = msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).OnDirActivated(_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"), _ARG_2_.ActivationDir)
        msemenu.Update(msemenu.CurrentMenuPath .. "." .. _ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))
      end
    elseif msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).OnActivated ~= nil then
      msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).OnActivated((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*")))
      if msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).GetCurrentValue then
        GUI.SetMenuListValue(msemenu.DebugMenuMain:FindChild("ListComposition"), _ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"), msemenu.GetValueString(msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))).GetCurrentValue((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*")))), true, false)
      end
    elseif _ARG_2_.ActivationDir == "ActivationButton" then
      msemenu.Update(msemenu.CurrentMenuPath .. "." .. _ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))
    end
  elseif type((msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*"))))) == "function" and _ARG_2_.ActivationDir == "ActivationButton" then
    msemenu.GetCurrentMenuItemByKey((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*")))((_ARG_2_.SelectedItem:match("[_%w ][_%w #@-%-]*")))
  end
  return 1
end
function msemenu.OnItemCancel()
  if msemenu.GetParentMenuPath(msemenu.CurrentMenuPath) ~= nil and msemenu.GetParentMenuPath(msemenu.CurrentMenuPath) ~= "" then
    msemenu.Update((msemenu.GetParentMenuPath(msemenu.CurrentMenuPath)))
  end
  return 1
end
function msemenu.OnMenuEnabled()
  msemenu.Update("items")
  return 1
end
function msemenu.Create(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  msemenu.CloseOnCancel = _ARG_3_
  msemenu.DebugMenuRoot = GUI.CreateDisplayObjectEx("DebugMenu", "CDisplayObjectContainer", {Enabled = _ARG_2_})
  msemenu.DebugMenuMain = GUI.CreateMenuComposition(msemenu.DebugMenuRoot, "Main")
  msemenu.MenuList = msemenu.DebugMenuMain:FindChild("ListComposition")
  msemenu.MenuList:SetEventHandler("Start", "msemenu.OnMenuEnabled")
  msemenu.MenuList:SetEventHandler("Activated", "msemenu.OnItemActivated")
  msemenu.MenuList:SetEventHandler("Cancel", "msemenu.OnItemCancel")
  msemenu.Update("items")
  return msemenu.DebugMenuRoot
end
function msemenu.CreateEntityMenu(_ARG_0_)
  if _ARG_0_ ~= nil then
    if Game.GetActorComponents(_ARG_0_) ~= nil then
      for _FORV_6_, _FORV_7_ in pairs((Game.GetActorComponents(_ARG_0_))) do
        for _FORV_14_, _FORV_15_ in pairs((Game.GetActorComponentVariables(_ARG_0_, _FORV_6_))) do
        end
        if 0 < 0 + 1 then
        end
      end
    end
  end
  return {
    ["_Delete"] = msemenu.GenerateEntityFunctionMsgEntry(_ARG_0_, "DelMe"),
    ["_Kill"] = msemenu.GenerateEntityFunctionMsgEntry(_ARG_0_, "ForceDead", true),
    [_FORV_6_] = {
      [_FORV_14_] = msemenu.GenerateComponentVarEntry(_ARG_0_, _FORV_6_, _FORV_14_, _FORV_15_)
    }
  }
end
msemenu.tEntitiesMenuCategories = {
  {
    Name = "Players",
    Charclasses = {samus = true, morphball = true}
  },
  {Name = "AIs", ComponentID = "AI"},
  {Name = "Triggers", ComponentID = "TRIGGER"},
  {
    Name = "SpawnGroups",
    ComponentID = "SPAWNGROUP"
  }
}
function msemenu.UpdateEntitiesMenu()
  for _FORV_5_, _FORV_6_ in ipairs(msemenu.tEntitiesMenuCategories) do
  end
  for _FORV_5_, _FORV_6_ in pairs((Game.GetEntities())) do
    if msemenu.CreateEntityMenu(_FORV_5_) ~= nil then
      for _FORV_12_, _FORV_13_ in ipairs(msemenu.tEntitiesMenuCategories) do
        if _FORV_13_.Charclasses ~= nil and _FORV_6_ ~= nil then
        end
        if not (_FORV_13_.Charclasses[_FORV_6_] == true) and _FORV_13_.ComponentID ~= nil then
        end
        if Game.HasEntityComponent(_FORV_5_, _FORV_13_.ComponentID) then
          {
            [_FORV_6_.Name] = {},
            ["_NoCategory_"] = {}
          }[_FORV_13_.Name][_FORV_5_] = msemenu.CreateEntityMenu(_FORV_5_)
          break
        end
      end
      if not true then
        {
          [_FORV_6_.Name] = {},
          ["_NoCategory_"] = {}
        }._NoCategory_[_FORV_5_] = msemenu.CreateEntityMenu(_FORV_5_)
      end
    end
  end
  msemenu.items[" Debug"].Entities = {
    [_FORV_6_.Name] = {},
    ["_NoCategory_"] = {}
  }
end
function msemenu.EnableDroppedItemsAttraction()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsDroppedItemsAttractionEnabled() then
        Game.EnableDroppedItemsAttraction(false)
      else
        Game.EnableDroppedItemsAttraction(true)
      end
    end,
    GetCurrentValue = function()
      return Game.IsDroppedItemsAttractionEnabled()
    end
  }
end
function msemenu.ChangeDroppedItemAttractionAcceleration()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "Right" then
        Game.SetDroppedItemAttractionAcceleration(Game.GetDroppedItemAttractionAcceleration() + 1)
      else
        Game.SetDroppedItemAttractionAcceleration(Game.GetDroppedItemAttractionAcceleration() - 1)
      end
    end,
    GetCurrentValue = function()
      return Game.GetDroppedItemAttractionAcceleration()
    end
  }
end
function msemenu.DebugBreakablePolyIndex()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "Right" then
        Game.IncrementNavMeshGeneratorDebugBreakableTileIndex()
      else
        Game.DecrementNavMeshGeneratorDebugBreakableTileIndex()
      end
    end,
    GetCurrentValue = function()
      return Game.GetNavMeshGeneratorDebugBreakableTileIndex()
    end
  }
end
function msemenu.GenerateSwitchSoundMode()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Game.SwitchSoundMode()
    end,
    GetCurrentValue = function()
      return Game.GetSoundMode()
    end
  }
end
function msemenu.GetScenarioAreaName(_ARG_0_)
  if string.match(_ARG_0_, "_(.*)"):len() >= 2 then
    if tonumber((string.match(_ARG_0_, "_(.*)"):sub(string.match(_ARG_0_, "_(.*)"):len(), (string.match(_ARG_0_, "_(.*)"):len())))) == nil and tonumber((string.match(_ARG_0_, "_(.*)"):sub(string.match(_ARG_0_, "_(.*)"):len() - 1, string.match(_ARG_0_, "_(.*)"):len() - 1))) ~= nil then
      utils.LOG(utils.LOGTYPE_GUI, "GetScenarioAreaName: Formatting name to " .. string.match(_ARG_0_, "_(.*)"):sub(0, string.match(_ARG_0_, "_(.*)"):len() - 1))
    end
    if msemenu.aAreasLevels[string.match(_ARG_0_, "_(.*)"):sub(0, string.match(_ARG_0_, "_(.*)"):len() - 1)] ~= nil then
      utils.LOG(utils.LOGTYPE_GUI, "GetScenarioAreaName: Changing name to " .. msemenu.aAreasLevels[string.match(_ARG_0_, "_(.*)"):sub(0, string.match(_ARG_0_, "_(.*)"):len() - 1)])
    end
  end
  return msemenu.aAreasLevels[string.match(_ARG_0_, "_(.*)"):sub(0, string.match(_ARG_0_, "_(.*)"):len() - 1)]
end
function msemenu.copytable(_ARG_0_, _ARG_1_)
  if type(_ARG_0_) ~= "table" then
    return _ARG_0_
  end
  if _ARG_1_ and _ARG_1_[_ARG_0_] then
    return _ARG_1_[_ARG_0_]
  end
  _ARG_1_ or {}[_ARG_0_] = setmetatable({}, getmetatable(_ARG_0_))
  for _FORV_7_, _FORV_8_ in pairs(_ARG_0_) do
    setmetatable({}, getmetatable(_ARG_0_))[msemenu.copytable(_FORV_7_, _ARG_1_ or {})] = msemenu.copytable(_FORV_8_, _ARG_1_ or {})
  end
  return (setmetatable({}, getmetatable(_ARG_0_)))
end
function msemenu.GenerateLoadEventItems(_ARG_0_)
  for _FORV_6_, _FORV_7_ in pairs(_ARG_0_) do
    for _FORV_13_, _FORV_14_ in pairs({}) do
      if _FORV_14_.ItemKey == _FORV_6_ then
        break
      end
    end
    if _FORV_14_ == nil then
      table.insert({}, 1, {
        ItemKey = _FORV_6_,
        ItemContent = {}
      })
    end
    for _FORV_13_, _FORV_14_ in ipairs((msemenu.copytable(_FORV_7_, nil))) do
      if #_FORV_14_[4] > 0 then
        for _FORV_23_, _FORV_24_ in ipairs(_FORV_14_[4]) do
        end
        table.insert({
          ItemKey = _FORV_6_,
          ItemContent = {}
        }.ItemContent, _FORV_13_, {
          ItemKey = _FORV_14_[1],
          ItemContent = {
            OnDirActivated = function(_ARG_0_, _ARG_1_)
              if _ARG_1_ == "ActivationButton" then
                if msemenu_debug_saves[_UPVALUE0_] ~= nil and msemenu_debug_saves[_UPVALUE0_][_UPVALUE1_] ~= nil then
                  utils.LOG(utils.LOGTYPE_GUI, "GenerateLoadEventItems: Loading Game from Save " .. msemenu_debug_saves[_UPVALUE0_][_UPVALUE1_])
                  Game.LoadGameFromAssets(msemenu_debug_saves[_UPVALUE0_][_UPVALUE1_])
                end
                if type(_UPVALUE2_[3]) == "string" then
                  Game.LoadGameFromAssets(_UPVALUE2_[3])
                else
                  if true == false then
                    ScenarioMenu.LoadScenario(_UPVALUE0_)
                  end
                  Game.AddPSF(0.2, "Scenario.SetPlayerPosition", "fff", _UPVALUE2_[3][1], _UPVALUE2_[3][2], _UPVALUE2_[3][3])
                end
              end
            end,
            GetCurrentValue = function()
              return _UPVALUE0_
            end
          }
        })
      end
    end
  end
  table.sort({}, function(_ARG_0_, _ARG_1_)
    function find(_ARG_0_, _ARG_1_)
      for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
        if _FORV_6_ == _ARG_1_ then
          return _FORV_5_
        end
      end
      return -1
    end
    return find(msemenu.aAreasPresavedGames, _ARG_0_.ItemKey) < find(msemenu.aAreasPresavedGames, _ARG_1_.ItemKey)
  end)
  return {}
end
function msemenu.SwitchFixedSlotTime()
  return {
    OnDirActivated = function()
      Game.ToggleFixedStepTime()
    end,
    GetCurrentValue = function()
      if Game.GetFixedStepTime() then
        return "ENABLED"
      else
        return "DISABLED"
      end
    end
  }
end
function msemenu.SwitchPostprocessEnabled()
  return {
    OnDirActivated = function()
      Game.SetPostprocessEnabled(not Game.GetPostprocessEnabled())
    end,
    GetCurrentValue = function()
      if Game.GetPostprocessEnabled() then
        return "ENABLED"
      else
        return "DISABLED"
      end
    end
  }
end
function msemenu.SwitchCrazyDropFactor()
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "ActivationButton" or _ARG_1_ == "Right" then
      else
      end
      Game.SetCrazyDropFactor(2)
    end,
    GetCurrentValue = function()
      if Game.GetCrazyDropFactor() == 0 then
        return "DEFAULT"
      elseif Game.GetCrazyDropFactor() == 1 then
        return "LESS"
      elseif Game.GetCrazyDropFactor() == 2 then
        return "NONE"
      else
        return "ERROR"
      end
    end
  }
end
msemenu.tGenerateLanguageSelectItems = {
  English = function()
    Game.SetCurrentLanguage("ENGLISH")
  end,
  Spanish = function()
    Game.SetCurrentLanguage("SPANISH")
  end,
  German = function()
    Game.SetCurrentLanguage("GERMAN")
  end,
  French = function()
    Game.SetCurrentLanguage("FRENCH")
  end,
  Dutch = function()
    Game.SetCurrentLanguage("DUTCH")
  end,
  Italian = function()
    Game.SetCurrentLanguage("ITALIAN")
  end,
  Japanese = function()
    Game.SetCurrentLanguage("JAPANESE")
  end,
  Korean = function()
    Game.SetCurrentLanguage("KOREAN")
  end,
  Chinese = function()
    Game.SetCurrentLanguage("CHINESE")
  end
}
function msemenu.GenerateLanguageSelectItems()
  return msemenu.tGenerateLanguageSelectItems
end
function msemenu.GeneratePopups(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
  end
  return {
    [_FORV_6_] = function()
      Game.AddSF(0.1, "utils.GeneratePopupUntilSuccess", "s", _UPVALUE0_)
    end
  }
end
function msemenu.GenerateSwitchFrontByPass()
  return {
    GetCurrentValue = function()
      if Game.GetSetFrontByPass() then
        return "Enabled"
      else
        return "Disabled"
      end
    end,
    OnDirActivated = function()
      Game.GetSetFrontByPass(not Game.GetSetFrontByPass())
    end
  }
end
function msemenu.GenerateSetMixValues()
  return {
    LeftRear = {
      OnDirActivated = function(_ARG_0_, _ARG_1_)
        if _ARG_1_ == "Right" then
          Game.GetSetSurroundPan().LR = Game.GetSetSurroundPan().LR + 0.05
        elseif _ARG_1_ == "Left" then
          Game.GetSetSurroundPan().LR = Game.GetSetSurroundPan().LR - 0.05
        end
        Game.GetSetSurroundPan(Game.GetSetSurroundPan().LR, Game.GetSetSurroundPan().LF, Game.GetSetSurroundPan().RR, Game.GetSetSurroundPan().RF)
      end,
      GetCurrentValue = function()
        return Game.GetSetSurroundPan().LR
      end
    },
    RightRear = {
      OnDirActivated = function(_ARG_0_, _ARG_1_)
        if _ARG_1_ == "Right" then
          Game.GetSetSurroundPan().RR = Game.GetSetSurroundPan().RR + 0.05
        elseif _ARG_1_ == "Left" then
          Game.GetSetSurroundPan().RR = Game.GetSetSurroundPan().RR - 0.05
        end
        Game.GetSetSurroundPan(Game.GetSetSurroundPan().LR, Game.GetSetSurroundPan().LF, Game.GetSetSurroundPan().RR, Game.GetSetSurroundPan().RF)
      end,
      GetCurrentValue = function()
        return Game.GetSetSurroundPan().RR
      end
    },
    LeftFront = {
      OnDirActivated = function(_ARG_0_, _ARG_1_)
        if _ARG_1_ == "Right" then
          Game.GetSetSurroundPan().LF = Game.GetSetSurroundPan().LF + 0.05
        elseif _ARG_1_ == "Left" then
          Game.GetSetSurroundPan().LF = Game.GetSetSurroundPan().LF - 0.05
        end
        Game.GetSetSurroundPan(Game.GetSetSurroundPan().LR, Game.GetSetSurroundPan().LF, Game.GetSetSurroundPan().RR, Game.GetSetSurroundPan().RF)
      end,
      GetCurrentValue = function()
        return Game.GetSetSurroundPan().LF
      end
    },
    RightFront = {
      OnDirActivated = function(_ARG_0_, _ARG_1_)
        if _ARG_1_ == "Right" then
          Game.GetSetSurroundPan().RF = Game.GetSetSurroundPan().RF + 0.05
        elseif _ARG_1_ == "Left" then
          Game.GetSetSurroundPan().RF = Game.GetSetSurroundPan().RF - 0.05
        end
        Game.GetSetSurroundPan(Game.GetSetSurroundPan().LR, Game.GetSetSurroundPan().LF, Game.GetSetSurroundPan().RR, Game.GetSetSurroundPan().RF)
      end,
      GetCurrentValue = function()
        return Game.GetSetSurroundPan().RF
      end
    }
  }
end
function msemenu.GetTunableData(_ARG_0_, _ARG_1_)
  print(_ARG_0_ .. "." .. _ARG_1_)
  for _FORV_8_ in string.gmatch(_ARG_0_ .. "." .. _ARG_1_, "[A-z|0-9]+") do
  end
  return {
    category = Game.GetTunables()[nil],
    property = _FORV_8_
  }
end
function msemenu.GenerateTunableModePropertyEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == "Right" then
      else
      end
      if msemenu.GetTunableData(_UPVALUE1_, _UPVALUE2_).category[msemenu.GetTunableData(_UPVALUE1_, _UPVALUE2_).property] - 1 > _UPVALUE3_ then
      else
      end
      msemenu.GetTunableData(_UPVALUE1_, _UPVALUE2_).category[msemenu.GetTunableData(_UPVALUE1_, _UPVALUE2_).property] = _UPVALUE3_
    end,
    GetCurrentValue = function()
      print(msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).category[msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).property])
      return _UPVALUE3_[msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).category[msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).property] + (1 - _UPVALUE2_)]
    end,
    sCategoryId = _ARG_0_,
    sPropertyId = _ARG_1_
  }
end
function msemenu.GenerateTunableNumberPropertyEntry(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      if Game.IsDebugPadButtonPressed("L1") then
        fIncrement = _UPVALUE1_ / 10
      elseif Game.IsDebugPadButtonPressed("R1") then
        fIncrement = _UPVALUE1_ * 10
      else
        fIncrement = _UPVALUE1_
      end
      if _ARG_1_ == "Right" then
      else
      end
      if msemenu.GetTunableData(_UPVALUE2_, _UPVALUE3_).category[msemenu.GetTunableData(_UPVALUE2_, _UPVALUE3_).property] - fIncrement > _UPVALUE4_ then
      else
      end
      msemenu.GetTunableData(_UPVALUE2_, _UPVALUE3_).category[msemenu.GetTunableData(_UPVALUE2_, _UPVALUE3_).property] = _UPVALUE0_
    end,
    GetCurrentValue = function()
      return msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).category[msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).property]
    end,
    sCategoryId = _ARG_0_,
    sPropertyId = _ARG_1_
  }
end
function msemenu.GenerateTunableBoolPropertyEntry(_ARG_0_, _ARG_1_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).category[msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).property] = not msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).category[msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).property]
    end,
    GetCurrentValue = function()
      return msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).category[msemenu.GetTunableData(_UPVALUE0_, _UPVALUE1_).property] and "ENABLED" or "DISABLED"
    end,
    sCategoryId = _ARG_0_,
    sPropertyId = _ARG_1_
  }
end
function msemenu.FindItemContent(_ARG_0_, _ARG_1_)
  for _FORV_6_, _FORV_7_ in ipairs(_ARG_0_) do
    if _FORV_7_ ~= nil and _FORV_7_.ItemKey ~= nil and _FORV_7_.ItemKey == _ARG_1_ and _FORV_7_.ItemContent ~= nil then
      break
    end
  end
  if _FORV_7_.ItemContent == nil then
    table.insert(_ARG_0_, {
      ItemKey = _ARG_1_,
      ItemContent = {}
    })
    for _FORV_6_, _FORV_7_ in ipairs(_ARG_0_) do
      if _FORV_7_ ~= nil and _FORV_7_.ItemKey ~= nil and _FORV_7_.ItemKey == _ARG_1_ and _FORV_7_.ItemContent ~= nil then
        break
      end
    end
  end
  return _FORV_7_.ItemContent
end
function msemenu.SwitchPerformanceInfoEnabled()
  return {
    OnDirActivated = function()
      if Game.GetPerformanceInfoEnabled() then
        Game.SetPerformanceInfoEnabled(false)
      else
        Game.SetPerformanceInfoEnabled(true)
      end
    end,
    GetCurrentValue = function()
      return Game.GetPerformanceInfoEnabled()
    end
  }
end
