Game.ImportLibrary("gui/scripts/msemenu.lua")
Game.ImportLibrary("gui/scripts/scenariomenu_common.lua", false)
Game.ImportLibrary("gui/scripts/msemenu_scenarios.lua", false)
msemenu_presaved = {}
function msemenu_presaved.Create(_ARG_0_)
  return (msemenu.Create("Up", "items", true, false, true, 11, "CDebugMenuEntryItemRenderer"))
end
msemenu_presaved.checkpoints = {
  s010_cave = {
    {
      ID = "protoemmy",
      Desc = "Proto Emmy",
      StartPoint = "SP_Checkpoint_ProtoEmmy"
    },
    {
      ID = "emmycave",
      Desc = "Emmy Cave",
      StartPoint = "SP_Checkpoint_EmmyCave"
    },
    {
      ID = "focustuto",
      Desc = "Emmy Range Tutorial",
      StartPoint = "SP_Checkpoint_FocusTutorial"
    },
    {
      ID = "watervalve",
      Desc = "Water Valve",
      StartPoint = "SP_Checkpoint_WaterValve"
    },
    {
      ID = "chargebeam",
      Desc = "Charge Beam",
      StartPoint = "SP_Checkpoint_ChargeBeam"
    },
    {
      ID = "thermaldevice",
      Desc = "Thermal Device",
      StartPoint = "SP_Checkpoint_ThermalDevice"
    },
    {
      ID = "centralunit",
      Desc = "Central Unit",
      StartPoint = "SP_Checkpoint_CentralUnit"
    },
    {
      ID = "magnetglove",
      Desc = "Magnet Glove",
      StartPoint = "SP_Checkpoint_MagnetGlove"
    },
    {
      ID = "opticalcamo",
      Desc = "Optical Camo",
      StartPoint = "SP_Checkpoint_OpticalCamo"
    },
    {
      ID = "chainreaction",
      Desc = "Chain Reaction",
      StartPoint = "SP_Checkpoint_ChainReaction"
    },
    {
      ID = "variasuit",
      Desc = "Varia Suit",
      StartPoint = "SP_Checkpoint_VariaSuit"
    },
    {
      ID = "grapple",
      Desc = "Grapple",
      StartPoint = "SP_Checkpoint_Grapple"
    }
  },
  s020_magma = {
    {
      ID = "startmagma",
      Desc = "Start Magma",
      StartPoint = "LE_Platform_Elevator_FromCave"
    },
    {
      ID = "emmymagma",
      Desc = "Emmy Magma",
      StartPoint = "SP_Checkpoint_EmmyMagma"
    },
    {
      ID = "centralunit",
      Desc = "Central Unit",
      StartPoint = "SP_Checkpoint_CentralUnit"
    },
    {
      ID = "morphball",
      Desc = "MorphBall",
      StartPoint = "SP_Checkpoint_MorphBall"
    },
    {
      ID = "kraid",
      Desc = "Kraid",
      StartPoint = "SP_Checkpoint_Kraid"
    }
  },
  s030_baselab = {
    {
      ID = "startbaselab",
      Desc = "Start Base Lab",
      StartPoint = "wagontrain_magma_000_platform"
    },
    {
      ID = "blackout",
      Desc = "Blackout",
      StartPoint = "SP_Checkpoint_Blackout"
    },
    {
      ID = "emmybaselab",
      Desc = "Emmy Base Lab",
      StartPoint = "SP_Checkpoint_EmmyBaseLab"
    },
    {
      ID = "afterdiffusion",
      Desc = "After Difussion",
      StartPoint = "SP_Checkpoint_AfterDiffusion"
    },
    {
      ID = "blackout2",
      Desc = "Blackout 2",
      StartPoint = "SP_Checkpoint_Blackout2"
    },
    {
      ID = "bomb",
      Desc = "Bomb",
      StartPoint = "SP_Checkpoint_Bomb"
    },
    {
      ID = "afteraqua",
      Desc = "After Aqua",
      StartPoint = "SP_Checkpoint_AfterAqua"
    },
    {
      ID = "speedbooster",
      Desc = "Speed Booster",
      StartPoint = "SP_Checkpoint_SpeedBooster"
    },
    {
      ID = "afterprofessor",
      Desc = "After Professor",
      StartPoint = "SP_Checkpoint_AfterProfessor"
    }
  }
}
msemenu_presaved.playthroughts = {
  pt_official = "playdata:playthroughs/pt_official/pt_official"
}
function msemenu_presaved.GenerateCheckpointItem(_ARG_0_, _ARG_1_, _ARG_2_)
  return {
    ItemKey = _ARG_0_,
    ItemContent = {
      OnDirActivated = function(_ARG_0_, _ARG_1_)
        if _ARG_1_ == "ActivationButton" then
          Game.LoadGameFromPlaythrough(_UPVALUE0_, _UPVALUE1_)
        end
      end
    }
  }
end
function msemenu_presaved.GenerateLoadMenuForPlaythrought(_ARG_0_)
  for _FORV_8_ = 0, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():Size() - 1 do
    table.insert({
      ["Playthrough"] = {},
      ["Select Area"] = {},
      ["Select Emmys"] = {},
      ["Select Central Units"] = {},
      ["Select Bosses"] = {},
      ["Select Cutscenes"] = {},
      ["Select Fake Adam Communication"] = {},
      ["Select Events"] = {},
      ["Select Abilities"] = {}
    }.Playthrough, (msemenu_presaved.GenerateCheckpointItem(string.format("%03d", _FORV_8_) .. " - " .. Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sScenarioID .. " - " .. Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).strDesc, _ARG_0_, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sCheckpointID)))
    if {
      ["Playthrough"] = {},
      ["Select Area"] = {},
      ["Select Emmys"] = {},
      ["Select Central Units"] = {},
      ["Select Bosses"] = {},
      ["Select Cutscenes"] = {},
      ["Select Fake Adam Communication"] = {},
      ["Select Events"] = {},
      ["Select Abilities"] = {}
    }["Select Area"][Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sScenarioID] == nil then
      {
        ["Playthrough"] = {},
        ["Select Area"] = {},
        ["Select Emmys"] = {},
        ["Select Central Units"] = {},
        ["Select Bosses"] = {},
        ["Select Cutscenes"] = {},
        ["Select Fake Adam Communication"] = {},
        ["Select Events"] = {},
        ["Select Abilities"] = {}
      }["Select Area"][Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sScenarioID] = {}
    end
    table.insert({
      ["Playthrough"] = {},
      ["Select Area"] = {},
      ["Select Emmys"] = {},
      ["Select Central Units"] = {},
      ["Select Bosses"] = {},
      ["Select Cutscenes"] = {},
      ["Select Fake Adam Communication"] = {},
      ["Select Events"] = {},
      ["Select Abilities"] = {}
    }["Select Area"][Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sScenarioID], (msemenu_presaved.GenerateCheckpointItem(Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).strDesc, _ARG_0_, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sCheckpointID)))
    if Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_):HasTag("EMMY") then
      table.insert({
        ["Playthrough"] = {},
        ["Select Area"] = {},
        ["Select Emmys"] = {},
        ["Select Central Units"] = {},
        ["Select Bosses"] = {},
        ["Select Cutscenes"] = {},
        ["Select Fake Adam Communication"] = {},
        ["Select Events"] = {},
        ["Select Abilities"] = {}
      }["Select Emmys"], (msemenu_presaved.GenerateCheckpointItem(Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).strDesc, _ARG_0_, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sCheckpointID)))
    end
    if Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_):HasTag("BOSS") then
      table.insert({
        ["Playthrough"] = {},
        ["Select Area"] = {},
        ["Select Emmys"] = {},
        ["Select Central Units"] = {},
        ["Select Bosses"] = {},
        ["Select Cutscenes"] = {},
        ["Select Fake Adam Communication"] = {},
        ["Select Events"] = {},
        ["Select Abilities"] = {}
      }["Select Bosses"], (msemenu_presaved.GenerateCheckpointItem(Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).strDesc, _ARG_0_, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sCheckpointID)))
    end
    if Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_):HasTag("CUTSCENE") then
      table.insert({
        ["Playthrough"] = {},
        ["Select Area"] = {},
        ["Select Emmys"] = {},
        ["Select Central Units"] = {},
        ["Select Bosses"] = {},
        ["Select Cutscenes"] = {},
        ["Select Fake Adam Communication"] = {},
        ["Select Events"] = {},
        ["Select Abilities"] = {}
      }["Select Cutscenes"], (msemenu_presaved.GenerateCheckpointItem(Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).strDesc, _ARG_0_, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sCheckpointID)))
    end
    if Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_):HasTag("CU") then
      table.insert({
        ["Playthrough"] = {},
        ["Select Area"] = {},
        ["Select Emmys"] = {},
        ["Select Central Units"] = {},
        ["Select Bosses"] = {},
        ["Select Cutscenes"] = {},
        ["Select Fake Adam Communication"] = {},
        ["Select Events"] = {},
        ["Select Abilities"] = {}
      }["Select Central Units"], (msemenu_presaved.GenerateCheckpointItem(Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).strDesc, _ARG_0_, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sCheckpointID)))
    end
    if Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_):HasTag("ADAM") then
      table.insert({
        ["Playthrough"] = {},
        ["Select Area"] = {},
        ["Select Emmys"] = {},
        ["Select Central Units"] = {},
        ["Select Bosses"] = {},
        ["Select Cutscenes"] = {},
        ["Select Fake Adam Communication"] = {},
        ["Select Events"] = {},
        ["Select Abilities"] = {}
      }["Select Fake Adam Communication"], (msemenu_presaved.GenerateCheckpointItem(Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).strDesc, _ARG_0_, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sCheckpointID)))
    end
    if Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_):HasTag("EVENT") then
      table.insert({
        ["Playthrough"] = {},
        ["Select Area"] = {},
        ["Select Emmys"] = {},
        ["Select Central Units"] = {},
        ["Select Bosses"] = {},
        ["Select Cutscenes"] = {},
        ["Select Fake Adam Communication"] = {},
        ["Select Events"] = {},
        ["Select Abilities"] = {}
      }["Select Events"], (msemenu_presaved.GenerateCheckpointItem(Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).strDesc, _ARG_0_, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sCheckpointID)))
    end
    if Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_):HasTag("ABILITY") then
      table.insert({
        ["Playthrough"] = {},
        ["Select Area"] = {},
        ["Select Emmys"] = {},
        ["Select Central Units"] = {},
        ["Select Bosses"] = {},
        ["Select Cutscenes"] = {},
        ["Select Fake Adam Communication"] = {},
        ["Select Events"] = {},
        ["Select Abilities"] = {}
      }["Select Abilities"], (msemenu_presaved.GenerateCheckpointItem(Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).strDesc, _ARG_0_, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():GetCheckpointDefs():AtIndex(_FORV_8_).sCheckpointID)))
    end
  end
  return {
    ["Playthrough"] = {},
    ["Select Area"] = {},
    ["Select Emmys"] = {},
    ["Select Central Units"] = {},
    ["Select Bosses"] = {},
    ["Select Cutscenes"] = {},
    ["Select Fake Adam Communication"] = {},
    ["Select Events"] = {},
    ["Select Abilities"] = {}
  }
end
function msemenu_presaved.GenerateSaveMenuForPlaythrought(_ARG_0_, _ARG_1_)
  for _FORV_9_ = 0, Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]).dctCheckpointDatas:Size() - 1 do
    if Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]):GetDef():FindCheckpointDef(Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]).dctCheckpointDatas:AtIndex(_FORV_9_).sCheckpointDefID).sScenarioID == _ARG_1_ then
      table.insert({}, {
        ItemKey = Game.RetrievePlaythrough(msemenu_presaved.playthroughts[_ARG_0_]).dctCheckpointDatas:AtIndex(_FORV_9_).sCheckpointDefID,
        ItemContent = {
          OnDirActivated = function(_ARG_0_, _ARG_1_)
            if _ARG_1_ == "ActivationButton" then
              Game.LoadGameFromPlaythrough(_UPVALUE0_, _UPVALUE1_.sCheckpointDefID)
            end
          end
        }
      })
    end
  end
  return {}
end
