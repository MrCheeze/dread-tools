import glob
import crc64
import json
import pprint
import struct
import random
import re
import os
import numpy as np
import io

hashes = {}
used_hashes = {}

def crc64B(s):
    return int.to_bytes(crc64.crc64(s), 8, 'little')

def registerHash(s):
    hashes[crc64B(s)] = s

for line in open('exefs_strings.txt'):
    registerHash(line.strip())
for line in open('bmscd_strings.txt'):
    registerHash(line.strip())
    registerHash(line.strip()[1:])
    registerHash(line.strip()[2:])
    
all_types = json.load(open('mercury-engine-data-structures/mercury_engine_data_structures/dread_types.json'))

# manual cleanup
all_types['CCharClassAttackComponent::CTunableCharClassAttackComponent']['fields'] = {
    'fDamageArmadiggerDashAttack': 'float',
    'fDamageArmadiggerDefault': 'float',
    'fDamageAutclastDefault': 'float',
    'fDamageAutclastExplosion': 'float',
    'fDamageAutectorDefault': 'float',
    'fDamageAutectorExplosion': 'float',
    'fDamageAutomperAutomaticIrradiation': 'float',
    'fDamageAutomperDefault': 'float',
    'fDamageAutoolDefault': 'float',
    'fDamageAutsharpDefault': 'float',
    'fDamageAutsharpExplosionDefault': 'float',
    'fDamageAutsniperDefault': 'float',
    'fDamageAutsniperLaserDefault': 'float',
    'fDamageBatalloonDefault': 'float',
    'fDamageBigfistDefault': 'float',
    'fDamageBigfistMelee': 'float',
    'fDamageBigkranXDefault': 'float',
    'fDamageBigkranXMagmaBall': 'float',
    'fDamageBlindFlyAttack': 'float',
    'fDamageBlindFlyDefault': 'float',
    'fDamageCaterzillaDefault': 'float',
    'fDamageCentralUnitCannonBeamCaves': 'float',
    'fDamageCentralUnitCannonBeamForest': 'float',
    'fDamageCentralUnitCannonBeamLab': 'float',
    'fDamageCentralUnitCannonBeamMagma': 'float',
    'fDamageCentralUnitCannonBeamSanc': 'float',
    'fDamageCentralUnitCannonDefault': 'float',
    'fDamageCentralUnitDefault': 'float',
    'fDamageChozoCommanderAirCharge': 'float',
    'fDamageChozoCommanderAuraScratch': 'float',
    'fDamageChozoCommanderDefault': 'float',
    'fDamageChozoCommanderEnergyShardsFragment': 'float',
    'fDamageChozoCommanderEnergyShardsSphere': 'float',
    'fDamageChozoCommanderHyperspark': 'float',
    'fDamageChozoCommanderKiStrike': 'float',
    'fDamageChozoCommanderLandingSlam': 'float',
    'fDamageChozoCommanderLaserZero': 'float',
    'fDamageChozoCommanderLaserZeroGrounded': 'float',
    'fDamageChozoCommanderPowerPulse': 'float',
    'fDamageChozoCommanderSentenceSphere': 'float',
    'fDamageChozoCommanderTriCombo': 'float',
    'fDamageChozoCommanderTriComboNoDamage': 'float',
    'fDamageChozoRobotSoldierCannonShot': 'float',
    'fDamageChozoRobotSoldierCannonShotCharged': 'float',
    'fDamageChozoRobotSoldierCannonShotChargedElite': 'float',
    'fDamageChozoRobotSoldierCannonShotElite': 'float',
    'fDamageChozoRobotSoldierDashSlash': 'float',
    'fDamageChozoRobotSoldierDashSlashElite': 'float',
    'fDamageChozoRobotSoldierDefault': 'float',
    'fDamageChozoRobotSoldierDefaultElite': 'float',
    'fDamageChozoRobotSoldierDisruptionField': 'float',
    'fDamageChozoRobotSoldierDisruptionFieldElite': 'float',
    'fDamageChozoRobotSoldierExplosion': 'float',
    'fDamageChozoRobotSoldierExplosionElite': 'float',
    'fDamageChozoRobotSoldierUppercut': 'float',
    'fDamageChozoRobotSoldierUppercutElite': 'float',
    'fDamageChozoWarriorDefault': 'float',
    'fDamageChozoWarriorEliteDefault': 'float',
    'fDamageChozoWarriorEliteGlaiveSpin': 'float',
    'fDamageChozoWarriorEliteGlaiveWalljump': 'float',
    'fDamageChozoWarriorEliteShieldPush': 'float',
    'fDamageChozoWarriorGlaiveSpin': 'float',
    'fDamageChozoWarriorGlaiveWalljump': 'float',
    'fDamageChozoWarriorShieldPush': 'float',
    'fDamageChozoWarriorWeakDefault': 'float',
    'fDamageChozoWarriorWeakGlaiveSpin': 'float',
    'fDamageChozoWarriorWeakGlaiveWalljump': 'float',
    'fDamageChozoWarriorWeakShieldPush': 'float',
    'fDamageChozoWarriorXChangeWall': 'float',
    'fDamageChozoWarriorXDefault': 'float',
    'fDamageChozoWarriorXEliteChangeWall': 'float',
    'fDamageChozoWarriorXEliteDefault': 'float',
    'fDamageChozoWarriorXEliteGlaiveSpin': 'float',
    'fDamageChozoWarriorXEliteLandSplat': 'float',
    'fDamageChozoWarriorXEliteLandSplatWaves': 'float',
    'fDamageChozoWarriorXEliteSpit': 'float',
    'fDamageChozoWarriorXEliteWallclimb': 'float',
    'fDamageChozoWarriorXGlaiveSpin': 'float',
    'fDamageChozoWarriorXLandSplat': 'float',
    'fDamageChozoWarriorXLandSplatWaves': 'float',
    'fDamageChozoWarriorXSpit': 'float',
    'fDamageChozoWarriorXWallclimb': 'float',
    'fDamageChozoWarriorXWeakChangeWall': 'float',
    'fDamageChozoWarriorXWeakDefault': 'float',
    'fDamageChozoWarriorXWeakGlaiveSpin': 'float',
    'fDamageChozoWarriorXWeakLandSplat': 'float',
    'fDamageChozoWarriorXWeakLandSplatWaves': 'float',
    'fDamageChozoWarriorXWeakSpit': 'float',
    'fDamageChozoWarriorXWeakWallclimb': 'float',
    'fDamageChozoZombieXDefault': 'float',
    'fDamageChozoZombieXPoisonClaws': 'float',
    'fDamageCooldownXBossDefault': 'float',
    'fDamageCooldownXBossFireBall': 'float',
    'fDamageCooldownXBossLaser': 'float',
    'fDamageCooldownXBossLaserBite': 'float',
    'fDamageCooldownXBossLavaCarpet': 'float',
    'fDamageCooldownXBossLavaCarpetPuddles': 'float',
    'fDamageCooldownXBossLavaDrop': 'float',
    'fDamageCooldownXBossReaper': 'float',
    'fDamageCooldownXBossStrongWhip': 'float',
    'fDamageCooldownXBossWindTunnelWall': 'float',
    'fDamageCoreXDefault': 'float',
    'fDamageCoreXSuperQuetzoaDefault': 'float',
    'fDamageDaivoDefault': 'float',
    'fDamageDaivoSwarmIndividual': 'float',
    'fDamageDaivoSwarmMax': 'float',
    'fDamageDaivoSwarmMin': 'float',
    'fDamageDaivoSwarmRadius': 'float',
    'fDamageDepthornBall': 'float',
    'fDamageDepthornDefault': 'float',
    'fDamageDizzeanIndividual': 'float',
    'fDamageDizzeanMax': 'float',
    'fDamageDizzeanMin': 'float',
    'fDamageDizzeanRadius': 'float',
    'fDamageDredhedDefault': 'float',
    'fDamageDredhedDiveAttack': 'float',
    'fDamageDropterDefault': 'float',
    'fDamageDropterDiveAttack': 'float',
    'fDamageEmmyDefault': 'float',
    'fDamageEmmyIce': 'float',
    'fDamageEmmyWave': 'float',
    'fDamageFingIndividual': 'float',
    'fDamageFingMax': 'float',
    'fDamageFingMin': 'float',
    'fDamageFingRadius': 'float',
    'fDamageFulmiteBellyMineDefault': 'float',
    'fDamageFulmiteBellyMineExplosionDefault': 'float',
    'fDamageFulmiteDefault': 'float',
    'fDamageGobblerBite': 'float',
    'fDamageGobblerChozoWarriorXBite': 'float',
    'fDamageGobblerChozoWarriorXDefault': 'float',
    'fDamageGobblerCooldownXBite': 'float',
    'fDamageGobblerCooldownXDefault': 'float',
    'fDamageGobblerDefault': 'float',
    'fDamageGobblerHydrogigaBite': 'float',
    'fDamageGobblerHydrogigaDefault': 'float',
    'fDamageGobblerKraidBite': 'float',
    'fDamageGobblerKraidDefault': 'float',
    'fDamageGobblerScorpiusBite': 'float',
    'fDamageGobblerScorpiusDefault': 'float',
    'fDamageGobblerSuperGoliathBite': 'float',
    'fDamageGobblerSuperGoliathDefault': 'float',
    'fDamageGobblerSuperQuetzoaBite': 'float',
    'fDamageGobblerSuperQuetzoaDefault': 'float',
    'fDamageGoliathDefault': 'float',
    'fDamageGoliathMelee': 'float',
    'fDamageGoliathShockWave': 'float',
    'fDamageGooplotDefault': 'float',
    'fDamageGooplotJump': 'float',
    'fDamageGooshockerDefault': 'float',
    'fDamageGooshockerShock': 'float',
    'fDamageGroundShockerDefault': 'float',
    'fDamageGroundShockerElectric': 'float',
    'fDamageHecathonDefault': 'float',
    'fDamageHecathonPlanktonDefault': 'float',
    'fDamageHydrogigaBraid': 'float',
    'fDamageHydrogigaDefault': 'float',
    'fDamageHydrogigaMaelstorm': 'float',
    'fDamageHydrogigaPolyps': 'float',
    'fDamageHydrogigaTongueSwirl': 'float',
    'fDamageIcefleaDefault': 'float',
    'fDamageIcefleaDiveAttack': 'float',
    'fDamageIcefleaFreezeTick': 'float',
    'fDamageInfesterBallDefault': 'float',
    'fDamageInfesterBallExplosionDefault': 'float',
    'fDamageInfesterDefault': 'float',
    'fDamageKlaidaDefault': 'float',
    'fDamageKraidAcidBlobs': 'float',
    'fDamageKraidBackSlap': 'float',
    'fDamageKraidBouncingCreatures': 'float',
    'fDamageKraidDefault': 'float',
    'fDamageKraidFierceSwipe': 'float',
    'fDamageKraidInsideBelly': 'float',
    'fDamageKraidShockerSplash': 'float',
    'fDamageKraidSpikes': 'float',
    'fDamageKraidSpinningNails': 'float',
    'fDamageKreepDefault': 'float',
    'fDamageNailongDefault': 'float',
    'fDamageNailongThorn': 'float',
    'fDamageNailuggerDefault': 'float',
    'fDamageNailuggerSpit': 'float',
    'fDamageObsydomithonAttack': 'float',
    'fDamageObsydomithonDefault': 'float',
    'fDamageOmnithonDefault': 'float',
    'fDamageOmnithonPlanktonDefault': 'float',
    'fDamagePoisonFlyAttack': 'float',
    'fDamagePoisonFlyDefault': 'float',
    'fDamageQuetshockerCharge': 'float',
    'fDamageQuetshockerDefault': 'float',
    'fDamageQuetshockerEnergyWave': 'float',
    'fDamageQuetshockerEnergyWaveElectrify': 'float',
    'fDamageQuetzoaCharge': 'float',
    'fDamageQuetzoaDefault': 'float',
    'fDamageRedenkiIndividual': 'float',
    'fDamageRedenkiMax': 'float',
    'fDamageRedenkiMin': 'float',
    'fDamageRedenkiRadius': 'float',
    'fDamageRinkaCaves': 'float',
    'fDamageRinkaDefault': 'float',
    'fDamageRinkaForest': 'float',
    'fDamageRinkaLab': 'float',
    'fDamageRinkaMagma': 'float',
    'fDamageRinkaSanc': 'float',
    'fDamageRockDiverDefault': 'float',
    'fDamageRodomithonXDefault': 'float',
    'fDamageRodomithonXFireCone': 'float',
    'fDamageRodotukDefault': 'float',
    'fDamageSabotoruDefault': 'float',
    'fDamageSakaiDefault': 'float',
    'fDamageSakaiDiveAttack': 'float',
    'fDamageSclawkDefault': 'float',
    'fDamageScorpiusDefault': 'float',
    'fDamageScorpiusDefensiveSpikeBallPrick': 'float',
    'fDamageScorpiusDragSpikeBall': 'float',
    'fDamageScorpiusPoisonousGas': 'float',
    'fDamageScorpiusPoisonousSpit': 'float',
    'fDamageScorpiusSpikeBallPrick': 'float',
    'fDamageScorpiusTailSmash': 'float',
    'fDamageScorpiusWhiplash': 'float',
    'fDamageScourgeDefault': 'float',
    'fDamageScourgeTongueSlash': 'float',
    'fDamageShakernautDefault': 'float',
    'fDamageShakernautGroundshockDefault': 'float',
    'fDamageShakernautLaserDefault': 'float',
    'fDamageSharpawDefault': 'float',
    'fDamageSharpawDiveAttack': 'float',
    'fDamageShelmitDefault': 'float',
    'fDamageShelmitExplosion': 'float',
    'fDamageShelmitNakedDefault': 'float',
    'fDamageShelmitNakedExplosion': 'float',
    'fDamageShelmitPlasmaRay': 'float',
    'fDamageShineonDefault': 'float',
    'fDamageSlidleDefault': 'float',
    'fDamageSluggerAcidBall': 'float',
    'fDamageSluggerDefault': 'float',
    'fDamageSpitclawkAcid': 'float',
    'fDamageSpitclawkDefault': 'float',
    'fDamageSpittailAcid': 'float',
    'fDamageSpittailAcidBall': 'float',
    'fDamageSpittailDefault': 'float',
    'fDamageSunnapDefault': 'float',
    'fDamageSuperGoliathBurstProjectionBomb': 'float',
    'fDamageSuperGoliathBurstProjectionTracker': 'float',
    'fDamageSuperGoliathDefault': 'float',
    'fDamageSuperGoliathMelee': 'float',
    'fDamageSuperGoliathShockWave': 'float',
    'fDamageSuperQuetzoaCharge': 'float',
    'fDamageSuperQuetzoaDefault': 'float',
    'fDamageSuperQuetzoaEnergyWave': 'float',
    'fDamageSuperQuetzoaEnergyWaveElectrify': 'float',
    'fDamageSuperQuetzoaMultiTarget': 'float',
    'fDamageSwifterDefault': 'float',
    'fDamageTakumakuDashAttack': 'float',
    'fDamageTakumakuDefault': 'float',
    'fDamageVulkranDefault': 'float',
    'fDamageVulkranMagmaBall': 'float',
    'fDamageWarLotusDefault': 'float',
    'fDamageYampaBite': 'float',
    'fDamageYampaDefault': 'float',
    'fDamageYampaStep': 'float',
    'fDamageYamplotXBite': 'float',
    'fDamageYamplotXDefault': 'float',
    'fDamageYamplotXStep': 'float',
}
all_types['CEmmyConfiguration']['fields'] = {
    'bEmmy1CanUseTunnels': 'bool',
    'bEmmy2CanUseTunnels': 'bool',
    'bEmmyGrabBeepSoundEnabled': 'bool',
    'bEmmyMovementSoundEnabled': 'bool',
    'bFasterChaseTunnelTransitionEnabledPhase1': 'bool',
    'bFasterChaseTunnelTransitionEnabledPhase2': 'bool',
    'bLocationRumbleEnabled': 'bool',
    'bOutOfCameraSpeedDeactivateInMiniMap': 'bool',
    'bPerceptionFeedbackEnabled': 'bool',
    'bPerceptionPhase1Search2InfiniteRadius': 'bool',
    'bPerceptionVisionConeVisible': 'bool',
    'bPhase1ChaseSpeedModulation': 'bool',
    'bPlayerNoiseEnabled': 'bool',
    'bPulseVisible': 'bool',
    'bRangeVisibleOnlyInPlayerFocusMode': 'bool',
    'bRumbleDemoMode': 'bool',
    'bSearchLoopSoundEnabled': 'bool',
    'bSearchUsesPatrolColorWhenTargetLost': 'bool',
    'bSetStopAndSearchAnimInLastPerception': 'bool',
    'bShowBehaviorDebug': 'bool',
    'bShowPulseBackground': 'bool',
    'bShowPulseGradient': 'bool',
    'bShowSearchPointDebug': 'bool',
    'bStallingDetectionEnabled': 'bool',
    'bStallingSpeedIncreaseEnabled': 'bool',
    'bTunnelStallingPreventionEnabled': 'bool',
    'bVisionConeThroughScenario': 'bool',
    'fChaseUnspawnEnemyCulledCount': 'float',
    'fDetectDoorOpenedDistance': 'float',
    'fDetectionRangeFadeIn': 'float',
    'fDetectionRangeFadeOut': 'float',
    'fDistanceToStartSwitchingTo3mInGrabPreparation': 'float',
    'fDistanceToSwitchTo3mInGrabPreparation': 'float',
    'fEmmyMovementSoundMaxAttDistance': 'float',
    'fEmmyMovementSoundMinAttDistance': 'float',
    'fEmmyMovementSoundVolume': 'float',
    'fEmmySoundDistZoomWalkCamMaxAttDistance': 'float',
    'fEmmySoundDistZoomWalkCamMinAttDistance': 'float',
    'fEmmySoundDistZoomWalkCamVolumeMultiplier': 'float',
    'fEmmySoundMaxAttDistance': 'float',
    'fEmmySoundMinAttDistance': 'float',
    'fEmmySoundPerceptionVolume': 'float',
    'fEmmySoundVolume': 'float',
    'fEmmySpeedIncreasedPerSecond': 'float',
    'fGrabPreparationGraceTime': 'float',
    'fGrabPreparationGraceTimeProbability': 'float',
    'fGrabPreparationTime1': 'float',
    'fGrabPreparationTime2': 'float',
    'fGrabPreparationTime3': 'float',
    'fGrabQTEFailTime': 'float',
    'fGrabQTETime': 'float',
    'fGrabSecondPreparationGraceTime': 'float',
    'fGrabSecondPreparationGraceTimeProbability': 'float',
    'fGrabSecondPreparationTime1': 'float',
    'fGrabSecondPreparationTime2': 'float',
    'fGrabSecondPreparationTime3': 'float',
    'fGrabSecondQTETime': 'float',
    'fGrabZoomOffset': 'float',
    'fGrabZoomTime': 'float',
    'fMaxEmmySmartLinkSpeedIncreased': 'float',
    'fMaxEmmyWalkSpeedIncreased': 'float',
    'fMinTimeToStayStretched': 'float',
    'fPatrolSearchMaxTime': 'float',
    'fPerceptionCentralVisionConeMinTimeToTrigger': 'float',
    'fPerceptionVisionConeIntensity': 'float',
    'fPhase1ChaseSpeed': 'float',
    'fPhase1CloseChaseSpeed': 'float',
    'fPhase1CloseDistChaseSpeed': 'float',
    'fPhase1FarDistChaseSpeed': 'float',
    'fPhase1OutOfCameraSpeed': 'float',
    'fPhase1OutOfCameraSpeedDeactivateDistance': 'float',
    'fPhase1PatrolSearch2Speed': 'float',
    'fPhase1PatrolSearchSpeed': 'float',
    'fPhase1PatrolSpeed': 'float',
    'fPhase1PerceptionCentralVisionConeAperture': 'float',
    'fPhase1PerceptionCentralVisionConeRadius': 'float',
    'fPhase1PerceptionChaseRangeRadius': 'float',
    'fPhase1PerceptionPatrolRangeRadius': 'float',
    'fPhase1PerceptionPatrolSearchRangeRadius': 'float',
    'fPhase1PerceptionSearch2RangeRadius': 'float',
    'fPhase1PerceptionSearchRangeRadius': 'float',
    'fPhase1Search2Speed': 'float',
    'fPhase1SearchSpeed': 'float',
    'fPhase2Chase2FeetAnticipationMaxDistance': 'float',
    'fPhase2Chase2FeetAnticipationMinDistance': 'float',
    'fPhase2Chase2FeetSoundMaxFrequency': 'float',
    'fPhase2Chase2FeetSoundMedFrequency': 'float',
    'fPhase2Chase2FeetSoundMinFrequency': 'float',
    'fPhase2GrabDistance': 'float',
    'fPhase2HeadProtectorLife': 'float',
    'fPhase2HeadProtectorLifeRecoveredPerSecond': 'float',
    'fPhase2OutOfCameraSpeedDeactivateDistance': 'float',
    'fPhase2ProtectionHeadImpactedSpeedFactor': 'float',
    'fPhase2ProtectionHeadImpactedSpeedFactorTime': 'float',
    'fPhase2ProtectorDestroyedChase2FeetCloseSpeed': 'float',
    'fPhase2ProtectorDestroyedChase2FeetFarSpeed': 'float',
    'fPhase2ProtectorDestroyedChaseCloseSpeed': 'float',
    'fPhase2ProtectorDestroyedChaseFarSpeed': 'float',
    'fPhase2ProtectorDestroyedFarDistance': 'float',
    'fPhase2ProtectorDestroyedOutOfCameraCloseSpeed': 'float',
    'fPhase2ProtectorDestroyedOutOfCameraFarSpeed': 'float',
    'fPhase2ProtectorOnChaseSpeed': 'float',
    'fPhase2ProtectorOnOutOfCameraSpeed': 'float',
    'fPhaseDisplacementFactor': 'float',
    'fRumbleBaseGain': 'float',
    'fRumbleDemoSpinSpeed': 'float',
    'fRumbleDemoVibrationSpeed': 'float',
    'fStallDetectionBigRadius': 'float',
    'fStallDetectionSmallRadius': 'float',
    'fStallDetectionTimeOnBigRadius': 'float',
    'fStallDetectionTimeOnSmallRadius': 'float',
    'fTargetLostLowLifeRareAnimProb': 'float',
    'fTargetLostLowLifeVeryRareAnimProb': 'float',
    'fTargetLostNavMeshFindProbability': 'float',
    'fTargetLostNavMeshFindRadius': 'float',
    'fTargetLostNavMeshNoFindPathMaxDistance': 'float',
    'fTargetLostNavMeshNoFindPathMinDistance': 'float',
    'fTargetLostNavMeshNoFindRadius': 'float',
    'fTargetLostRouteFindInternalNodeProbability': 'float',
    'fTargetLostRouteFindLastNodeProbability': 'float',
    'fTimeGrowingDetectionRange': 'float',
    'fTimeOutOfCameraToEndChase': 'float',
    'fTimeToShowCurrentDetectionRange': 'float',
    'fTimeToShowOnlyCurrentDetectionRange': 'float',
    'fTimeToShowPreviousDetectionRange': 'float',
    'fTwoFeetChaseDistanceToAnticipateCrouchAnim': 'float',
    'fTwoFeetChaseDistanceToAnticipateStretchAnim': 'float',
    'fTwoFeetChaseMinSpaceToStretch': 'float',
    'fWaterSpeedFactor': 'float',
    'iDetectDoorOpenedMode': 'int',
    'iEmmyKeyAmount': 'int',
    'iEmmyKeyCollectionMode': 'int',
    'iGrabEmmySamusQTEMode': 'int',
    'iRumbleWave': 'int',
    'iStatesInRumble': 'int',
    'iTargetLostLowLife': 'int',
}
all_types['CCharClassLifeComponent::CTunableCharClassLifeComponent']['fields'] = {
    'fLifeArachnus': 'float',
    'fLifeArmadigger': 'float',
    'fLifeAutclast': 'float',
    'fLifeAutector': 'float',
    'fLifeAutomper': 'float',
    'fLifeAutool': 'float',
    'fLifeAutsharp': 'float',
    'fLifeAutsniper': 'float',
    'fLifeBatalloon': 'float',
    'fLifeBigFist': 'float',
    'fLifeBigkranX': 'float',
    'fLifeBlindFly': 'float',
    'fLifeCaterzilla': 'float',
    'fLifeCentralUnitArmorCaves': 'float',
    'fLifeCentralUnitArmorForest': 'float',
    'fLifeCentralUnitArmorLaboratory': 'float',
    'fLifeCentralUnitArmorMagma': 'float',
    'fLifeCentralUnitArmorPlaceholder': 'float',
    'fLifeCentralUnitArmorSanctuary': 'float',
    'fLifeCentralUnitCaves': 'float',
    'fLifeCentralUnitForest': 'float',
    'fLifeCentralUnitLaboratory': 'float',
    'fLifeCentralUnitMagma': 'float',
    'fLifeCentralUnitPlaceholder': 'float',
    'fLifeCentralUnitSanctuary': 'float',
    'fLifeChozoCommander': 'float',
    'fLifeChozoCommanderEnergyShards': 'float',
    'fLifeChozoCommanderSentenceSphere': 'float',
    'fLifeChozoCommanderStage1': 'float',
    'fLifeChozoCommanderStage2': 'float',
    'fLifeChozoRobotSoldier': 'float',
    'fLifeChozoRobotSoldierAlternative': 'float',
    'fLifeChozoWarrior': 'float',
    'fLifeChozoWarriorElite': 'float',
    'fLifeChozoWarriorWeak': 'float',
    'fLifeChozoWarriorX': 'float',
    'fLifeChozoWarriorXElite': 'float',
    'fLifeChozoWarriorXWeak': 'float',
    'fLifeChozoZombieX': 'float',
    'fLifeCooldownXBoss': 'float',
    'fLifeCooldownXBossFireBall': 'float',
    'fLifeCooldownXBossWeakPoint': 'float',
    'fLifeCoreX': 'float',
    'fLifeCoreXSuperQuetzoa': 'float',
    'fLifeDaivo': 'float',
    'fLifeDaivoSwarm': 'float',
    'fLifeDepthorn': 'float',
    'fLifeDizzean': 'float',
    'fLifeDredhed': 'float',
    'fLifeDropter': 'float',
    'fLifeDummy': 'float',
    'fLifeEmmy': 'float',
    'fLifeFing': 'float',
    'fLifeFulmite': 'float',
    'fLifeFulmiteBellyMine': 'float',
    'fLifeGobbler': 'float',
    'fLifeGobblerChozoWarriorX': 'float',
    'fLifeGobblerCooldownX': 'float',
    'fLifeGobblerHydrogiga': 'float',
    'fLifeGobblerKraid': 'float',
    'fLifeGobblerScorpius': 'float',
    'fLifeGobblerSuperGoliath': 'float',
    'fLifeGobblerSuperQuetzoa': 'float',
    'fLifeGoliath': 'float',
    'fLifeGoliathX': 'float',
    'fLifeGooplot': 'float',
    'fLifeGooshocker': 'float',
    'fLifeGroundShocker': 'float',
    'fLifeHecathon': 'float',
    'fLifeHydrogiga': 'float',
    'fLifeHydrogigaBlockingTentacle': 'float',
    'fLifeHydrogigaPolyps': 'float',
    'fLifeIceflea': 'float',
    'fLifeInfester': 'float',
    'fLifeInfesterBall': 'float',
    'fLifeKlaida': 'float',
    'fLifeKraid': 'float',
    'fLifeKraidAcidBlobs': 'float',
    'fLifeKraidBouncingCreatures': 'float',
    'fLifeKraidNail': 'float',
    'fLifeKraidStage1': 'float',
    'fLifeKreep': 'float',
    'fLifeMagnetHusk': 'float',
    'fLifeNailong': 'float',
    'fLifeNailugger': 'float',
    'fLifeObsydomithon': 'float',
    'fLifeOmnithon': 'float',
    'fLifePoisonFly': 'float',
    'fLifeQuetshocker': 'float',
    'fLifeQuetshockerEnergyWave': 'float',
    'fLifeQuetzoa': 'float',
    'fLifeQuetzoaX': 'float',
    'fLifeRedenki': 'float',
    'fLifeRinka': 'float',
    'fLifeRinkaCaves': 'float',
    'fLifeRinkaForest': 'float',
    'fLifeRinkaLab': 'float',
    'fLifeRinkaMagma': 'float',
    'fLifeRinkaSanc': 'float',
    'fLifeRockDiver': 'float',
    'fLifeRodomithonX': 'float',
    'fLifeRodotuk': 'float',
    'fLifeSabotoru': 'float',
    'fLifeSakai': 'float',
    'fLifeSclawk': 'float',
    'fLifeScorpius': 'float',
    'fLifeScorpiusSpit': 'float',
    'fLifeScorpiusStage1': 'float',
    'fLifeScorpiusTail': 'float',
    'fLifeScorpiusTailPhase3': 'float',
    'fLifeScourge': 'float',
    'fLifeShakernaut': 'float',
    'fLifeSharpaw': 'float',
    'fLifeShelmit': 'float',
    'fLifeShelmitNaked': 'float',
    'fLifeShineon': 'float',
    'fLifeSlidle': 'float',
    'fLifeSlugger': 'float',
    'fLifeSluggerAcidBall': 'float',
    'fLifeSpitclawk': 'float',
    'fLifeSpittail': 'float',
    'fLifeSunnap': 'float',
    'fLifeSwarmer': 'float',
    'fLifeSwifter': 'float',
    'fLifeTakumaku': 'float',
    'fLifeVulkran': 'float',
    'fLifeWarLotus': 'float',
    'fLifeXParasite': 'float',
    'fLifeYampa': 'float',
    'fLifeYamplotX': 'float',
    'fLifeYojimbee': 'float',
    'sName': 'base::global::CStrId',
}
all_types['sound::CMusicVolumeOverride::CTunableMusicVolumeOverride']['fields'] = {
    'fAccessPoint': 'float',
    'fAqua001': 'float',
    'fAqua002': 'float',
    'fBaseLab001': 'float',
    'fBaseLabBlackOut': 'float',
    'fBossCommander001': 'float',
    'fBossCommander002': 'float',
    'fBossCommander003': 'float',
    'fBossCommanderPresentation': 'float',
    'fBossCommanderX001': 'float',
    'fBossCommanderX002': 'float',
    'fBossCoolDownX': 'float',
    'fBossCoolDownXPresentation': 'float',
    'fBossDefeated': 'float',
    'fBossKraid001': 'float',
    'fBossKraid002': 'float',
    'fBossKraidPresentation': 'float',
    'fBossMidChozoRobotSoldier': 'float',
    'fBossMidChozoWarriorX001': 'float',
    'fBossMidChozoWarriorX002': 'float',
    'fBossScorpius001': 'float',
    'fBossScorpius002': 'float',
    'fBossScorpiusPresentation': 'float',
    'fCave001': 'float',
    'fCave002': 'float',
    'fCave003': 'float',
    'fCaveCooldDown': 'float',
    'fCaveThermalDevice': 'float',
    'fCentralUnitPhase1': 'float',
    'fCentralUnitPhase2': 'float',
    'fCommanderOutro': 'float',
    'fEmmyChase': 'float',
    'fEmmyDefeated': 'float',
    'fEmmyDefeatedBaselab': 'float',
    'fEmmyDefeatedForest': 'float',
    'fEmmyDefeatedMagma': 'float',
    'fEmmyDefeatedSanctuary': 'float',
    'fEmmyDefeatedShipyard': 'float',
    'fEmmyPatrol': 'float',
    'fEmmySearch': 'float',
    'fEncounterProfessor': 'float',
    'fEndGame': 'float',
    'fEndScreen': 'float',
    'fEscapeSequence': 'float',
    'fForest001': 'float',
    'fGameOver': 'float',
    'fHydrogiga001': 'float',
    'fHydrogiga002': 'float',
    'fJingleItemGet': 'float',
    'fJingleItemGetUnknown': 'float',
    'fJinglePowerUpGet': 'float',
    'fJingleTojo': 'float',
    'fMagma001': 'float',
    'fMagma002': 'float',
    'fMagmaCoolDown': 'float',
    'fMapStation': 'float',
    'fOpening': 'float',
    'fPowerBomb': 'float',
    'fProfessorX': 'float',
    'fQuarantine001': 'float',
    'fSamusStory': 'float',
    'fSancEmmyPresentation': 'float',
    'fSancturary001': 'float',
    'fSaveStation': 'float',
    'fShipyard001': 'float',
    'fSkybase001': 'float',
    'fStaffRoll': 'float',
    'fStatueRoom': 'float',
    'fStrongReaction': 'float',
    'fSuperGoliathX': 'float',
    'fSuperQuetzoaX': 'float',
    'fTitleScreen': 'float',
    'fTrainStation': 'float',
    'sName': 'base::global::CStrId',
}
# todo solve this better
all_types['GUI::CDisplayObjectTrack<bool>::SKey'] = all_types['GUI::CDisplayObjectTrackBool::SKey']
all_types['GUI::CDisplayObjectTrack<float>::SKey'] = all_types['GUI::CDisplayObjectTrackFloat::SKey']
all_types['GUI::CDisplayObjectTrack<base::global::CRntString>::SKey'] = all_types['GUI::CDisplayObjectTrackString::SKey']

for className in all_types:
    registerHash(className)
    for fieldName in all_types[className]["fields"]:
        registerHash(fieldName)

def readHash(f, hashType='misc'):
    ret = hashes[f.read(8)]
    if hashType not in used_hashes:
        used_hashes[hashType] = set()
    used_hashes[hashType].add(ret)
    return ret
def writeHash(f, s, hashType='misc'):
    f.write(crc64B(s))

def readInt(f):
    return int.from_bytes(f.read(4), 'little', signed=True)
def writeInt(f, val):
    f.write(int.to_bytes(int(val), 4, 'little', signed=True))

def readDict(f, readKey, readValue, *args):
    entryCount = readInt(f)
    obj = {}
    for _ in range(entryCount):
        k = readKey(f)
        v = readValue(f, *args)
        obj[k] = v
    assert len(obj) == entryCount
    return obj
def writeDict(f, obj, writeKey, writeValue, *args):
    writeInt(f, len(obj))
    for k,v in obj.items():
        writeKey(f, k)
        writeValue(f, v, *args)

def readStr(f):
    s = ''
    c = ''
    while c != '\x00':
        s = s + c
        c = f.read(1).decode('ascii')
        assert len(c) == 1, c
    #print(s)
    return s
def writeStr(f, s):
    f.write(s.encode('ascii'))
    f.write(b'\x00')

def readPtr(f):
    className = readHash(f, 'class')
    obj = {'Class': className}
    obj['Data'] = readObject(f, className)
    return obj
def writePtr(f, obj):
    writeHash(f, obj['Class'])
    writeObject(f, obj['Data'], obj['Class'])

def readList(f, readElement, *args):
    entryCount = readInt(f)
    obj = []
    for i in range(entryCount):
        elem = readElement(f, *args)
        obj.append(elem)
        assert len(obj) == i+1
    assert len(obj) == entryCount
    return obj
def writeList(f, lst, writeElement, *args):
    writeInt(f, len(lst))
    for elem in lst:
        writeElement(f, elem, *args)

def fixFloats(floatList):
    return [float(str(np.float32(x))) for x in floatList]

def readFloat(f):
    return fixFloats(struct.unpack('<f', f.read(4)))[0]
def writeFloat(f, val):
    f.write(struct.pack('<f', val))

def readVec2D(f):
    return fixFloats(struct.unpack('<ff', f.read(8)))
def writeVec2D(f, vals):
    f.write(struct.pack('<ff', *vals))

def readVec3D(f):
    return fixFloats(struct.unpack('<fff', f.read(12)))
def writeVec3D(f, vals):
    f.write(struct.pack('<fff', *vals))

def readVec4D(f):
    return fixFloats(struct.unpack('<ffff', f.read(16)))
def writeVec4D(f, vals):
    f.write(struct.pack('<ffff', *vals))

def readBool(f):
    return struct.unpack('<?', f.read(1))[0]
def writeBool(f, val):
    f.write(struct.pack('<?', val))

def readUnsigned(f):
    return int.from_bytes(f.read(4), 'little', signed=False)
def writeUnsigned(f, val):
    f.write(int.to_bytes(int(val), 4, 'little', signed=False))

def readUnsignedShort(f):
    return int.from_bytes(f.read(2), 'little', signed=False)
def writeUnsignedShort(f, val):
    f.write(int.to_bytes(int(val), 2, 'little', signed=False))

def readUnsignedLong(f):
    return int.from_bytes(f.read(8), 'little', signed=False)
def writeUnsignedLong(f, val):
    f.write(int.to_bytes(int(val), 8, 'little', signed=False))

def readBlob(f):
    blobLength = readInt(f)
    return list(f.read(blobLength))
def writeBlob(f, lst):
    writeInt(f, len(lst))
    f.write(bytes(lst))

def readInnerFile(f):
    fileLength = readInt(f)
    
    start = f.tell()
    val = readStandardObject(f, 'CActor')
    end = f.tell()
    
    assert fileLength == end - start, hex(fileLength)
    
    return val
def writeInnerFile(f, obj):
    innerfile = io.BytesIO()
    writeStandardObject(innerfile, obj, 'CActor')
    innerfile.seek(0)
    innerdata = innerfile.read()
    innerfile.close()
    writeInt(f, len(innerdata))
    f.write(innerdata)

def enumValueToKey(enumName, value):
    dct = all_types[enumName]['values']
    
    enumValKeys = [key for key in dct if (dct[key] == value)]

    assert len(enumValKeys) == 1, enumValKeys
    
    return enumValKeys[0]

def readEnum(f, enumName):
    value = readInt(f)
    return enumValueToKey(enumName, value)
def writeEnum(f, val, enumName):
    writeInt(f, all_types[enumName]['values'][val])

def readEnumArray(f, className, enumName):
    entryCount = readInt(f)
    obj = {}

    if enumName == 'base::snd::EMaterial':

        for i in range(entryCount):
            obj[i] = readObject(f, className)
        
    else:
        
        assert 'Count' not in all_types[enumName]['values']
        assert all_types[enumName]['values']['Invalid'] == 0xffffffff 
        assert entryCount == len(all_types[enumName]['values']) - 1
        
        for i in range(entryCount):
            obj[enumValueToKey(enumName, i)] = readObject(f, className)

    assert len(obj) == entryCount 
    return obj
def writeEnumArray(f, obj, className, enumName):
    writeInt(f, len(obj))

    if enumName in all_types:
        assert len(obj) == len(all_types[enumName]['values']) - 1, 'Enum array %s should have the keys %s'%(list(obj.keys()), list(all_types[enumName]['values'].keys())[:-1])

    i = 0
    for k, v in obj.items():
        
        if type(k) == int or k.isnumeric():
            assert i == int(k), 'Enum array %s should be in order'%obj.keys()
        else:
            assert i == all_types[enumName]['values'][k], 'Enum array %s should have the keys %s'%(list(obj.keys()), list(all_types[enumName]['values'].keys())[:-1])
            
        writeObject(f, v, className)
        i += 1

re_basic_class = re.compile(r'^([A-Za-z<>]+::)*[A-Z][A-Za-z0-9]+$')

def getFieldType(className, fieldName):
    fieldType = None
        
    c = className
    while fieldType is None:
        if fieldName in all_types[c]['fields']:
            fieldType = all_types[c]['fields'][fieldName]
        else:
            c = all_types[c]['parent']
            assert c is not None, '%s not found in %s'%(fieldName, className)

    fieldTypeWithNamespace = c+'::'+fieldType
    if fieldType not in all_types and fieldTypeWithNamespace in all_types:
        fieldType = fieldTypeWithNamespace
        
    fieldTypeWithNamespace2 = c.rsplit('::',1)[0]+'::'+fieldType
    if fieldType not in all_types and fieldTypeWithNamespace2 in all_types:
        fieldType = fieldTypeWithNamespace2

    return fieldType

def readStandardObject(f, className):

    assert re_basic_class.match(className), className
    assert className in all_types, className
    
    fieldCount = readInt(f)

    obj = {}
    
    for i in range(fieldCount):
        fieldName = readHash(f, 'field')
        #print(className, fieldName, hex(f.tell()))
        
        fieldType = getFieldType(className, fieldName)

        val = readObject(f, fieldType)
        while fieldName in obj:
            fieldName = fieldName + "_DUPE"
        obj[fieldName] = val
        assert len(obj) == i+1

    assert len(obj) == fieldCount
    return obj
def writeStandardObject(f, obj, className):
    writeInt(f, len(obj))
    
    for fieldName, fieldValue in obj.items():

        while fieldName.endswith('_DUPE'):
            fieldName = fieldName[:-5]
        
        writeHash(f, fieldName)
        fieldType = getFieldType(className, fieldName)
        writeObject(f, fieldValue, fieldType)

re_ptr = re.compile(r'^[a-z:]*(CTypedValue|.*\*|unique_ptr<.*>.*|CGameObjectRef<.*>)$')
re_gamelink = re.compile(r'^[a-z:]*CGameLink<.*>$')

re_vector = re.compile(r'^[a-z:]*(CRntVector|CPooledList)<[ _]*([^,]*)[,false _]*>$')
re_dict = re.compile(r'^[a-z:]*CRnt[A-Za-z]*Dictionary<[ _]*[a-z:]*(C[A-Za-z]*StrId|CRntString),[ _]*(.*)[ _]*>$')
re_enumarray = re.compile(r'^[a-z:]*CArray<[ _]*([^,]*),[ _]*EnumClass<(.*)>::Count,[ _]*\2[ _]*>$')

re_typedef = re.compile(r'^([A-Za-z<>]+::)*T[A-Za-z0-9]+$')

def readObject(f, className):

    className = className.strip()

    #print(className, hex(f.tell()))

    while className in all_types and all_types[className]['parent'] and not all_types[className]['fields'] and not all_types[className]['values'] and (not re_typedef.match(className) or all_types[className]['parent']=='int'):
        className = all_types[className]['parent']
    
    if className in ['float','float32']:
        val = readFloat(f)
    elif className in ['base::global::CStrId','base::global::CRntString','base::global::TRntString256','base::global::CFilePathStrId','base::core::CAssetLink','base::global::TRntString64','base::global::TRntString128'] or re_gamelink.match(className):
        val = readStr(f)
    elif className in ['base::math::CVector2D','math::CVector2D']:
        val = readVec2D(f)
    elif className in ['base::math::CVector3D','math::CVector3D']:
        val = readVec3D(f)
    elif className in ['base::math::CVector4D','math::CVector4D']:
        val = readVec4D(f)
    elif className == 'bool':
        val = readBool(f)
    elif className == 'int':
        val = readInt(f)
    elif className == 'unsigned':
        val = readUnsigned(f)
    elif className == 'unsigned_short':
        val = readUnsignedShort(f)
    elif className == 'unsigned_long':
        val = readUnsignedLong(f)
    elif className == 'SCustomData':
        val = readBlob(f)
    elif className == 'base::global::CName':
        val = readHash(f, 'cname')
    elif className == 'void':
        val = None
    elif className == 'base::global::CRntFile':
        val = readInnerFile(f)
        
    elif re_ptr.match(className):
        val = readPtr(f)
        
    elif re_vector.match(className):
        val = readList(f, readObject, re_vector.match(className).group(2))
    elif re_dict.match(className):
        val = readDict(f, readStr, readObject, re_dict.match(className).group(2))
    elif re_enumarray.match(className):
        val = readEnumArray(f, re_enumarray.match(className).group(1), re_enumarray.match(className).group(2))

    elif re_typedef.match(className) and (className not in all_types or not all_types[className]['fields']):

        if className == 'TSectionContainer':
            val = readDict(f, readStr, readPtr)
        elif className.endswith('FlagSet'):
            val = readInt(f)
        elif className == 'CMinimapManager::TGlobalMapIcons':
            val = readDict(f, readStr, readList, readStandardObject, 'CMinimapManager::SAreaIconInfo')
        elif className == 'GUI::CMissionLog::TMissionLogEntries':
            val = readList(f, readStandardObject, 'CGlobalEventManager::SMissionLogEntry')
        elif className == 'TEnabledOccluderCollidersMap':
            val = readDict(f, readStr, readList, readHash)
        elif className == 'CBreakableTileGroupComponent::TActorTileStatesMap':
            val = readDict(f, readStr, readList, readStandardObject, 'CBreakableTileGroupComponent::SMinimapTileState')
        elif className == 'minimapGrid::TMinimapVisMap':
            val = readDict(f, readInt, readStr)
        elif className == 'CMinimapManager::TCustomMarkerDataMap':
            val = readDict(f, readInt, readStandardObject, 'CMinimapManager::SMarkerData')
        elif className == 'CMinimapData::TColliderGeoDatasMap':
            val = readDict(f, readHash, readStandardObject, 'SGeoData')
        elif className == 'CMinimapData::TOccludedIcons':
            val = readList(f, readStr)
        elif className == 'CMinimapDef::TMapIconDefs':
            val = readDict(f, readStr, readStandardObject, 'SMapIconDef')
        elif className == 'CMinimapDef::TMapLabelDefs':
            val = readDict(f, readStr, readStandardObject, 'SMapLabelDef')
        elif className == 'CPlaythrough::TDictCheckpointDatas':
            val = readDict(f, readStr, readPtr)
        elif className == 'TSoundEventRules':
            val = readList(f, readPtr)
            
        else:
            assert False, '--- Unknown typedef %s ---'%className
        
    elif className in all_types and all_types[className]['values']:
        val = readEnum(f, className)
    else:
        val = readStandardObject(f, className)

    #print(className, val, hex(f.tell()))

    return val
def writeObject(f, val, className):

    className = className.strip()

    #print(className, hex(f.tell()))

    while className in all_types and all_types[className]['parent'] and not all_types[className]['fields'] and not all_types[className]['values'] and (not re_typedef.match(className) or all_types[className]['parent']=='int'):
        className = all_types[className]['parent']
    
    if className in ['float','float32']:
        val = writeFloat(f, val)
    elif className in ['base::global::CStrId','base::global::CRntString','base::global::TRntString256','base::global::CFilePathStrId','base::core::CAssetLink','base::global::TRntString64','base::global::TRntString128'] or re_gamelink.match(className):
        val = writeStr(f, val)
    elif className in ['base::math::CVector2D','math::CVector2D']:
        val = writeVec2D(f, val)
    elif className in ['base::math::CVector3D','math::CVector3D']:
        val = writeVec3D(f, val)
    elif className in ['base::math::CVector4D','math::CVector4D']:
        val = writeVec4D(f, val)
    elif className == 'bool':
        val = writeBool(f, val)
    elif className == 'int':
        val = writeInt(f, val)
    elif className == 'unsigned':
        val = writeUnsigned(f, val)
    elif className == 'unsigned_short':
        val = writeUnsignedShort(f, val)
    elif className == 'unsigned_long':
        val = writeUnsignedLong(f, val)
    elif className == 'SCustomData':
        val = writeBlob(f, val)
    elif className == 'base::global::CName':
        val = writeHash(f, val, 'cname')
    elif className == 'void':
        val = None
    elif className == 'base::global::CRntFile':
        val = writeInnerFile(f, val)
        
    elif re_ptr.match(className):
        val = writePtr(f, val)
        
    elif re_vector.match(className):
        val = writeList(f, val, writeObject, re_vector.match(className).group(2))
    elif re_dict.match(className):
        val = writeDict(f, val, writeStr, writeObject, re_dict.match(className).group(2))
    elif re_enumarray.match(className):
        val = writeEnumArray(f, val, re_enumarray.match(className).group(1), re_enumarray.match(className).group(2))

    elif re_typedef.match(className) and (className not in all_types or not all_types[className]['fields']):

        if className == 'TSectionContainer':
            val = writeDict(f, val, writeStr, writePtr)
        elif className.endswith('FlagSet'):
            val = writeInt(f, val)
        elif className == 'CMinimapManager::TGlobalMapIcons':
            val = writeDict(f, val, writeStr, writeList, writeStandardObject, 'CMinimapManager::SAreaIconInfo')
        elif className == 'GUI::CMissionLog::TMissionLogEntries':
            val = writeList(f, val, writeStandardObject, 'CGlobalEventManager::SMissionLogEntry')
        elif className == 'TEnabledOccluderCollidersMap':
            val = writeDict(f, val, writeStr, writeList, writeHash)
        elif className == 'CBreakableTileGroupComponent::TActorTileStatesMap':
            val = writeDict(f, val, writeStr, writeList, writeStandardObject, 'CBreakableTileGroupComponent::SMinimapTileState')
        elif className == 'minimapGrid::TMinimapVisMap':
            val = writeDict(f, val, writeInt, writeStr)
        elif className == 'CMinimapManager::TCustomMarkerDataMap':
            val = writeDict(f, val, writeInt, writeStandardObject, 'CMinimapManager::SMarkerData')
        elif className == 'CMinimapData::TColliderGeoDatasMap':
            val = writeDict(f, val, writeHash, writeStandardObject, 'SGeoData')
        elif className == 'CMinimapData::TOccludedIcons':
            val = writeList(f, val, writeStr)
        elif className == 'CMinimapDef::TMapIconDefs':
            val = writeDict(f, val, writeStr, writeStandardObject, 'SMapIconDef')
        elif className == 'CMinimapDef::TMapLabelDefs':
            val = writeDict(f, val, writeStr, writeStandardObject, 'SMapLabelDef')
        elif className == 'CPlaythrough::TDictCheckpointDatas':
            val = writeDict(f, val, writeStr, writePtr)
        elif className == 'TSoundEventRules':
            val = writeList(f, val, writePtr)
            
        else:
            assert False, '--- Unknown typedef %s ---'%className
        
    elif className in all_types and all_types[className]['values']:
        val = writeEnum(f, val, className)
    else:
        val = writeStandardObject(f, val, className)

    #print(className, val, hex(f.tell()))

fileTypeMap = {
    'CScenario'                 : 'gameeditor::CGameModelRoot',
    'CSubAreaManager'           : 'gameeditor::CGameModelRoot',
    'CEnvironmentMusicPresets'  : 'gameeditor::CGameModelRoot',
    'CEnvironmentSoundPresets'  : 'gameeditor::CGameModelRoot',
    'CEnvironmentVisualPresets' : 'gameeditor::CGameModelRoot',
    'sound::CAudioPresets'      : 'gameeditor::CGameModelRoot',
    'CShotAudioWeaponPresets'   : 'gameeditor::CGameModelRoot',
    'CLightManager'             : 'gameeditor::CGameModelRoot',
    'sound::CMusicManager'      : 'gameeditor::CGameModelRoot',
    'GUI::CDisplayObjectContainer'           : 'GUI::CDisplayObjectContainer*',
    'GUI::CGUIManager::ShapeContainer'       : 'GUI::CGUIManager::ShapeContainer*',
    'GUI::CGUIManager::SkinContainer'        : 'GUI::CGUIManager::SkinContainer*',
    'GUI::CGUIManager::SpriteSheetContainer' : 'GUI::CGUIManager::SpriteSheetContainer*',
}

def parseFile(f):
    fileType = readHash(f, 'class')
    realFileType = fileTypeMap[fileType] if fileType in fileTypeMap else fileType
    unk = readInt(f)
    root = readHash(f, 'root')
    rootData = readObject(f, realFileType)

    fileData = {
        "FileType": fileType,
        "Unk": unk,
        "RealFileType": realFileType,
        root: rootData
    }
    assert f.read() == b''
    return fileData
def writeFile(f, fileData):
    writeHash(f, fileData['FileType'])
    writeInt(f, fileData['Unk'])
    writeHash(f, 'Root')
    writeObject(f, fileData['Root'], fileData['RealFileType'])

for line in sorted(list(open('fileintros2.txt'))):
    filename = line.strip().split(' ',6)[-1]

    if filename.startswith('romfs'):
        full_filename = 'D:/Switch Homebrew/NSPs/dread_1.0.0/' + filename
    else:
        full_filename = filename

    f=open(full_filename,'rb')
    
    try:
        parsed = parseFile(f)
    finally:
        print(filename, hex(f.tell()))

    #pprint.pprint(parsed)

    json_data = json.dumps(parsed, sort_keys=False, indent=2)

    #tempfile = io.BytesIO()
    ##writeFile(tempfile, json.loads(json_data))
    #writeFile(tempfile, parsed)
    #tempfile.seek(0)
    #f.seek(0)
    #assert tempfile.read() == f.read()
    #tempfile.close()
    
    f.close()

    outfilename = 'deserialized/'+filename+'.json'
    os.makedirs(os.path.dirname(outfilename), exist_ok=True)
    
    f2=open(outfilename,'w')
    f2.write(json_data)
    f2.close()

if True:
    for hashType in used_hashes:
        used_hashes[hashType] = sorted(list(used_hashes[hashType]))

    f2=open('all_hashes.json','w')
    json.dump(used_hashes, f2, indent='\t')
    f2.close()

