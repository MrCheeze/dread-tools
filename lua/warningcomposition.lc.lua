WarningComposition = WarningComposition or {}
function WarningComposition.Create(_ARG_0_, _ARG_1_)
  return (WarningComposition.CreateWarningComposition(_ARG_0_, _ARG_1_))
end
Game.ImportLibrary("gui/scripts/sprites_texturesplashlegal.lua")
function WarningComposition.CreateWarningComposition(_ARG_0_, _ARG_1_)
  GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {}):AddChild((GUI.CreateDisplayObjectEx("Background", "CSprite", {
    X = "0.00000",
    Y = "0.00000",
    SizeX = "1.60000",
    SizeY = "1.42222",
    ScaleX = "1.00000",
    ScaleY = "1.00000",
    Angle = "0.00000",
    Enabled = true,
    Autosize = true,
    BlendMode = "AlphaBlend",
    USelMode = "Scale",
    VSelMode = "Scale",
    Image = "gui/textures/texturesplashlegal.bctex"
  })))
  GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {}):AddChild((GUI.CreateDisplayObjectEx("PressALabel", "CLabel", {
    X = "0.35",
    Y = "0.72",
    SizeX = "0.4",
    SizeY = "0.1",
    ScaleX = "1.00000",
    ScaleY = "1.00000",
    Angle = "0.00000",
    Enabled = true,
    Text = "Press A to continue",
    Font = "digital_medium",
    TextAlignment = "Centered",
    Autosize = true,
    Outline = false,
    BlinkColorR = "1.00000",
    BlinkColorG = "1.00000",
    BlinkColorB = "1.00000",
    Blink = "0.80000"
  })))
  GUI.SetHierarchyProperties(GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {}), _ARG_1_)
  return (GUI.CreateDisplayObjectEx(_ARG_0_, "CDisplayObjectContainer", {}))
end
