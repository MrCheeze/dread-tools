Game.ImportLibrary("gui/scripts/msemenu.lua")
Game.ImportLibrary("gui/scripts/scenariomenu_common.lua", false)
Game.ImportLibrary("gui/scripts/msemenu_presaved.lua")
Game.ImportLibrary("gui/scripts/msemenu_ingame.lua")
Game.ImportLibrary("gui/scripts/msemenu_checkpoint.lua")
Game.ImportLibrary("gui/scripts/msemenu_scenarios.lua", false)
Game.ImportLibrary("gui/scripts/msemenu_debug_locations.lua", false)
msemenu_mainmenu = {}
function msemenu_mainmenu.Create(_ARG_0_)
  msemenu.items = msemenu_mainmenu.items
  if not Game.IsInFINAL() then
    msemenu.items.Debug = msemenu_mainmenu.debug_items
  end
  if msemenu.items.Config ~= nil and not Game.IsInWIN32() and msemenu.items.Config.Sound ~= nil then
    msemenu.items.Config.Sound.SpeakerMode = msemenu.DebugSetSpeakerMode()
    msemenu.items.Config.Sound.HeadphoneMultiplier = msemenu.DebugSetHeadPhoneMultiplier()
    msemenu.items.Config.Sound.StreamMix = msemenu.GenerateSetMixValues()
    msemenu.items.Config.Sound.FrontByPass = msemenu.GenerateSwitchFrontByPass()
  end
  function msemenu.OnClosed()
    GUI.ResetMainMenuReleaseGUI()
  end
  if Game.GetFileInfo("gui/scripts/msemenu_mainmenu_export.lua").Exists then
    Game.DoFile("gui/scripts/msemenu_mainmenu_export.lua")
  else
  end
  return (msemenu.Create("Up", "items", true, true, true, 11, "CDebugMenuEntryItemRenderer"))
end
function msemenu_mainmenu.EnableAmiiboMenu()
  Game.AddPSF(0.2, "Game.WriteToGameBlackboardSection", "ssb", "GAME", "AMIIBO_MENU_UNLOCKED", true)
end
function msemenu_mainmenu.LoadDebugScenario(_ARG_0_)
  Init.InitGameBlackboard()
  if _ARG_0_ ~= "surface" then
    msemenu_mainmenu.EnableAmiiboMenu()
  end
  ScenarioMenu.LoadScenario(_ARG_0_)
end
function msemenu_mainmenu.LoadPresavedDebugScenario(_ARG_0_)
  Game.LoadGameFromAssets(_ARG_0_)
  if _ARG_0_ ~= "surface" then
    msemenu_mainmenu.EnableAmiiboMenu()
  end
end
msemenu_mainmenu.tBossesTestScenarios = {}
msemenu_mainmenu.aArenasLevels = {
  "surface",
  "area1",
  "area2",
  "area2b",
  "area3",
  "area3b",
  "area3c",
  "area4",
  "area6",
  "area6b",
  "area6c",
  "area7",
  "area9",
  "area10"
}
function msemenu_mainmenu.GenerateLoadArenaItems(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    table.insert({}, {
      ItemKey = _FORV_6_[1],
      ItemContent = {},
      ItemContent = {
        OnDirActivated = function(_ARG_0_, _ARG_1_)
          if _ARG_1_ == "ActivationButton" then
            Game.LoadGameFromAssets(_UPVALUE0_ .. "/" .. _UPVALUE1_ .. "/" .. _UPVALUE2_)
          end
        end
      },
      ItemContent = {
        OnDirActivated = function(_ARG_0_, _ARG_1_)
          if _ARG_1_ == "ActivationButton" then
            msemenu_mainmenu.LoadDebugScenario(_UPVALUE0_)
          end
        end
      }
    })
    if msemenu_mainmenu.tBossesTestScenarios[_FORV_6_[1]] ~= nil then
    end
    if #_FORV_6_[2] > 0 then
      if {
        OnDirActivated = function(_ARG_0_, _ARG_1_)
          if _ARG_1_ == "ActivationButton" then
            msemenu_mainmenu.LoadDebugScenario(_UPVALUE0_)
          end
        end
      } ~= nil then
        table.insert({
          ItemKey = _FORV_6_[1],
          ItemContent = {},
          ItemContent = {
            OnDirActivated = function(_ARG_0_, _ARG_1_)
              if _ARG_1_ == "ActivationButton" then
                Game.LoadGameFromAssets(_UPVALUE0_ .. "/" .. _UPVALUE1_ .. "/" .. _UPVALUE2_)
              end
            end
          },
          ItemContent = {
            OnDirActivated = function(_ARG_0_, _ARG_1_)
              if _ARG_1_ == "ActivationButton" then
                msemenu_mainmenu.LoadDebugScenario(_UPVALUE0_)
              end
            end
          }
        }.ItemContent, {
          ItemKey = "_Test",
          ItemContent = {
            OnDirActivated = function(_ARG_0_, _ARG_1_)
              if _ARG_1_ == "ActivationButton" then
                msemenu_mainmenu.LoadDebugScenario(_UPVALUE0_)
              end
            end
          }
        })
      end
      for _FORV_15_, _FORV_16_ in pairs(_FORV_6_[2]) do
        for _FORV_25_, _FORV_26_ in pairs(_FORV_16_[2]) do
          for _FORV_30_, _FORV_31_ in ipairs(_FORV_26_) do
            if string.sub(_FORV_31_, 1, string.len(_FORV_6_[1])) == string.lower(_FORV_6_[1]) then
            end
          end
        end
        if 0 < 0 + 1 or {
          OnDirActivated = function(_ARG_0_, _ARG_1_)
            if _ARG_1_ == "ActivationButton" then
              msemenu_mainmenu.LoadDebugScenario(_UPVALUE0_)
            end
          end
        } ~= nil then
          table.insert({
            ItemKey = _FORV_6_[1],
            ItemContent = {},
            ItemContent = {
              OnDirActivated = function(_ARG_0_, _ARG_1_)
                if _ARG_1_ == "ActivationButton" then
                  Game.LoadGameFromAssets(_UPVALUE0_ .. "/" .. _UPVALUE1_ .. "/" .. _UPVALUE2_)
                end
              end
            },
            ItemContent = {
              OnDirActivated = function(_ARG_0_, _ARG_1_)
                if _ARG_1_ == "ActivationButton" then
                  msemenu_mainmenu.LoadDebugScenario(_UPVALUE0_)
                end
              end
            }
          }.ItemContent, {
            ItemKey = _FORV_6_[1] .. "_" .. _FORV_16_[1],
            ItemContent = {
              [_FORV_6_[1] .. "_" .. _FORV_16_[1] .. "_" .. "#" .. string.sub(_FORV_31_, string.len(_FORV_6_[1]) + 1)] = {
                OnDirActivated = function(_ARG_0_, _ARG_1_)
                  if _ARG_1_ == "ActivationButton" then
                    Game.LoadGameFromAssets(_UPVALUE0_ .. "/" .. _UPVALUE1_ .. "/" .. _UPVALUE2_)
                  end
                end
              }
            }
          })
        else
        end
      end
    elseif {
      OnDirActivated = function(_ARG_0_, _ARG_1_)
        if _ARG_1_ == "ActivationButton" then
          msemenu_mainmenu.LoadDebugScenario(_UPVALUE0_)
        end
      end
    } ~= nil then
    end
  end
  return {}
end
msemenu_mainmenu.aPopUps = {
  "#GUI_AMIIBO_NFC_READER_UPDATE",
  "#GUI_AMIIBO_IR_ERROR",
  "#GUI_AMIIBO_NFC_READER_ERROR",
  "#GUI_SAVE_DATA_CORRUPT"
}
function msemenu_mainmenu.GenerateEmmyTunnelConfig(_ARG_0_)
  return {
    OnDirActivated = function(_ARG_0_, _ARG_1_)
      Blackboard.SetProp("EMMY", _UPVALUE0_ .. "TunnelsEnabled", "b", not Blackboard.GetProp("EMMY", _UPVALUE0_ .. "TunnelsEnabled"))
    end,
    GetCurrentValue = function()
      if Blackboard.GetProp("EMMY", _UPVALUE0_ .. "TunnelsEnabled") then
        return "ENABLED"
      else
        return "DISABLED"
      end
    end
  }
end
msemenu_mainmenu.items = {}
if not Game.IsInFINAL() then
  (function()
    Game.DoFile("gui/scripts/scenariodata/areastoplay.lua")
    table.insert(msemenu_mainmenu.items, {
      ItemKey = "Play Areas",
      ItemContent = {}
    })
    msemenu_mainmenu.tAreasTable = msemenu.FindItemContent(msemenu_mainmenu.items, "Play Areas")
    for _FORV_4_, _FORV_5_ in ipairs(ScenarioData.tAreasToPlay) do
      if _FORV_5_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tAreasTable, {
          ItemKey = _FORV_5_.sName,
          ItemContent = function()
            if _UPVALUE0_:Load() == false then
              ScenarioMenu.LoadScenario(_UPVALUE0_.sMap, true)
            end
          end
        })
      end
    end
  end)();
  (function()
    Game.DoFile("gui/scripts/scenariodata/regulargyms.lua")
    table.insert(msemenu_mainmenu.items, {
      ItemKey = "Regular Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tRegularGymsTable = msemenu.FindItemContent(msemenu_mainmenu.items, "Regular Gyms")
    for _FORV_4_, _FORV_5_ in ipairs(ScenarioData.tRegularGyms) do
      if _FORV_5_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tRegularGymsTable, {
          ItemKey = _FORV_5_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
  end)();
  (function()
    Game.DoFile("gui/scripts/scenariodata/midbossesgyms.lua")
    table.insert(msemenu_mainmenu.items, {
      ItemKey = "Mid Bosses Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tMidBossesGymsTable = msemenu.FindItemContent(msemenu_mainmenu.items, "Mid Bosses Gyms")
    for _FORV_4_, _FORV_5_ in ipairs(ScenarioData.tMidBossesGyms) do
      if _FORV_5_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tMidBossesGymsTable, {
          ItemKey = _FORV_5_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
    table.insert(msemenu_mainmenu.tMidBossesGymsTable, {
      ItemKey = "Hydrogiga Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tMidBossesGymsTable_Hydrogiga = msemenu.FindItemContent(msemenu_mainmenu.tMidBossesGymsTable, "Hydrogiga Gyms")
    for _FORV_5_, _FORV_6_ in ipairs(ScenarioData.tMidBossesGyms_Hydrogiga) do
      if _FORV_6_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tMidBossesGymsTable_Hydrogiga, {
          ItemKey = _FORV_6_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
    table.insert(msemenu_mainmenu.tMidBossesGymsTable, {
      ItemKey = "Chozo Robot Soldier Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tMidBossesGymsTable_CRS = msemenu.FindItemContent(msemenu_mainmenu.tMidBossesGymsTable, "Chozo Robot Soldier Gyms")
    for _FORV_6_, _FORV_7_ in ipairs(ScenarioData.tMidBossesGyms_CRS) do
      if _FORV_7_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tMidBossesGymsTable_CRS, {
          ItemKey = _FORV_7_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
    table.insert(msemenu_mainmenu.tMidBossesGymsTable, {
      ItemKey = "Chozo Warrior X Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tMidBossesGymsTable_CWX = msemenu.FindItemContent(msemenu_mainmenu.tMidBossesGymsTable, "Chozo Warrior X Gyms")
    for _FORV_7_, _FORV_8_ in ipairs(ScenarioData.tMidBossesGyms_CWX) do
      if _FORV_8_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tMidBossesGymsTable_CWX, {
          ItemKey = _FORV_8_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
    table.insert(msemenu_mainmenu.tMidBossesGymsTable, {
      ItemKey = "Super Quetzoa Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tMidBossesGymsTable_SuperQuetzoa = msemenu.FindItemContent(msemenu_mainmenu.tMidBossesGymsTable, "Super Quetzoa Gyms")
    for _FORV_8_, _FORV_9_ in ipairs(ScenarioData.tMidBossesGyms_SuperQuetzoa) do
      if _FORV_9_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tMidBossesGymsTable_SuperQuetzoa, {
          ItemKey = _FORV_9_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
    table.insert(msemenu_mainmenu.tMidBossesGymsTable, {
      ItemKey = "Super Goliath Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tMidBossesGymsTable_SuperGoliath = msemenu.FindItemContent(msemenu_mainmenu.tMidBossesGymsTable, "Super Goliath Gyms")
    for _FORV_9_, _FORV_10_ in ipairs(ScenarioData.tMidBossesGyms_SuperGoliath) do
      if _FORV_10_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tMidBossesGymsTable_SuperGoliath, {
          ItemKey = _FORV_10_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
    table.insert(msemenu_mainmenu.tMidBossesGymsTable, {
      ItemKey = "Cooldown X Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tMidBossesGymsTable_CooldownX = msemenu.FindItemContent(msemenu_mainmenu.tMidBossesGymsTable, "Cooldown X Gyms")
    for _FORV_10_, _FORV_11_ in ipairs(ScenarioData.tMidBossesGyms_CooldownX) do
      if _FORV_11_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tMidBossesGymsTable_CooldownX, {
          ItemKey = _FORV_11_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
    Game.DoFile("gui/scripts/scenariodata/centralunitsgyms.lua")
    table.insert(msemenu_mainmenu.tMidBossesGymsTable, {
      ItemKey = "Central Unit",
      ItemContent = {}
    })
    msemenu_mainmenu.tCentralUnitGymsTable = msemenu.FindItemContent(msemenu_mainmenu.tMidBossesGymsTable, "Central Unit")
    for _FORV_11_, _FORV_12_ in ipairs(ScenarioData.tCentralUnitsGyms) do
      if _FORV_12_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tCentralUnitGymsTable, {
          ItemKey = _FORV_12_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
  end)();
  (function()
    Game.DoFile("gui/scripts/scenariodata/bossesgyms.lua")
    table.insert(msemenu_mainmenu.items, {
      ItemKey = "Bosses Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tBossesGymsTable = msemenu.FindItemContent(msemenu_mainmenu.items, "Bosses Gyms")
    for _FORV_4_, _FORV_5_ in ipairs(ScenarioData.tBossesGyms) do
      if _FORV_5_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tBossesGymsTable, {
          ItemKey = _FORV_5_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
    table.insert(msemenu_mainmenu.tBossesGymsTable, {
      ItemKey = "Kraid Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tBossesGymsTable_Kraid = msemenu.FindItemContent(msemenu_mainmenu.tBossesGymsTable, "Kraid Gyms")
    for _FORV_5_, _FORV_6_ in ipairs(ScenarioData.tBossesGyms_Kraid) do
      if _FORV_6_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tBossesGymsTable_Kraid, {
          ItemKey = _FORV_6_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
  end)();
  (function()
    Game.DoFile("gui/scripts/scenariodata/abilitiesgyms.lua")
    table.insert(msemenu_mainmenu.items, {
      ItemKey = "Abilities Gyms",
      ItemContent = {}
    })
    msemenu_mainmenu.tAbilitiesGymTable = msemenu.FindItemContent(msemenu_mainmenu.items, "Abilities Gyms")
    for _FORV_4_, _FORV_5_ in ipairs(ScenarioData.tAbilitiesGyms) do
      if _FORV_5_.bIsInFinal == true or not Game.IsInFINAL() then
        table.insert(msemenu_mainmenu.tAbilitiesGymTable, {
          ItemKey = _FORV_5_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
  end)();
  (function()
    if not Game.IsInFINAL() then
      Game.DoFile("gui/scripts/scenariodata/developgyms.lua")
      table.insert(msemenu_mainmenu.items, {
        ItemKey = "Develop Gyms",
        ItemContent = {}
      })
      msemenu_mainmenu.tDevelopGymTable = msemenu.FindItemContent(msemenu_mainmenu.items, "Develop Gyms")
      for _FORV_4_, _FORV_5_ in ipairs(ScenarioData.tDevelopGyms) do
        table.insert(msemenu_mainmenu.tDevelopGymTable, {
          ItemKey = _FORV_5_.sName,
          ItemContent = function()
            _UPVALUE0_:Load()
          end
        })
      end
    end
  end)();
  (function()
    table.insert(msemenu_mainmenu.items, {
      ItemKey = "Cutscenes",
      ItemContent = {}
    })
    msemenu_mainmenu.tCutScenes = msemenu.FindItemContent(msemenu_mainmenu.items, "Cutscenes")
    for _FORV_6_, _FORV_7_ in ipairs({
      {
        "Cave",
        "s010_cave",
        {
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0001gameintro_full",
            "cave_start",
            "cutsceneplayer_intro_space",
            true,
            true,
            false,
            false,
            false,
            "CurrentScenario.cutsceneplayer_intro_space_full",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0001gameintro_space",
            "cave_start",
            "cutsceneplayer_intro_space",
            true,
            true,
            false,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0001gameintro_flashbackinit",
            "cave_start",
            "cutsceneplayer_intro_flashbackinit",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0001gameintrolanding",
            "cave_start",
            "cutsceneplayer_intro_landing",
            true,
            true,
            false,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0001gameintro_arrivalatrium",
            "cave_start",
            "cutsceneplayer_intro_arrivalatrium",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0001gameintro_fight",
            "cave_start",
            "cutsceneplayer_intro_fight",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0001gameintro_flashbackend",
            "cave_start",
            "cutsceneplayer_intro_flashbackend",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0003firstcomunicationfakeadam",
            "cut_first_communication",
            "cutsceneplayer_3",
            false,
            true,
            true,
            true,
            true,
            "CurrentScenario.cutsceneplayer_3",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0005meleetutorial",
            "cave_start",
            "cutsceneplayer_5",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0034protoemmyappears",
            "cut_protoemmy_intro",
            "cutsceneplayer_34",
            false,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0035protoemmycantclimb",
            "cut_protoemmy_climb",
            "cutsceneplayer_35",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0048firstcupowerobtention",
            "cut_protoemmy_climb",
            "cutsceneplayer_48",
            false,
            true,
            true,
            true,
            true,
            "CurrentScenario.cutsceneplayer_48",
            "",
            350,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0036enteremmyzone",
            "cut_emmyzone_intro",
            "cutsceneplayer_36",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0037emmycaveappears",
            "cut_emmycave_intro",
            "cutsceneplayer_37",
            false,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0049centralunitdetectsamus01",
            "cut_before_cu",
            "cutsceneplayer_49-1",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            1300,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0049centralunitdetectsamus02",
            "cut_before_cu",
            "cutsceneplayer_49-2",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            1300,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0050firstcupresentation",
            "cut_cu",
            "cutsceneplayer_50",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0051cudeathandpowerobtention",
            "cut_cu",
            "cutsceneplayer_51",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0054scorpiuspresentation",
            "scorpius",
            "cutsceneplayer_54",
            true,
            true,
            true,
            false,
            false,
            "CurrentScenario.cutsceneplayer_54",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0055scorpiusphase2",
            "scorpius",
            "cutsceneplayer_55",
            true,
            true,
            true,
            false,
            false,
            "CurrentScenario.cutsceneplayer_55",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0155scorpiusphase3",
            "scorpius",
            "cutsceneplayer_155",
            true,
            true,
            true,
            false,
            false,
            "CurrentScenario.cutsceneplayer_155",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0057scorpiusdeath",
            "scorpius",
            "cutsceneplayer_57",
            true,
            true,
            true,
            false,
            false,
            "CurrentScenario.cutsceneplayer_57",
            "",
            0,
            150,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0030variasuiteobtention",
            "variasuit",
            "cutsceneplayer_30",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0007beginningofcooldown",
            "chozowarriorcave",
            "elevator_with_cutscene_aqua_000",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            0,
            0,
            0
          }
        }
      },
      {
        "Magma",
        "s020_magma",
        {
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0038magmaemmypresentation",
            "emmymagma",
            "cutsceneplayer_38",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            500,
            100,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0059kraidpresentation",
            "kraid",
            "cutsceneplayer_59",
            false,
            true,
            false,
            false,
            false,
            "",
            "",
            -400,
            2200,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0060kraidphase02",
            "kraid",
            "cutsceneplayer_60",
            true,
            true,
            false,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0061kraiddeath",
            "kraid",
            "cutsceneplayer_61",
            true,
            true,
            false,
            false,
            false,
            "CurrentScenario.cutsceneplayer_61",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0061kraiddeath_zipline_mb",
            "kraid",
            "cutsceneplayer_61_zipline_mb",
            true,
            true,
            false,
            "CurrentScenario.cutsceneplayer_61_zipline_mb",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0053genericcupowerobtention_r",
            "magma_cu",
            "cutsceneplayer_53",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0078cooldownpresentation",
            "cooldownx",
            "cutsceneplayer_78",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0081cooldowndeath",
            "cooldownx",
            "cutsceneplayer_81",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0081cooldowndeath_grab",
            "cooldownx",
            "cutsceneplayer_80_grab",
            true,
            true,
            true,
            false,
            false,
            "CurrentScenario.cutsceneplayer_80_grab",
            "",
            0,
            0,
            0
          }
        }
      },
      {
        "BaseLab",
        "s030_baselab",
        {
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0053genericcupowerobtention",
            "base_cu",
            "cutsceneplayer_53",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0039labemmypresentation",
            "emmybase",
            "cutsceneplayer_39",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          }
        }
      },
      {
        "Aqua",
        "s040_aqua",
        {
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0031gravitysuiteobtention",
            "gravitysuit",
            "cutsceneplayer_31",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0032ghostdashobtention",
            "ghostdash",
            "cutsceneplayer_32",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0063_hydrogiga-presentation",
            "hydrogiga",
            "cutsceneplayer_63",
            true,
            true,
            false,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0065hydrogigadeath",
            "hydrogiga",
            "cutsceneplayer_65",
            true,
            true,
            false,
            false,
            false,
            "",
            "",
            500,
            100,
            0
          }
        }
      },
      {
        "Forest",
        "s050_forest",
        {
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0033sonarobtention",
            "sonar",
            "cutsceneplayer_33",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0053genericcupowerobtention_r",
            "forest_cu",
            "cutsceneplayer_53",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0042professorxpresentation",
            "afterquarantine",
            "cutsceneplayer_42",
            true,
            true,
            false,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          }
        }
      },
      {
        "Quarantine",
        "s060_quarantine",
        {
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0067chozowarriorxpresentation",
            "chozowarriorx",
            "cutsceneplayer_67",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0113quarantinearrival",
            "quarantine_maingate",
            "cutsceneplayer_113",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0004quarantinedoorsopen",
            "quarantine_opened",
            "cutsceneplayer_4",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            -500,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0013firstencounterchozozombie",
            "quarantine_xenemy",
            "cutsceneplayer_13",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            100,
            0,
            0
          }
        }
      },
      {
        "Sanctuary",
        "s070_basesanc",
        {
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0040sancemmypresentation_full",
            "encounterprofessor",
            "cutsceneplayer_40",
            true,
            true,
            true,
            false,
            false,
            "CurrentScenario.cutsceneplayer_40_full",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0040sancemmypresentation_part1",
            "encounterprofessor",
            "cutsceneplayer_40",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0040sancemmypresentation_part2a",
            "encounterprofessor",
            "cutsceneplayer_40b_part1",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0040sancemmypresentation_part2b",
            "encounterprofessor",
            "cutsceneplayer_40b_part2",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0040sancemmypresentation_part3",
            "encounterprofessor",
            "cutsceneplayer_40c",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0053genericcupowerobtention",
            "sanc_cu",
            "cutsceneplayer_53",
            true,
            true,
            true,
            true,
            true,
            "",
            "",
            0,
            0,
            0
          }
        }
      },
      {
        "Shipyard",
        "s080_shipyard",
        {
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0043emmymetroidnization",
            "powerbomb",
            "cutsceneplayer_43",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0012metroidnizationstrongreactionevent",
            "strongreaction",
            "cutsceneplayer_12",
            false,
            true,
            true,
            false,
            false,
            "",
            "",
            300,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0071chozowarriorxelitepresentation",
            "elitechozowarriorx",
            "cutsceneplayer_71",
            false,
            true,
            false,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0110commanderxdeath",
            "commanderx",
            "cutsceneplayer_110",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0108shipyard",
            "commanderx",
            "cutsceneplayer_108",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0112endgame",
            "endgame",
            "cutsceneplayer_112",
            true,
            true,
            false,
            false,
            false,
            "",
            "",
            0,
            500,
            0
          }
        }
      },
      {
        "Skybase",
        "s090_skybase",
        {
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0086commanderorbital",
            "commander",
            "cutsceneplayer_86",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "100commandershowswings",
            "commander",
            "cutsceneplayer_100",
            true,
            true,
            true,
            false,
            false,
            "",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0101commanderlosehiswings_left",
            "commander",
            "cutsceneplayer_101",
            true,
            true,
            true,
            false,
            false,
            "CurrentScenario.cutsceneplayer_101_left",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0101commanderlosehiswings_right",
            "commander",
            "cutsceneplayer_101",
            true,
            true,
            true,
            false,
            false,
            "CurrentScenario.cutsceneplayer_101_right",
            "",
            0,
            0,
            0
          },
          {
            {
              PENDING = "P - ",
              BLOCKING = "B - ",
              WIP = "W - ",
              FINAL = "F - "
            }.WIP,
            "0108fallofskybase",
            "commander",
            "cutsceneplayer_108",
            true,
            true,
            true,
            false,
            false,
            "",
            "CurrentScenario.cutsceneplayer_108_end",
            0,
            0,
            0
          }
        }
      }
    }) do
      table.insert(msemenu_mainmenu.tCutScenes, {
        ItemKey = _FORV_7_[1],
        ItemContent = {}
      })
      for _FORV_12_, _FORV_13_ in ipairs(_FORV_7_[3]) do
        table.insert(msemenu.FindItemContent(msemenu_mainmenu.tCutScenes, _FORV_7_[1]), {
          ItemKey = _FORV_13_[1] .. _FORV_13_[2],
          ItemContent = function()
            Game.LaunchCutsceneFromPlaythrough(_UPVALUE0_[3], _UPVALUE0_[4], _UPVALUE0_[5], _UPVALUE0_[6], _UPVALUE0_[7], _UPVALUE0_[8], _UPVALUE0_[9], _UPVALUE0_[10], _UPVALUE0_[11], _UPVALUE0_[12], _UPVALUE0_[13], _UPVALUE0_[14])
          end
        })
      end
    end
  end)()
end
table.insert(msemenu_mainmenu.items, {
  ItemKey = "Load Checkpoint",
  ItemContent = msemenu_presaved.GenerateLoadMenuForPlaythrought("pt_official")
})
table.insert(msemenu_mainmenu.items, {
  ItemKey = "Load Savedata",
  ItemContent = msemenu.GenerateDefaultTableItems(function(_ARG_0_)
    Game.LoadProfile(_ARG_0_.ID, true)
  end, msemenu_checkpoint.profiles, "Desc")
})
if not Game.IsInFINAL() then
  (function()
    table.insert(msemenu_mainmenu.items, {
      ItemKey = "Credits",
      ItemContent = {}
    })
    table.insert(msemenu.FindItemContent(msemenu_mainmenu.items, "Credits"), {
      ItemKey = "Load Credits From Menu",
      ItemContent = function()
        Game.ShowEndGameCredits(false)
      end
    })
    table.insert(msemenu.FindItemContent(msemenu_mainmenu.items, "Credits"), {
      ItemKey = "Load Game Ending",
      ItemContent = {}
    })
    table.insert(msemenu.FindItemContent(msemenu.FindItemContent(msemenu_mainmenu.items, "Credits"), "Load Game Ending"), {
      ItemKey = "Normal OK",
      ItemContent = function()
        Game.LoadGameEnding(_UPVALUE0_, _UPVALUE1_)
      end
    })
    table.insert(msemenu.FindItemContent(msemenu.FindItemContent(msemenu_mainmenu.items, "Credits"), "Load Game Ending"), {
      ItemKey = "Normal GREAT",
      ItemContent = function()
        Game.LoadGameEnding(_UPVALUE0_, _UPVALUE1_)
      end
    })
    table.insert(msemenu.FindItemContent(msemenu.FindItemContent(msemenu_mainmenu.items, "Credits"), "Load Game Ending"), {
      ItemKey = "Normal EXCELLENT",
      ItemContent = function()
        Game.LoadGameEnding(_UPVALUE0_, _UPVALUE1_)
      end
    })
    table.insert(msemenu.FindItemContent(msemenu.FindItemContent(msemenu_mainmenu.items, "Credits"), "Load Game Ending"), {
      ItemKey = "Hard OK",
      ItemContent = function()
        Game.LoadGameEnding(_UPVALUE0_, _UPVALUE1_)
      end
    })
    table.insert(msemenu.FindItemContent(msemenu.FindItemContent(msemenu_mainmenu.items, "Credits"), "Load Game Ending"), {
      ItemKey = "Hard GREAT",
      ItemContent = function()
        Game.LoadGameEnding(_UPVALUE0_, _UPVALUE1_)
      end
    })
    table.insert(msemenu.FindItemContent(msemenu.FindItemContent(msemenu_mainmenu.items, "Credits"), "Load Game Ending"), {
      ItemKey = "Hard EXCELLENT",
      ItemContent = function()
        Game.LoadGameEnding(_UPVALUE0_, _UPVALUE1_)
      end
    })
  end)()
end
msemenu_mainmenu.debug_items = {
  {
    ItemKey = "Load Savedata",
    ItemContent = msemenu.GenerateDefaultTableItems(function(_ARG_0_)
      Game.LoadGame("savedata")
    end, msemenu_checkpoint.profiles, "Desc")
  },
  ["Load Scenario"] = msemenu.GenerateDefaultItemsWithAlias(ScenarioMenu.LoadScenario, tScenarioMenuDefs.aScenarios, tScenarioMenuDefs.aScenariosWithAlias)
}
table.insert(msemenu_mainmenu.items, {
  ItemKey = "Loading Tooltip",
  ItemContent = msemenu_ingame.GenerateForceLoadingScreenTooltip()
})
table.insert(msemenu_mainmenu.items, {
  ItemKey = "Show Subtitles",
  ItemContent = msemenu_ingame.SwitchShowSubtitles()
})
