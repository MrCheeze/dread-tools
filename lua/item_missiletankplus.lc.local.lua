-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/item_missiletankplus.lc.local 

-- params : ...
-- function num : 0
(Game.ImportLibraryWithName)("actors/items/pickup/scripts/pickup.lua", "Pickup")
ItemMissileTankPlus = {}
local l_0_0 = setmetatable
local l_0_1 = ItemMissileTankPlus
local l_0_2 = {}
l_0_2.__index = Pickup
l_0_0(l_0_1, l_0_2)
l_0_0 = ItemMissileTankPlus
l_0_1 = function()
  -- function num : 0_0
end

l_0_0.main = l_0_1
l_0_0 = ItemMissileTankPlus
l_0_1 = function(l_2_0)
  -- function num : 0_1
  (Pickup.BeginPlay)(l_2_0)
end

l_0_0.BeginPlay = l_0_1
l_0_0 = ItemMissileTankPlus
l_0_1 = function(l_3_0)
  -- function num : 0_2
  (Pickup.EndPlay)(l_3_0)
end

l_0_0.EndPlay = l_0_1

