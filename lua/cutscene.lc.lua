function cutscene.Create(_ARG_0_)
  GUI.CreateDisplayObject(GUI.CreateDisplayObjectEx("Cutscene", "CDisplayObjectContainer", {
    StageID = "Up",
    Enabled = true,
    Depth = "0.05"
  }), "CutsceneStageLabel", "CLabel", {
    BottomY = "0.15",
    LeftX = "0.02",
    Outline = true,
    Enabled = false
  })
  GUI.CreateDisplayObject(GUI.CreateDisplayObjectEx("Cutscene", "CDisplayObjectContainer", {
    StageID = "Up",
    Enabled = true,
    Depth = "0.05"
  }), "CutsceneForceSkip", "CLabel", {
    BottomY = "0.15",
    LeftX = "0.7",
    Outline = true,
    Enabled = true
  })
  return (GUI.CreateDisplayObjectEx("Cutscene", "CDisplayObjectContainer", {
    StageID = "Up",
    Enabled = true,
    Depth = "0.05"
  }))
end
function cutscene.OnAnimatedCameraStarted(_ARG_0_)
end
function cutscene.OnAnimatedCameraFinished(_ARG_0_)
end
