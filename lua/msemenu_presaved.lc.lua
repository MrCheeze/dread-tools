local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu.lua"
L0_1(L1_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/scenariomenu_common.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu_scenarios.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = {}
msemenu_presaved = L0_1
L0_1 = msemenu_presaved
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = msemenu
  L2_2 = L2_2.Create
  L3_2 = "Up"
  L4_2 = "items"
  L5_2 = true
  L6_2 = false
  L7_2 = true
  L8_2 = 11
  L9_2 = "CDebugMenuEntryItemRenderer"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = L2_2
  return L1_2
end
L0_1.Create = L1_1
L0_1 = msemenu_presaved
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.ID = "protoemmy"
L3_1.Desc = "Proto Emmy"
L3_1.StartPoint = "SP_Checkpoint_ProtoEmmy"
L4_1 = {}
L4_1.ID = "emmycave"
L4_1.Desc = "Emmy Cave"
L4_1.StartPoint = "SP_Checkpoint_EmmyCave"
L5_1 = {}
L5_1.ID = "focustuto"
L5_1.Desc = "Emmy Range Tutorial"
L5_1.StartPoint = "SP_Checkpoint_FocusTutorial"
L6_1 = {}
L6_1.ID = "watervalve"
L6_1.Desc = "Water Valve"
L6_1.StartPoint = "SP_Checkpoint_WaterValve"
L7_1 = {}
L7_1.ID = "chargebeam"
L7_1.Desc = "Charge Beam"
L7_1.StartPoint = "SP_Checkpoint_ChargeBeam"
L8_1 = {}
L8_1.ID = "thermaldevice"
L8_1.Desc = "Thermal Device"
L8_1.StartPoint = "SP_Checkpoint_ThermalDevice"
L9_1 = {}
L9_1.ID = "centralunit"
L9_1.Desc = "Central Unit"
L9_1.StartPoint = "SP_Checkpoint_CentralUnit"
L10_1 = {}
L10_1.ID = "magnetglove"
L10_1.Desc = "Magnet Glove"
L10_1.StartPoint = "SP_Checkpoint_MagnetGlove"
L11_1 = {}
L11_1.ID = "opticalcamo"
L11_1.Desc = "Optical Camo"
L11_1.StartPoint = "SP_Checkpoint_OpticalCamo"
L12_1 = {}
L12_1.ID = "chainreaction"
L12_1.Desc = "Chain Reaction"
L12_1.StartPoint = "SP_Checkpoint_ChainReaction"
L13_1 = {}
L13_1.ID = "variasuit"
L13_1.Desc = "Varia Suit"
L13_1.StartPoint = "SP_Checkpoint_VariaSuit"
L14_1 = {}
L14_1.ID = "grapple"
L14_1.Desc = "Grapple"
L14_1.StartPoint = "SP_Checkpoint_Grapple"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
L2_1[10] = L12_1
L2_1[11] = L13_1
L2_1[12] = L14_1
L1_1.s010_cave = L2_1
L2_1 = {}
L3_1 = {}
L3_1.ID = "startmagma"
L3_1.Desc = "Start Magma"
L3_1.StartPoint = "LE_Platform_Elevator_FromCave"
L4_1 = {}
L4_1.ID = "emmymagma"
L4_1.Desc = "Emmy Magma"
L4_1.StartPoint = "SP_Checkpoint_EmmyMagma"
L5_1 = {}
L5_1.ID = "centralunit"
L5_1.Desc = "Central Unit"
L5_1.StartPoint = "SP_Checkpoint_CentralUnit"
L6_1 = {}
L6_1.ID = "morphball"
L6_1.Desc = "MorphBall"
L6_1.StartPoint = "SP_Checkpoint_MorphBall"
L7_1 = {}
L7_1.ID = "kraid"
L7_1.Desc = "Kraid"
L7_1.StartPoint = "SP_Checkpoint_Kraid"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L1_1.s020_magma = L2_1
L2_1 = {}
L3_1 = {}
L3_1.ID = "startbaselab"
L3_1.Desc = "Start Base Lab"
L3_1.StartPoint = "wagontrain_magma_000_platform"
L4_1 = {}
L4_1.ID = "blackout"
L4_1.Desc = "Blackout"
L4_1.StartPoint = "SP_Checkpoint_Blackout"
L5_1 = {}
L5_1.ID = "emmybaselab"
L5_1.Desc = "Emmy Base Lab"
L5_1.StartPoint = "SP_Checkpoint_EmmyBaseLab"
L6_1 = {}
L6_1.ID = "afterdiffusion"
L6_1.Desc = "After Difussion"
L6_1.StartPoint = "SP_Checkpoint_AfterDiffusion"
L7_1 = {}
L7_1.ID = "blackout2"
L7_1.Desc = "Blackout 2"
L7_1.StartPoint = "SP_Checkpoint_Blackout2"
L8_1 = {}
L8_1.ID = "bomb"
L8_1.Desc = "Bomb"
L8_1.StartPoint = "SP_Checkpoint_Bomb"
L9_1 = {}
L9_1.ID = "afteraqua"
L9_1.Desc = "After Aqua"
L9_1.StartPoint = "SP_Checkpoint_AfterAqua"
L10_1 = {}
L10_1.ID = "speedbooster"
L10_1.Desc = "Speed Booster"
L10_1.StartPoint = "SP_Checkpoint_SpeedBooster"
L11_1 = {}
L11_1.ID = "afterprofessor"
L11_1.Desc = "After Professor"
L11_1.StartPoint = "SP_Checkpoint_AfterProfessor"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
L1_1.s030_baselab = L2_1
L0_1.checkpoints = L1_1
L0_1 = msemenu_presaved
L1_1 = {}
L1_1.pt_official = "playdata:playthroughs/pt_official/pt_official"
L0_1.playthroughts = L1_1
L0_1 = msemenu_presaved
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L3_2.ItemKey = A0_2
  L4_2 = {}
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if A1_3 == "ActivationButton" then
      L2_3 = Game
      L2_3 = L2_3.LoadGameFromPlaythrough
      L3_3 = A1_2
      L4_3 = A2_2
      L2_3(L3_3, L4_3)
    end
  end
  L4_2.OnDirActivated = L5_2
  L3_2.ItemContent = L4_2
  return L3_2
end
L0_1.GenerateCheckpointItem = L1_1
L0_1 = msemenu_presaved
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = {}
  L1_2.Playthrough = L2_2
  L2_2 = {}
  L1_2["Select Area"] = L2_2
  L2_2 = {}
  L1_2["Select Emmys"] = L2_2
  L2_2 = {}
  L1_2["Select Central Units"] = L2_2
  L2_2 = {}
  L1_2["Select Bosses"] = L2_2
  L2_2 = {}
  L1_2["Select Cutscenes"] = L2_2
  L2_2 = {}
  L1_2["Select Fake Adam Communication"] = L2_2
  L2_2 = {}
  L1_2["Select Events"] = L2_2
  L2_2 = {}
  L1_2["Select Abilities"] = L2_2
  L2_2 = Game
  L2_2 = L2_2.RetrievePlaythrough
  L3_2 = msemenu_presaved
  L3_2 = L3_2.playthroughts
  L3_2 = L3_2[A0_2]
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetDef
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetCheckpointDefs
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L7_2 = L4_2
  L6_2 = L4_2.Size
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = L4_2
    L9_2 = L4_2.AtIndex
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2.sCheckpointID
    L11_2 = string
    L11_2 = L11_2.format
    L12_2 = "%03d"
    L13_2 = L8_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = " - "
    L13_2 = L9_2.sScenarioID
    L14_2 = " - "
    L15_2 = L9_2.strDesc
    L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
    L12_2 = msemenu_presaved
    L12_2 = L12_2.GenerateCheckpointItem
    L13_2 = L11_2
    L14_2 = A0_2
    L15_2 = L10_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L1_2.Playthrough
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    L13_2 = msemenu_presaved
    L13_2 = L13_2.GenerateCheckpointItem
    L14_2 = L9_2.strDesc
    L15_2 = A0_2
    L16_2 = L10_2
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L14_2 = L1_2["Select Area"]
    L15_2 = L9_2.sScenarioID
    L14_2 = L14_2[L15_2]
    if L14_2 == nil then
      L14_2 = L1_2["Select Area"]
      L15_2 = L9_2.sScenarioID
      L16_2 = {}
      L14_2[L15_2] = L16_2
    end
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L1_2["Select Area"]
    L16_2 = L9_2.sScenarioID
    L15_2 = L15_2[L16_2]
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L15_2 = L9_2
    L14_2 = L9_2.HasTag
    L16_2 = "EMMY"
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L1_2["Select Emmys"]
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L15_2 = L9_2
    L14_2 = L9_2.HasTag
    L16_2 = "BOSS"
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L1_2["Select Bosses"]
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L15_2 = L9_2
    L14_2 = L9_2.HasTag
    L16_2 = "CUTSCENE"
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L1_2["Select Cutscenes"]
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L15_2 = L9_2
    L14_2 = L9_2.HasTag
    L16_2 = "CU"
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L1_2["Select Central Units"]
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L15_2 = L9_2
    L14_2 = L9_2.HasTag
    L16_2 = "ADAM"
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L1_2["Select Fake Adam Communication"]
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L15_2 = L9_2
    L14_2 = L9_2.HasTag
    L16_2 = "EVENT"
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L1_2["Select Events"]
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L15_2 = L9_2
    L14_2 = L9_2.HasTag
    L16_2 = "ABILITY"
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L1_2["Select Abilities"]
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
  end
  return L1_2
end
L0_1.GenerateLoadMenuForPlaythrought = L1_1
L0_1 = msemenu_presaved
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  L3_2 = Game
  L3_2 = L3_2.RetrievePlaythrough
  L4_2 = msemenu_presaved
  L4_2 = L4_2.playthroughts
  L4_2 = L4_2[A0_2]
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetDef
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.dctCheckpointDatas
  L6_2 = 0
  L8_2 = L5_2
  L7_2 = L5_2.Size
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = L5_2
    L10_2 = L5_2.AtIndex
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L12_2 = L4_2
    L11_2 = L4_2.FindCheckpointDef
    L13_2 = L10_2.sCheckpointDefID
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L11_2.sScenarioID
    if L12_2 == A1_2 then
      L12_2 = {}
      L13_2 = L10_2.sCheckpointDefID
      L12_2.ItemKey = L13_2
      L13_2 = {}
      function L14_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3
        if A1_3 == "ActivationButton" then
          L2_3 = Game
          L2_3 = L2_3.LoadGameFromPlaythrough
          L3_3 = A0_2
          L4_3 = L10_2
          L4_3 = L4_3.sCheckpointDefID
          L2_3(L3_3, L4_3)
        end
      end
      L13_2.OnDirActivated = L14_2
      L12_2.ItemContent = L13_2
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L2_2
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
  return L2_2
end
L0_1.GenerateSaveMenuForPlaythrought = L1_1
