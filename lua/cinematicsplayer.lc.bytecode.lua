local L0_1, L1_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/cinematics_items.lua"
L0_1(L1_1)
L0_1 = cinematicsplayer
if L0_1 ~= nil then
  L0_1 = cinematicsplayer
  if L0_1 then
    goto lbl_13
  end
end
L0_1 = {}
L0_1.oRoot = nil
::lbl_13::
cinematicsplayer = L0_1
L0_1 = cinematicsplayer
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = cinematicsplayer
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObjectEx
  L3_2 = A0_2
  L4_2 = "CDisplayObjectContainer"
  L5_2 = {}
  L5_2.Focusable = true
  L5_2.FocusIdx = "0"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.oRoot = L2_2
  L1_2 = cinematicsplayer
  L1_2 = L1_2.oRoot
  L2_2 = L1_2
  L1_2 = L1_2.SetEventHandler
  L3_2 = "Cancel"
  L4_2 = "cinematicsplayer.OnCancel"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = cinematicsplayer
  L1_2 = L1_2.oRoot
  return L1_2
end
L0_1.Create = L1_1
L0_1 = cinematicsplayer
function L1_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end
L0_1.OnCancel = L1_1
