Game.ImportLibrary("gui/scripts/sprites_texturehud.lua")
Game.ImportLibrary("gui/scripts/sprites_texturehudopaque.lua")
Game.ImportLibrary("gui/scripts/hud.lua", false)
IngameMenuComposition = IngameMenuComposition or {}
function IngameMenuComposition.Create(_ARG_0_, _ARG_1_)
  return (IngameMenuComposition.CreateIngameMenuComposition(_ARG_0_, _ARG_1_))
end
function IngameMenuComposition.CreateIngameMenuComposition(_ARG_0_, _ARG_1_)
  GUI.SetHierarchyProperties(GUI.CreateDisplayObjectEx(_ARG_0_, "CHUD", {}), _ARG_1_)
  return (GUI.CreateDisplayObjectEx(_ARG_0_, "CHUD", {}))
end
