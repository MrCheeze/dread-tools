-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/morphball.lc.local 

-- params : ...
-- function num : 0
(Game.ImportLibraryWithName)("actors/characters/player/scripts/player.lua", "Player")
MorphBall = {}
local l_0_0 = setmetatable
local l_0_1 = MorphBall
local l_0_2 = {}
l_0_2.__index = Player
l_0_0(l_0_1, l_0_2)
l_0_0 = MorphBall
l_0_1 = function()
  -- function num : 0_0
end

l_0_0.main = l_0_1

