-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/init.lc.local 

-- params : ...
-- function num : 0
if Init == nil or not Init then
  Init = {}
  -- DECOMPILER ERROR at PC9: Confused about usage of register: R0 in 'UnsetPending'

  Init.EnableDebugger = false
  -- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

  Init.DEBUG = (Game.IsDebug)()
  ;
  (Game.ImportLibrary)("system/scripts/class.lua")
  ;
  (Game.ImportLibrary)("gui/scripts/scenariomenu_game.lua", false)
  ;
  (Game.ImportLibrary)("system/scripts/logiccallbacks.lua", false)
  local l_0_0 = Init
  local l_0_1 = {}
  local l_0_2 = {}
  l_0_2.aScenarioSections = tScenarioMenuDefs.aScenarios
  do
    local l_0_3 = {}
    -- DECOMPILER ERROR at PC37: No list found for R3 , SetList fails

    -- DECOMPILER ERROR at PC51: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC55: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC61: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC62: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC64: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC65: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC67: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC68: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC70: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC71: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC73: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC74: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC76: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC77: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC79: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC80: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC82: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC83: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC85: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC86: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC88: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC89: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC91: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC92: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC94: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC95: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC97: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC98: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC100: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC101: Overwrote pending register: R1 in 'AssignReg'

    -- WARNING: undefined locals caused missing assignments!
  end
end

