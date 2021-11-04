local L0_1, L1_1, L2_1, L3_1, L4_1
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
msemenu_checkpoint = L0_1
L0_1 = msemenu_checkpoint
L1_1 = {}
L2_1 = {}
L2_1.ID = "profile0"
L2_1.Desc = "Samus Files 01"
L2_1.StartPoint = ""
L3_1 = {}
L3_1.ID = "profile1"
L3_1.Desc = "Samus Files 02"
L3_1.StartPoint = ""
L4_1 = {}
L4_1.ID = "profile2"
L4_1.Desc = "Samus Files 03"
L4_1.StartPoint = ""
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L0_1.profiles = L1_1
