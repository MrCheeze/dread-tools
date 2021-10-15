local L0_1, L1_1
L0_1 = {}
SmartObjectDialog = L0_1
L0_1 = SmartObjectDialog
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = SmartObjectDialog
  L2_2.oSmartObject = A1_2
end
L0_1.ShowDialogChoice = L1_1
L0_1 = SmartObjectDialog
function L1_1()
  local L0_2, L1_2
  L0_2 = SmartObjectDialog
  L0_2 = L0_2.oSmartObject
  L0_2 = L0_2.OnDialogAccepted
  L0_2()
end
L0_1.OnDialogAccepted = L1_1
L0_1 = SmartObjectDialog
function L1_1()
  local L0_2, L1_2
  L0_2 = SmartObjectDialog
  L0_2 = L0_2.oSmartObject
  L0_2 = L0_2.OnDialogDeclined
  L0_2()
end
L0_1.OnDialogDeclined = L1_1
L0_1 = SmartObjectDialog
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = SmartObjectDialog
  L2_2.oSmartObject = A1_2
end
L0_1.ShowDialogContinue = L1_1
L0_1 = SmartObjectDialog
function L1_1()
  local L0_2, L1_2
  L0_2 = SmartObjectDialog
  L0_2 = L0_2.oSmartObject
  L0_2 = L0_2.OnDialogContinued
  L0_2()
end
L0_1.OnDialogContinued = L1_1
