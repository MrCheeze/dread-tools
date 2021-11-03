Game.ImportLibrary("system/scripts/utils.lua", false)
Game.ImportLibrary("gui/scripts/guicallbacks.lua", false)
if Game.ExtraDebugAllowed() or Game.VersionNumberAllowed() or Game.MemoryStatsAllowed() then
  Game.ImportLibrary("gui/scripts/msemessage.lua", false)
end
Game.ImportLibrary("gui/scripts/loadingscreen.lua", false)
function GUIManager.main()
  GUI.LoadShapes("DefaultShapes")
  if Game.ExtraDebugAllowed() or Game.VersionNumberAllowed() or Game.MemoryStatsAllowed() then
    GUI.GetDisplayObject("[Root]"):AddChild((msemessage.Create("DebugMessage")))
  end
  GUI.GetDisplayObject("[Root]"):AddChild((loadingscreen.Create("LoadingScreen")))
  GUI.GetDisplayObject("[Root]"):AddChild((GUI.CreateCompInstanceEx("Cutscene", "cutscene", {})))
  GUIManager.LoadCurrentLanguageResources()
end
function GUIManager.OnDestroying()
  if menu_root then
    menu_root.PopAllItems()
  end
end
function GUIManager.LoadLanguageResources(_ARG_0_)
  GUI.DestroyAllFonts()
  if _ARG_0_ == "JAPANESE" then
    GUI.AddFont("digital_small", "system/fonts/occ_20.bfont", "", 1, true)
    GUI.AddFont("digital_medium_low", "system/fonts/jpn_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium_bold", "system/fonts/jpn_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium", "system/fonts/jpn_32.bfont", "", 1, true)
    GUI.AddFont("digital_hefty", "system/fonts/jpn_32.bfont", "", 1, true)
    GUI.AddFont("digital_big", "system/fonts/jpn_52.bfont", "", 1, true)
    GUI.AddFont("digital_occhefty", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_occmedium", "system/fonts/occ_52.bfont", "", 1, true)
    gui_global_fonts.sMenuListSmall = "digital_hefty"
  elseif _ARG_0_ == "KOREAN" then
    GUI.AddFont("digital_small", "system/fonts/occ_20.bfont", "", 1, true)
    GUI.AddFont("digital_medium_low", "system/fonts/kor_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium_bold", "system/fonts/kor_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium", "system/fonts/kor_32.bfont", "", 1, true)
    GUI.AddFont("digital_hefty", "system/fonts/kor_32.bfont", "", 1, true)
    GUI.AddFont("digital_big", "system/fonts/kor_52.bfont", "", 1, true)
    GUI.AddFont("digital_occhefty", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_occmedium", "system/fonts/occ_52.bfont", "", 1, true)
    gui_global_fonts.sMenuListSmall = "digital_hefty"
  elseif _ARG_0_ == "TRADITIONAL_CHINESE" then
    GUI.AddFont("digital_small", "system/fonts/occ_20.bfont", "", 1, true)
    GUI.AddFont("digital_medium_low", "system/fonts/cht_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium_bold", "system/fonts/cht_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium", "system/fonts/cht_32.bfont", "", 1, true)
    GUI.AddFont("digital_hefty", "system/fonts/cht_32.bfont", "", 1, true)
    GUI.AddFont("digital_big", "system/fonts/cht_52.bfont", "", 1, true)
    GUI.AddFont("digital_occhefty", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_occmedium", "system/fonts/occ_52.bfont", "", 1, true)
    gui_global_fonts.sMenuListSmall = "digital_hefty"
  elseif _ARG_0_ == "SIMPLIFIED_CHINESE" then
    GUI.AddFont("digital_small", "system/fonts/occ_20.bfont", "", 1, true)
    GUI.AddFont("digital_medium_low", "system/fonts/chc_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium_bold", "system/fonts/chc_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium", "system/fonts/chc_32.bfont", "", 1, true)
    GUI.AddFont("digital_hefty", "system/fonts/chc_32.bfont", "", 1, true)
    GUI.AddFont("digital_big", "system/fonts/chc_52.bfont", "", 1, true)
    GUI.AddFont("digital_occhefty", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_occmedium", "system/fonts/occ_52.bfont", "", 1, true)
    gui_global_fonts.sMenuListSmall = "digital_hefty"
  elseif _ARG_0_ == "RUSSIAN" then
    GUI.AddFont("digital_small", "system/fonts/occ_20.bfont", "", 1, true)
    GUI.AddFont("digital_medium_low", "system/fonts/rus_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium_bold", "system/fonts/rus_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium", "system/fonts/rus_32.bfont", "", 1, true)
    GUI.AddFont("digital_hefty", "system/fonts/rus_32.bfont", "", 1, true)
    GUI.AddFont("digital_big", "system/fonts/rus_52.bfont", "", 1, true)
    GUI.AddFont("digital_occhefty", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_occmedium", "system/fonts/occ_52.bfont", "", 1, true)
    gui_global_fonts.sMenuListSmall = "digital_hefty"
  else
    GUI.AddFont("digital_small", "system/fonts/occ_20.bfont", "", 1, true)
    GUI.AddFont("digital_medium_low", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium_bold", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_medium", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_hefty", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_big", "system/fonts/occ_52.bfont", "", 1, true)
    GUI.AddFont("digital_occhefty", "system/fonts/occ_32.bfont", "", 1, true)
    GUI.AddFont("digital_occmedium", "system/fonts/occ_52.bfont", "", 1, true)
    gui_global_fonts.sMenuListSmall = "digital_hefty"
  end
end
function GUIManager.LoadCurrentLanguageResources()
  GUIManager.LoadLanguageResources((Game.GetCurrentLanguage()))
end
function GUIManager.LoadGUISoundResources()
end
