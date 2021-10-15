local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/class.lua"
L0_1(L1_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu.lua"
L0_1(L1_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/scenariomenu_common.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = {}
msemenu_start = L0_1
L0_1 = msemenu_start
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Game
  L1_2 = L1_2.InitSaveData
  L1_2()
  L1_2 = slots
  L1_2 = L1_2.RetrieveSlotsInfo
  L2_2 = class
  L2_2 = L2_2.BindMethod
  L3_2 = self
  L4_2 = msemenu_start
  L4_2 = L4_2.OnSlotsInfoRetrieved
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = nil
  return L1_2
end
L0_1.Create = L1_1
L0_1 = msemenu_start
function L1_1(A0_2)
  local L1_2
end
L0_1.OnSaveDataInitialized = L1_1
L0_1 = msemenu_start
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.1
  L2_2 = "msemenu_start.OnSlotsInfoRetrievedDelayed"
  L3_2 = ""
  L4_2 = ""
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L0_1.OnSlotsInfoRetrieved = L1_1
L0_1 = msemenu_start
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.IsSaveDataBusy
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = Game
    L0_2 = L0_2.AddSF
    L1_2 = 0.1
    L2_2 = "msemenu_start.OnSlotsInfoRetrievedDelayed"
    L3_2 = ""
    L4_2 = ""
    L0_2(L1_2, L2_2, L3_2, L4_2)
  else
    L0_2 = slots
    L0_2 = L0_2.tSlotInfo
    if L0_2 then
      L0_2 = slots
      L0_2 = L0_2.tSlotInfo
      L0_2 = L0_2.SLOT1
      if L0_2 then
        L0_2 = slots
        L0_2 = L0_2.tSlotInfo
        L0_2 = L0_2.SLOT1
        L0_2 = L0_2.bSlotEnabled
        if L0_2 then
          L0_2 = Game
          L0_2 = L0_2.LoadProfile
          L1_2 = slots
          L1_2 = L1_2.tSlotDefs
          L1_2 = L1_2.SLOT1
          L1_2 = L1_2.sProfile
          L2_2 = true
          L0_2(L1_2, L2_2)
        else
          L0_2 = Game
          L0_2 = L0_2.CreateProfile
          L1_2 = slots
          L1_2 = L1_2.tSlotDefs
          L1_2 = L1_2.SLOT1
          L1_2 = L1_2.sProfile
          L0_2(L1_2)
        end
      end
    end
    L0_2 = GUI
    L0_2 = L0_2.ResetMainMenuDebugGUI
    L1_2 = "gui/scripts/msemenu_mainmenu.lua"
    L2_2 = ""
    L0_2(L1_2, L2_2)
  end
end
L0_1.OnSlotsInfoRetrievedDelayed = L1_1
