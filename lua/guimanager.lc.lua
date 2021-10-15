local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/utils.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/guicallbacks.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ExtraDebugAllowed
L0_1 = L0_1()
if not L0_1 then
  L0_1 = Game
  L0_1 = L0_1.VersionNumberAllowed
  L0_1 = L0_1()
  if not L0_1 then
    L0_1 = Game
    L0_1 = L0_1.MemoryStatsAllowed
    L0_1 = L0_1()
    if not L0_1 then
      goto lbl_31
    end
  end
end
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemessage.lua"
L2_1 = false
L0_1(L1_1, L2_1)
::lbl_31::
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/loadingscreen.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = GUIManager
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.LoadShapes
  L1_2 = "DefaultShapes"
  L0_2(L1_2)
  L0_2 = GUI
  L0_2 = L0_2.GetDisplayObject
  L1_2 = "[Root]"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.ExtraDebugAllowed
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = Game
    L1_2 = L1_2.VersionNumberAllowed
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = Game
      L1_2 = L1_2.MemoryStatsAllowed
      L1_2 = L1_2()
      if not L1_2 then
        goto lbl_31
      end
    end
  end
  L1_2 = msemessage
  L1_2 = L1_2.Create
  L2_2 = "DebugMessage"
  L1_2 = L1_2(L2_2)
  L3_2 = L0_2
  L2_2 = L0_2.AddChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  ::lbl_31::
  L1_2 = loadingscreen
  L1_2 = L1_2.Create
  L2_2 = "LoadingScreen"
  L1_2 = L1_2(L2_2)
  L3_2 = L0_2
  L2_2 = L0_2.AddChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = GUI
  L2_2 = L2_2.CreateCompInstanceEx
  L3_2 = "Cutscene"
  L4_2 = "cutscene"
  L5_2 = {}
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L0_2
  L3_2 = L0_2.AddChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = GUIManager
  L3_2 = L3_2.LoadCurrentLanguageResources
  L3_2()
end
L0_1.main = L1_1
L0_1 = GUIManager
function L1_1()
  local L0_2, L1_2
  L0_2 = menu_root
  if L0_2 then
    L0_2 = menu_root
    L0_2 = L0_2.PopAllItems
    L0_2()
  end
end
L0_1.OnDestroying = L1_1
L0_1 = GUIManager
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GUI
  L1_2 = L1_2.DestroyAllFonts
  L1_2()
  if A0_2 == "JAPANESE" then
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_small"
    L3_2 = "system/fonts/occ_20.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_low"
    L3_2 = "system/fonts/jpn_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_bold"
    L3_2 = "system/fonts/jpn_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium"
    L3_2 = "system/fonts/jpn_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_hefty"
    L3_2 = "system/fonts/jpn_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_big"
    L3_2 = "system/fonts/jpn_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occhefty"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occmedium"
    L3_2 = "system/fonts/occ_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = gui_global_fonts
    L1_2.sMenuListSmall = "digital_hefty"
  elseif A0_2 == "KOREAN" then
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_small"
    L3_2 = "system/fonts/occ_20.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_low"
    L3_2 = "system/fonts/kor_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_bold"
    L3_2 = "system/fonts/kor_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium"
    L3_2 = "system/fonts/kor_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_hefty"
    L3_2 = "system/fonts/kor_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_big"
    L3_2 = "system/fonts/kor_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occhefty"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occmedium"
    L3_2 = "system/fonts/occ_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = gui_global_fonts
    L1_2.sMenuListSmall = "digital_hefty"
  elseif A0_2 == "TRADITIONAL_CHINESE" then
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_small"
    L3_2 = "system/fonts/occ_20.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_low"
    L3_2 = "system/fonts/cht_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_bold"
    L3_2 = "system/fonts/cht_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium"
    L3_2 = "system/fonts/cht_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_hefty"
    L3_2 = "system/fonts/cht_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_big"
    L3_2 = "system/fonts/cht_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occhefty"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occmedium"
    L3_2 = "system/fonts/occ_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = gui_global_fonts
    L1_2.sMenuListSmall = "digital_hefty"
  elseif A0_2 == "SIMPLIFIED_CHINESE" then
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_small"
    L3_2 = "system/fonts/occ_20.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_low"
    L3_2 = "system/fonts/chc_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_bold"
    L3_2 = "system/fonts/chc_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium"
    L3_2 = "system/fonts/chc_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_hefty"
    L3_2 = "system/fonts/chc_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_big"
    L3_2 = "system/fonts/chc_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occhefty"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occmedium"
    L3_2 = "system/fonts/occ_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = gui_global_fonts
    L1_2.sMenuListSmall = "digital_hefty"
  elseif A0_2 == "RUSSIAN" then
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_small"
    L3_2 = "system/fonts/occ_20.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_low"
    L3_2 = "system/fonts/rus_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_bold"
    L3_2 = "system/fonts/rus_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium"
    L3_2 = "system/fonts/rus_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_hefty"
    L3_2 = "system/fonts/rus_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_big"
    L3_2 = "system/fonts/rus_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occhefty"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occmedium"
    L3_2 = "system/fonts/occ_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = gui_global_fonts
    L1_2.sMenuListSmall = "digital_hefty"
  else
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_small"
    L3_2 = "system/fonts/occ_20.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_low"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium_bold"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_medium"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_hefty"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_big"
    L3_2 = "system/fonts/occ_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occhefty"
    L3_2 = "system/fonts/occ_32.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = GUI
    L1_2 = L1_2.AddFont
    L2_2 = "digital_occmedium"
    L3_2 = "system/fonts/occ_52.bfont"
    L4_2 = ""
    L5_2 = 1
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = gui_global_fonts
    L1_2.sMenuListSmall = "digital_hefty"
  end
end
L0_1.LoadLanguageResources = L1_1
L0_1 = GUIManager
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetCurrentLanguage
  L0_2 = L0_2()
  L1_2 = GUIManager
  L1_2 = L1_2.LoadLanguageResources
  L2_2 = L0_2
  L1_2(L2_2)
end
L0_1.LoadCurrentLanguageResources = L1_1
L0_1 = GUIManager
function L1_1()
  local L0_2, L1_2
end
L0_1.LoadGUISoundResources = L1_1
