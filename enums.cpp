enum base::animation::EBlendFunction {
	Linear,
	Smoothstep,
	Invalid,
};
enum base::curves::EKeysType {
	Cubic,
	Mix,
	SingleValue,
	Constant,
	Linear,
	Invalid,
};
enum base::curves::ETimeType {
	Uint16,
	Uint8,
	F32,
	Invalid,
};
enum base::curves::EInterpMode {
	Linear,
	Cubic,
	Constant,
	Invalid,
};
enum gameeditor::EEditorModeDataFlow {
	NONE,
	EDITOR_TO_GAME,
	GAME_TO_EDITOR,
	BIDIRECTIONAL,
	Invalid,
};
enum EEventProps {
	Layer_0,
	Layer_1,
	Layer_2,
	Layer_3,
	Layer_4,
	Layer_5,
	Layer_6,
	Layer_7,
	Discardable,
	DiscardableOnSync,
};
enum base::global::timeline::ELayer {
	Layer_0,
	Layer_1,
	Layer_2,
	Layer_3,
	Layer_4,
	Layer_5,
	Layer_6,
	Layer_7,
};
enum base::input::ERumbleType {
	RFX,
	RGUI,
	RGRUNT,
	RFX_EMMY,
	RMUSIC,
	Invalid,
};
enum base::math::ETransformSpace {
	WORLD,
	LOCAL,
	MODEL,
	Invalid,
};
enum base::math::EMaxAxis {
	None,
	X,
	Y,
	Z,
	NEG_X,
	NEG_Y,
	NEG_Z,
	Invalid,
};
enum base::reflection::EAttributeTarget {
	Type,
	Variable,
	Function,
	FunctionParameter,
};
enum base::reflection::ECollectionAccessMode {
	None,
	Indexed,
	Associative,
};
enum EExecutionReturnValue {
	STOP,
	CONTINUE,
};
enum base::serialization::EPersistence {
	Transient,
	Persistent,
	Invalid,
};
enum base::serialization::EDeserializeCollectionElementMode {
	UpdateOnly,
	InsertOnly,
	UpdateOrInsert,
	Invalid,
};
enum base::snd::ESoundSystemImGuiTabs {
	Info,
	Players,
	Invalid,
};
enum base::snd::ESoundGroupIds {
	DEFAULT,
	SHIELD_IMPACT,
	FLESH_IMPACT,
	WALL_IMPACT,
	DOOR_FAIL,
	BOSS_DISCOVER,
	PHASEDISPLACEMENT,
	ENERSHIELDENTER,
	ENERSHIELDEXIT,
	SAMUS_MOVEMENT,
	EMMY_ALARM,
	Invalid,
};
enum base::snd::ESndType {
	SFX,
	MUSIC,
	SPEECH,
	GRUNT,
	GUI,
	ENVIRONMENT_STREAMS,
	SFX_EMMY,
	CUTSCENE,
	Invalid,
};
enum base::snd::EAttenuationCurve {
	Logarithmic,
	Linear,
	Invalid,
};
enum base::snd::EReverbIntensity {
	NONE,
	SMALL_ROOM,
	MEDIUM_ROOM,
	BIG_ROOM,
	CATHEDRAL,
	Invalid,
};
enum base::snd::ELowPassFilter {
	LPF_DISABLED,
	LPF_80HZ,
	LPF_100HZ,
	LPF_128HZ,
	LPF_160HZ,
	LPF_200HZ,
	LPF_256HZ,
	LPF_320HZ,
	LPF_400HZ,
	LPF_500HZ,
	LPF_640HZ,
	LPF_800HZ,
	LPF_1000HZ,
	LPF_1280HZ,
	LPF_1600HZ,
	LPF_2000HZ,
	LPF_2560HZ,
	LPF_3200HZ,
	LPF_4000HZ,
	LPF_5120HZ,
	LPF_6400HZ,
	LPF_8000HZ,
	LPF_10240HZ,
	LPF_12800HZ,
	LPF_16000HZ,
	Invalid,
};
enum base::snd::EPositionalType {
	POS_2D,
	POS_3D,
	Invalid,
};
enum base::snd::ESndPlayerId {
	SFX,
	MUSIC,
	SPEECH,
	GRUNT,
	GUI,
	ENVIRONMENT_STREAMS,
	SFX_EMMY,
	CUTSCENE,
	Invalid,
};
enum base::snd::ESndLogicId {
	DEFAULT,
	SHIELD_IMPACT,
	FLESH_IMPACT,
	WALL_IMPACT,
	DOOR_FAIL,
	BOSS_DISCOVER,
	PHASEDISPLACEMENT,
	ENERSHIELDENTER,
	ENERSHIELDEXIT,
	SAMUS_MOVEMENT,
	EMMY_ALARM,
	Invalid,
};
enum msapi::api::shdr::EShaderType {
	E_VERTEX,
	E_PIXEL,
	E_GEOMETRY,
	Invalid,
};
enum msapi::api::rs::ERenderStateValue {
	E_FALSE,
	E_TRUE,
	E_CULL_CW,
	E_CULL_CCW,
	E_CULL_NONE,
	E_CMP_LESS,
	E_CMP_NEVER,
	E_CMP_EQUA,
	E_CMP_LESSEQUAL,
	E_CMP_GREATER,
	E_CMP_NOTEQUAL,
	E_CMP_GREATEREQUAL,
	E_CMP_ALWAYS,
	E_STENCILCAPS_KEEP,
	E_STENCILCAPS_ZERO,
	E_STENCILCAPS_REPLACE,
	E_STENCILCAPS_INCRSAT,
	E_STENCILCAPS_DECRSAT,
	E_STENCILCAPS_INVERT,
	E_STENCILCAPS_INCR,
	E_STENCILCAPS_DECR,
	E_STENCILCAPS_2SIDED,
	E_STENCILOP_KEEP,
	E_STENCILOP_REPLACE,
	ERENDERSTATEVALUE_INVALID,
};
enum msapi::api::idx::EPrimitiveType {
	E_PRIMITIVE_INVALID,
	E_TRIANGLES,
	E_TRIANGLE_STRIP,
	E_TRIANGLE_FAN,
	E_LINES,
	E_LINE_STRIP,
	E_PRIMITIVE_COUNT,
};
enum msapi::api::idx::EDataType {
	E_DATATYPE_INVALID,
	E_BYTE,
	E_SHORT,
	E_INT,
	E_DATATYPE_COUNT,
};
enum msapi::api::tex::EComponents {
	E_COMPONENTS_INVALID,
	E_COMPONENTS_R8_G8_B8,
	E_COMPONENTS_R8_G8_B8_A8,
	E_COMPONENTS_A8,
	E_COMPONENTS_L8,
	E_COMPONENTS_L8_A8,
	E_COMPONENTS_R5_G6_B5,
	E_COMPONENTS_R5_G5_B5_A1,
	E_COMPONENTS_R4_G4_B4_A4,
	E_COMPONENTS_A4,
	E_COMPONENTS_L4,
	E_COMPONENTS_L4_A4,
	E_COMPONENTS_U8_V8,
	E_COMPONENTS_U16_V16,
	E_COMPONENTS_R8_G8_B8_X8,
	E_COMPONENTS_R32F,
	ECOMPONENTS_INVALID,
};
enum msapi::api::tex::EArrangement {
	E_ARRANGE_INVALID,
	E_ARRANGE_RAW_INTERLEAVED,
	E_ARRANGE_RAW_COMPONENTS,
	E_ARRANGE_COMPRESSED,
	EARRAGEMENT_INVALID,
};
enum msapi::api::tex::ETiling {
	E_TILING_CLAMP,
	E_TILING_CLAMPCOLOR,
	E_TILING_REPEAT,
	E_TILING_MIRROR,
	ETILING_INVALID,
};
enum msapi::api::tex::EFiltering {
	E_FILTER_NEAREST,
	E_FILTER_LINEAR,
	E_FILTER_NEARESTMIPNEAREST,
	E_FILTER_NEARESTMIPLINEAR,
	E_FILTER_LINEARMIPNEAREST,
	E_FILTER_LINEARMIPLINEAR,
	EFILTER_INVALID,
};
enum msapi::api::types::blendOp::EBlendOp {
	E_BLENDOP_ADD,
	E_BLENDOP_SUBDST,
	E_BLENDOP_SUBSRC,
	E_BLENDOP_MIN,
	E_BLENDOP_MAX,
	E_MAX_BLENDOP_COUNT,
	EBLENDOP_INVALID,
};
enum msapi::api::types::blendFactor::EBlendFactor {
	E_BLENDFACTOR_ZERO,
	E_BLENDFACTOR_ONE,
	E_BLENDFACTOR_SRC_COLOR,
	E_BLENDFACTOR_INV_SRC_COLOR,
	E_BLENDFACTOR_DST_COLOR,
	E_BLENDFACTOR_INV_DST_COLOR,
	E_BLENDFACTOR_SRC_ALPHA,
	E_BLENDFACTOR_INV_SRC_ALPHA,
	E_BLENDFACTOR_DST_ALPHA,
	E_BLENDFACTOR_INV_DST_ALPHA,
	E_MAX_BLENDFACTOR_COUNT,
	EBLENDFACTOR_INVALID,
};
enum msapi::api::types::cullMode::ECullMode {
	E_CULLMODE_CW,
	E_CULLMODE_CCW,
	E_CULLMODE_NONE,
	E_MAX_CULLMODE_COUNT,
	ECULLMODE_INVALID,
};
enum msapi::api::types::cmpMode::ECmpMode {
	E_CMPMODE_ALWAYS,
	E_CMPMODE_NEVER,
	E_CMPMODE_EQUAL,
	E_CMPMODE_NOTEQUAL,
	E_CMPMODE_LESS,
	E_CMPMODE_LESSEQUAL,
	E_CMPMODE_GREATER,
	E_CMPMODE_GREATEREQUAL,
	E_MAX_CMPMODE_COUNT,
	ECMPMODE_INVALID,
};
enum msapi::api::types::stencilOp::EStencilOp {
	E_STENCILOP_KEEP,
	E_STENCILOP_ZERO,
	E_STENCILOP_REPLACE,
	E_STENCILOP_INCRSAT,
	E_STENCILOP_DECRSAT,
	E_STENCILOP_INVERT,
	E_STENCILOP_INCR,
	E_STENCILOP_DECR,
	E_MAX_STENCILOP_COUNT,
	ESTENCILOP_INVALID,
};
enum msapi::api::types::textureAddress::ETextureAddress {
	E_TEXTUREADDRESS_REPEAT,
	E_TEXTUREADDRESS_MIRROR,
	E_TEXTUREADDRESS_EDGE,
	E_TEXTUREADDRESS_BORDER,
	ETEXTUREADDRESS_INVALID,
};
enum msapi::api::types::textureFilter::ETextureFilter {
	E_TEXTUREFILTER_NONE,
	E_TEXTUREFILTER_POINT,
	E_TEXTUREFILTER_LINEAR,
	E_TEXTUREFILTER_ANISOTROPIC,
	ETEXTUREFILTER_INVALID,
};
enum msapi::api::types::fillMode::EFillMode {
	E_FILLMODE_SOLID,
	E_FILLMODE_WIRE,
	E_FILLMODE_INVALID,
};
enum msapi::material::ETranslucencyType {
	E_TRANSLUCENCY_NONE,
	E_TRANSLUCENCY_OPAQUE,
	E_TRANSLUCENCY_TRANSLUCENT,
	E_TRANSLUCENCY_SUBSTRACTIVE,
	E_TRANSLUCENCY_ADDITIVE,
	E_TRANSLUCENCY_OPAQUE_FWD,
	E_TRANSLUCENCY_ALL,
	E_TRANSLUCENCY_NOT_OPAQUE,
	ETRANSLUCENCY_INVALID,
};
enum engine::scene::sceneItems::EItemType {
	SCENE_BLOCK,
	OBJECT,
	LIGHT,
	COUNT,
	INVALID,
	Invalid,
};
enum engine::utils::EMaterialConstantColor {
	MATERIAL_CONSTANT_COLOR_0,
	MATERIAL_CONSTANT_COLOR_1,
	MATERIAL_CONSTANT_COLOR_2,
	MATERIAL_CONSTANT_COLOR_3,
	MATERIAL_CONSTANT_COLOR_4,
	MATERIAL_CONSTANT_COLOR_5,
	MATERIAL_CONSTANT_COLOR_6,
	MATERIAL_CONSTANT_COLOR_7,
	MATERIAL_CONSTANT_COLOR_8,
	MATERIAL_CONSTANT_COLOR_9,
	EMATERIALCONSTANTCOLOR_COUNT,
	Invalid,
};
enum engine::utils::ELightPreset {
	E_LIGHT_PRESET_NONE,
	E_LIGHT_PRESET_PULSE,
	E_LIGHT_PRESET_BLINK,
	E_LIGHT_PRESET_LIGHTNING,
	ELIGHT_PRESET_COUNT,
	ELIGHT_PRESET_INVALID,
	Invalid,
};
enum media::EMovieStatus {
	Unknown,
	Success,
	InRequestedState,
	InvalidTransition,
	AsyncWork,
	Error,
	Invalid,
};
enum EActorLayer {
	Entities,
	Sounds,
	Lights,
	Invalid,
};
enum animtree::CAnimatedNodeDef::EAnimNodeType {
	SkelAnimationPoseBlend,
	SkelAnimation,
	Invalid,
};
enum CAbilityMultiLockon::SSubState {
	None,
	Idle,
	LockingTargets,
	Firing,
	Invalid,
};
enum CAbilityOpticCamouflage::ESelectionMode {
	Toggle,
	Hold,
	Invalid,
};
enum CAbilityOpticCamouflage::ESelectionInput {
	RS,
	ZR,
	Invalid,
};
enum EShinesparkTravellingDirection {
	No_Direction,
	Up,
	UpRight,
	UpLeft,
	Right,
	Left,
	DownRight,
	DownLeft,
	Down,
};
enum ECoolShinesparkSituation {
	Default,
	CooldownX,
};
enum EInputAimDir {
	eFront,
	eFrontUp,
	eFrontUpUp,
	eFrontUpDown,
	eFrontDown,
	eFrontDownUp,
	eFrontDownDown,
	Invalid,
};
enum EAimDirection {
	None,
	Up,
	FrontUp,
	Front,
	FrontDown,
	Down,
	Invalid,
};
enum ECutPathMode {
	ALWAYS,
	ONLY_IN_CLOSE_CORNERS,
	Invalid,
};
enum EXpawnAngPolicy {
	SPAWNPOINT,
	TARGET_SIDE,
	TARGET_DIR,
	TARGET_OPPOSITE_SIDE,
	TARGET_OPPOSITE_DIR,
	Invalid,
};
enum behaviortree::CScaredAction::EState {
	None,
	Started,
	Init,
	Loop,
	Ending,
	Finished,
	Invalid,
};
enum behaviortree::CParallel::EPolicy {
	RequireOne,
	RequireAll,
	Invalid,
};
enum behaviortree::SStatus::Enum {
	None,
	Invalid,
	Running,
	Aborting,
	Suspended,
	Success,
	Failed,
	Aborted,
	Count,
};
enum behaviortree::SCompareOperator::Enum {
	None,
	LESS,
	LESSEQUAL,
	EQUAL,
	GREATEREQUAL,
	GREATER,
	Count,
};
enum EJumpType {
	Short,
	Large,
	Invalid,
};
enum CAutoolAIComponent::EThrusterMode {
	EPowerOff,
	EHalfPower,
	EFullPower,
	Invalid,
};
enum CAutsniperShootAttack::ELaserState {
	WaitState,
	ChargeState,
	PrepareToShootState,
	CrazyBeforeShootState,
	BeforeShootState,
	ShootState,
	AfterShootState,
	RelocateCannonAndFinish,
	Invalid,
};
enum CAutsniperShootAttack::EAutsniperState {
	InMovementState,
	InIdleState,
	InFrozenState,
	Invalid,
};
enum CBigFistAttack::EBigFistAttackState {
	None,
	Started,
	PostAttackLoop,
	Recovering,
	Invalid,
};
enum CBigkranXMagmaRainAttack::EState {
	None,
	Started,
	Loop,
	End,
	Invalid,
};
enum CBigkranXSpitAttack::EState {
	None,
	Started,
	Loop,
	End,
	Invalid,
};
enum CCentralUnitCannonAIComponent::EState {
	None,
	Closed,
	Opening,
	Opened,
	Preparing,
	Shot,
	Closing,
	Invalid,
};
enum CChozoCommanderKiGrabAttack::SState {
	None,
	Idle,
	SamusImpacted,
	GrabSeqPrep1,
	GrabSeq1,
	GrabSeq1EarlyFail,
	GrabSeq1TimeOut,
	GrabSeq1Win,
	Invalid,
};
enum CChozoCommanderUltimateGrabAttack::SState {
	None,
	Idle,
	SamusImpacted,
	GrabSeqPrep1,
	GrabSeq1,
	GrabSeq1EarlyFail,
	GrabSeq1TimeOut,
	GrabSeq1Win,
	GrabSeqPrep2,
	GrabSeq2,
	GrabSeq2EarlyFail,
	GrabSeq2TimeOut,
	GrabSeq2Win,
	Invalid,
};
enum CChozoWarriorXUltimateGrabAttack::SState {
	None,
	Idle,
	SamusImpacted,
	GrabSeqPrep1,
	GrabSeq1,
	GrabSeq1EarlyFail,
	GrabSeq1TimeOut,
	GrabSeq1Win,
	GrabSeqPrep2,
	GrabSeq2,
	GrabSeq2EarlyFail,
	GrabSeq2TimeOut,
	GrabSeq2Win,
	Invalid,
};
enum CChozoWarriorAIComponent::ETransformationType {
	None,
	Quick,
	Full,
	Quick_without_init,
	Invalid,
};
enum CChozoZombieXPoisonClawsAttack::EState {
	None,
	Started,
	AttackState,
	AttackEndState,
	End,
	Invalid,
};
enum ELavaCarpetState {
	Init,
	ShotInit,
	Shot,
	StopShot,
	Breathe,
	End,
	Invalid,
};
enum ELavaDropArm {
	LeftUp,
	LeftDown,
	RightUp,
	RightDown,
	Invalid,
};
enum ELavaDropArmPos {
	A,
	B,
	Invalid,
};
enum CCharClassDredhedAIComponent::ESubspecies {
	Dredhed,
	Sakai,
	Invalid,
};
enum CCharClassDropterAIComponent::ESubspecies {
	Dropter,
	Sharpaw,
	Iceflea,
	Invalid,
};
enum EIceMode {
	Mode1,
	Mode2,
	Invalid,
};
enum EMinimapMode {
	Never,
	Always,
	Patrol2Search,
	ChaseAndSearchRange,
	Search,
	AlwaysExceptPatrol,
	Invalid,
};
enum CEmmyAIComponent::ETargetPerceptionType {
	None,
	Indirect,
	Direct,
	Invalid,
};
enum EEmmyAlertLevel {
	Patrol,
	Search,
	Chase,
	Invalid,
};
enum EGrabEmmySamusQTEMode {
	VFX,
	HUD,
	Invalid,
};
enum CGoliathAttack::EGoliathAttackState {
	None,
	Started,
	PostAttackLoop,
	Recovering,
	Invalid,
};
enum CCharClassGooplotAIComponent::ESubspecies {
	Gooplot,
	Gooshocker,
	Invalid,
};
enum CGroundShockerAttack::EState {
	None,
	Started,
	Start2Init,
	InitLoop,
	Init2Hit,
	HitLoop,
	Aborting,
	End,
	Invalid,
};
enum CCharClassHecathonAIComponent::ESubspecies {
	Hecathon,
	Omnithon,
	Invalid,
};
enum CInfesterShootAttack::EState {
	None,
	ShootState,
	End,
	Invalid,
};
enum CCharClassInfesterAIComponent::ESubspecies {
	Infester,
	Fulmite,
	Invalid,
};
enum ESpinningNailsState {
	init,
	nail1,
	nail2,
	nail3,
	nail4,
	end,
	Invalid,
};
enum ESpinningNailsSpeed {
	fast,
	medium,
	slow,
	Invalid,
};
enum CCharClassNailongThornsAttack::EDepthornAttackType {
	ClassicShoot,
	SequenceShoot,
	SineWaveShoot,
	Invalid,
};
enum CNailongThornsAttack::EState {
	InitState,
	ChargeThornsState,
	WaitToNextAttackState,
	TransitionToNextAttackState,
	ReleaseThornsState,
	ReleaseEndThornsState,
	Invalid,
};
enum CNailongAIComponent::EType {
	Nailong,
	Nailugger,
	Depthorn,
	Invalid,
};
enum CNailuggerAcidBallsAttack::EState {
	InitState,
	ChargeAttackState,
	AttackLoopState,
	EndAttackState,
	Invalid,
};
enum CObsydomithonAttack::EState {
	None,
	Started,
	ChargeLoop,
	Charge2Attack,
	AttackLoop,
	AttackLoopEnd,
	Ending,
	Invalid,
};
enum CCharClassPoisonFlyAIComponent::ESubspecies {
	Poisonfly,
	Blindfly,
	Invalid,
};
enum CCharClassQuetzoaAIComponent::ESubspecies {
	Quetzoa,
	Quetshocker,
	Invalid,
};
enum CRinkaUnitComponent::ERinkaType {
	A,
	B,
	C,
	Invalid,
};
enum CRinkaUnitComponent::ECentralUnitType {
	Caves,
	Magma,
	Lab,
	Forest,
	Sanc,
	Invalid,
};
enum CCharClassRodomithonXAIComponent::SFirePillarConfig::EType {
	None,
	Short,
	Medium,
	Long,
	Invalid,
};
enum CCharClassRodotukAIComponent::SAbsorbConfig::EType {
	None,
	Short,
	Medium,
	Long,
	Invalid,
};
enum CSabotoruTurnInDoorAttack::EState {
	None,
	Started,
	TurnState,
	TurnInDoorState,
	End,
	Invalid,
};
enum CCharClassSabotoruAIComponent::ESubspecies {
	Sabotoru,
	Kreep,
	Invalid,
};
enum EForceOpticCamouflageMode {
	Default,
	ForceEnabled,
	ForceDisabled,
	Invalid,
};
enum CScourgeTongueSlashAttack::EState {
	None,
	Starting,
	Init,
	InitLoop,
	Stretch,
	Shrink,
	End,
	Invalid,
};
enum CShakernautDoubleGroundShockAttack::EState {
	None,
	InitState,
	ChargeInitState,
	ShotInitFirstArmState,
	ShotInitSecondArmState,
	ChargeLoopFirstArmState,
	ChargeLoopSecondArmState,
	ShotFirstArmState,
	ShotSecondArmState,
	ShotEndFirstArmState,
	ShotEndSecondArmState,
	ChangeArmState,
	EndAttackState,
	Invalid,
};
enum CShakernautDoubleGroundShockAttack::ESide {
	None,
	Left,
	Right,
	Invalid,
};
enum CShakernautPiercingLaserAttack::EState {
	None,
	ToRelaxInitState,
	InitState,
	ChargeShotState,
	FirstShotState,
	ShotLoopState,
	RelocateEyeState,
	EndState,
	Invalid,
};
enum CShakernautPiercingLaserAttack::ESide {
	None,
	Left,
	Right,
	Invalid,
};
enum CShelmitPlasmaRayAttack::EAttackState {
	STARTING,
	ON_HOLD_CHASE,
	CHASING,
	PREPARE_SHOOTING,
	INIT_SHOOTING,
	SHOOTING,
	END_SHOOTING,
	PREPARE_LAUNCH,
	INIT_LAUNCH,
	LAUNCHED,
	EXPLODING,
	ENDING,
	Invalid,
};
enum EShellState {
	SHELTERED,
	UNSHELTERED,
	Invalid,
};
enum CSluggerSpitAttack::EState {
	None,
	Started,
	Spit,
	RepeatAttack,
	End,
	Invalid,
};
enum CTakumakuDashAttack::EState {
	None,
	Starting,
	ChargeLoop,
	RunningLoop,
	Stopping,
	Invalid,
};
enum CCharClassTakumakuAIComponent::ESubspecies {
	Takumaku,
	Armadigger,
	Klaida,
	Invalid,
};
enum CCharClassVulkranAIComponent::EDir {
	Right,
	Down,
	Left,
	Up,
	Invalid,
};
enum CCharClassVulkranAIComponent::ESubspecies {
	Vulkran,
	Spittail,
	Invalid,
};
enum CXParasiteAIComponent::EXParasiteBehaviorType {
	EDrop,
	EWanderThenFlee,
	EFlee,
	EStayOnPlace,
	EGoSpawn,
	EGoTransform,
	EGoToPlayer,
	EBeingAbsorbed,
	ESpawnOutOfCamera,
	Invalid,
};
enum CCharClassYamplotXAIComponent::ESubspecies {
	Yampa,
	YamplotX,
	Invalid,
};
enum ENavigablePathType {
	NONE,
	GROUND,
	STICKY,
	Invalid,
};
enum EFollowPathRotationMode {
	None,
	VerticalRotationToMovement,
	InvertVerticalRotationToMovement,
	PositiveVerticalRotationToMovement,
	NegativeVerticalRotationToMovement,
	HorizontalRotationToMovement,
	Invalid,
};
enum EFollowInPathOrientation {
	None,
	HorizontalOrientation,
	VerticalOrientation,
	HeuristicOrientation,
	Invalid,
};
enum CAnimationPrefix::SPrefix::Enum {
	None,
	water,
	speedbooster,
	speedbooster45up,
	left,
	right,
	patrol,
	search,
	chase,
	chase2,
	chasereachable,
	combat,
	flee,
	brokenshield,
	grab2,
	grabwater,
	protoemmytuto,
	preseta,
	presetb,
	presetc,
	Count,
};
enum EAnimationTag {
	slope,
	stealth,
	left,
	right,
	shield,
	hiddenshield,
	attack,
	stage2,
	super,
	low,
	preseta,
	presetb,
	presetc,
	chozowarriorx_powerbomb,
	slope26up,
};
enum CCharClassFlockingSwarmControllerComponent::SRotationMode {
	Raw,
	Inclinate,
	Invalid,
};
enum CCentralUnitComponent::ECentralUnitMode {
	Default,
	Decayed,
	Cave,
	Shipyard,
	Invalid,
};
enum darkness::EDarknessPreset {
	DISABLED,
	ENABLED,
	CENTRAL_UNIT,
};
enum SDropProbabilities::SDir {
	None,
	Front,
	Back,
	Up,
	Down,
	FrontUp,
	FrontDown,
	BackUp,
	BackDown,
	Player,
	Invalid,
};
enum SDropProbabilities::SType {
	None,
	Default,
	Melee,
	Invalid,
};
enum CEscapeSequenceExplosionComponent::EExplosionType {
	SMALL,
	MEDIUM,
	BIG,
	Invalid,
};
enum CForcedMovementAreaComponent::EForcedDirection {
	None,
	Right,
	Left,
	Invalid,
};
enum CGrappleBeamGun::ESelectionMode {
	AIM_AUTOMATIC,
	AIM_AUTOMATIC_DESELECT_HOLDING_INPUT,
	AIM_MANUAL_SELECT_HOLDING_INPUT,
	NO_AIM_SELECT_HOLDING_INPUT,
	NO_AIM_TOGGLE_PRESSING_INPUT,
	Invalid,
};
enum CGrappleBeamGun::ESelectionInput {
	LS,
	ZR,
	RS,
	Invalid,
};
enum EInputAction {
	None,
	MoveX,
	MoveY,
	Fire,
	SwitchGunMode,
	Jump,
	Aim,
	Melee,
	ActivateAbility,
	SelectAbilityLeftRight,
	SelectAbilityUpDown,
	SwitchGun,
	RawMove,
	RawLook,
	LoosingInputs,
	Convert,
	LookX,
	LookY,
	Walk,
	WalkToggle,
	OpticCamouflage,
	Sonar,
	MinimapEx,
	All,
};
enum EWalkInputMode {
	None,
	ZLHold,
	LSHold,
	LSToggle,
	Invalid,
};
enum EDamageType {
	UNKNOWN,
	ELECTRIC,
	FIRE,
	BLOOD,
	STEAM,
	NO_DAMAGE,
	Invalid,
};
enum EForcedDamageMode {
	NOT_FORCED,
	ONLY_REACTION,
	FORCED,
	Invalid,
};
enum EDamageStrength {
	DEFAULT,
	MEDIUM,
	MEDIUM_HORIZONTAL,
	HARD_WITHOUT_SHAKE,
	HARD,
	SUPER_HARD,
	Invalid,
};
enum EDemolitionPhase {
	None,
	Idle,
	StartSwelling,
	HeartBeat,
	Explosion,
	Invalid,
};
enum CDoorLifeComponent::SState {
	None,
	Opened,
	Closed,
	Locked,
	Invalid,
};
enum CDoorShieldLifeComponent::EColor {
	NONE,
	RED,
	GREEN,
	YELLOW,
	Invalid,
};
enum CDoorShieldLifeComponent::EDoorsShieldType {
	MISSILE,
	SUPERMISSILE,
	POWERBOOM,
	PLASMA,
	WAVE,
	WIDE,
	Invalid,
};
enum CLiquidPoolBaseComponent::ELiquidType {
	None,
	Water,
	Lava,
	All,
	Invalid,
};
enum CMeleeComponent::EMeleeTrailFXType {
	None,
	Trail,
	TrailEnd,
};
enum EAIAnimationStates {
	None,
	Idle,
	Walking,
	WalkingWall,
	WalkingCeil,
	Flying,
	Side,
	Invalid,
};
enum CCharClassEnemyMovement::ETurn180Mode {
	AxisX,
	AxisY,
	Dot,
	Invalid,
};
enum ESamusUsingGrapplePullPointStatePullStage {
	None,
	ControlledPull,
	UncontrolledPull,
	FinalPull,
	Invalid,
};
enum CSamusMagnetGloveMovementState::ESurfaceType {
	WALL,
	CEILING,
	CEILING_45,
	Invalid,
};
enum CSideEnemyMovement::EDir {
	left,
	right,
	Invalid,
};
enum ENavMeshItemType {
	Static,
	Dynamic,
	Destructible,
	Invalid,
};
enum CNavMeshItemStage::ESide {
	None,
	Left,
	Right,
	Invalid,
};
enum ERotationDirection {
	RIGHT,
	LEFT,
	Invalid,
};
enum CSamusMovement::EUpdateCollisionsPhaseOrder {
	SinglePhaseVerticalHorizontal,
	TwoPhasesVerticalThenHorizontal,
	Invalid,
};
enum ESwifterSpawnGroupDirection {
	Left,
	Right,
	Invalid,
};
enum ESwifterSpawnGroupSpawnMode {
	Water,
	Surface,
	Invalid,
};
enum EAutsharpSpawnPointDir {
	Left,
	Right,
	Both,
	Invalid,
};
enum EAutsniperSpawnPointDir {
	Clockwise,
	Counterclockwise,
	Invalid,
};
enum ECaterzillaSpawnPointDir {
	Front,
	Side,
	Invalid,
};
enum ECaterzillaSpawnPointOrder {
	First,
	Second,
	InFrustrum,
	Invalid,
};
enum ESlidleOutSpawnPointDir {
	ByDot,
	Front,
	Side,
	Invalid,
};
enum EThermalFreezeRoomType {
	FREEZE,
	COOL_DOWN,
	Invalid,
};
enum EThermalHeatRoomType {
	HEAT,
	COOL_DOWN,
	Invalid,
};
enum CTimelineComponent::ENextPolicy {
	NEXT,
	RANDOM,
	RANDOM_DELAY,
	Invalid,
};
enum eDoorStateLogicAction {
	Open,
	Close,
	Lock,
	Unlock,
	Invalid,
};
enum CSaveGameLogicAction::EDestination {
	savedata,
	checkpoint,
	Invalid,
};
enum CEmmyStateOverrideLogicAction::EMode {
	ShowVisualCone,
	HideVisualCone,
	Invalid,
};
enum navmesh::ENavMeshGroup {
	DEFAULT,
	EMMY,
	EMMY_PROTO,
	EMMY_CAVE,
	EMMY_MAGMA,
	Invalid,
};
enum CForbiddenEdgesLogicAction::EState {
	Allowed,
	Forbidden,
	Invalid,
};
enum CPerceptionModifierLogicAction::EMode {
	Add,
	Remove,
	Invalid,
};
enum CTriggerComponent::EEvent {
	OnEnter,
	OnExit,
	OnAllExit,
	OnStay,
	OnEnable,
	OnDisable,
	TE_COUNT,
	Invalid,
};
enum CElectricGeneratorComponent::EBlackOutZone {
	Zone1,
	Zone2,
	Unknown,
	Invalid,
};
enum EElevatorDirection {
	UP,
	DOWN,
	Invalid,
};
enum ETeleporterColorSphere {
	BLUE,
	DARKBLUE,
	GREEN,
	ORANGE,
	PINK,
	PURPLE,
	RED,
	YELLOW,
	Invalid,
};
enum CThermalDeviceComponent::EPipeGroup {
	Group0,
	Group1,
	Group2,
	Group3,
	Group4,
	Group5,
	Group6,
	Group7,
	Invalid,
};
enum ETrainDirection {
	LEFT,
	RIGHT,
	Invalid,
};
enum CLockOnMissileMovement::SSubState {
	None,
	Pooled,
	Traking,
	Invalid,
};
enum CCharClassProjectileMovement::EProjectileMeleeHitReaction {
	IMPACT,
	IMPACT_ATTACKER,
	NONE,
	Invalid,
};
enum gameeditor::EPersistenceTarget {
	Logic,
	Logic_Layer_RAL,
	Logic_Sublayer_RASL,
	Logic_Folders_RLEI,
	Sublayer_Folders_RASLEI,
	Environment_Data,
	Subareas,
	Editor,
	Audio_Presets,
	Collision_Material_Data,
	Music_Presets_Data,
	Invalid,
};
enum EPickingMode {
	INVALID,
	ENTITIES_PICKING,
	SOUNDS_PICKING,
	LIGHTS_PICKING,
	PATH_PICKING,
	WORLDGRAPH_PICKING,
	SUBAREA_PICKING,
};
enum GUI::CGlobalMapComposition::SState {
	None,
	NORMAL,
	TRANSPORT_CONNECTION,
	TELEPORTER_TRAVELING,
	TELEPORTER_NET,
	AREA_TRAVEL,
	NEWAREA_PRESENTATION,
	Invalid,
};
enum GUI::CMapMenuController::SState {
	None,
	AreaMap,
	GlobalMap,
	Markers,
	Transition,
	Invalid,
};
enum EActionProps {
	DCRootControlled,
	DCRootRotationControlled,
	DontBlend,
	ForceModelUpdate,
	IgnoreCullState,
	HasNextAction,
	HasEndPose,
	Invalid,
};
enum EActionPlayMode {
	TIME,
	MANUAL,
	Invalid,
};
enum EOnActionEnd {
	HOLD,
	LOOP,
	PLAY_ACTION,
	DEFAULT_LOOP,
	Invalid,
};
enum EActionSegmentType {
	Animation,
	BlendSpace,
	Wait,
	Invalid,
};
enum EActionInsertFlags {
	IGNORE_PRIORITY,
	FORCE,
	LOCAL_TRANSFORM,
	CLEAR_ROOT_MOTION,
	CLEAR_ROOT_MOTION_IF_NO_ADVANCE,
	ACTIONSET_UPDATED,
	REPLACE_LOOPED,
	UPDATE_MODEL,
	USE_LAST_REMAINING_TIME,
	NEXT_ACTION,
	LAUNCH_EVENTS_ON_SYNC,
	RESET_STORED_ENTITY_TRANSFORM,
	RESET_STORED_ENTITY_TRANSFORM_TRANSLATION,
	START_EVENTS_ON_TICK,
	LAUNCH_NON_DISCARDABLES,
	NO_SET_SAME_ACTION_WITH_DIFFERENT_PREFIX,
};
enum EShieldAction {
	Enable,
	Disable,
	Invalid,
};
enum EWings {
	low,
	high,
	Invalid,
};
enum game::logic::collision::EColMat {
	DEFAULT,
	SCENARIO_GENERIC,
	FLESH_GENERIC,
	DAMAGE_BLOCKED,
	METAL,
	ENERGY,
	DIRT,
	ROCK,
	ICE,
	UNDER_WATER,
	UNDER_WATER_SP,
	MID_WATER,
	MID_WATER_SP,
	PUDDLE,
	OIL,
	END_WORLD,
	Invalid,
};
enum game::curves::EProcessorType {
	Base,
	PostProcess_DOF,
	Variables,
	SceneParam,
	MaterialProperty,
	MaterialColor,
	FxMaterialColor,
	FxMaterialProperty,
	SceneParamDirtMaskMult,
	SceneParamColorTint,
	PostProcess_BloomFactor,
	PostProcess_SelfIlumFactor,
	PostProcess_MotionBlur,
	LightIntensity,
	PostProcess_AnamorphicBloomFactor,
	AI,
	Invalid,
};
enum cutscene::ETakePlayMode {
	Once,
	Loop,
	Wait,
	Invalid,
};
enum cutscene::EDevelopmentState {
	Internal,
	PlaceHolder,
	WorkInProgress,
	Completed,
	ShowPlaceholder,
	Invalid,
};
enum EInFrustumMode {
	Position,
	AnyDimension,
	AllDimensions,
	HalfDimensions,
	VerticalDimension,
	HorizontalDimension,
	Invalid,
};
enum EBreakableTileType {
	UNDEFINED,
	POWERBEAM,
	BOMB,
	MISSILE,
	SUPERMISSILE,
	POWERBOMB,
	SCREWATTACK,
	WEIGHT,
	BABYHATCHLING,
	SPEEDBOOST,
	Invalid,
};
enum CCharClassSetCameraNearEvent::EDir {
	Any,
	Left,
	Right,
	Invalid,
};
enum CCharClassAnalogAimTrack::EAbortAnalogAimInput {
	None,
	Back,
	Any,
	Invalid,
};
enum CCharClassToStateTrack::EMaintainFrameMode {
	Pct,
	Frame,
	Invalid,
};
enum EFXType {
	FXTYPE_PARTICLESYSTEM,
	FXTYPE_RAGDOLL,
	FXTYPE_LIGHT,
	FXTYPE_MODEL,
	FXTYPE_CUSTOMMATERIAL,
	FXTYPE_LIGHTNING,
	FXTYPE_CURVEMODELS,
	FXTYPE_CURVEPARTICLES,
	FXTYPE_TRAIL,
};
enum ELinkType {
	FXLINK_POSITION_FIXED,
	FXLINK_POSITION_ENTITY,
	FXLINK_POSITION_MODEL,
	FXLINK_POSITION_MODEL_NODE,
	FXLINK_ATTACH_ENTITY,
	FXLINK_ATTACH_MODEL,
	FXLINK_ATTACH_MODEL_NODE,
	FXLINK_ATTACH_POSITION_ENTITY,
	FXLINK_ATTACH_POSITION_MODEL_NODE,
	FXLINK_ATTACH_POSITION_MODEL_NODE_LOCAL,
	FXLINK_POSITION_LAST_DAMAGE_DONE_HIT,
	FXLINK_POSITION_AI_CUSTOM,
	FXLINK_MOVEMENT_CUSTOM,
	FXLINK_POSITION_CAMERA,
	FXLINK_ATTACH_CAMERA,
	FXLINK_ATTACH_POSITION_CAMERA,
};
enum ELightType {
	Directional,
	Omni,
	Spot,
	Seg,
	Invalid,
};
enum ELightAttachment {
	PosRot3D,
	Pos3D,
	Rot3D,
	PosRot2D,
	Pos2D,
	Rot2D,
	Invalid,
};
enum IPath::EType {
	None,
	Once,
	PingPong,
	Loop,
	Invalid,
};
enum SLinkType::ELinkType {
	ACTOR,
	ENTITY,
	SPAWN_GROUP_ACTOR,
	SPAWN_POINT_ACTOR,
	LOGIC_SHAPE_ACTOR,
	CUTSCENE_ACTOR,
	LANDMARK,
	AI_SMART_OBJECT,
	CAMERA_RAIL,
	STEAMJET,
	ACTIVATABLE,
	MORPH_BALL_LAUNCHER_EXIT,
	DEMOLITIONBLOCK_LIFE_ACTOR,
	ANY,
	INVALID,
};
enum CAIManager::EAIGroup {
	Emmy,
	Invalid,
};
enum CAIManager::EBumpMode {
	EnemyPos2Hit,
	SamusRay2Enemy,
	SamusShape2Enemy,
	SamusShape2EnemyAvg,
	Invalid,
};
enum EAmiibo {
	CazadoraSamus,
	CazadoraEmmy,
	SmashBrosSamus,
	SmashBrosDarkSamus,
	SmashBrosZeroSamus,
	SmashBrosRidley,
	SamusReturnsSamus,
	SamusReturnsMetroid,
	Invalid,
};
enum CExplosionGfx::ETransitionOperationMode {
	None,
	RGBA,
	RGB,
	A,
	End,
	Invalid,
};
enum SLoadScenarioRequest::EMode {
	Game,
	Debug,
	Editor,
};
enum EEntryType {
	ML_INFO_ENTRY,
	ML_DIALOGUE_ENTRY,
	ML_TUTO_ENTRY,
	Invalid,
};
enum ELoadingScreen {
	E_LOADINGSCREEN_GUI_2D,
	E_LOADINGSCREEN_VIDEO,
	E_LOADINGSCREEN_ELEVATOR_UP,
	E_LOADINGSCREEN_ELEVATOR_DOWN,
	E_LOADINGSCREEN_MAIN_ELEVATOR_UP,
	E_LOADINGSCREEN_MAIN_ELEVATOR_DOWN,
	E_LOADINGSCREEN_TELEPORTER,
	E_LOADINGSCREEN_TRAIN_LEFT,
	E_LOADINGSCREEN_TRAIN_LEFT_AQUA,
	E_LOADINGSCREEN_TRAIN_RIGHT,
	E_LOADINGSCREEN_TRAIN_RIGHT_AQUA,
	Invalid,
};
enum ETooltipCond {
	Bomb,
	CentralUnit,
	ChargeBeam,
	ChozoWarrior,
	DiscoveredEmmyCave,
	DiscoveredEmmyZone,
	DiscoveredEmmyDoors,
	GhostDash,
	HiddenItemTutorial,
	IceMissile,
	LineBomb,
	Magnet,
	MapRoomUsed,
	MorphBall,
	OpticCamouflage,
	SpaceJump,
	SpeedBooster,
	TeleportUsed,
	TeleportWorldUnlocked,
	XParasite,
	Count,
};
enum ETooltipType {
	Exploration,
	EmmyPhase1,
	EmmyPhase2,
	BossBattle,
	Invalid,
};
enum EMinimapFowType {
	CAMERA,
	CIRCLE,
	CLAMP_CIRCLE,
	Invalid,
};
enum EMarkerType {
	MARKER_A,
	MARKER_B,
	MARKER_C,
	MARKER_D,
	MARKER_E,
	MARKER_F,
	MARKER_G,
	MARKER_H,
	MARKER_I,
	Invalid,
};
enum EMapTutoType {
	HINT_ZONE,
	EMMY_ZONE,
	TELEPORTER_NET,
	Invalid,
};
enum minimap::EIconAnimID {
	SHOW,
	SELECT,
	SAMUS_GLOW,
	ITEM_SPHERE,
	ITEM_CUBE,
	ITEM_GLOW,
	TELEPORTER_GLOW,
	TRANSLUCID,
	INVISIBLE,
	EMMY_SHOW,
	EMMY_GLOW,
	HYPERBEAM_GLOW,
	Invalid,
};
enum EWeaponType {
	PowerBeam,
	WideBeam,
	PlasmaBeam,
	WaveBeam,
	SpecialEnergyBeam,
	HyperBeam,
	GrappleBeam,
	Missile,
	SuperMissile,
	IceMissile,
	LockOnMissile,
	SpecialEnergyMissile,
	Bomb,
	LineBomb,
	PowerBomb,
	Invalid,
};
enum EWeaponState {
	Charging,
	Charged,
	ChargedLoop,
	Fire,
	FireCharged,
	Impact,
	ImpactCharged,
	ImpactDiffusion,
	Invalid,
};
enum CSubAreaManager::ETransitionType {
	None,
	Camera,
	Fade,
	FakeFade,
	Invalid,
};
enum CPrologueMode::SState {
	None,
	State0,
	State1,
	State2,
	Invalid,
};
enum ESubAreaItem {
	ScenarioCollider,
	LightGroup,
	SoundGroup,
	SceneGroup,
	LogicEntityGroup,
	BreakableTileGroupGroup,
	EnvironmentPreset,
	EnvironmentSoundPreset,
	EnvironmentMusicPreset,
	Invalid,
};
enum SMusicPlayFlag {
	None,
	FORCE,
	CLEAR_STACKS,
	CLEAR_TRACKS,
	POP_CURRENT,
	PAUSE_CURRENT,
	IGNORE_PAUSE,
	SKIP_TO_LOOP,
	PAUSE_ON_POP,
	Invalid,
};
enum SMusicStopFlag {
	None,
	PLAY_NEXT,
	CLEAR_STACK,
	REMOVE_MUSIC_FROM_STACK,
	Invalid,
};
enum SMusicPriority {
	NONE,
	LOWEST,
	ENVIRONMENT,
	TRIGGER,
	NORMAL,
	EVENT,
	STATE,
	SCRIPT,
	LOADING,
	Invalid,
};
enum SMusicManagerState {
	None,
	NO_MUSIC,
	MAINMENU,
	INGAME,
	INGAME_MENU,
	MAP_MENU,
	CREDITS,
	PROLOGUE,
	Invalid,
};
enum EMusicFadeType {
	None,
	DEFAULT,
	CROSS_FADE,
	Invalid,
};
enum EMusicManagerInGameState {
	None,
	RELAX,
	PATROL,
	SEARCH,
	PATROL2,
	SEARCH2,
	DEATH,
	COMBAT,
	Invalid,
};
enum ELOSMode {
	None,
	Position,
	FrontAndBack,
	Parabolic,
	Invalid,
};
enum ELOSCheckLevel {
	None,
	CenterPos,
	TopPos,
	DownPos,
	CenterTopPos,
	CenterDownPos,
	TopDownPos,
	CenterTopDownPos,
	Invalid,
};
enum CAIComponent::PathLimitSelectionMode {
	FarthestFromTarget,
	FarthestFromEntity,
	InCurrentDir,
	InOppositeDir2Target,
	InOppositePathDir2Target,
	InDir2Target,
	InPathDir2Target,
	Invalid,
};
enum CSpawnPointComponent::EDynamicSpawnPositionMode {
	ClosestToPlayer,
	FarthestToPlayer,
	Random,
	Invalid,
};
enum CSpawnPointComponent::EXCellSpawnPositionMode {
	FarthestToSpawnPoint,
	ClosestToSpawnPoint,
	Invalid,
};
enum CGrabComponent::ELinkMode {
	None,
	RootToDC_Grab,
	FeetToRoot,
	Invalid,
};
enum CInterpolationComponent::EInterpDirection {
	INDIR_Left,
	INDIR_Right,
	INDIR_Any,
	Invalid,
};
enum CInterpolationComponent::EInterpolationType {
	ACCUMULATIVE,
	LINEAR,
	INSTANT,
	EASY_IN_EASY_OUT,
	Invalid,
};
enum GUI::CButton::TextAlign {
	Align_Centered,
	Align_Left,
	Align_Right,
	Invalid,
};
enum GUI::CHUD::EForceVisibilityState {
	DONT_FORCE,
	FORCE_VISIBLE_WITH_FADE,
	FORCE_INVISIBLE_WITH_FADE,
	FORCE_VISIBLE_NO_FADE,
	FORCE_INVISIBLE_NO_FADE,
}