-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/camerafxpresets.lc.local 

-- params : ...
-- function num : 0
CameraFXPresets = {}
local l_0_0 = CameraFXPresets
local l_0_1 = {}
local l_0_2 = {}
l_0_2.sID = "STEADY_CAMERA"
l_0_2.sClass = "CCameraFX_SteadyCamera"
local l_0_3 = {}
l_0_3.fMinAngleXAxis = "0.0001"
l_0_3.fMaxAngleXAxis = "0.001"
l_0_3.fMinAngleYAxis = "0.0002"
l_0_3.fMaxAngleYAxis = "0.002"
l_0_3.sFunction = "s"
l_0_2.tParams = l_0_3
local l_0_4 = {}
l_0_4.fTime = "0.55"
l_0_4.fAmplitude = "0.45"
l_0_4.sFunction = "SqooooooszI"
local l_0_5 = {}
l_0_5.fTime = "0.2"
l_0_5.fDistance = "8.0"
local l_0_6 = {}
l_0_6.fTime = "-1.0"
l_0_6.fDistance = "6.0"
local l_0_7 = {}
l_0_7.fTime = "-1.0"
l_0_7.fDistance = "1.0"
local l_0_8 = {}
l_0_8.fTime = "0.200"
l_0_8.fDistance = "16.0"
local l_0_9 = {}
l_0_9.fTime = "0.300"
l_0_9.fDistance = "8.0"
l_0_9.sFunction = "aia"
local l_0_10 = {}
l_0_10.fTime = "0.400"
l_0_10.fDistance = "10.0"
l_0_10.sFunction = "aia"
local l_0_11 = {}
l_0_11.fTime = "0.900"
l_0_11.fDistance = "10.0"
l_0_11.sFunction = "aia"
local l_0_12 = {}
l_0_12.fTime = "0.500"
l_0_12.fDistance = "10.0"
l_0_12.sFunction = "aia"
local l_0_13 = {}
l_0_13.fTime = "0.2"
l_0_13.fDistance = "10.0"
local l_0_14 = {}
l_0_14.fTime = "0.300"
l_0_14.fDistance = "16.0"
local l_0_15 = {}
l_0_15.fTime = "0.1"
l_0_15.fDistance = "5.0"
local l_0_16 = {}
l_0_16.fTime = "0.15"
l_0_16.fAmplitude = "0.15"
l_0_16.sFunction = "SqooooooszI"
local l_0_17 = {}
l_0_17.fTime = "0.25"
l_0_17.fAmplitude = "0.25"
l_0_17.sFunction = "SqooooooszI"
local l_0_18 = {}
l_0_18.fTime = "0.35"
l_0_18.fAmplitude = "0.35"
l_0_18.sFunction = "SqooooooszI"
local l_0_19 = {}
l_0_19.fTime = "0.2"
l_0_19.fDistance = "3.5"
local l_0_20 = {}
l_0_20.fTime = "0.1"
l_0_20.fDistance = "5.0"
local l_0_21 = {}
l_0_21.fTime = "0.1"
l_0_21.fDistance = "5.0"
local l_0_22 = {}
l_0_22.fTime = "0.35"
l_0_22.fDistance = "2.0"
local l_0_23 = {}
l_0_23.fDistance = "2.5"
l_0_23.fTwist = "0.01"
local l_0_24 = {}
l_0_24.fTime = "0.3"
l_0_24.fDistance = "30.0"
local l_0_25 = {}
l_0_25.fTime = "0.3"
l_0_25.fDistance = "7.0"
local l_0_26 = {}
l_0_26.fTime = "0.3"
l_0_26.fDistance = "30.0"
local l_0_27 = {}
l_0_27.fTime = "0.45"
l_0_27.fAmplitude = "0.45"
l_0_27.sFunction = "SqoooooiszI"
local l_0_28 = {}
l_0_28.fTime = "0.3"
l_0_28.fDistance = "30.0"
local l_0_29 = {}
l_0_29.fTime = "0.3"
l_0_29.fDistance = "10.0"
local l_0_30 = {}
l_0_30.fTime = "0.3"
l_0_30.fDistance = "30.0"
local l_0_31 = {}
l_0_31.fTime = "0.3"
l_0_31.fDistance = "30.0"
local l_0_32 = {}
l_0_32.fTime = "0.3"
l_0_32.fDistance = "10.0"
local l_0_33 = {}
l_0_33.fTime = "1.2"
l_0_33.fDistance = "10.0"
local l_0_34 = {}
l_0_34.fTime = "1.2"
l_0_34.fDistance = "10.0"
local l_0_35 = {}
l_0_35.fTime = "1.2"
l_0_35.fDistance = "10.0"
local l_0_36 = {}
l_0_36.fTime = "1.2"
l_0_36.fDistance = "25.0"
local l_0_37 = {}
l_0_37.fTime = "1.5"
l_0_37.fDistance = "3.5"
l_0_37.fTwist = "0.003"
local l_0_38 = {}
l_0_38.fTime = "0.5"
l_0_38.fDistance = "2.5"
l_0_38.fTwist = "0.001"
local l_0_39 = {}
l_0_39.fTime = "4.0"
l_0_39.fDistance = "10.0"
local l_0_40 = {}
l_0_40.fTime = "1.2"
l_0_40.fDistance = "50.0"
l_0_40.sFunction = "i"
local l_0_41 = {}
l_0_41.fTime = "1"
l_0_41.fAmplitude = "0.08"
l_0_41.sFunction = "ooooosz"
local l_0_42 = {}
l_0_42.fTime = "2"
l_0_42.fAmplitude = "0.08"
l_0_42.sFunction = "ooooosz"
local l_0_43 = {}
l_0_43.fTime = "5"
l_0_43.fAmplitude = "0.08"
l_0_43.sFunction = "ooooosz"
local l_0_44 = {}
l_0_44.fTime = "0.5"
l_0_44.fAmplitude = "0.08"
l_0_44.sFunction = "oooiszI"
local l_0_45 = {}
l_0_45.fTime = "2.3"
l_0_45.fAmplitude = "0.45"
l_0_45.sFunction = "SsSqoooooosz"
local l_0_46 = {}
l_0_46.fTime = "0.45"
l_0_46.fAmplitude = "0.45"
l_0_46.sFunction = "SqooooooszI"
local l_0_47 = {}
l_0_47.fTime = "0.35"
l_0_47.fAmplitude = "0.25"
l_0_47.sFunction = "SqooooooszI"
local l_0_48 = {}
l_0_48.fTime = "0.45"
l_0_48.fAmplitude = "0.45"
l_0_48.sFunction = "SqoooooiszI"
local l_0_49 = {}
l_0_49.fTime = "0.6"
l_0_49.fDistance = "20.0"
local l_0_50 = {}
l_0_50.fTime = "0.6"
l_0_50.fDistance = "20.0"
local l_0_51 = {}
l_0_51.fTime = "0.7"
l_0_51.fDistance = "30.0"
local l_0_52 = {}
l_0_52.fTime = "0.6"
l_0_52.fDistance = "20.0"
-- DECOMPILER ERROR at PC377: No list found for R1 , SetList fails

l_0_3 = {sID = "DAMAGE_STRENGTH_HARD", sClass = "CCameraFX_RotationShake", tParams = l_0_4, fTime = "100", fDistance = "7.0"}
l_0_4 = {sID = "SPRSHOT_WEAPON_BOOST", sClass = "CCameraFX_RandShake", tParams = l_0_5, fTime = "3.0", fAmplitude = "0.35", sFunction = "SqooooooszII"}
l_0_5 = {sID = "HYPER_BEAM_COMMANDERX", sClass = "CCameraFX_RandShake", tParams = l_0_6, fTime = "2.0", fDistance = "7.5", fTwist = "0.01"}
l_0_6 = {sID = "HYPER_BEAM_CHARGE_COMMANDERX", sClass = "CCameraFX_RandShake", tParams = l_0_7, fTime = "0.20", fDistance = "20", fTwist = "0.01"}
l_0_7 = {sID = "MELEE", sClass = "CCameraFX_RandShake", tParams = l_0_8, fTime = "2.0", fDistance = "10.0"}
l_0_8 = {sID = "MELEE_02", sClass = "CCameraFX_RandShake", tParams = l_0_9, fTime = "100.0", fDistance = "2.5"}
l_0_9 = {sID = "MELEE_03", sClass = "CCameraFX_RandShake", tParams = l_0_10, fTime = "100.0", fDistance = "5.0"}
l_0_10 = {sID = "MELEE_04", sClass = "CCameraFX_RandShake", tParams = l_0_11, fTime = "0.4", fDistance = "7.5"}
l_0_11 = {sID = "MELEE_05", sClass = "CCameraFX_RandShake", tParams = l_0_12, fTime = "0.8", fDistance = "25.0"}
l_0_12 = {sID = "MELEE_COUNTER", sClass = "CCameraFX_RandShake", tParams = l_0_13, fTime = "0.6", fDistance = "20.0", sFunction = "osqqII"}
l_0_13 = {sID = "MELEE_KILL", sClass = "CCameraFX_RandShake", tParams = l_0_14, fTime = "0.8", fDistance = "6.0"}
l_0_14 = {sID = "MELEE_BLOCKED_WITH_IMPACT", sClass = "CCameraFX_RandShake", tParams = l_0_15, fTime = "0.5", fDistance = "5.0", sFunction = "2i"}
l_0_15 = {sID = "IMPACT_LOW", sClass = "CCameraFX_RotationShake", tParams = l_0_16, fTime = "0.4", fDistance = "1.5"}
l_0_16 = {sID = "IMPACT_MEDIUM", sClass = "CCameraFX_RotationShake", tParams = l_0_17, fTime = "0.05", fDistance = "7.0"}
l_0_17 = {sID = "IMPACT_HARD", sClass = "CCameraFX_RotationShake", tParams = l_0_18, fTime = "0.3", fDistance = "2.5", sFunction = "2i"}
l_0_18 = {sID = "IMPACT_SUPER_MISSILE", sClass = "CCameraFX_RandShake", tParams = l_0_19, fTime = "0.3", fDistance = "3.0"}
l_0_19 = {sID = "IMPACT_ICE_MISSILE", sClass = "CCameraFX_RandShake", tParams = l_0_20, fTime = "0.3", fDistance = "4.0"}
l_0_20 = {sID = "IMPACT_SP_MISSILE", sClass = "CCameraFX_RandShake", tParams = l_0_21, fTime = "0.15", fDistance = "8.0", sFunction = "sia"}
l_0_21 = {sID = "IMPACT_LOCKON", sClass = "CCameraFX_RandShake", tParams = l_0_22, fTime = "0.2", fDistance = "8.0", sFunction = "sia"}
l_0_22 = {sID = "BLOCK_SYNCHRO", sClass = "CCameraFX_RandShake", tParams = l_0_23, fTime = "0.3", fDistance = "8.0"}
l_0_23 = {sID = "ALPHA_DEATH", sClass = "CCameraFX_RandShake", tParams = l_0_24, fTime = "0.3", fDistance = "10.0", sFunction = "sia"}
l_0_24 = {sID = "ALPHA_GRAB", sClass = "CCameraFX_RandShake", tParams = l_0_25, fTime = "0.2", fDistance = "08.0", sFunction = "sia"}
l_0_25 = {sID = "GAMMA_DEATH", sClass = "CCameraFX_RandShake", tParams = l_0_26, fTime = "0.2", fDistance = "08.0", sFunction = "sia"}
l_0_26 = {sID = "GAMMA_WALL_COLLISON", sClass = "CCameraFX_RotationShake", tParams = l_0_27, fTime = "1.3", fDistance = "08.0", sFunction = "ia2osqi"}
l_0_27 = {sID = "ZETA_DEATH", sClass = "CCameraFX_RandShake", tParams = l_0_28, fTime = "0.8", fDistance = "20.0", sFunction = "aai"}
l_0_28 = {sID = "ZETA_LAND", sClass = "CCameraFX_RandShake", tParams = l_0_29, fTime = "0.7", fAmplitude = "0.07", sFunction = "SqqqqoooooszI"}
l_0_29 = {sID = "OMEGA_DEATH_INIT", sClass = "CCameraFX_RandShake", tParams = l_0_30, fTime = "0.6", fAmplitude = "0.1", sFunction = "SqqqqoooooszI"}
l_0_30 = {sID = "OMEGA_DEATH", sClass = "CCameraFX_RandShake", tParams = l_0_31, fTime = "0.5", fDistance = "6.0"}
l_0_31 = {sID = "OMEGA_LAND", sClass = "CCameraFX_RandShake", tParams = l_0_32, fTime = "0.2", fDistance = "6.0"}
l_0_32 = {sID = "OMEGA_ANGRY", sClass = "CCameraFX_RandShake", tParams = l_0_33, fTime = "0.1", fDistance = "2.0"}
l_0_33 = {sID = "OMEGA_STAGGER", sClass = "CCameraFX_RandShake", tParams = l_0_34, fTime = "0.2", fDistance = "1.0"}
l_0_34 = {sID = "OMEGA_RECOVER_CORE", sClass = "CCameraFX_RandShake", tParams = l_0_35, fTime = "0.7", fDistance = "0.75", sFunction = "ii2"}
l_0_35 = {sID = "OMEGA_EARTHQUAKE", sClass = "CCameraFX_RandShake", tParams = l_0_36, fTime = "0.6", fDistance = "12.0", sFunction = "i2"}
l_0_36 = {sID = "OMEGA_PLASMA", sClass = "CCameraFX_RandShake", tParams = l_0_37, fTime = "0.6", fDistance = "16.0", sFunction = "i2"}
l_0_37 = {sID = "OMEGA_PLASMA_END", sClass = "CCameraFX_RandShake", tParams = l_0_38, fTime = "1.0", fDistance = "8.0", sFunction = "i"}
l_0_38 = {sID = "QUEEN_SPAWN", sClass = "CCameraFX_RandShake", tParams = l_0_39, fTime = "-1.0", fDistance = "2.0"}
l_0_39 = {sID = "QUEEN_SHAKING_JUMP", sClass = "CCameraFX_RandShake", tParams = l_0_40, fTime = "-1.0", fDistance = "1.0"}
l_0_40 = {sID = "QUEEN_PLASMA_1sec", sClass = "CCameraFX_RotationShake", tParams = l_0_41, fTime = "0.2", fDistance = "10.0"}
l_0_41 = {sID = "QUEEN_PLASMA_2secs", sClass = "CCameraFX_RotationShake", tParams = l_0_42, fTime = "0.5", fDistance = "14.0", sFunction = "i22"}
l_0_42 = {sID = "QUEEN_PLASMA_5secs", sClass = "CCameraFX_RotationShake", tParams = l_0_43, fTime = "2.0", fDistance = "1.0", sFunction = "s"}
l_0_43 = {sID = "QUEEN_PLASMA_END", sClass = "CCameraFX_RotationShake", tParams = l_0_44, fTime = "1.0", fDistance = "16.0", sFunction = "i2"}
l_0_44 = {sID = "QUEEN_INSIDE_MAX_TIME", sClass = "CCameraFX_RotationShake", tParams = l_0_45, fTime = "3.0", fDistance = "7.0", sFunction = "os"}
l_0_45 = {sID = "ARACHNUS_RAM_WALL_COLLISON", sClass = "CCameraFX_RotationShake", tParams = l_0_46, fTime = "-1.0", fDistance = "1.0"}
l_0_46 = {sID = "ARACHNUS_JUMP_INIT", sClass = "CCameraFX_RotationShake", tParams = l_0_47, fTime = "0.3", fDistance = "10.0", sFunction = "i2"}
l_0_47 = {sID = "HALZYN_STOMP_SHAKE", sClass = "CCameraFX_RotationShake", tParams = l_0_48, fTime = "0.5", fDistance = "6.0", sFunction = "i2"}
l_0_48 = {sID = "MANIC_MINER_BOT_CHUSHING_DRILLS_1", sClass = "CCameraFX_RandShake", tParams = l_0_49, fTime = "2.0", fDistance = "7.0", sFunction = "osqI"}
l_0_49 = {sID = "MANIC_MINER_BOT_CHUSHING_DRILLS_2", sClass = "CCameraFX_RandShake", tParams = l_0_50, fTime = "2.0", fDistance = "4.0", sFunction = "osqI"}
l_0_50 = {sID = "MANIC_MINER_BOT_CHUSHING_DRILLS_3", sClass = "CCameraFX_RandShake", tParams = l_0_51, fTime = "1.0", fDistance = "4.0", sFunction = "osqI"}
l_0_51 = {sID = "MANIC_MINER_BOT_ROCK_THROWING_INIT", sClass = "CCameraFX_RandShake", tParams = l_0_52, fTime = "0.1", fDistance = "3.0", sFunction = "i"}
l_0_52 = {fTime = "0.45", fDistance = "2.0", sFunction = "s"}
-- DECOMPILER ERROR at PC758: No list found for R1 , SetList fails

l_0_3 = {sID = "MANIC_MINER_BOT_SHAKE", sClass = "CCameraFX_RotationShake", tParams = l_0_4, fTime = "0.15", fDistance = "2.0", sFunction = "is"}
l_0_4 = {sID = "MANIC_MINER_BOT_DISASSEMBLY", sClass = "CCameraFX_RandShake", tParams = l_0_5, fTime = "0.2", fDistance = "2.0"}
l_0_5 = {sID = "SPIDER_IMPULSE_END", sClass = "CCameraFX_RandShake", tParams = l_0_6, fTime = "-1.0", fDistance = "1.0"}
l_0_6 = {sID = "POWER_BOMB", sClass = "CCameraFX_RandShake", tParams = l_0_7, fTime = "0.35", fDistance = "3.0", sFunction = "osqI"}
l_0_7 = {sID = "DNA_ABSORBTION", sClass = "CCameraFX_RandShake", tParams = l_0_8, fTime = "0.1", fDistance = "1.0", sFunction = "i2"}
l_0_8 = {sID = "DNA_ABSORBTION2", sClass = "CCameraFX_RandShake", tParams = l_0_9, fTime = "1.5", fDistance = "2.0", sFunction = "qs"}
l_0_9 = {sID = "DNA_ABSORBTION3", sClass = "CCameraFX_RandShake", tParams = l_0_10, fTime = "0.3", fDistance = "15.0", sFunction = "i"}
l_0_10 = {sID = "METROID_KNOCK_BACK", sClass = "CCameraFX_RandShake", tParams = l_0_11, fTime = "0.5", fDistance = "40.0", sFunction = "i"}
l_0_11 = {sID = "CHOZO_WARRIOR_BREAKSHIELD", sClass = "CCameraFX_RandShake", tParams = l_0_12, fTime = "0.2", fDistance = "3.0", sFunction = "i"}
l_0_12 = {sID = "CHOZO_WARRIOR_TRANSFORMATION", sClass = "CCameraFX_RandShake", tParams = l_0_13, fTime = "0.2", fDistance = "2.0", sFunction = "i"}
l_0_13 = {sID = "CHOZO_WARRIOR_LAND", sClass = "CCameraFX_RandShake", tParams = l_0_14, fTime = "-1.0", fDistance = "0.6"}
l_0_14 = {sID = "CHOZO_WARRIOR_TAKEOFF", sClass = "CCameraFX_RandShake", tParams = l_0_15, fTime = "0.3", fDistance = "4.0", sFunction = "i"}
l_0_15 = {sID = "CHOZO_WARRIOR_SPEAR", sClass = "CCameraFX_RandShake", tParams = l_0_16, fTime = "0.5", fDistance = "8.0", sFunction = "i2"}
l_0_16 = {sID = "CHOZO_WARRIOR_SPAWNLAND", sClass = "CCameraFX_RandShake", tParams = l_0_17, fTime = "0.5", fDistance = "20.0", sFunction = "i"}
l_0_17 = {sID = "CHOZOROBOTSOLDIER_LANDUP", sClass = "CCameraFX_RandShake", tParams = l_0_18, fTime = "0.5", fDistance = "15.0", sFunction = "osqI"}
l_0_18 = {sID = "CHOZOROBOTSOLDIER_LANDDOWNSOFT", sClass = "CCameraFX_RandShake", tParams = l_0_19, fTime = "0.3", fDistance = "6.0", sFunction = "i2"}
l_0_19 = {sID = "CHOZOROBOTSOLDIER_SPAWNSANCT", sClass = "CCameraFX_RandShake", tParams = l_0_20, fTime = "0.15", fAmplitude = "0.06", sFunction = "SqqqqoooooszI", fAttMinRange = "1000", fAttMaxRange = "3500", sAttRangeFunction = "s"}
l_0_20 = {sID = "CHOZOROBOTSOLDIER_SPAWNSANCT2", sClass = "CCameraFX_RandShake", tParams = l_0_21, fTime = "0.15", fAmplitude = "0.1", sFunction = "SqqqqoooooszI", fAttMinRange = "1000", fAttMaxRange = "3500", sAttRangeFunction = "s"}
l_0_21 = {sID = "CHOZOROBOTSOLDIER_LANDDOWNHARD", sClass = "CCameraFX_RandShake", tParams = l_0_22, fTime = "-1.0", fDistance = "0.75"}
l_0_22 = {sID = "CHOZOROBOTSOLDIER_SPAWNFOREST", sClass = "CCameraFX_RandShake", tParams = l_0_23, fTime = "-1.0", fDistance = "1.0"}
l_0_23 = {sID = "CHOZOROBOTSOLDIER_SPAWNAQUA_1", sClass = "CCameraFX_RandShake", tParams = l_0_24, fTime = "-1.0", fDistance = "3.5"}
l_0_24 = {sID = "CHOZOROBOTSOLDIER_SPAWNAQUA_2", sClass = "CCameraFX_RandShake", tParams = l_0_25, fTime = "-1.0", fDistance = "5.0"}
l_0_25 = {sID = "CHOZOROBOTSOLDIER_DEATH_EXPLOSION", sClass = "CCameraFX_RandShake", tParams = l_0_26, fTime = "1.0", fDistance = "10.0"}
l_0_26 = {sID = "CHOZOROBOTSOLDIER_DEATH_EXPLOSION_END", sClass = "CCameraFX_RandShake", tParams = l_0_27, fTime = "1.5", fDistance = "5.0"}
l_0_27 = {sID = "SCORPIUS_STEP", sClass = "CCameraFX_RotationShake", tParams = l_0_28, fTime = "0.5", fDistance = "25.0"}
l_0_28 = {sID = "SCORPIUS_STRONG_STEP", sClass = "CCameraFX_RotationShake", tParams = l_0_29, fTime = "0.4", fDistance = "16.0"}
l_0_29 = {sID = "COOLDOWNX_BODYSLAM", sClass = "CCameraFX_RandShake", tParams = l_0_30, fTime = "1.0", fDistance = "25.0"}
l_0_30 = {sID = "COOLDOWNX_BODYIMPACT", sClass = "CCameraFX_RandShake", tParams = l_0_31, fTime = "0.5", fDistance = "20.0"}
l_0_31 = {sID = "COOLDOWNX_BODYSWOOSH", sClass = "CCameraFX_RandShake", tParams = l_0_32, fTime = "0.5", fDistance = "15.0"}
l_0_32 = {sID = "COOLDOWNX_STEP", sClass = "CCameraFX_RandShake", tParams = l_0_33, fTime = "1.0", fDistance = "20.0"}
l_0_33 = {sID = "COOLDOWNX_REAPERPREPARE", sClass = "CCameraFX_RandShake", tParams = l_0_34, fTime = "0.5", fDistance = "15.0"}
l_0_34 = {sID = "COOLDOWNX_REAPER", sClass = "CCameraFX_RandShake", tParams = l_0_35, fTime = "1.0", fDistance = "40.0"}
l_0_35 = {sID = "COOLDOWNX_REAPERDOUBLESWIPE", sClass = "CCameraFX_RandShake", tParams = l_0_36, fTime = "0.5", fDistance = "15.0"}
l_0_36 = {sID = "COOLDOWNX_LASERSTART", sClass = "CCameraFX_RandShake", tParams = l_0_37, fTime = "0.5", fDistance = "15.0"}
l_0_37 = {sID = "COOLDOWNX_LASERRUMBLE", sClass = "CCameraFX_RandShake", tParams = l_0_38, fTime = "0.5", fDistance = "25.0"}
l_0_38 = {sID = "COOLDOWNX_LAVADROPSPREPARE", sClass = "CCameraFX_RandShake", tParams = l_0_39, fTime = "1.5", fDistance = "3.5", fTwist = "0.003"}
l_0_39 = {sID = "COOLDOWNX_LAVADROPSIMPACT", sClass = "CCameraFX_RandShake", tParams = l_0_40, fTime = "0.5", fDistance = "25.0"}
l_0_40 = {sID = "COOLDOWNX_LASERBITE", sClass = "CCameraFX_RandShake", tParams = l_0_41, fTime = "0.5", fDistance = "25.0"}
l_0_41 = {sID = "COOLDOWNX_WINDTUNNELPREPARE", sClass = "CCameraFX_RandShake", tParams = l_0_42, fTime = "0.5", fDistance = "25.0"}
l_0_42 = {sID = "COOLDOWNX_WINDTUNNELSTART", sClass = "CCameraFX_RandShake", tParams = l_0_43, fTime = "1.0", fDistance = "25.0"}
l_0_43 = {sID = "COOLDOWNX_WINDTUNNELWINDUP", sClass = "CCameraFX_RandShake", tParams = l_0_44, fTime = "1.0", fDistance = "5.0"}
l_0_44 = {sID = "COOLDOWNX_WINDTUNNELWINDRUMBLE", sClass = "CCameraFX_RandShake", tParams = l_0_45, fTime = "2.0", fDistance = "10.0"}
l_0_45 = {sID = "KRAID_IMPACT", sClass = "CCameraFX_RandShake", tParams = l_0_46, fTime = "3.0", fDistance = "5.0"}
l_0_46 = {sID = "KRAID_IMPACT_WEAK", sClass = "CCameraFX_RandShake", tParams = l_0_47, fTime = "2.0", fDistance = "5.0"}
l_0_47 = {sID = "KRAID_ROAR_STRONG", sClass = "CCameraFX_RandShake", tParams = l_0_48, fTime = "0.5", fDistance = "5.0"}
l_0_48 = {sID = "KRAID_ROAR_WEAK", sClass = "CCameraFX_RandShake", tParams = l_0_49, fTime = "0.5", fDistance = "2.0"}
l_0_49 = {sID = "KRAID_ROAR_SHORT", sClass = "CCameraFX_RandShake", tParams = l_0_50, fTime = "1.0", fDistance = "6.0"}
l_0_50 = {sID = "KRAID_SPECIALACTION_A", sClass = "CCameraFX_RandShake", tParams = l_0_51, fTime = "0.7", fDistance = "3.0"}
l_0_51 = {sID = "KRAID_SPECIALACTION_B", sClass = "CCameraFX_RandShake", tParams = l_0_52, fTime = "0.1", fDistance = "5.0"}
l_0_52 = "DEMOLITION_BLOCK_DEAD"
l_0_52 = {fTime = "0.6", fDistance = "15", sFunction = "i2"}
-- DECOMPILER ERROR at PC1134: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC1136: Overwrote pending register: R3 in 'AssignReg'

l_0_3 = {sID = "KRAID_ACIDBLOBS_START", sClass = "CCameraFX_RandShake", tParams = l_0_4}
l_0_3 = {fTime = "100.0", fDistance = "2.5"}
-- DECOMPILER ERROR at PC1144: Overwrote pending register: R4 in 'AssignReg'

l_0_4 = {sID = "KRAID_ACIDBLOBS_LOOP", sClass = "CCameraFX_RandShake", tParams = l_0_5}
l_0_4 = {fTime = "100.0", fDistance = "5.0"}
-- DECOMPILER ERROR at PC1152: Overwrote pending register: R5 in 'AssignReg'

l_0_5 = {sID = "KRAID_SPINNINGNAILS_THROW", sClass = "CCameraFX_RandShake", tParams = l_0_6}
l_0_5 = {fTime = "2.0", fDistance = "7.5"}
-- DECOMPILER ERROR at PC1160: Overwrote pending register: R6 in 'AssignReg'

l_0_6 = {sID = "KRAID_SPINNINGNAILS_IMPACT", sClass = "CCameraFX_RandShake", tParams = l_0_7}
l_0_6 = {fTime = "100.0", fDistance = "2.0"}
-- DECOMPILER ERROR at PC1168: Overwrote pending register: R7 in 'AssignReg'

l_0_7 = {sID = "KRAID_TRIPLEFLYINGSPIKE_PREPARE", sClass = "CCameraFX_RandShake", tParams = l_0_8}
l_0_7 = {fTime = "0.75", fDistance = "2.0"}
-- DECOMPILER ERROR at PC1176: Overwrote pending register: R8 in 'AssignReg'

l_0_8 = {sID = "KRAID_TRIPLEFLYINGSPIKE_FIRE", sClass = "CCameraFX_RandShake", tParams = l_0_9}
l_0_8 = {fTime = "0.75", fDistance = "3.0"}
-- DECOMPILER ERROR at PC1184: Overwrote pending register: R9 in 'AssignReg'

l_0_9 = {sID = "KRAID_TRIPLEFLYINGSPIKE_WALL", sClass = "CCameraFX_RandShake", tParams = l_0_10}
l_0_9 = {fTime = "0.5", fDistance = "5.0"}
-- DECOMPILER ERROR at PC1192: Overwrote pending register: R10 in 'AssignReg'

l_0_10 = {sID = "KRAID_SHOCKERSPLASH_SHOOT", sClass = "CCameraFX_RandShake", tParams = l_0_11}
l_0_10 = {fTime = "0.3", fDistance = "5.0"}
-- DECOMPILER ERROR at PC1200: Overwrote pending register: R11 in 'AssignReg'

l_0_11 = {sID = "KRAID_BOUNCINGCREATURES_SHOOT", sClass = "CCameraFX_RandShake", tParams = l_0_12}
l_0_11 = {fTime = "0.4", fDistance = "15.0", sFunction = "i2"}
-- DECOMPILER ERROR at PC1209: Overwrote pending register: R12 in 'AssignReg'

l_0_12 = {sID = "KRAID_FLYINGSPIKES_RUMBLE", sClass = "CCameraFX_RandShake", tParams = l_0_13}
l_0_12 = {fTime = "0.3", fDistance = "10.0", sFunction = "i2"}
-- DECOMPILER ERROR at PC1218: Overwrote pending register: R13 in 'AssignReg'

l_0_13 = {sID = "KRAID_FLYINGSPIKES_SHOOT", sClass = "CCameraFX_RandShake", tParams = l_0_14}
l_0_13 = {fTime = "0.1", fDistance = "5.0", sFunction = "i2"}
-- DECOMPILER ERROR at PC1227: Overwrote pending register: R14 in 'AssignReg'

l_0_14 = {sID = "KRAID_FLYINGSPIKES_WALL", sClass = "CCameraFX_RandShake", tParams = l_0_15}
l_0_14 = {fTime = "0.6", fDistance = "8.0", sFunction = "i2"}
-- DECOMPILER ERROR at PC1236: Overwrote pending register: R15 in 'AssignReg'

l_0_15 = {sID = "KRAID_FIERCESWIPE_IMPACT", sClass = "CCameraFX_RandShake", tParams = l_0_16}
l_0_15 = {fTime = "0.3", fDistance = "10.0", sFunction = "i2"}
-- DECOMPILER ERROR at PC1245: Overwrote pending register: R16 in 'AssignReg'

l_0_16 = {sID = "KRAID_BACKSLAP_SWING", sClass = "CCameraFX_RandShake", tParams = l_0_17}
l_0_16 = {fTime = "0.15", fDistance = "8.0", sFunction = "i2"}
-- DECOMPILER ERROR at PC1254: Overwrote pending register: R17 in 'AssignReg'

l_0_17 = {sID = "KRAID_ENTRANCE", sClass = "CCameraFX_RandShake", tParams = l_0_18}
-- DECOMPILER ERROR at PC1259: Overwrote pending register: R18 in 'AssignReg'

l_0_18 = {sID = "GOLIATHX_STEP", sClass = "CCameraFX_RotationShake", tParams = l_0_19}
l_0_17 = {fTime = "0.2", fDistance = l_0_18, sFunction = "i2"}
l_0_18 = "MELEEFAIL_STRONG"
l_0_18 = {fTime = "0.3", fDistance = "7.0", sFunction = "i2"}
-- DECOMPILER ERROR at PC1273: Overwrote pending register: R19 in 'AssignReg'

l_0_19 = {sID = "GOLIATHX_STEP_STRONG", sClass = "CCameraFX_RotationShake", tParams = l_0_20}
l_0_19 = {fTime = "0.2", fDistance = "6.0"}
-- DECOMPILER ERROR at PC1281: Overwrote pending register: R20 in 'AssignReg'

l_0_20 = {sID = "CONSTANT_RUMBLE_VERYLOW", sClass = "CCameraFX_RandShake", tParams = l_0_21}
l_0_20 = {fTime = "0.2", fDistance = "2.0"}
-- DECOMPILER ERROR at PC1288: No list found for R1 , SetList fails

l_0_0.tPresets = l_0_1
l_0_0 = CameraFXPresets
l_0_1 = "main"
-- DECOMPILER ERROR at PC1292: Overwrote pending register: R2 in 'AssignReg'

l_0_0[l_0_1], l_0_2 = l_0_2, {sID = "MANIC_MINER_BOT_ROCK_THROWING", sClass = "CCameraFX_RandShake", tParams = l_0_3, sID = "KRAID_SPECIALACTION_C", sClass = "CCameraFX_RandShake", tParams = l_0_3, sID = l_0_3, sClass = "CCameraFX_RandShake", tParams = l_0_3}
l_0_0 = CameraFXPresets
l_0_1 = "InitCameraFXPresets"
l_0_2 = function(l_2_0)
  -- function num : 0_1
  for l_2_4,l_2_5 in ipairs(l_2_0) do
    (Game.AddCameraFXPreset)(l_2_5.sID, l_2_5.sClass, l_2_5.tParams)
  end
end

l_0_0[l_0_1] = l_0_2

