local L0_1, L1_1, L2_1, L3_1
L0_1 = Game
L0_1 = L0_1.ImportLibraryWithName
L1_1 = "actors/characters/player/scripts/player.lua"
L2_1 = "Player"
L0_1(L1_1, L2_1)
L0_1 = {}
MorphBall = L0_1
L0_1 = setmetatable
L1_1 = MorphBall
L2_1 = {}
L3_1 = Player
L2_1.__index = L3_1
L0_1(L1_1, L2_1)
L0_1 = MorphBall
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
