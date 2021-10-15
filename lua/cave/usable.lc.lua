local L0_1, L1_1
L0_1 = Usable
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = Usable
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Usable
  L2_2._oUsableObject = A0_2
  L2_2 = GUI
  L2_2 = L2_2.LaunchMessage
  L3_2 = A1_2
  L4_2 = "Usable.OnDialogAccepted"
  L5_2 = "Usable.OnDialogDeclined"
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.ShowDialogChoice = L1_1
L0_1 = Usable
function L1_1()
  local L0_2, L1_2
  L0_2 = Usable
  L0_2 = L0_2._oUsableObject
  L0_2 = L0_2.USABLE
  L1_2 = L0_2
  L0_2 = L0_2.OnDialogAccepted
  L0_2(L1_2)
end
L0_1.OnDialogAccepted = L1_1
L0_1 = Usable
function L1_1()
  local L0_2, L1_2
  L0_2 = Usable
  L0_2 = L0_2._oUsableObject
  L0_2 = L0_2.USABLE
  L1_2 = L0_2
  L0_2 = L0_2.OnDialogDeclined
  L0_2(L1_2)
end
L0_1.OnDialogDeclined = L1_1
L0_1 = Usable
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Usable
  L2_2._oUsableObject = A0_2
  L2_2 = GUI
  L2_2 = L2_2.LaunchMessage
  L3_2 = A1_2
  L4_2 = "Usable.OnCanNotUseAccepted"
  L5_2 = ""
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.ShowDialogCanNotUse = L1_1
L0_1 = Usable
function L1_1()
  local L0_2, L1_2
  L0_2 = Usable
  L0_2 = L0_2._oUsableObject
  L0_2 = L0_2.USABLE
  L1_2 = L0_2
  L0_2 = L0_2.OnCanNotUseAccepted
  L0_2(L1_2)
end
L0_1.OnCanNotUseAccepted = L1_1
L0_1 = Usable
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Usable
  L2_2._oUsableObject = A0_2
  L2_2 = GUI
  L2_2 = L2_2.LaunchMessage
  L3_2 = A1_2
  L4_2 = "Usable.OnDialogUseSuccess"
  L5_2 = ""
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.ShowDialogUseSuccess = L1_1
L0_1 = Usable
function L1_1()
  local L0_2, L1_2
  L0_2 = Usable
  L0_2 = L0_2._oUsableObject
  L0_2 = L0_2.USABLE
  L1_2 = L0_2
  L0_2 = L0_2.OnUseSuccessAccepted
  L0_2(L1_2)
end
L0_1.OnDialogUseSuccess = L1_1
L0_1 = Usable
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.USABLE
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.Discover
      L3_2(L4_2)
    end
  end
end
L0_1.Discover = L1_1
