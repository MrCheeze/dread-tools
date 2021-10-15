local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
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
L1_1 = "gui/scripts/msemenu_presaved.lua"
L0_1(L1_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu_ingame.lua"
L0_1(L1_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu_checkpoint.lua"
L0_1(L1_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu_scenarios.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu_debug_locations.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = {}
msemenu_mainmenu = L0_1
L0_1 = msemenu_mainmenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = msemenu
  L2_2 = msemenu_mainmenu
  L2_2 = L2_2.items
  L1_2.items = L2_2
  L1_2 = Game
  L1_2 = L1_2.IsInFINAL
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = msemenu
    L1_2 = L1_2.items
    L2_2 = msemenu_mainmenu
    L2_2 = L2_2.debug_items
    L1_2.Debug = L2_2
  end
  L1_2 = msemenu
  L1_2 = L1_2.items
  L1_2 = L1_2.Config
  if L1_2 ~= nil then
    L2_2 = Game
    L2_2 = L2_2.IsInWIN32
    L2_2 = L2_2()
    if not L2_2 then
      L2_2 = L1_2.Sound
      if L2_2 ~= nil then
        L3_2 = msemenu
        L3_2 = L3_2.DebugSetSpeakerMode
        L3_2 = L3_2()
        L2_2.SpeakerMode = L3_2
        L3_2 = msemenu
        L3_2 = L3_2.DebugSetHeadPhoneMultiplier
        L3_2 = L3_2()
        L2_2.HeadphoneMultiplier = L3_2
        L3_2 = msemenu
        L3_2 = L3_2.GenerateSetMixValues
        L3_2 = L3_2()
        L2_2.StreamMix = L3_2
        L3_2 = msemenu
        L3_2 = L3_2.GenerateSwitchFrontByPass
        L3_2 = L3_2()
        L2_2.FrontByPass = L3_2
      end
    end
  end
  L2_2 = msemenu
  function L3_2()
    local L0_3, L1_3
    L0_3 = GUI
    L0_3 = L0_3.ResetMainMenuReleaseGUI
    L0_3()
  end
  L2_2.OnClosed = L3_2
  L2_2 = nil
  L3_2 = Game
  L3_2 = L3_2.GetFileInfo
  L4_2 = "gui/scripts/msemenu_mainmenu_export.lua"
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.Exists
  if L4_2 then
    L4_2 = Game
    L4_2 = L4_2.DoFile
    L5_2 = "gui/scripts/msemenu_mainmenu_export.lua"
    L4_2(L5_2)
  else
    L4_2 = msemenu
    L4_2 = L4_2.Create
    L5_2 = "Up"
    L6_2 = "items"
    L7_2 = true
    L8_2 = true
    L9_2 = true
    L10_2 = 11
    L11_2 = "CDebugMenuEntryItemRenderer"
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = L4_2
  end
  return L2_2
end
L0_1.Create = L1_1
L0_1 = msemenu_mainmenu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.AddPSF
  L1_2 = 0.2
  L2_2 = "Game.WriteToGameBlackboardSection"
  L3_2 = "ssb"
  L4_2 = "GAME"
  L5_2 = "AMIIBO_MENU_UNLOCKED"
  L6_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.EnableAmiiboMenu = L1_1
L0_1 = msemenu_mainmenu
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Init
  L1_2 = L1_2.InitGameBlackboard
  L1_2()
  if A0_2 ~= "surface" then
    L1_2 = msemenu_mainmenu
    L1_2 = L1_2.EnableAmiiboMenu
    L1_2()
  end
  L1_2 = ScenarioMenu
  L1_2 = L1_2.LoadScenario
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.LoadDebugScenario = L1_1
L0_1 = msemenu_mainmenu
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Game
  L1_2 = L1_2.LoadGameFromAssets
  L2_2 = A0_2
  L1_2(L2_2)
  if A0_2 ~= "surface" then
    L1_2 = msemenu_mainmenu
    L1_2 = L1_2.EnableAmiiboMenu
    L1_2()
  end
end
L0_1.LoadPresavedDebugScenario = L1_1
L0_1 = msemenu_mainmenu
L1_1 = {}
L0_1.tBossesTestScenarios = L1_1
L0_1 = msemenu_mainmenu
L1_1 = {}
L2_1 = "surface"
L3_1 = "area1"
L4_1 = "area2"
L5_1 = "area2b"
L6_1 = "area3"
L7_1 = "area3b"
L8_1 = "area3c"
L9_1 = "area4"
L10_1 = "area6"
L11_1 = "area6b"
L12_1 = "area6c"
L13_1 = "area7"
L14_1 = "area9"
L15_1 = "area10"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L1_1[8] = L9_1
L1_1[9] = L10_1
L1_1[10] = L11_1
L1_1[11] = L12_1
L1_1[12] = L13_1
L1_1[13] = L14_1
L1_1[14] = L15_1
L0_1.aArenasLevels = L1_1
L0_1 = msemenu_mainmenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2[1]
    L8_2 = L6_2[2]
    L9_2 = {}
    L9_2.ItemKey = L7_2
    L10_2 = {}
    L9_2.ItemContent = L10_2
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L1_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = nil
    L11_2 = msemenu_mainmenu
    L11_2 = L11_2.tBossesTestScenarios
    L11_2 = L11_2[L7_2]
    if L11_2 ~= nil then
      L12_2 = {}
      function L13_2(A0_3, A1_3)
        local L2_3, L3_3
        if A1_3 == "ActivationButton" then
          L2_3 = msemenu_mainmenu
          L2_3 = L2_3.LoadDebugScenario
          L3_3 = L11_2
          L2_3(L3_3)
        end
      end
      L12_2.OnDirActivated = L13_2
      L10_2 = L12_2
    end
    L12_2 = #L8_2
    if 0 < L12_2 then
      if L10_2 ~= nil then
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L9_2.ItemContent
        L14_2 = {}
        L14_2.ItemKey = "_Test"
        L14_2.ItemContent = L10_2
        L12_2(L13_2, L14_2)
      end
      L12_2 = pairs
      L13_2 = L8_2
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      for L15_2, L16_2 in L12_2, L13_2, L14_2 do
        L17_2 = L16_2[1]
        L18_2 = L16_2[2]
        L19_2 = 0
        L20_2 = {}
        L21_2 = {}
        L22_2 = pairs
        L23_2 = L18_2
        L22_2, L23_2, L24_2 = L22_2(L23_2)
        for L25_2, L26_2 in L22_2, L23_2, L24_2 do
          L27_2 = ipairs
          L28_2 = L26_2
          L27_2, L28_2, L29_2 = L27_2(L28_2)
          for L30_2, L31_2 in L27_2, L28_2, L29_2 do
            L32_2 = L31_2
            L33_2 = string
            L33_2 = L33_2.sub
            L34_2 = L32_2
            L35_2 = 1
            L36_2 = string
            L36_2 = L36_2.len
            L37_2 = L7_2
            L36_2, L37_2 = L36_2(L37_2)
            L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2)
            L34_2 = string
            L34_2 = L34_2.lower
            L35_2 = L7_2
            L34_2 = L34_2(L35_2)
            if L33_2 == L34_2 then
              L33_2 = "#"
              L34_2 = string
              L34_2 = L34_2.sub
              L35_2 = L32_2
              L36_2 = string
              L36_2 = L36_2.len
              L37_2 = L7_2
              L36_2 = L36_2(L37_2)
              L36_2 = L36_2 + 1
              L34_2 = L34_2(L35_2, L36_2)
              L32_2 = L33_2 .. L34_2
            end
            L33_2 = {}
            function L34_2(A0_3, A1_3)
              local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
              if A1_3 == "ActivationButton" then
                L2_3 = Game
                L2_3 = L2_3.LoadGameFromAssets
                L3_3 = L17_2
                L4_3 = "/"
                L5_3 = L25_2
                L6_3 = "/"
                L7_3 = L31_2
                L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
                L2_3(L3_3)
              end
            end
            L33_2.OnDirActivated = L34_2
            L21_2 = L33_2
            L33_2 = L7_2
            L34_2 = "_"
            L35_2 = L17_2
            L36_2 = "_"
            L37_2 = L32_2
            L33_2 = L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2
            L20_2[L33_2] = L21_2
            L19_2 = L19_2 + 1
          end
        end
        if 0 < L19_2 or L10_2 ~= nil then
          L22_2 = table
          L22_2 = L22_2.insert
          L23_2 = L9_2.ItemContent
          L24_2 = {}
          L25_2 = L7_2
          L26_2 = "_"
          L27_2 = L17_2
          L25_2 = L25_2 .. L26_2 .. L27_2
          L24_2.ItemKey = L25_2
          L24_2.ItemContent = L20_2
          L22_2(L23_2, L24_2)
        else
          L9_2.ItemContent = L21_2
        end
      end
    elseif L10_2 ~= nil then
      L9_2.ItemContent = L10_2
    end
  end
  return L1_2
end
L0_1.GenerateLoadArenaItems = L1_1
L0_1 = msemenu_mainmenu
L1_1 = {}
L2_1 = "#GUI_AMIIBO_NFC_READER_UPDATE"
L3_1 = "#GUI_AMIIBO_IR_ERROR"
L4_1 = "#GUI_AMIIBO_NFC_READER_ERROR"
L5_1 = "#GUI_SAVE_DATA_CORRUPT"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L0_1.aPopUps = L1_1
L0_1 = msemenu_mainmenu
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = Blackboard
    L2_3 = L2_3.GetProp
    L3_3 = "EMMY"
    L4_3 = A0_2
    L5_3 = "TunnelsEnabled"
    L4_3 = L4_3 .. L5_3
    L2_3 = L2_3(L3_3, L4_3)
    L2_3 = not L2_3
    L3_3 = Blackboard
    L3_3 = L3_3.SetProp
    L4_3 = "EMMY"
    L5_3 = A0_2
    L6_3 = "TunnelsEnabled"
    L5_3 = L5_3 .. L6_3
    L6_3 = "b"
    L7_3 = L2_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L1_2.OnDirActivated = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Blackboard
    L0_3 = L0_3.GetProp
    L1_3 = "EMMY"
    L2_3 = A0_2
    L3_3 = "TunnelsEnabled"
    L2_3 = L2_3 .. L3_3
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L1_3 = "ENABLED"
      return L1_3
    else
      L1_3 = "DISABLED"
      return L1_3
    end
  end
  L1_2.GetCurrentValue = L2_2
  return L1_2
end
L0_1.GenerateEmmyTunnelConfig = L1_1
L0_1 = msemenu_mainmenu
L1_1 = {}
L0_1.items = L1_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Game
  L0_2 = L0_2.DoFile
  L1_2 = "gui/scripts/scenariodata/areastoplay.lua"
  L0_2(L1_2)
  L0_2 = "Play Areas"
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = msemenu_mainmenu
  L2_2 = L2_2.items
  L3_2 = {}
  L3_2.ItemKey = L0_2
  L4_2 = {}
  L3_2.ItemContent = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = msemenu_mainmenu
  L2_2 = msemenu
  L2_2 = L2_2.FindItemContent
  L3_2 = msemenu_mainmenu
  L3_2 = L3_2.items
  L4_2 = L0_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.tAreasTable = L2_2
  L1_2 = ipairs
  L2_2 = ScenarioData
  L2_2 = L2_2.tAreasToPlay
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.bIsInFinal
    if L6_2 ~= true then
      L6_2 = Game
      L6_2 = L6_2.IsInFINAL
      L6_2 = L6_2()
      if L6_2 then
        goto lbl_47
      end
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = msemenu_mainmenu
    L7_2 = L7_2.tAreasTable
    L8_2 = {}
    L9_2 = L5_2.sName
    L8_2.ItemKey = L9_2
    function L9_2()
      local L0_3, L1_3, L2_3
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3 = L0_3(L1_3)
      if L0_3 == false then
        L0_3 = ScenarioMenu
        L0_3 = L0_3.LoadScenario
        L1_3 = L5_2
        L1_3 = L1_3.sMap
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
    end
    L8_2.ItemContent = L9_2
    L6_2(L7_2, L8_2)
    ::lbl_47::
  end
end
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Game
  L0_2 = L0_2.DoFile
  L1_2 = "gui/scripts/scenariodata/regulargyms.lua"
  L0_2(L1_2)
  L0_2 = "Regular Gyms"
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = msemenu_mainmenu
  L2_2 = L2_2.items
  L3_2 = {}
  L3_2.ItemKey = L0_2
  L4_2 = {}
  L3_2.ItemContent = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = msemenu_mainmenu
  L2_2 = msemenu
  L2_2 = L2_2.FindItemContent
  L3_2 = msemenu_mainmenu
  L3_2 = L3_2.items
  L4_2 = L0_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.tRegularGymsTable = L2_2
  L1_2 = ipairs
  L2_2 = ScenarioData
  L2_2 = L2_2.tRegularGyms
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.bIsInFinal
    if L6_2 ~= true then
      L6_2 = Game
      L6_2 = L6_2.IsInFINAL
      L6_2 = L6_2()
      if L6_2 then
        goto lbl_47
      end
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = msemenu_mainmenu
    L7_2 = L7_2.tRegularGymsTable
    L8_2 = {}
    L9_2 = L5_2.sName
    L8_2.ItemKey = L9_2
    function L9_2()
      local L0_3, L1_3
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L8_2.ItemContent = L9_2
    L6_2(L7_2, L8_2)
    ::lbl_47::
  end
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = Game
  L0_2 = L0_2.DoFile
  L1_2 = "gui/scripts/scenariodata/midbossesgyms.lua"
  L0_2(L1_2)
  L0_2 = "Mid Bosses Gyms"
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = msemenu_mainmenu
  L2_2 = L2_2.items
  L3_2 = {}
  L3_2.ItemKey = L0_2
  L4_2 = {}
  L3_2.ItemContent = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = msemenu_mainmenu
  L2_2 = msemenu
  L2_2 = L2_2.FindItemContent
  L3_2 = msemenu_mainmenu
  L3_2 = L3_2.items
  L4_2 = L0_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.tMidBossesGymsTable = L2_2
  L1_2 = ipairs
  L2_2 = ScenarioData
  L2_2 = L2_2.tMidBossesGyms
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.bIsInFinal
    if L6_2 ~= true then
      L6_2 = Game
      L6_2 = L6_2.IsInFINAL
      L6_2 = L6_2()
      if L6_2 then
        goto lbl_47
      end
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = msemenu_mainmenu
    L7_2 = L7_2.tMidBossesGymsTable
    L8_2 = {}
    L9_2 = L5_2.sName
    L8_2.ItemKey = L9_2
    function L9_2()
      local L0_3, L1_3
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L8_2.ItemContent = L9_2
    L6_2(L7_2, L8_2)
    ::lbl_47::
  end
  L1_2 = "Hydrogiga Gyms"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = msemenu_mainmenu
  L3_2 = L3_2.tMidBossesGymsTable
  L4_2 = {}
  L4_2.ItemKey = L1_2
  L5_2 = {}
  L4_2.ItemContent = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = msemenu_mainmenu
  L3_2 = msemenu
  L3_2 = L3_2.FindItemContent
  L4_2 = msemenu_mainmenu
  L4_2 = L4_2.tMidBossesGymsTable
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.tMidBossesGymsTable_Hydrogiga = L3_2
  L2_2 = ipairs
  L3_2 = ScenarioData
  L3_2 = L3_2.tMidBossesGyms_Hydrogiga
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.bIsInFinal
    if L7_2 ~= true then
      L7_2 = Game
      L7_2 = L7_2.IsInFINAL
      L7_2 = L7_2()
      if L7_2 then
        goto lbl_92
      end
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = msemenu_mainmenu
    L8_2 = L8_2.tMidBossesGymsTable_Hydrogiga
    L9_2 = {}
    L10_2 = L6_2.sName
    L9_2.ItemKey = L10_2
    function L10_2()
      local L0_3, L1_3
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L9_2.ItemContent = L10_2
    L7_2(L8_2, L9_2)
    ::lbl_92::
  end
  L2_2 = "Chozo Robot Soldier Gyms"
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = msemenu_mainmenu
  L4_2 = L4_2.tMidBossesGymsTable
  L5_2 = {}
  L5_2.ItemKey = L2_2
  L6_2 = {}
  L5_2.ItemContent = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = msemenu_mainmenu
  L4_2 = msemenu
  L4_2 = L4_2.FindItemContent
  L5_2 = msemenu_mainmenu
  L5_2 = L5_2.tMidBossesGymsTable
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.tMidBossesGymsTable_CRS = L4_2
  L3_2 = ipairs
  L4_2 = ScenarioData
  L4_2 = L4_2.tMidBossesGyms_CRS
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.bIsInFinal
    if L8_2 ~= true then
      L8_2 = Game
      L8_2 = L8_2.IsInFINAL
      L8_2 = L8_2()
      if L8_2 then
        goto lbl_137
      end
    end
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = msemenu_mainmenu
    L9_2 = L9_2.tMidBossesGymsTable_CRS
    L10_2 = {}
    L11_2 = L7_2.sName
    L10_2.ItemKey = L11_2
    function L11_2()
      local L0_3, L1_3
      L0_3 = L7_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L10_2.ItemContent = L11_2
    L8_2(L9_2, L10_2)
    ::lbl_137::
  end
  L3_2 = "Chozo Warrior X Gyms"
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = msemenu_mainmenu
  L5_2 = L5_2.tMidBossesGymsTable
  L6_2 = {}
  L6_2.ItemKey = L3_2
  L7_2 = {}
  L6_2.ItemContent = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = msemenu_mainmenu
  L5_2 = msemenu
  L5_2 = L5_2.FindItemContent
  L6_2 = msemenu_mainmenu
  L6_2 = L6_2.tMidBossesGymsTable
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.tMidBossesGymsTable_CWX = L5_2
  L4_2 = ipairs
  L5_2 = ScenarioData
  L5_2 = L5_2.tMidBossesGyms_CWX
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.bIsInFinal
    if L9_2 ~= true then
      L9_2 = Game
      L9_2 = L9_2.IsInFINAL
      L9_2 = L9_2()
      if L9_2 then
        goto lbl_182
      end
    end
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = msemenu_mainmenu
    L10_2 = L10_2.tMidBossesGymsTable_CWX
    L11_2 = {}
    L12_2 = L8_2.sName
    L11_2.ItemKey = L12_2
    function L12_2()
      local L0_3, L1_3
      L0_3 = L8_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L11_2.ItemContent = L12_2
    L9_2(L10_2, L11_2)
    ::lbl_182::
  end
  L4_2 = "Super Quetzoa Gyms"
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = msemenu_mainmenu
  L6_2 = L6_2.tMidBossesGymsTable
  L7_2 = {}
  L7_2.ItemKey = L4_2
  L8_2 = {}
  L7_2.ItemContent = L8_2
  L5_2(L6_2, L7_2)
  L5_2 = msemenu_mainmenu
  L6_2 = msemenu
  L6_2 = L6_2.FindItemContent
  L7_2 = msemenu_mainmenu
  L7_2 = L7_2.tMidBossesGymsTable
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.tMidBossesGymsTable_SuperQuetzoa = L6_2
  L5_2 = ipairs
  L6_2 = ScenarioData
  L6_2 = L6_2.tMidBossesGyms_SuperQuetzoa
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.bIsInFinal
    if L10_2 ~= true then
      L10_2 = Game
      L10_2 = L10_2.IsInFINAL
      L10_2 = L10_2()
      if L10_2 then
        goto lbl_227
      end
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = msemenu_mainmenu
    L11_2 = L11_2.tMidBossesGymsTable_SuperQuetzoa
    L12_2 = {}
    L13_2 = L9_2.sName
    L12_2.ItemKey = L13_2
    function L13_2()
      local L0_3, L1_3
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L12_2.ItemContent = L13_2
    L10_2(L11_2, L12_2)
    ::lbl_227::
  end
  L5_2 = "Super Goliath Gyms"
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = msemenu_mainmenu
  L7_2 = L7_2.tMidBossesGymsTable
  L8_2 = {}
  L8_2.ItemKey = L5_2
  L9_2 = {}
  L8_2.ItemContent = L9_2
  L6_2(L7_2, L8_2)
  L6_2 = msemenu_mainmenu
  L7_2 = msemenu
  L7_2 = L7_2.FindItemContent
  L8_2 = msemenu_mainmenu
  L8_2 = L8_2.tMidBossesGymsTable
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.tMidBossesGymsTable_SuperGoliath = L7_2
  L6_2 = ipairs
  L7_2 = ScenarioData
  L7_2 = L7_2.tMidBossesGyms_SuperGoliath
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.bIsInFinal
    if L11_2 ~= true then
      L11_2 = Game
      L11_2 = L11_2.IsInFINAL
      L11_2 = L11_2()
      if L11_2 then
        goto lbl_272
      end
    end
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = msemenu_mainmenu
    L12_2 = L12_2.tMidBossesGymsTable_SuperGoliath
    L13_2 = {}
    L14_2 = L10_2.sName
    L13_2.ItemKey = L14_2
    function L14_2()
      local L0_3, L1_3
      L0_3 = L10_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L13_2.ItemContent = L14_2
    L11_2(L12_2, L13_2)
    ::lbl_272::
  end
  L6_2 = "Cooldown X Gyms"
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = msemenu_mainmenu
  L8_2 = L8_2.tMidBossesGymsTable
  L9_2 = {}
  L9_2.ItemKey = L6_2
  L10_2 = {}
  L9_2.ItemContent = L10_2
  L7_2(L8_2, L9_2)
  L7_2 = msemenu_mainmenu
  L8_2 = msemenu
  L8_2 = L8_2.FindItemContent
  L9_2 = msemenu_mainmenu
  L9_2 = L9_2.tMidBossesGymsTable
  L10_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.tMidBossesGymsTable_CooldownX = L8_2
  L7_2 = ipairs
  L8_2 = ScenarioData
  L8_2 = L8_2.tMidBossesGyms_CooldownX
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.bIsInFinal
    if L12_2 ~= true then
      L12_2 = Game
      L12_2 = L12_2.IsInFINAL
      L12_2 = L12_2()
      if L12_2 then
        goto lbl_317
      end
    end
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = msemenu_mainmenu
    L13_2 = L13_2.tMidBossesGymsTable_CooldownX
    L14_2 = {}
    L15_2 = L11_2.sName
    L14_2.ItemKey = L15_2
    function L15_2()
      local L0_3, L1_3
      L0_3 = L11_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L14_2.ItemContent = L15_2
    L12_2(L13_2, L14_2)
    ::lbl_317::
  end
  L7_2 = Game
  L7_2 = L7_2.DoFile
  L8_2 = "gui/scripts/scenariodata/centralunitsgyms.lua"
  L7_2(L8_2)
  L7_2 = "Central Unit"
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = msemenu_mainmenu
  L9_2 = L9_2.tMidBossesGymsTable
  L10_2 = {}
  L10_2.ItemKey = L7_2
  L11_2 = {}
  L10_2.ItemContent = L11_2
  L8_2(L9_2, L10_2)
  L8_2 = msemenu_mainmenu
  L9_2 = msemenu
  L9_2 = L9_2.FindItemContent
  L10_2 = msemenu_mainmenu
  L10_2 = L10_2.tMidBossesGymsTable
  L11_2 = L7_2
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.tCentralUnitGymsTable = L9_2
  L8_2 = ipairs
  L9_2 = ScenarioData
  L9_2 = L9_2.tCentralUnitsGyms
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = L12_2.bIsInFinal
    if L13_2 ~= true then
      L13_2 = Game
      L13_2 = L13_2.IsInFINAL
      L13_2 = L13_2()
      if L13_2 then
        goto lbl_366
      end
    end
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = msemenu_mainmenu
    L14_2 = L14_2.tCentralUnitGymsTable
    L15_2 = {}
    L16_2 = L12_2.sName
    L15_2.ItemKey = L16_2
    function L16_2()
      local L0_3, L1_3
      L0_3 = L12_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L15_2.ItemContent = L16_2
    L13_2(L14_2, L15_2)
    ::lbl_366::
  end
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = Game
  L0_2 = L0_2.DoFile
  L1_2 = "gui/scripts/scenariodata/bossesgyms.lua"
  L0_2(L1_2)
  L0_2 = "Bosses Gyms"
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = msemenu_mainmenu
  L2_2 = L2_2.items
  L3_2 = {}
  L3_2.ItemKey = L0_2
  L4_2 = {}
  L3_2.ItemContent = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = msemenu_mainmenu
  L2_2 = msemenu
  L2_2 = L2_2.FindItemContent
  L3_2 = msemenu_mainmenu
  L3_2 = L3_2.items
  L4_2 = L0_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.tBossesGymsTable = L2_2
  L1_2 = ipairs
  L2_2 = ScenarioData
  L2_2 = L2_2.tBossesGyms
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.bIsInFinal
    if L6_2 ~= true then
      L6_2 = Game
      L6_2 = L6_2.IsInFINAL
      L6_2 = L6_2()
      if L6_2 then
        goto lbl_47
      end
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = msemenu_mainmenu
    L7_2 = L7_2.tBossesGymsTable
    L8_2 = {}
    L9_2 = L5_2.sName
    L8_2.ItemKey = L9_2
    function L9_2()
      local L0_3, L1_3
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L8_2.ItemContent = L9_2
    L6_2(L7_2, L8_2)
    ::lbl_47::
  end
  L1_2 = "Kraid Gyms"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = msemenu_mainmenu
  L3_2 = L3_2.tBossesGymsTable
  L4_2 = {}
  L4_2.ItemKey = L1_2
  L5_2 = {}
  L4_2.ItemContent = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = msemenu_mainmenu
  L3_2 = msemenu
  L3_2 = L3_2.FindItemContent
  L4_2 = msemenu_mainmenu
  L4_2 = L4_2.tBossesGymsTable
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.tBossesGymsTable_Kraid = L3_2
  L2_2 = ipairs
  L3_2 = ScenarioData
  L3_2 = L3_2.tBossesGyms_Kraid
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.bIsInFinal
    if L7_2 ~= true then
      L7_2 = Game
      L7_2 = L7_2.IsInFINAL
      L7_2 = L7_2()
      if L7_2 then
        goto lbl_92
      end
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = msemenu_mainmenu
    L8_2 = L8_2.tBossesGymsTable_Kraid
    L9_2 = {}
    L10_2 = L6_2.sName
    L9_2.ItemKey = L10_2
    function L10_2()
      local L0_3, L1_3
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L9_2.ItemContent = L10_2
    L7_2(L8_2, L9_2)
    ::lbl_92::
  end
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Game
  L0_2 = L0_2.DoFile
  L1_2 = "gui/scripts/scenariodata/abilitiesgyms.lua"
  L0_2(L1_2)
  L0_2 = "Abilities Gyms"
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = msemenu_mainmenu
  L2_2 = L2_2.items
  L3_2 = {}
  L3_2.ItemKey = L0_2
  L4_2 = {}
  L3_2.ItemContent = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = msemenu_mainmenu
  L2_2 = msemenu
  L2_2 = L2_2.FindItemContent
  L3_2 = msemenu_mainmenu
  L3_2 = L3_2.items
  L4_2 = L0_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.tAbilitiesGymTable = L2_2
  L1_2 = ipairs
  L2_2 = ScenarioData
  L2_2 = L2_2.tAbilitiesGyms
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.bIsInFinal
    if L6_2 ~= true then
      L6_2 = Game
      L6_2 = L6_2.IsInFINAL
      L6_2 = L6_2()
      if L6_2 then
        goto lbl_47
      end
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = msemenu_mainmenu
    L7_2 = L7_2.tAbilitiesGymTable
    L8_2 = {}
    L9_2 = L5_2.sName
    L8_2.ItemKey = L9_2
    function L9_2()
      local L0_3, L1_3
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.Load
      L0_3(L1_3)
    end
    L8_2.ItemContent = L9_2
    L6_2(L7_2, L8_2)
    ::lbl_47::
  end
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Game
  L0_2 = L0_2.IsInFINAL
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = Game
    L0_2 = L0_2.DoFile
    L1_2 = "gui/scripts/scenariodata/developgyms.lua"
    L0_2(L1_2)
    L0_2 = "Develop Gyms"
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = msemenu_mainmenu
    L2_2 = L2_2.items
    L3_2 = {}
    L3_2.ItemKey = L0_2
    L4_2 = {}
    L3_2.ItemContent = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = msemenu_mainmenu
    L2_2 = msemenu
    L2_2 = L2_2.FindItemContent
    L3_2 = msemenu_mainmenu
    L3_2 = L3_2.items
    L4_2 = L0_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.tDevelopGymTable = L2_2
    L1_2 = ipairs
    L2_2 = ScenarioData
    L2_2 = L2_2.tDevelopGyms
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = msemenu_mainmenu
      L7_2 = L7_2.tDevelopGymTable
      L8_2 = {}
      L9_2 = L5_2.sName
      L8_2.ItemKey = L9_2
      function L9_2()
        local L0_3, L1_3
        L0_3 = L5_2
        L1_3 = L0_3
        L0_3 = L0_3.Load
        L0_3(L1_3)
      end
      L8_2.ItemContent = L9_2
      L6_2(L7_2, L8_2)
    end
  end
end
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2
  L0_2 = {}
  L0_2.PENDING = "P - "
  L0_2.BLOCKING = "B - "
  L0_2.WIP = "W - "
  L0_2.FINAL = "F - "
  L1_2 = {}
  L2_2 = {}
  L3_2 = "Cave"
  L4_2 = "s010_cave"
  L5_2 = {}
  L6_2 = {}
  L7_2 = L0_2.WIP
  L8_2 = "0001gameintro_full"
  L9_2 = "cave_start"
  L10_2 = "cutsceneplayer_intro_space"
  L11_2 = true
  L12_2 = true
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = "CurrentScenario.cutsceneplayer_intro_space_full"
  L17_2 = ""
  L18_2 = 0
  L19_2 = 0
  L20_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L6_2[6] = L12_2
  L6_2[7] = L13_2
  L6_2[8] = L14_2
  L6_2[9] = L15_2
  L6_2[10] = L16_2
  L6_2[11] = L17_2
  L6_2[12] = L18_2
  L6_2[13] = L19_2
  L6_2[14] = L20_2
  L7_2 = {}
  L8_2 = L0_2.WIP
  L9_2 = "0001gameintro_space"
  L10_2 = "cave_start"
  L11_2 = "cutsceneplayer_intro_space"
  L12_2 = true
  L13_2 = true
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = ""
  L18_2 = ""
  L19_2 = 0
  L20_2 = 0
  L21_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L7_2[6] = L13_2
  L7_2[7] = L14_2
  L7_2[8] = L15_2
  L7_2[9] = L16_2
  L7_2[10] = L17_2
  L7_2[11] = L18_2
  L7_2[12] = L19_2
  L7_2[13] = L20_2
  L7_2[14] = L21_2
  L8_2 = {}
  L9_2 = L0_2.WIP
  L10_2 = "0001gameintro_flashbackinit"
  L11_2 = "cave_start"
  L12_2 = "cutsceneplayer_intro_flashbackinit"
  L13_2 = true
  L14_2 = true
  L15_2 = true
  L16_2 = false
  L17_2 = false
  L18_2 = ""
  L19_2 = ""
  L20_2 = 0
  L21_2 = 0
  L22_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L8_2[5] = L13_2
  L8_2[6] = L14_2
  L8_2[7] = L15_2
  L8_2[8] = L16_2
  L8_2[9] = L17_2
  L8_2[10] = L18_2
  L8_2[11] = L19_2
  L8_2[12] = L20_2
  L8_2[13] = L21_2
  L8_2[14] = L22_2
  L9_2 = {}
  L10_2 = L0_2.WIP
  L11_2 = "0001gameintrolanding"
  L12_2 = "cave_start"
  L13_2 = "cutsceneplayer_intro_landing"
  L14_2 = true
  L15_2 = true
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L19_2 = ""
  L20_2 = ""
  L21_2 = 0
  L22_2 = 0
  L23_2 = 0
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L9_2[5] = L14_2
  L9_2[6] = L15_2
  L9_2[7] = L16_2
  L9_2[8] = L17_2
  L9_2[9] = L18_2
  L9_2[10] = L19_2
  L9_2[11] = L20_2
  L9_2[12] = L21_2
  L9_2[13] = L22_2
  L9_2[14] = L23_2
  L10_2 = {}
  L11_2 = L0_2.WIP
  L12_2 = "0001gameintro_arrivalatrium"
  L13_2 = "cave_start"
  L14_2 = "cutsceneplayer_intro_arrivalatrium"
  L15_2 = true
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L19_2 = false
  L20_2 = ""
  L21_2 = ""
  L22_2 = 0
  L23_2 = 0
  L24_2 = 0
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L10_2[6] = L16_2
  L10_2[7] = L17_2
  L10_2[8] = L18_2
  L10_2[9] = L19_2
  L10_2[10] = L20_2
  L10_2[11] = L21_2
  L10_2[12] = L22_2
  L10_2[13] = L23_2
  L10_2[14] = L24_2
  L11_2 = {}
  L12_2 = L0_2.WIP
  L13_2 = "0001gameintro_fight"
  L14_2 = "cave_start"
  L15_2 = "cutsceneplayer_intro_fight"
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L19_2 = false
  L20_2 = false
  L21_2 = ""
  L22_2 = ""
  L23_2 = 0
  L24_2 = 0
  L25_2 = 0
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L11_2[7] = L18_2
  L11_2[8] = L19_2
  L11_2[9] = L20_2
  L11_2[10] = L21_2
  L11_2[11] = L22_2
  L11_2[12] = L23_2
  L11_2[13] = L24_2
  L11_2[14] = L25_2
  L12_2 = {}
  L13_2 = L0_2.WIP
  L14_2 = "0001gameintro_flashbackend"
  L15_2 = "cave_start"
  L16_2 = "cutsceneplayer_intro_flashbackend"
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L20_2 = false
  L21_2 = false
  L22_2 = ""
  L23_2 = ""
  L24_2 = 0
  L25_2 = 0
  L26_2 = 0
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L12_2[7] = L19_2
  L12_2[8] = L20_2
  L12_2[9] = L21_2
  L12_2[10] = L22_2
  L12_2[11] = L23_2
  L12_2[12] = L24_2
  L12_2[13] = L25_2
  L12_2[14] = L26_2
  L13_2 = {}
  L14_2 = L0_2.WIP
  L15_2 = "0003firstcomunicationfakeadam"
  L16_2 = "cut_first_communication"
  L17_2 = "cutsceneplayer_3"
  L18_2 = false
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = true
  L23_2 = "CurrentScenario.cutsceneplayer_3"
  L24_2 = ""
  L25_2 = 0
  L26_2 = 0
  L27_2 = 0
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L14_2 = {}
  L15_2 = L0_2.WIP
  L16_2 = "0005meleetutorial"
  L17_2 = "cave_start"
  L18_2 = "cutsceneplayer_5"
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = false
  L23_2 = false
  L24_2 = ""
  L25_2 = ""
  L26_2 = 0
  L27_2 = 0
  L28_2 = 0
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L14_2[4] = L18_2
  L14_2[5] = L19_2
  L14_2[6] = L20_2
  L14_2[7] = L21_2
  L14_2[8] = L22_2
  L14_2[9] = L23_2
  L14_2[10] = L24_2
  L14_2[11] = L25_2
  L14_2[12] = L26_2
  L14_2[13] = L27_2
  L14_2[14] = L28_2
  L15_2 = {}
  L16_2 = L0_2.WIP
  L17_2 = "0034protoemmyappears"
  L18_2 = "cut_protoemmy_intro"
  L19_2 = "cutsceneplayer_34"
  L20_2 = false
  L21_2 = true
  L22_2 = true
  L23_2 = false
  L24_2 = false
  L25_2 = ""
  L26_2 = ""
  L27_2 = 0
  L28_2 = 0
  L29_2 = 0
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L15_2[5] = L20_2
  L15_2[6] = L21_2
  L15_2[7] = L22_2
  L15_2[8] = L23_2
  L15_2[9] = L24_2
  L15_2[10] = L25_2
  L15_2[11] = L26_2
  L15_2[12] = L27_2
  L15_2[13] = L28_2
  L15_2[14] = L29_2
  L16_2 = {}
  L17_2 = L0_2.WIP
  L18_2 = "0035protoemmycantclimb"
  L19_2 = "cut_protoemmy_climb"
  L20_2 = "cutsceneplayer_35"
  L21_2 = true
  L22_2 = true
  L23_2 = true
  L24_2 = false
  L25_2 = false
  L26_2 = ""
  L27_2 = ""
  L28_2 = 0
  L29_2 = 0
  L30_2 = 0
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L16_2[4] = L20_2
  L16_2[5] = L21_2
  L16_2[6] = L22_2
  L16_2[7] = L23_2
  L16_2[8] = L24_2
  L16_2[9] = L25_2
  L16_2[10] = L26_2
  L16_2[11] = L27_2
  L16_2[12] = L28_2
  L16_2[13] = L29_2
  L16_2[14] = L30_2
  L17_2 = {}
  L18_2 = L0_2.WIP
  L19_2 = "0048firstcupowerobtention"
  L20_2 = "cut_protoemmy_climb"
  L21_2 = "cutsceneplayer_48"
  L22_2 = false
  L23_2 = true
  L24_2 = true
  L25_2 = true
  L26_2 = true
  L27_2 = "CurrentScenario.cutsceneplayer_48"
  L28_2 = ""
  L29_2 = 350
  L30_2 = 0
  L31_2 = 0
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L17_2[4] = L21_2
  L17_2[5] = L22_2
  L17_2[6] = L23_2
  L17_2[7] = L24_2
  L17_2[8] = L25_2
  L17_2[9] = L26_2
  L17_2[10] = L27_2
  L17_2[11] = L28_2
  L17_2[12] = L29_2
  L17_2[13] = L30_2
  L17_2[14] = L31_2
  L18_2 = {}
  L19_2 = L0_2.WIP
  L20_2 = "0036enteremmyzone"
  L21_2 = "cut_emmyzone_intro"
  L22_2 = "cutsceneplayer_36"
  L23_2 = true
  L24_2 = true
  L25_2 = true
  L26_2 = false
  L27_2 = false
  L28_2 = ""
  L29_2 = ""
  L30_2 = 0
  L31_2 = 0
  L32_2 = 0
  L18_2[1] = L19_2
  L18_2[2] = L20_2
  L18_2[3] = L21_2
  L18_2[4] = L22_2
  L18_2[5] = L23_2
  L18_2[6] = L24_2
  L18_2[7] = L25_2
  L18_2[8] = L26_2
  L18_2[9] = L27_2
  L18_2[10] = L28_2
  L18_2[11] = L29_2
  L18_2[12] = L30_2
  L18_2[13] = L31_2
  L18_2[14] = L32_2
  L19_2 = {}
  L20_2 = L0_2.WIP
  L21_2 = "0037emmycaveappears"
  L22_2 = "cut_emmycave_intro"
  L23_2 = "cutsceneplayer_37"
  L24_2 = false
  L25_2 = true
  L26_2 = true
  L27_2 = false
  L28_2 = false
  L29_2 = ""
  L30_2 = ""
  L31_2 = 0
  L32_2 = 0
  L33_2 = 0
  L19_2[1] = L20_2
  L19_2[2] = L21_2
  L19_2[3] = L22_2
  L19_2[4] = L23_2
  L19_2[5] = L24_2
  L19_2[6] = L25_2
  L19_2[7] = L26_2
  L19_2[8] = L27_2
  L19_2[9] = L28_2
  L19_2[10] = L29_2
  L19_2[11] = L30_2
  L19_2[12] = L31_2
  L19_2[13] = L32_2
  L19_2[14] = L33_2
  L20_2 = {}
  L21_2 = L0_2.WIP
  L22_2 = "0049centralunitdetectsamus01"
  L23_2 = "cut_before_cu"
  L24_2 = "cutsceneplayer_49-1"
  L25_2 = true
  L26_2 = true
  L27_2 = true
  L28_2 = false
  L29_2 = false
  L30_2 = ""
  L31_2 = ""
  L32_2 = 0
  L33_2 = 1300
  L34_2 = 0
  L20_2[1] = L21_2
  L20_2[2] = L22_2
  L20_2[3] = L23_2
  L20_2[4] = L24_2
  L20_2[5] = L25_2
  L20_2[6] = L26_2
  L20_2[7] = L27_2
  L20_2[8] = L28_2
  L20_2[9] = L29_2
  L20_2[10] = L30_2
  L20_2[11] = L31_2
  L20_2[12] = L32_2
  L20_2[13] = L33_2
  L20_2[14] = L34_2
  L21_2 = {}
  L22_2 = L0_2.WIP
  L23_2 = "0049centralunitdetectsamus02"
  L24_2 = "cut_before_cu"
  L25_2 = "cutsceneplayer_49-2"
  L26_2 = true
  L27_2 = true
  L28_2 = true
  L29_2 = false
  L30_2 = false
  L31_2 = ""
  L32_2 = ""
  L33_2 = 0
  L34_2 = 1300
  L35_2 = 0
  L21_2[1] = L22_2
  L21_2[2] = L23_2
  L21_2[3] = L24_2
  L21_2[4] = L25_2
  L21_2[5] = L26_2
  L21_2[6] = L27_2
  L21_2[7] = L28_2
  L21_2[8] = L29_2
  L21_2[9] = L30_2
  L21_2[10] = L31_2
  L21_2[11] = L32_2
  L21_2[12] = L33_2
  L21_2[13] = L34_2
  L21_2[14] = L35_2
  L22_2 = {}
  L23_2 = L0_2.WIP
  L24_2 = "0050firstcupresentation"
  L25_2 = "cut_cu"
  L26_2 = "cutsceneplayer_50"
  L27_2 = true
  L28_2 = true
  L29_2 = true
  L30_2 = false
  L31_2 = false
  L32_2 = ""
  L33_2 = ""
  L34_2 = 0
  L35_2 = 0
  L36_2 = 0
  L22_2[1] = L23_2
  L22_2[2] = L24_2
  L22_2[3] = L25_2
  L22_2[4] = L26_2
  L22_2[5] = L27_2
  L22_2[6] = L28_2
  L22_2[7] = L29_2
  L22_2[8] = L30_2
  L22_2[9] = L31_2
  L22_2[10] = L32_2
  L22_2[11] = L33_2
  L22_2[12] = L34_2
  L22_2[13] = L35_2
  L22_2[14] = L36_2
  L23_2 = {}
  L24_2 = L0_2.WIP
  L25_2 = "0051cudeathandpowerobtention"
  L26_2 = "cut_cu"
  L27_2 = "cutsceneplayer_51"
  L28_2 = true
  L29_2 = true
  L30_2 = true
  L31_2 = false
  L32_2 = false
  L33_2 = ""
  L34_2 = ""
  L35_2 = 0
  L36_2 = 0
  L37_2 = 0
  L23_2[1] = L24_2
  L23_2[2] = L25_2
  L23_2[3] = L26_2
  L23_2[4] = L27_2
  L23_2[5] = L28_2
  L23_2[6] = L29_2
  L23_2[7] = L30_2
  L23_2[8] = L31_2
  L23_2[9] = L32_2
  L23_2[10] = L33_2
  L23_2[11] = L34_2
  L23_2[12] = L35_2
  L23_2[13] = L36_2
  L23_2[14] = L37_2
  L24_2 = {}
  L25_2 = L0_2.WIP
  L26_2 = "0054scorpiuspresentation"
  L27_2 = "scorpius"
  L28_2 = "cutsceneplayer_54"
  L29_2 = true
  L30_2 = true
  L31_2 = true
  L32_2 = false
  L33_2 = false
  L34_2 = "CurrentScenario.cutsceneplayer_54"
  L35_2 = ""
  L36_2 = 0
  L37_2 = 0
  L38_2 = 0
  L24_2[1] = L25_2
  L24_2[2] = L26_2
  L24_2[3] = L27_2
  L24_2[4] = L28_2
  L24_2[5] = L29_2
  L24_2[6] = L30_2
  L24_2[7] = L31_2
  L24_2[8] = L32_2
  L24_2[9] = L33_2
  L24_2[10] = L34_2
  L24_2[11] = L35_2
  L24_2[12] = L36_2
  L24_2[13] = L37_2
  L24_2[14] = L38_2
  L25_2 = {}
  L26_2 = L0_2.WIP
  L27_2 = "0055scorpiusphase2"
  L28_2 = "scorpius"
  L29_2 = "cutsceneplayer_55"
  L30_2 = true
  L31_2 = true
  L32_2 = true
  L33_2 = false
  L34_2 = false
  L35_2 = "CurrentScenario.cutsceneplayer_55"
  L36_2 = ""
  L37_2 = 0
  L38_2 = 0
  L39_2 = 0
  L25_2[1] = L26_2
  L25_2[2] = L27_2
  L25_2[3] = L28_2
  L25_2[4] = L29_2
  L25_2[5] = L30_2
  L25_2[6] = L31_2
  L25_2[7] = L32_2
  L25_2[8] = L33_2
  L25_2[9] = L34_2
  L25_2[10] = L35_2
  L25_2[11] = L36_2
  L25_2[12] = L37_2
  L25_2[13] = L38_2
  L25_2[14] = L39_2
  L26_2 = {}
  L27_2 = L0_2.WIP
  L28_2 = "0155scorpiusphase3"
  L29_2 = "scorpius"
  L30_2 = "cutsceneplayer_155"
  L31_2 = true
  L32_2 = true
  L33_2 = true
  L34_2 = false
  L35_2 = false
  L36_2 = "CurrentScenario.cutsceneplayer_155"
  L37_2 = ""
  L38_2 = 0
  L39_2 = 0
  L40_2 = 0
  L26_2[1] = L27_2
  L26_2[2] = L28_2
  L26_2[3] = L29_2
  L26_2[4] = L30_2
  L26_2[5] = L31_2
  L26_2[6] = L32_2
  L26_2[7] = L33_2
  L26_2[8] = L34_2
  L26_2[9] = L35_2
  L26_2[10] = L36_2
  L26_2[11] = L37_2
  L26_2[12] = L38_2
  L26_2[13] = L39_2
  L26_2[14] = L40_2
  L27_2 = {}
  L28_2 = L0_2.WIP
  L29_2 = "0057scorpiusdeath"
  L30_2 = "scorpius"
  L31_2 = "cutsceneplayer_57"
  L32_2 = true
  L33_2 = true
  L34_2 = true
  L35_2 = false
  L36_2 = false
  L37_2 = "CurrentScenario.cutsceneplayer_57"
  L38_2 = ""
  L39_2 = 0
  L40_2 = 150
  L41_2 = 0
  L27_2[1] = L28_2
  L27_2[2] = L29_2
  L27_2[3] = L30_2
  L27_2[4] = L31_2
  L27_2[5] = L32_2
  L27_2[6] = L33_2
  L27_2[7] = L34_2
  L27_2[8] = L35_2
  L27_2[9] = L36_2
  L27_2[10] = L37_2
  L27_2[11] = L38_2
  L27_2[12] = L39_2
  L27_2[13] = L40_2
  L27_2[14] = L41_2
  L28_2 = {}
  L29_2 = L0_2.WIP
  L30_2 = "0030variasuiteobtention"
  L31_2 = "variasuit"
  L32_2 = "cutsceneplayer_30"
  L33_2 = true
  L34_2 = true
  L35_2 = true
  L36_2 = true
  L37_2 = true
  L38_2 = ""
  L39_2 = ""
  L40_2 = 0
  L41_2 = 0
  L42_2 = 0
  L28_2[1] = L29_2
  L28_2[2] = L30_2
  L28_2[3] = L31_2
  L28_2[4] = L32_2
  L28_2[5] = L33_2
  L28_2[6] = L34_2
  L28_2[7] = L35_2
  L28_2[8] = L36_2
  L28_2[9] = L37_2
  L28_2[10] = L38_2
  L28_2[11] = L39_2
  L28_2[12] = L40_2
  L28_2[13] = L41_2
  L28_2[14] = L42_2
  L29_2 = {}
  L30_2 = L0_2.WIP
  L31_2 = "0007beginningofcooldown"
  L32_2 = "chozowarriorcave"
  L33_2 = "elevator_with_cutscene_aqua_000"
  L34_2 = true
  L35_2 = true
  L36_2 = true
  L37_2 = true
  L38_2 = true
  L39_2 = ""
  L40_2 = ""
  L41_2 = 0
  L42_2 = 0
  L43_2 = 0
  L29_2[1] = L30_2
  L29_2[2] = L31_2
  L29_2[3] = L32_2
  L29_2[4] = L33_2
  L29_2[5] = L34_2
  L29_2[6] = L35_2
  L29_2[7] = L36_2
  L29_2[8] = L37_2
  L29_2[9] = L38_2
  L29_2[10] = L39_2
  L29_2[11] = L40_2
  L29_2[12] = L41_2
  L29_2[13] = L42_2
  L29_2[14] = L43_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  L5_2[7] = L12_2
  L5_2[8] = L13_2
  L5_2[9] = L14_2
  L5_2[10] = L15_2
  L5_2[11] = L16_2
  L5_2[12] = L17_2
  L5_2[13] = L18_2
  L5_2[14] = L19_2
  L5_2[15] = L20_2
  L5_2[16] = L21_2
  L5_2[17] = L22_2
  L5_2[18] = L23_2
  L5_2[19] = L24_2
  L5_2[20] = L25_2
  L5_2[21] = L26_2
  L5_2[22] = L27_2
  L5_2[23] = L28_2
  L5_2[24] = L29_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L3_2 = {}
  L4_2 = "Magma"
  L5_2 = "s020_magma"
  L6_2 = {}
  L7_2 = {}
  L8_2 = L0_2.WIP
  L9_2 = "0038magmaemmypresentation"
  L10_2 = "emmymagma"
  L11_2 = "cutsceneplayer_38"
  L12_2 = true
  L13_2 = true
  L14_2 = true
  L15_2 = false
  L16_2 = false
  L17_2 = ""
  L18_2 = ""
  L19_2 = 500
  L20_2 = 100
  L21_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L7_2[6] = L13_2
  L7_2[7] = L14_2
  L7_2[8] = L15_2
  L7_2[9] = L16_2
  L7_2[10] = L17_2
  L7_2[11] = L18_2
  L7_2[12] = L19_2
  L7_2[13] = L20_2
  L7_2[14] = L21_2
  L8_2 = {}
  L9_2 = L0_2.WIP
  L10_2 = "0059kraidpresentation"
  L11_2 = "kraid"
  L12_2 = "cutsceneplayer_59"
  L13_2 = false
  L14_2 = true
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = ""
  L19_2 = ""
  L20_2 = -400
  L21_2 = 2200
  L22_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L8_2[5] = L13_2
  L8_2[6] = L14_2
  L8_2[7] = L15_2
  L8_2[8] = L16_2
  L8_2[9] = L17_2
  L8_2[10] = L18_2
  L8_2[11] = L19_2
  L8_2[12] = L20_2
  L8_2[13] = L21_2
  L8_2[14] = L22_2
  L9_2 = {}
  L10_2 = L0_2.WIP
  L11_2 = "0060kraidphase02"
  L12_2 = "kraid"
  L13_2 = "cutsceneplayer_60"
  L14_2 = true
  L15_2 = true
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L19_2 = ""
  L20_2 = ""
  L21_2 = 0
  L22_2 = 0
  L23_2 = 0
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L9_2[5] = L14_2
  L9_2[6] = L15_2
  L9_2[7] = L16_2
  L9_2[8] = L17_2
  L9_2[9] = L18_2
  L9_2[10] = L19_2
  L9_2[11] = L20_2
  L9_2[12] = L21_2
  L9_2[13] = L22_2
  L9_2[14] = L23_2
  L10_2 = {}
  L11_2 = L0_2.WIP
  L12_2 = "0061kraiddeath"
  L13_2 = "kraid"
  L14_2 = "cutsceneplayer_61"
  L15_2 = true
  L16_2 = true
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L20_2 = "CurrentScenario.cutsceneplayer_61"
  L21_2 = ""
  L22_2 = 0
  L23_2 = 0
  L24_2 = 0
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L10_2[6] = L16_2
  L10_2[7] = L17_2
  L10_2[8] = L18_2
  L10_2[9] = L19_2
  L10_2[10] = L20_2
  L10_2[11] = L21_2
  L10_2[12] = L22_2
  L10_2[13] = L23_2
  L10_2[14] = L24_2
  L11_2 = {}
  L12_2 = L0_2.WIP
  L13_2 = "0061kraiddeath_zipline_mb"
  L14_2 = "kraid"
  L15_2 = "cutsceneplayer_61_zipline_mb"
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L19_2 = "CurrentScenario.cutsceneplayer_61_zipline_mb"
  L20_2 = ""
  L21_2 = 0
  L22_2 = 0
  L23_2 = 0
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L11_2[7] = L18_2
  L11_2[8] = L19_2
  L11_2[9] = L20_2
  L11_2[10] = L21_2
  L11_2[11] = L22_2
  L11_2[12] = L23_2
  L12_2 = {}
  L13_2 = L0_2.WIP
  L14_2 = "0053genericcupowerobtention_r"
  L15_2 = "magma_cu"
  L16_2 = "cutsceneplayer_53"
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = ""
  L23_2 = ""
  L24_2 = 0
  L25_2 = 0
  L26_2 = 0
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L12_2[7] = L19_2
  L12_2[8] = L20_2
  L12_2[9] = L21_2
  L12_2[10] = L22_2
  L12_2[11] = L23_2
  L12_2[12] = L24_2
  L12_2[13] = L25_2
  L12_2[14] = L26_2
  L13_2 = {}
  L14_2 = L0_2.WIP
  L15_2 = "0078cooldownpresentation"
  L16_2 = "cooldownx"
  L17_2 = "cutsceneplayer_78"
  L18_2 = true
  L19_2 = true
  L20_2 = true
  L21_2 = false
  L22_2 = false
  L23_2 = ""
  L24_2 = ""
  L25_2 = 0
  L26_2 = 0
  L27_2 = 0
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L14_2 = {}
  L15_2 = L0_2.WIP
  L16_2 = "0081cooldowndeath"
  L17_2 = "cooldownx"
  L18_2 = "cutsceneplayer_81"
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = false
  L23_2 = false
  L24_2 = ""
  L25_2 = ""
  L26_2 = 0
  L27_2 = 0
  L28_2 = 0
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L14_2[4] = L18_2
  L14_2[5] = L19_2
  L14_2[6] = L20_2
  L14_2[7] = L21_2
  L14_2[8] = L22_2
  L14_2[9] = L23_2
  L14_2[10] = L24_2
  L14_2[11] = L25_2
  L14_2[12] = L26_2
  L14_2[13] = L27_2
  L14_2[14] = L28_2
  L15_2 = {}
  L16_2 = L0_2.WIP
  L17_2 = "0081cooldowndeath_grab"
  L18_2 = "cooldownx"
  L19_2 = "cutsceneplayer_80_grab"
  L20_2 = true
  L21_2 = true
  L22_2 = true
  L23_2 = false
  L24_2 = false
  L25_2 = "CurrentScenario.cutsceneplayer_80_grab"
  L26_2 = ""
  L27_2 = 0
  L28_2 = 0
  L29_2 = 0
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L15_2[5] = L20_2
  L15_2[6] = L21_2
  L15_2[7] = L22_2
  L15_2[8] = L23_2
  L15_2[9] = L24_2
  L15_2[10] = L25_2
  L15_2[11] = L26_2
  L15_2[12] = L27_2
  L15_2[13] = L28_2
  L15_2[14] = L29_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L6_2[6] = L12_2
  L6_2[7] = L13_2
  L6_2[8] = L14_2
  L6_2[9] = L15_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = {}
  L5_2 = "BaseLab"
  L6_2 = "s030_baselab"
  L7_2 = {}
  L8_2 = {}
  L9_2 = L0_2.WIP
  L10_2 = "0053genericcupowerobtention"
  L11_2 = "base_cu"
  L12_2 = "cutsceneplayer_53"
  L13_2 = true
  L14_2 = true
  L15_2 = true
  L16_2 = true
  L17_2 = true
  L18_2 = ""
  L19_2 = ""
  L20_2 = 0
  L21_2 = 0
  L22_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L8_2[5] = L13_2
  L8_2[6] = L14_2
  L8_2[7] = L15_2
  L8_2[8] = L16_2
  L8_2[9] = L17_2
  L8_2[10] = L18_2
  L8_2[11] = L19_2
  L8_2[12] = L20_2
  L8_2[13] = L21_2
  L8_2[14] = L22_2
  L9_2 = {}
  L10_2 = L0_2.WIP
  L11_2 = "0039labemmypresentation"
  L12_2 = "emmybase"
  L13_2 = "cutsceneplayer_39"
  L14_2 = true
  L15_2 = true
  L16_2 = true
  L17_2 = false
  L18_2 = false
  L19_2 = ""
  L20_2 = ""
  L21_2 = 0
  L22_2 = 0
  L23_2 = 0
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L9_2[5] = L14_2
  L9_2[6] = L15_2
  L9_2[7] = L16_2
  L9_2[8] = L17_2
  L9_2[9] = L18_2
  L9_2[10] = L19_2
  L9_2[11] = L20_2
  L9_2[12] = L21_2
  L9_2[13] = L22_2
  L9_2[14] = L23_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L5_2 = {}
  L6_2 = "Aqua"
  L7_2 = "s040_aqua"
  L8_2 = {}
  L9_2 = {}
  L10_2 = L0_2.WIP
  L11_2 = "0031gravitysuiteobtention"
  L12_2 = "gravitysuit"
  L13_2 = "cutsceneplayer_31"
  L14_2 = true
  L15_2 = true
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L19_2 = ""
  L20_2 = ""
  L21_2 = 0
  L22_2 = 0
  L23_2 = 0
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L9_2[5] = L14_2
  L9_2[6] = L15_2
  L9_2[7] = L16_2
  L9_2[8] = L17_2
  L9_2[9] = L18_2
  L9_2[10] = L19_2
  L9_2[11] = L20_2
  L9_2[12] = L21_2
  L9_2[13] = L22_2
  L9_2[14] = L23_2
  L10_2 = {}
  L11_2 = L0_2.WIP
  L12_2 = "0032ghostdashobtention"
  L13_2 = "ghostdash"
  L14_2 = "cutsceneplayer_32"
  L15_2 = true
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L20_2 = ""
  L21_2 = ""
  L22_2 = 0
  L23_2 = 0
  L24_2 = 0
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L10_2[6] = L16_2
  L10_2[7] = L17_2
  L10_2[8] = L18_2
  L10_2[9] = L19_2
  L10_2[10] = L20_2
  L10_2[11] = L21_2
  L10_2[12] = L22_2
  L10_2[13] = L23_2
  L10_2[14] = L24_2
  L11_2 = {}
  L12_2 = L0_2.WIP
  L13_2 = "0063_hydrogiga-presentation"
  L14_2 = "hydrogiga"
  L15_2 = "cutsceneplayer_63"
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L21_2 = ""
  L22_2 = ""
  L23_2 = 0
  L24_2 = 0
  L25_2 = 0
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L11_2[7] = L18_2
  L11_2[8] = L19_2
  L11_2[9] = L20_2
  L11_2[10] = L21_2
  L11_2[11] = L22_2
  L11_2[12] = L23_2
  L11_2[13] = L24_2
  L11_2[14] = L25_2
  L12_2 = {}
  L13_2 = L0_2.WIP
  L14_2 = "0065hydrogigadeath"
  L15_2 = "hydrogiga"
  L16_2 = "cutsceneplayer_65"
  L17_2 = true
  L18_2 = true
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L22_2 = ""
  L23_2 = ""
  L24_2 = 500
  L25_2 = 100
  L26_2 = 0
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L12_2[7] = L19_2
  L12_2[8] = L20_2
  L12_2[9] = L21_2
  L12_2[10] = L22_2
  L12_2[11] = L23_2
  L12_2[12] = L24_2
  L12_2[13] = L25_2
  L12_2[14] = L26_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L6_2 = {}
  L7_2 = "Forest"
  L8_2 = "s050_forest"
  L9_2 = {}
  L10_2 = {}
  L11_2 = L0_2.WIP
  L12_2 = "0033sonarobtention"
  L13_2 = "sonar"
  L14_2 = "cutsceneplayer_33"
  L15_2 = true
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L20_2 = ""
  L21_2 = ""
  L22_2 = 0
  L23_2 = 0
  L24_2 = 0
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L10_2[6] = L16_2
  L10_2[7] = L17_2
  L10_2[8] = L18_2
  L10_2[9] = L19_2
  L10_2[10] = L20_2
  L10_2[11] = L21_2
  L10_2[12] = L22_2
  L10_2[13] = L23_2
  L10_2[14] = L24_2
  L11_2 = {}
  L12_2 = L0_2.WIP
  L13_2 = "0053genericcupowerobtention_r"
  L14_2 = "forest_cu"
  L15_2 = "cutsceneplayer_53"
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L20_2 = true
  L21_2 = ""
  L22_2 = ""
  L23_2 = 0
  L24_2 = 0
  L25_2 = 0
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L11_2[7] = L18_2
  L11_2[8] = L19_2
  L11_2[9] = L20_2
  L11_2[10] = L21_2
  L11_2[11] = L22_2
  L11_2[12] = L23_2
  L11_2[13] = L24_2
  L11_2[14] = L25_2
  L12_2 = {}
  L13_2 = L0_2.WIP
  L14_2 = "0042professorxpresentation"
  L15_2 = "afterquarantine"
  L16_2 = "cutsceneplayer_42"
  L17_2 = true
  L18_2 = true
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L22_2 = ""
  L23_2 = ""
  L24_2 = 0
  L25_2 = 0
  L26_2 = 0
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L12_2[7] = L19_2
  L12_2[8] = L20_2
  L12_2[9] = L21_2
  L12_2[10] = L22_2
  L12_2[11] = L23_2
  L12_2[12] = L24_2
  L12_2[13] = L25_2
  L12_2[14] = L26_2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L7_2 = {}
  L8_2 = "Quarantine"
  L9_2 = "s060_quarantine"
  L10_2 = {}
  L11_2 = {}
  L12_2 = L0_2.WIP
  L13_2 = "0067chozowarriorxpresentation"
  L14_2 = "chozowarriorx"
  L15_2 = "cutsceneplayer_67"
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L19_2 = false
  L20_2 = false
  L21_2 = ""
  L22_2 = ""
  L23_2 = 0
  L24_2 = 0
  L25_2 = 0
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L11_2[7] = L18_2
  L11_2[8] = L19_2
  L11_2[9] = L20_2
  L11_2[10] = L21_2
  L11_2[11] = L22_2
  L11_2[12] = L23_2
  L11_2[13] = L24_2
  L11_2[14] = L25_2
  L12_2 = {}
  L13_2 = L0_2.WIP
  L14_2 = "0113quarantinearrival"
  L15_2 = "quarantine_maingate"
  L16_2 = "cutsceneplayer_113"
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L20_2 = false
  L21_2 = false
  L22_2 = ""
  L23_2 = ""
  L24_2 = 0
  L25_2 = 0
  L26_2 = 0
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L12_2[7] = L19_2
  L12_2[8] = L20_2
  L12_2[9] = L21_2
  L12_2[10] = L22_2
  L12_2[11] = L23_2
  L12_2[12] = L24_2
  L12_2[13] = L25_2
  L12_2[14] = L26_2
  L13_2 = {}
  L14_2 = L0_2.WIP
  L15_2 = "0004quarantinedoorsopen"
  L16_2 = "quarantine_opened"
  L17_2 = "cutsceneplayer_4"
  L18_2 = true
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = true
  L23_2 = ""
  L24_2 = ""
  L25_2 = -500
  L26_2 = 0
  L27_2 = 0
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L14_2 = {}
  L15_2 = L0_2.WIP
  L16_2 = "0013firstencounterchozozombie"
  L17_2 = "quarantine_xenemy"
  L18_2 = "cutsceneplayer_13"
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = false
  L23_2 = false
  L24_2 = ""
  L25_2 = ""
  L26_2 = 100
  L27_2 = 0
  L28_2 = 0
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L14_2[4] = L18_2
  L14_2[5] = L19_2
  L14_2[6] = L20_2
  L14_2[7] = L21_2
  L14_2[8] = L22_2
  L14_2[9] = L23_2
  L14_2[10] = L24_2
  L14_2[11] = L25_2
  L14_2[12] = L26_2
  L14_2[13] = L27_2
  L14_2[14] = L28_2
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L8_2 = {}
  L9_2 = "Sanctuary"
  L10_2 = "s070_basesanc"
  L11_2 = {}
  L12_2 = {}
  L13_2 = L0_2.WIP
  L14_2 = "0040sancemmypresentation_full"
  L15_2 = "encounterprofessor"
  L16_2 = "cutsceneplayer_40"
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L20_2 = false
  L21_2 = false
  L22_2 = "CurrentScenario.cutsceneplayer_40_full"
  L23_2 = ""
  L24_2 = 0
  L25_2 = 0
  L26_2 = 0
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L12_2[7] = L19_2
  L12_2[8] = L20_2
  L12_2[9] = L21_2
  L12_2[10] = L22_2
  L12_2[11] = L23_2
  L12_2[12] = L24_2
  L12_2[13] = L25_2
  L12_2[14] = L26_2
  L13_2 = {}
  L14_2 = L0_2.WIP
  L15_2 = "0040sancemmypresentation_part1"
  L16_2 = "encounterprofessor"
  L17_2 = "cutsceneplayer_40"
  L18_2 = true
  L19_2 = true
  L20_2 = true
  L21_2 = false
  L22_2 = false
  L23_2 = ""
  L24_2 = ""
  L25_2 = 0
  L26_2 = 0
  L27_2 = 0
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L14_2 = {}
  L15_2 = L0_2.WIP
  L16_2 = "0040sancemmypresentation_part2a"
  L17_2 = "encounterprofessor"
  L18_2 = "cutsceneplayer_40b_part1"
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = false
  L23_2 = false
  L24_2 = ""
  L25_2 = ""
  L26_2 = 0
  L27_2 = 0
  L28_2 = 0
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L14_2[4] = L18_2
  L14_2[5] = L19_2
  L14_2[6] = L20_2
  L14_2[7] = L21_2
  L14_2[8] = L22_2
  L14_2[9] = L23_2
  L14_2[10] = L24_2
  L14_2[11] = L25_2
  L14_2[12] = L26_2
  L14_2[13] = L27_2
  L14_2[14] = L28_2
  L15_2 = {}
  L16_2 = L0_2.WIP
  L17_2 = "0040sancemmypresentation_part2b"
  L18_2 = "encounterprofessor"
  L19_2 = "cutsceneplayer_40b_part2"
  L20_2 = true
  L21_2 = true
  L22_2 = true
  L23_2 = false
  L24_2 = false
  L25_2 = ""
  L26_2 = ""
  L27_2 = 0
  L28_2 = 0
  L29_2 = 0
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L15_2[5] = L20_2
  L15_2[6] = L21_2
  L15_2[7] = L22_2
  L15_2[8] = L23_2
  L15_2[9] = L24_2
  L15_2[10] = L25_2
  L15_2[11] = L26_2
  L15_2[12] = L27_2
  L15_2[13] = L28_2
  L15_2[14] = L29_2
  L16_2 = {}
  L17_2 = L0_2.WIP
  L18_2 = "0040sancemmypresentation_part3"
  L19_2 = "encounterprofessor"
  L20_2 = "cutsceneplayer_40c"
  L21_2 = true
  L22_2 = true
  L23_2 = true
  L24_2 = false
  L25_2 = false
  L26_2 = ""
  L27_2 = ""
  L28_2 = 0
  L29_2 = 0
  L30_2 = 0
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L16_2[4] = L20_2
  L16_2[5] = L21_2
  L16_2[6] = L22_2
  L16_2[7] = L23_2
  L16_2[8] = L24_2
  L16_2[9] = L25_2
  L16_2[10] = L26_2
  L16_2[11] = L27_2
  L16_2[12] = L28_2
  L16_2[13] = L29_2
  L16_2[14] = L30_2
  L17_2 = {}
  L18_2 = L0_2.WIP
  L19_2 = "0053genericcupowerobtention"
  L20_2 = "sanc_cu"
  L21_2 = "cutsceneplayer_53"
  L22_2 = true
  L23_2 = true
  L24_2 = true
  L25_2 = true
  L26_2 = true
  L27_2 = ""
  L28_2 = ""
  L29_2 = 0
  L30_2 = 0
  L31_2 = 0
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L17_2[4] = L21_2
  L17_2[5] = L22_2
  L17_2[6] = L23_2
  L17_2[7] = L24_2
  L17_2[8] = L25_2
  L17_2[9] = L26_2
  L17_2[10] = L27_2
  L17_2[11] = L28_2
  L17_2[12] = L29_2
  L17_2[13] = L30_2
  L17_2[14] = L31_2
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L9_2 = {}
  L10_2 = "Shipyard"
  L11_2 = "s080_shipyard"
  L12_2 = {}
  L13_2 = {}
  L14_2 = L0_2.WIP
  L15_2 = "0043emmymetroidnization"
  L16_2 = "powerbomb"
  L17_2 = "cutsceneplayer_43"
  L18_2 = true
  L19_2 = true
  L20_2 = true
  L21_2 = false
  L22_2 = false
  L23_2 = ""
  L24_2 = ""
  L25_2 = 0
  L26_2 = 0
  L27_2 = 0
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L14_2 = {}
  L15_2 = L0_2.WIP
  L16_2 = "0012metroidnizationstrongreactionevent"
  L17_2 = "strongreaction"
  L18_2 = "cutsceneplayer_12"
  L19_2 = false
  L20_2 = true
  L21_2 = true
  L22_2 = false
  L23_2 = false
  L24_2 = ""
  L25_2 = ""
  L26_2 = 300
  L27_2 = 0
  L28_2 = 0
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L14_2[4] = L18_2
  L14_2[5] = L19_2
  L14_2[6] = L20_2
  L14_2[7] = L21_2
  L14_2[8] = L22_2
  L14_2[9] = L23_2
  L14_2[10] = L24_2
  L14_2[11] = L25_2
  L14_2[12] = L26_2
  L14_2[13] = L27_2
  L14_2[14] = L28_2
  L15_2 = {}
  L16_2 = L0_2.WIP
  L17_2 = "0071chozowarriorxelitepresentation"
  L18_2 = "elitechozowarriorx"
  L19_2 = "cutsceneplayer_71"
  L20_2 = false
  L21_2 = true
  L22_2 = false
  L23_2 = false
  L24_2 = false
  L25_2 = ""
  L26_2 = ""
  L27_2 = 0
  L28_2 = 0
  L29_2 = 0
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L15_2[5] = L20_2
  L15_2[6] = L21_2
  L15_2[7] = L22_2
  L15_2[8] = L23_2
  L15_2[9] = L24_2
  L15_2[10] = L25_2
  L15_2[11] = L26_2
  L15_2[12] = L27_2
  L15_2[13] = L28_2
  L15_2[14] = L29_2
  L16_2 = {}
  L17_2 = L0_2.WIP
  L18_2 = "0110commanderxdeath"
  L19_2 = "commanderx"
  L20_2 = "cutsceneplayer_110"
  L21_2 = true
  L22_2 = true
  L23_2 = true
  L24_2 = false
  L25_2 = false
  L26_2 = ""
  L27_2 = ""
  L28_2 = 0
  L29_2 = 0
  L30_2 = 0
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L16_2[4] = L20_2
  L16_2[5] = L21_2
  L16_2[6] = L22_2
  L16_2[7] = L23_2
  L16_2[8] = L24_2
  L16_2[9] = L25_2
  L16_2[10] = L26_2
  L16_2[11] = L27_2
  L16_2[12] = L28_2
  L16_2[13] = L29_2
  L16_2[14] = L30_2
  L17_2 = {}
  L18_2 = L0_2.WIP
  L19_2 = "0108shipyard"
  L20_2 = "commanderx"
  L21_2 = "cutsceneplayer_108"
  L22_2 = true
  L23_2 = true
  L24_2 = true
  L25_2 = false
  L26_2 = false
  L27_2 = ""
  L28_2 = ""
  L29_2 = 0
  L30_2 = 0
  L31_2 = 0
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L17_2[4] = L21_2
  L17_2[5] = L22_2
  L17_2[6] = L23_2
  L17_2[7] = L24_2
  L17_2[8] = L25_2
  L17_2[9] = L26_2
  L17_2[10] = L27_2
  L17_2[11] = L28_2
  L17_2[12] = L29_2
  L17_2[13] = L30_2
  L17_2[14] = L31_2
  L18_2 = {}
  L19_2 = L0_2.WIP
  L20_2 = "0112endgame"
  L21_2 = "endgame"
  L22_2 = "cutsceneplayer_112"
  L23_2 = true
  L24_2 = true
  L25_2 = false
  L26_2 = false
  L27_2 = false
  L28_2 = ""
  L29_2 = ""
  L30_2 = 0
  L31_2 = 500
  L32_2 = 0
  L18_2[1] = L19_2
  L18_2[2] = L20_2
  L18_2[3] = L21_2
  L18_2[4] = L22_2
  L18_2[5] = L23_2
  L18_2[6] = L24_2
  L18_2[7] = L25_2
  L18_2[8] = L26_2
  L18_2[9] = L27_2
  L18_2[10] = L28_2
  L18_2[11] = L29_2
  L18_2[12] = L30_2
  L18_2[13] = L31_2
  L18_2[14] = L32_2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L10_2 = {}
  L11_2 = "Skybase"
  L12_2 = "s090_skybase"
  L13_2 = {}
  L14_2 = {}
  L15_2 = L0_2.WIP
  L16_2 = "0086commanderorbital"
  L17_2 = "commander"
  L18_2 = "cutsceneplayer_86"
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = false
  L23_2 = false
  L24_2 = ""
  L25_2 = ""
  L26_2 = 0
  L27_2 = 0
  L28_2 = 0
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L14_2[4] = L18_2
  L14_2[5] = L19_2
  L14_2[6] = L20_2
  L14_2[7] = L21_2
  L14_2[8] = L22_2
  L14_2[9] = L23_2
  L14_2[10] = L24_2
  L14_2[11] = L25_2
  L14_2[12] = L26_2
  L14_2[13] = L27_2
  L14_2[14] = L28_2
  L15_2 = {}
  L16_2 = L0_2.WIP
  L17_2 = "100commandershowswings"
  L18_2 = "commander"
  L19_2 = "cutsceneplayer_100"
  L20_2 = true
  L21_2 = true
  L22_2 = true
  L23_2 = false
  L24_2 = false
  L25_2 = ""
  L26_2 = ""
  L27_2 = 0
  L28_2 = 0
  L29_2 = 0
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L15_2[5] = L20_2
  L15_2[6] = L21_2
  L15_2[7] = L22_2
  L15_2[8] = L23_2
  L15_2[9] = L24_2
  L15_2[10] = L25_2
  L15_2[11] = L26_2
  L15_2[12] = L27_2
  L15_2[13] = L28_2
  L15_2[14] = L29_2
  L16_2 = {}
  L17_2 = L0_2.WIP
  L18_2 = "0101commanderlosehiswings_left"
  L19_2 = "commander"
  L20_2 = "cutsceneplayer_101"
  L21_2 = true
  L22_2 = true
  L23_2 = true
  L24_2 = false
  L25_2 = false
  L26_2 = "CurrentScenario.cutsceneplayer_101_left"
  L27_2 = ""
  L28_2 = 0
  L29_2 = 0
  L30_2 = 0
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L16_2[4] = L20_2
  L16_2[5] = L21_2
  L16_2[6] = L22_2
  L16_2[7] = L23_2
  L16_2[8] = L24_2
  L16_2[9] = L25_2
  L16_2[10] = L26_2
  L16_2[11] = L27_2
  L16_2[12] = L28_2
  L16_2[13] = L29_2
  L16_2[14] = L30_2
  L17_2 = {}
  L18_2 = L0_2.WIP
  L19_2 = "0101commanderlosehiswings_right"
  L20_2 = "commander"
  L21_2 = "cutsceneplayer_101"
  L22_2 = true
  L23_2 = true
  L24_2 = true
  L25_2 = false
  L26_2 = false
  L27_2 = "CurrentScenario.cutsceneplayer_101_right"
  L28_2 = ""
  L29_2 = 0
  L30_2 = 0
  L31_2 = 0
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L17_2[4] = L21_2
  L17_2[5] = L22_2
  L17_2[6] = L23_2
  L17_2[7] = L24_2
  L17_2[8] = L25_2
  L17_2[9] = L26_2
  L17_2[10] = L27_2
  L17_2[11] = L28_2
  L17_2[12] = L29_2
  L17_2[13] = L30_2
  L17_2[14] = L31_2
  L18_2 = {}
  L19_2 = L0_2.WIP
  L20_2 = "0108fallofskybase"
  L21_2 = "commander"
  L22_2 = "cutsceneplayer_108"
  L23_2 = true
  L24_2 = true
  L25_2 = true
  L26_2 = false
  L27_2 = false
  L28_2 = ""
  L29_2 = "CurrentScenario.cutsceneplayer_108_end"
  L30_2 = 0
  L31_2 = 0
  L32_2 = 0
  L18_2[1] = L19_2
  L18_2[2] = L20_2
  L18_2[3] = L21_2
  L18_2[4] = L22_2
  L18_2[5] = L23_2
  L18_2[6] = L24_2
  L18_2[7] = L25_2
  L18_2[8] = L26_2
  L18_2[9] = L27_2
  L18_2[10] = L28_2
  L18_2[11] = L29_2
  L18_2[12] = L30_2
  L18_2[13] = L31_2
  L18_2[14] = L32_2
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L2_2 = "Cutscenes"
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = msemenu_mainmenu
  L4_2 = L4_2.items
  L5_2 = {}
  L5_2.ItemKey = L2_2
  L6_2 = {}
  L5_2.ItemContent = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = msemenu_mainmenu
  L4_2 = msemenu
  L4_2 = L4_2.FindItemContent
  L5_2 = msemenu_mainmenu
  L5_2 = L5_2.items
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.tCutScenes = L4_2
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = msemenu_mainmenu
    L9_2 = L9_2.tCutScenes
    L10_2 = {}
    L11_2 = L7_2[1]
    L10_2.ItemKey = L11_2
    L11_2 = {}
    L10_2.ItemContent = L11_2
    L8_2(L9_2, L10_2)
    L8_2 = msemenu
    L8_2 = L8_2.FindItemContent
    L9_2 = msemenu_mainmenu
    L9_2 = L9_2.tCutScenes
    L10_2 = L7_2[1]
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = ipairs
    L10_2 = L7_2[3]
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L13_2[1]
      L15_2 = L13_2[2]
      L14_2 = L14_2 .. L15_2
      L15_2 = table
      L15_2 = L15_2.insert
      L16_2 = L8_2
      L17_2 = {}
      L17_2.ItemKey = L14_2
      function L18_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
        L0_3 = Game
        L0_3 = L0_3.LaunchCutsceneFromPlaythrough
        L1_3 = L13_2
        L1_3 = L1_3[3]
        L2_3 = L13_2
        L2_3 = L2_3[4]
        L3_3 = L13_2
        L3_3 = L3_3[5]
        L4_3 = L13_2
        L4_3 = L4_3[6]
        L5_3 = L13_2
        L5_3 = L5_3[7]
        L6_3 = L13_2
        L6_3 = L6_3[8]
        L7_3 = L13_2
        L7_3 = L7_3[9]
        L8_3 = L13_2
        L8_3 = L8_3[10]
        L9_3 = L13_2
        L9_3 = L9_3[11]
        L10_3 = L13_2
        L10_3 = L10_3[12]
        L11_3 = L13_2
        L11_3 = L11_3[13]
        L12_3 = L13_2
        L12_3 = L12_3[14]
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      end
      L17_2.ItemContent = L18_2
      L15_2(L16_2, L17_2)
    end
  end
end
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = 0
  L1_2 = 1
  L2_2 = 0
  L3_2 = 1
  L4_2 = 2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = msemenu_mainmenu
  L6_2 = L6_2.items
  L7_2 = {}
  L7_2.ItemKey = "Credits"
  L8_2 = {}
  L7_2.ItemContent = L8_2
  L5_2(L6_2, L7_2)
  L5_2 = msemenu
  L5_2 = L5_2.FindItemContent
  L6_2 = msemenu_mainmenu
  L6_2 = L6_2.items
  L7_2 = "Credits"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = {}
  L8_2.ItemKey = "Load Credits From Menu"
  function L9_2()
    local L0_3, L1_3
    L0_3 = Game
    L0_3 = L0_3.ShowEndGameCredits
    L1_3 = false
    L0_3(L1_3)
  end
  L8_2.ItemContent = L9_2
  L6_2(L7_2, L8_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = {}
  L8_2.ItemKey = "Load Game Ending"
  L9_2 = {}
  L8_2.ItemContent = L9_2
  L6_2(L7_2, L8_2)
  L6_2 = msemenu
  L6_2 = L6_2.FindItemContent
  L7_2 = L5_2
  L8_2 = "Load Game Ending"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L6_2
  L9_2 = {}
  L9_2.ItemKey = "Normal OK"
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.LoadGameEnding
    L1_3 = L0_2
    L2_3 = L2_2
    L0_3(L1_3, L2_3)
  end
  L9_2.ItemContent = L10_2
  L7_2(L8_2, L9_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L6_2
  L9_2 = {}
  L9_2.ItemKey = "Normal GREAT"
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.LoadGameEnding
    L1_3 = L0_2
    L2_3 = L3_2
    L0_3(L1_3, L2_3)
  end
  L9_2.ItemContent = L10_2
  L7_2(L8_2, L9_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L6_2
  L9_2 = {}
  L9_2.ItemKey = "Normal EXCELLENT"
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.LoadGameEnding
    L1_3 = L0_2
    L2_3 = L4_2
    L0_3(L1_3, L2_3)
  end
  L9_2.ItemContent = L10_2
  L7_2(L8_2, L9_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L6_2
  L9_2 = {}
  L9_2.ItemKey = "Hard OK"
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.LoadGameEnding
    L1_3 = L1_2
    L2_3 = L2_2
    L0_3(L1_3, L2_3)
  end
  L9_2.ItemContent = L10_2
  L7_2(L8_2, L9_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L6_2
  L9_2 = {}
  L9_2.ItemKey = "Hard GREAT"
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.LoadGameEnding
    L1_3 = L1_2
    L2_3 = L3_2
    L0_3(L1_3, L2_3)
  end
  L9_2.ItemContent = L10_2
  L7_2(L8_2, L9_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L6_2
  L9_2 = {}
  L9_2.ItemKey = "Hard EXCELLENT"
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = Game
    L0_3 = L0_3.LoadGameEnding
    L1_3 = L1_2
    L2_3 = L4_2
    L0_3(L1_3, L2_3)
  end
  L9_2.ItemContent = L10_2
  L7_2(L8_2, L9_2)
end
L8_1 = Game
L8_1 = L8_1.IsInFINAL
L8_1 = L8_1()
if not L8_1 then
  L8_1 = L0_1
  L8_1()
  L8_1 = L1_1
  L8_1()
  L8_1 = L2_1
  L8_1()
  L8_1 = L3_1
  L8_1()
  L8_1 = L4_1
  L8_1()
  L8_1 = L5_1
  L8_1()
  L8_1 = L6_1
  L8_1()
end
L8_1 = table
L8_1 = L8_1.insert
L9_1 = msemenu_mainmenu
L9_1 = L9_1.items
L10_1 = {}
L10_1.ItemKey = "Load Checkpoint"
L11_1 = msemenu_presaved
L11_1 = L11_1.GenerateLoadMenuForPlaythrought
L12_1 = "pt_official"
L11_1 = L11_1(L12_1)
L10_1.ItemContent = L11_1
L8_1(L9_1, L10_1)
L8_1 = table
L8_1 = L8_1.insert
L9_1 = msemenu_mainmenu
L9_1 = L9_1.items
L10_1 = {}
L10_1.ItemKey = "Load Savedata"
L11_1 = msemenu
L11_1 = L11_1.GenerateDefaultTableItems
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Game
  L1_2 = L1_2.LoadProfile
  L2_2 = A0_2.ID
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L13_1 = msemenu_checkpoint
L13_1 = L13_1.profiles
L14_1 = "Desc"
L11_1 = L11_1(L12_1, L13_1, L14_1)
L10_1.ItemContent = L11_1
L8_1(L9_1, L10_1)
L8_1 = Game
L8_1 = L8_1.IsInFINAL
L8_1 = L8_1()
if not L8_1 then
  L8_1 = L7_1
  L8_1()
end
L8_1 = msemenu_mainmenu
L9_1 = {}
L10_1 = {}
L10_1.ItemKey = "Load Savedata"
L11_1 = msemenu
L11_1 = L11_1.GenerateDefaultTableItems
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = Game
  L1_2 = L1_2.LoadGame
  L2_2 = "savedata"
  L1_2(L2_2)
end
L13_1 = msemenu_checkpoint
L13_1 = L13_1.profiles
L14_1 = "Desc"
L11_1 = L11_1(L12_1, L13_1, L14_1)
L10_1.ItemContent = L11_1
L11_1 = msemenu
L11_1 = L11_1.GenerateDefaultItemsWithAlias
L12_1 = ScenarioMenu
L12_1 = L12_1.LoadScenario
L13_1 = tScenarioMenuDefs
L13_1 = L13_1.aScenarios
L14_1 = tScenarioMenuDefs
L14_1 = L14_1.aScenariosWithAlias
L11_1 = L11_1(L12_1, L13_1, L14_1)
L9_1["Load Scenario"] = L11_1
L9_1[1] = L10_1
L8_1.debug_items = L9_1
L8_1 = table
L8_1 = L8_1.insert
L9_1 = msemenu_mainmenu
L9_1 = L9_1.items
L10_1 = {}
L10_1.ItemKey = "Loading Tooltip"
L11_1 = msemenu_ingame
L11_1 = L11_1.GenerateForceLoadingScreenTooltip
L11_1 = L11_1()
L10_1.ItemContent = L11_1
L8_1(L9_1, L10_1)
L8_1 = table
L8_1 = L8_1.insert
L9_1 = msemenu_mainmenu
L9_1 = L9_1.items
L10_1 = {}
L10_1.ItemKey = "Show Subtitles"
L11_1 = msemenu_ingame
L11_1 = L11_1.SwitchShowSubtitles
L11_1 = L11_1()
L10_1.ItemContent = L11_1
L8_1(L9_1, L10_1)
