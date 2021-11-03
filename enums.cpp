enum base::animation::EBlendFunction {
	Linear = 0x0,
	Smoothstep = 0x1,
	Invalid = 0x7fffffff,
};
enum base::curves::EKeysType {
	Cubic = 0x0,
	Mix = 0x1,
	SingleValue = 0x2,
	Constant = 0x3,
	Linear = 0x4,
	Invalid = 0x7fffffff,
};
enum base::curves::ETimeType {
	Uint16 = 0x0,
	Uint8 = 0x1,
	F32 = 0x2,
	Invalid = 0x7fffffff,
};
enum base::curves::EInterpMode {
	Linear = 0x0,
	Cubic = 0x1,
	Constant = 0x2,
	Invalid = 0x7fffffff,
};
enum gameeditor::EEditorModeDataFlow {
	NONE = 0x0,
	EDITOR_TO_GAME = 0x1,
	GAME_TO_EDITOR = 0x2,
	BIDIRECTIONAL = 0x3,
	Invalid = 0x7fffffff,
};
enum EEventProps {
	Layer_0 = 0x0,
	Layer_1 = 0x1,
	Layer_2 = 0x2,
	Layer_3 = 0x3,
	Layer_4 = 0x4,
	Layer_5 = 0x5,
	Layer_6 = 0x6,
	Layer_7 = 0x7,
	Discardable = 0x8,
	DiscardableOnSync = 0x9,
};
enum base::global::timeline::ELayer {
	Layer_0 = 0x0,
	Layer_1 = 0x1,
	Layer_2 = 0x2,
	Layer_3 = 0x3,
	Layer_4 = 0x4,
	Layer_5 = 0x5,
	Layer_6 = 0x6,
	Layer_7 = 0x7,
};
enum base::input::ERumbleType {
	RFX = 0x0,
	RGUI = 0x1,
	RGRUNT = 0x2,
	RFX_EMMY = 0x3,
	RMUSIC = 0x4,
	Invalid = 0x7fffffff,
};
enum base::math::ETransformSpace {
	WORLD = 0x0,
	LOCAL = 0x1,
	MODEL = 0x2,
	Invalid = 0x7fffffff,
};
enum base::math::EMaxAxis {
	None = 0x0,
	X = 0x1,
	Y = 0x2,
	Z = 0x3,
	NEG_X = 0x4,
	NEG_Y = 0x5,
	NEG_Z = 0x6,
	Invalid = 0x7fffffff,
};
enum base::reflection::EAttributeTarget {
	Type = 0x0,
	Variable = 0x1,
	Function = 0x2,
	FunctionParameter = 0x3,
};
enum base::reflection::ECollectionAccessMode {
	None = 0x0,
	Indexed = 0x1,
	Associative = 0x2,
};
enum EExecutionReturnValue {
	STOP = 0x0,
	CONTINUE = 0x1,
};
enum base::serialization::EPersistence {
	Transient = 0x0,
	Persistent = 0x1,
	Invalid = 0x7fffffff,
};
enum base::serialization::EDeserializeCollectionElementMode {
	UpdateOnly = 0x0,
	InsertOnly = 0x1,
	UpdateOrInsert = 0x2,
	Invalid = 0x7fffffff,
};
enum base::snd::ESoundSystemImGuiTabs {
	Info = 0x0,
	Players = 0x1,
	Invalid = 0x7fffffff,
};
enum base::snd::ESoundGroupIds {
	DEFAULT = 0x0,
	SHIELD_IMPACT = 0x1,
	FLESH_IMPACT = 0x2,
	WALL_IMPACT = 0x3,
	DOOR_FAIL = 0x4,
	BOSS_DISCOVER = 0x5,
	PHASEDISPLACEMENT = 0x6,
	ENERSHIELDENTER = 0x7,
	ENERSHIELDEXIT = 0x8,
	SAMUS_MOVEMENT = 0x9,
	EMMY_ALARM = 0xa,
	Invalid = 0x7fffffff,
};
enum base::snd::ESndType {
	SFX = 0x0,
	MUSIC = 0x1,
	SPEECH = 0x2,
	GRUNT = 0x3,
	GUI = 0x4,
	ENVIRONMENT_STREAMS = 0x5,
	SFX_EMMY = 0x6,
	CUTSCENE = 0x7,
	Invalid = 0x7fffffff,
};
enum base::snd::EAttenuationCurve {
	Logarithmic = 0x0,
	Linear = 0x1,
	Invalid = 0x7fffffff,
};
enum base::snd::EReverbIntensity {
	NONE = 0x0,
	SMALL_ROOM = 0x1,
	MEDIUM_ROOM = 0x2,
	BIG_ROOM = 0x3,
	CATHEDRAL = 0x4,
	Invalid = 0x7fffffff,
};
enum base::snd::ELowPassFilter {
	LPF_DISABLED = 0x0,
	LPF_80HZ = 0x1,
	LPF_100HZ = 0x2,
	LPF_128HZ = 0x3,
	LPF_160HZ = 0x4,
	LPF_200HZ = 0x5,
	LPF_256HZ = 0x6,
	LPF_320HZ = 0x7,
	LPF_400HZ = 0x8,
	LPF_500HZ = 0x9,
	LPF_640HZ = 0xa,
	LPF_800HZ = 0xb,
	LPF_1000HZ = 0xc,
	LPF_1280HZ = 0xd,
	LPF_1600HZ = 0xe,
	LPF_2000HZ = 0xf,
	LPF_2560HZ = 0x10,
	LPF_3200HZ = 0x11,
	LPF_4000HZ = 0x12,
	LPF_5120HZ = 0x13,
	LPF_6400HZ = 0x14,
	LPF_8000HZ = 0x15,
	LPF_10240HZ = 0x16,
	LPF_12800HZ = 0x17,
	LPF_16000HZ = 0x18,
	Invalid = 0x7fffffff,
};
enum base::snd::EPositionalType {
	POS_2D = 0x0,
	POS_3D = 0x1,
	Invalid = 0x7fffffff,
};
enum base::snd::ESndPlayerId {
	SFX = 0x0,
	MUSIC = 0x1,
	SPEECH = 0x2,
	GRUNT = 0x3,
	GUI = 0x4,
	ENVIRONMENT_STREAMS = 0x5,
	SFX_EMMY = 0x6,
	CUTSCENE = 0x7,
	Invalid = 0x7fffffff,
};
enum base::snd::ESndLogicId {
	DEFAULT = 0x0,
	SHIELD_IMPACT = 0x1,
	FLESH_IMPACT = 0x2,
	WALL_IMPACT = 0x3,
	DOOR_FAIL = 0x4,
	BOSS_DISCOVER = 0x5,
	PHASEDISPLACEMENT = 0x6,
	ENERSHIELDENTER = 0x7,
	ENERSHIELDEXIT = 0x8,
	SAMUS_MOVEMENT = 0x9,
	EMMY_ALARM = 0xa,
	Invalid = 0x7fffffff,
};
enum msapi::api::shdr::EShaderType {
	E_VERTEX = 0x0,
	E_PIXEL = 0x1,
	E_GEOMETRY = 0x2,
	Invalid = 0x7fffffff,
};
enum msapi::api::rs::ERenderStateValue {
	E_FALSE = 0x0,
	E_TRUE = 0x1,
	E_CULL_CW = 0x2,
	E_CULL_CCW = 0x3,
	E_CULL_NONE = 0x4,
	E_CMP_LESS = 0x5,
	E_CMP_NEVER = 0x6,
	E_CMP_EQUA = 0x7,
	E_CMP_LESSEQUAL = 0x8,
	E_CMP_GREATER = 0x9,
	E_CMP_NOTEQUAL = 0xa,
	E_CMP_GREATEREQUAL = 0xb,
	E_CMP_ALWAYS = 0xc,
	E_STENCILCAPS_KEEP = 0xd,
	E_STENCILCAPS_ZERO = 0xe,
	E_STENCILCAPS_REPLACE = 0xf,
	E_STENCILCAPS_INCRSAT = 0x10,
	E_STENCILCAPS_DECRSAT = 0x11,
	E_STENCILCAPS_INVERT = 0x12,
	E_STENCILCAPS_INCR = 0x13,
	E_STENCILCAPS_DECR = 0x14,
	E_STENCILCAPS_2SIDED = 0x15,
	E_STENCILOP_KEEP = 0x16,
	E_STENCILOP_REPLACE = 0x17,
	ERENDERSTATEVALUE_INVALID = 0xffffffff,
};
enum msapi::api::idx::EPrimitiveType {
	E_PRIMITIVE_INVALID = 0x0,
	E_TRIANGLES = 0x1,
	E_TRIANGLE_STRIP = 0x2,
	E_TRIANGLE_FAN = 0x3,
	E_LINES = 0x4,
	E_LINE_STRIP = 0x5,
	E_PRIMITIVE_COUNT = 0x6,
};
enum msapi::api::idx::EDataType {
	E_DATATYPE_INVALID = 0x0,
	E_BYTE = 0x1,
	E_SHORT = 0x2,
	E_INT = 0x3,
	E_DATATYPE_COUNT = 0x4,
};
enum msapi::api::tex::EComponents {
	E_COMPONENTS_INVALID = 0x0,
	E_COMPONENTS_R8_G8_B8 = 0x1,
	E_COMPONENTS_R8_G8_B8_A8 = 0x2,
	E_COMPONENTS_A8 = 0x3,
	E_COMPONENTS_L8 = 0x4,
	E_COMPONENTS_L8_A8 = 0x5,
	E_COMPONENTS_R5_G6_B5 = 0x6,
	E_COMPONENTS_R5_G5_B5_A1 = 0x7,
	E_COMPONENTS_R4_G4_B4_A4 = 0x8,
	E_COMPONENTS_A4 = 0x9,
	E_COMPONENTS_L4 = 0xa,
	E_COMPONENTS_L4_A4 = 0xb,
	E_COMPONENTS_U8_V8 = 0xc,
	E_COMPONENTS_U16_V16 = 0xd,
	E_COMPONENTS_R8_G8_B8_X8 = 0xe,
	E_COMPONENTS_R32F = 0x10,
	ECOMPONENTS_INVALID = 0xffffffff,
};
enum msapi::api::tex::EArrangement {
	E_ARRANGE_INVALID = 0x0,
	E_ARRANGE_RAW_INTERLEAVED = 0x1,
	E_ARRANGE_RAW_COMPONENTS = 0x2,
	E_ARRANGE_COMPRESSED = 0x3,
	EARRAGEMENT_INVALID = 0xffffffff,
};
enum msapi::api::tex::ETiling {
	E_TILING_CLAMP = 0x0,
	E_TILING_CLAMPCOLOR = 0x1,
	E_TILING_REPEAT = 0x2,
	E_TILING_MIRROR = 0x3,
	ETILING_INVALID = 0xffffffff,
};
enum msapi::api::tex::EFiltering {
	E_FILTER_NEAREST = 0x0,
	E_FILTER_LINEAR = 0x1,
	E_FILTER_NEARESTMIPNEAREST = 0x2,
	E_FILTER_NEARESTMIPLINEAR = 0x3,
	E_FILTER_LINEARMIPNEAREST = 0x4,
	E_FILTER_LINEARMIPLINEAR = 0x5,
	EFILTER_INVALID = 0xffffffff,
};
enum msapi::api::types::blendOp::EBlendOp {
	E_BLENDOP_ADD = 0x0,
	E_BLENDOP_SUBDST = 0x1,
	E_BLENDOP_SUBSRC = 0x2,
	E_BLENDOP_MIN = 0x3,
	E_BLENDOP_MAX = 0x4,
	E_MAX_BLENDOP_COUNT = 0x5,
	EBLENDOP_INVALID = 0xffffffff,
};
enum msapi::api::types::blendFactor::EBlendFactor {
	E_BLENDFACTOR_ZERO = 0x0,
	E_BLENDFACTOR_ONE = 0x1,
	E_BLENDFACTOR_SRC_COLOR = 0x2,
	E_BLENDFACTOR_INV_SRC_COLOR = 0x3,
	E_BLENDFACTOR_DST_COLOR = 0x4,
	E_BLENDFACTOR_INV_DST_COLOR = 0x5,
	E_BLENDFACTOR_SRC_ALPHA = 0x6,
	E_BLENDFACTOR_INV_SRC_ALPHA = 0x7,
	E_BLENDFACTOR_DST_ALPHA = 0x8,
	E_BLENDFACTOR_INV_DST_ALPHA = 0x9,
	E_MAX_BLENDFACTOR_COUNT = 0xa,
	EBLENDFACTOR_INVALID = 0xffffffff,
};
enum msapi::api::types::cullMode::ECullMode {
	E_CULLMODE_CW = 0x2,
	E_CULLMODE_CCW = 0x3,
	E_CULLMODE_NONE = 0x4,
	E_MAX_CULLMODE_COUNT = 0x5,
	ECULLMODE_INVALID = 0xffffffff,
};
enum msapi::api::types::cmpMode::ECmpMode {
	E_CMPMODE_ALWAYS = 0x0,
	E_CMPMODE_NEVER = 0x1,
	E_CMPMODE_EQUAL = 0x2,
	E_CMPMODE_NOTEQUAL = 0x3,
	E_CMPMODE_LESS = 0x4,
	E_CMPMODE_LESSEQUAL = 0x5,
	E_CMPMODE_GREATER = 0x6,
	E_CMPMODE_GREATEREQUAL = 0x7,
	E_MAX_CMPMODE_COUNT = 0x8,
	ECMPMODE_INVALID = 0xffffffff,
};
enum msapi::api::types::stencilOp::EStencilOp {
	E_STENCILOP_KEEP = 0x0,
	E_STENCILOP_ZERO = 0x1,
	E_STENCILOP_REPLACE = 0x2,
	E_STENCILOP_INCRSAT = 0x3,
	E_STENCILOP_DECRSAT = 0x4,
	E_STENCILOP_INVERT = 0x5,
	E_STENCILOP_INCR = 0x6,
	E_STENCILOP_DECR = 0x7,
	E_MAX_STENCILOP_COUNT = 0x8,
	ESTENCILOP_INVALID = 0xffffffff,
};
enum msapi::api::types::textureAddress::ETextureAddress {
	E_TEXTUREADDRESS_REPEAT = 0x2,
	E_TEXTUREADDRESS_MIRROR = 0x3,
	E_TEXTUREADDRESS_EDGE = 0x0,
	E_TEXTUREADDRESS_BORDER = 0x1,
	ETEXTUREADDRESS_INVALID = 0xffffffff,
};
enum msapi::api::types::textureFilter::ETextureFilter {
	E_TEXTUREFILTER_NONE = 0x0,
	E_TEXTUREFILTER_POINT = 0x1,
	E_TEXTUREFILTER_LINEAR = 0x2,
	E_TEXTUREFILTER_ANISOTROPIC = 0x3,
	ETEXTUREFILTER_INVALID = 0xffffffff,
};
enum msapi::api::types::fillMode::EFillMode {
	E_FILLMODE_SOLID = 0x0,
	E_FILLMODE_WIRE = 0x1,
	E_FILLMODE_INVALID = 0xffffffff,
};
enum msapi::material::ETranslucencyType {
	E_TRANSLUCENCY_NONE = 0x0,
	E_TRANSLUCENCY_OPAQUE = 0x1,
	E_TRANSLUCENCY_TRANSLUCENT = 0x2,
	E_TRANSLUCENCY_SUBSTRACTIVE = 0x4,
	E_TRANSLUCENCY_ADDITIVE = 0x8,
	E_TRANSLUCENCY_OPAQUE_FWD = 0x10,
	E_TRANSLUCENCY_ALL = 0x1f,
	E_TRANSLUCENCY_NOT_OPAQUE = 0xe,
	ETRANSLUCENCY_INVALID = 0xffffffff,
};
enum engine::scene::sceneItems::EItemType {
	SCENE_BLOCK = 0x0,
	OBJECT = 0x1,
	LIGHT = 0x2,
	COUNT = 0x3,
	INVALID = 0x4,
	Invalid = 0x7fffffff,
};
enum engine::utils::EMaterialConstantColor {
	MATERIAL_CONSTANT_COLOR_0 = 0x0,
	MATERIAL_CONSTANT_COLOR_1 = 0x1,
	MATERIAL_CONSTANT_COLOR_2 = 0x2,
	MATERIAL_CONSTANT_COLOR_3 = 0x3,
	MATERIAL_CONSTANT_COLOR_4 = 0x4,
	MATERIAL_CONSTANT_COLOR_5 = 0x5,
	MATERIAL_CONSTANT_COLOR_6 = 0x6,
	MATERIAL_CONSTANT_COLOR_7 = 0x7,
	MATERIAL_CONSTANT_COLOR_8 = 0x8,
	MATERIAL_CONSTANT_COLOR_9 = 0x9,
	EMATERIALCONSTANTCOLOR_COUNT = 0xa,
	Invalid = 0x7fffffff,
};
enum engine::utils::ELightPreset {
	E_LIGHT_PRESET_NONE = 0x0,
	E_LIGHT_PRESET_PULSE = 0x1,
	E_LIGHT_PRESET_BLINK = 0x2,
	E_LIGHT_PRESET_LIGHTNING = 0x3,
	ELIGHT_PRESET_COUNT = 0x4,
	ELIGHT_PRESET_INVALID = 0x5,
	Invalid = 0x7fffffff,
};
enum media::EMovieStatus {
	Unknown = 0x0,
	Success = 0x1,
	InRequestedState = 0x2,
	InvalidTransition = 0x3,
	AsyncWork = 0x4,
	Error = 0x5,
	Invalid = 0x7fffffff,
};
enum EActorLayer {
	Entities = 0x0,
	Sounds = 0x1,
	Lights = 0x2,
	Invalid = 0xffffffff,
};
enum animtree::CAnimatedNodeDef::EAnimNodeType {
	SkelAnimationPoseBlend = 0x0,
	SkelAnimation = 0x1,
	Invalid = 0x7fffffff,
};
enum CAbilityMultiLockon::SSubState {
	None = 0x0,
	Idle = 0x1,
	LockingTargets = 0x2,
	Firing = 0x3,
	Invalid = 0x7fffffff,
};
enum CAbilityOpticCamouflage::ESelectionMode {
	Toggle = 0x0,
	Hold = 0x1,
	Invalid = 0xffffffff,
};
enum CAbilityOpticCamouflage::ESelectionInput {
	RS = 0x0,
	ZR = 0x1,
	Invalid = 0xffffffff,
};
enum EShinesparkTravellingDirection {
	No_Direction = 0x0,
	Up = 0x1,
	UpRight = 0x2,
	UpLeft = 0x3,
	Right = 0x4,
	Left = 0x5,
	DownRight = 0x6,
	DownLeft = 0x7,
	Down = 0x8,
};
enum ECoolShinesparkSituation {
	Default = 0x0,
	CooldownX = 0x1,
};
enum EInputAimDir {
	eFront = 0x0,
	eFrontUp = 0x1,
	eFrontUpUp = 0x2,
	eFrontUpDown = 0x3,
	eFrontDown = 0x4,
	eFrontDownUp = 0x5,
	eFrontDownDown = 0x6,
	Invalid = 0x7fffffff,
};
enum EAimDirection {
	None = 0x0,
	Up = 0x1,
	FrontUp = 0x2,
	Front = 0x3,
	FrontDown = 0x4,
	Down = 0x5,
	Invalid = 0x7fffffff,
};
enum ECutPathMode {
	ALWAYS = 0x0,
	ONLY_IN_CLOSE_CORNERS = 0x1,
	Invalid = 0x7fffffff,
};
enum EXpawnAngPolicy {
	SPAWNPOINT = 0x0,
	TARGET_SIDE = 0x1,
	TARGET_DIR = 0x2,
	TARGET_OPPOSITE_SIDE = 0x3,
	TARGET_OPPOSITE_DIR = 0x4,
	Invalid = 0x7fffffff,
};
enum behaviortree::CScaredAction::EState {
	None = 0x0,
	Started = 0x1,
	Init = 0x2,
	Loop = 0x3,
	Ending = 0x4,
	Finished = 0x5,
	Invalid = 0x7fffffff,
};
enum behaviortree::CParallel::EPolicy {
	RequireOne = 0x0,
	RequireAll = 0x1,
	Invalid = 0x7fffffff,
};
enum behaviortree::SStatus::Enum {
	None = 0x0,
	Invalid = 0x1,
	Running = 0x2,
	Aborting = 0x3,
	Suspended = 0x4,
	Success = 0x5,
	Failed = 0x6,
	Aborted = 0x7,
	Count = 0x8,
};
enum behaviortree::SCompareOperator::Enum {
	None = 0x0,
	LESS = 0x1,
	LESSEQUAL = 0x2,
	EQUAL = 0x3,
	GREATEREQUAL = 0x4,
	GREATER = 0x5,
	Count = 0x6,
};
enum EJumpType {
	Short = 0x0,
	Large = 0x1,
	Invalid = 0x7fffffff,
};
enum CAutoolAIComponent::EThrusterMode {
	EPowerOff = 0x0,
	EHalfPower = 0x1,
	EFullPower = 0x2,
	Invalid = 0x7fffffff,
};
enum CAutsniperShootAttack::ELaserState {
	WaitState = 0x0,
	ChargeState = 0x1,
	PrepareToShootState = 0x2,
	CrazyBeforeShootState = 0x3,
	BeforeShootState = 0x4,
	ShootState = 0x5,
	AfterShootState = 0x6,
	RelocateCannonAndFinish = 0x7,
	Invalid = 0x7fffffff,
};
enum CAutsniperShootAttack::EAutsniperState {
	InMovementState = 0x0,
	InIdleState = 0x1,
	InFrozenState = 0x2,
	Invalid = 0x7fffffff,
};
enum CBigFistAttack::EBigFistAttackState {
	None = 0x0,
	Started = 0x1,
	PostAttackLoop = 0x2,
	Recovering = 0x3,
	Invalid = 0x7fffffff,
};
enum CBigkranXMagmaRainAttack::EState {
	None = 0x0,
	Started = 0x1,
	Loop = 0x2,
	End = 0x3,
	Invalid = 0x7fffffff,
};
enum CBigkranXSpitAttack::EState {
	None = 0x0,
	Started = 0x1,
	Loop = 0x2,
	End = 0x3,
	Invalid = 0x7fffffff,
};
enum CCentralUnitCannonAIComponent::EState {
	None = 0x0,
	Closed = 0x1,
	Opening = 0x2,
	Opened = 0x3,
	Preparing = 0x4,
	Shot = 0x5,
	Closing = 0x6,
	Invalid = 0x7fffffff,
};
enum CChozoCommanderKiGrabAttack::SState {
	None = 0x0,
	Idle = 0x1,
	SamusImpacted = 0x2,
	GrabSeqPrep1 = 0x3,
	GrabSeq1 = 0x4,
	GrabSeq1EarlyFail = 0x5,
	GrabSeq1TimeOut = 0x6,
	GrabSeq1Win = 0x7,
	Invalid = 0x7fffffff,
};
enum CChozoCommanderUltimateGrabAttack::SState {
	None = 0x0,
	Idle = 0x1,
	SamusImpacted = 0x2,
	GrabSeqPrep1 = 0x3,
	GrabSeq1 = 0x4,
	GrabSeq1EarlyFail = 0x5,
	GrabSeq1TimeOut = 0x6,
	GrabSeq1Win = 0x7,
	GrabSeqPrep2 = 0x8,
	GrabSeq2 = 0x9,
	GrabSeq2EarlyFail = 0xa,
	GrabSeq2TimeOut = 0xb,
	GrabSeq2Win = 0xc,
	Invalid = 0x7fffffff,
};
enum CChozoWarriorXUltimateGrabAttack::SState {
	None = 0x0,
	Idle = 0x1,
	SamusImpacted = 0x2,
	GrabSeqPrep1 = 0x3,
	GrabSeq1 = 0x4,
	GrabSeq1EarlyFail = 0x5,
	GrabSeq1TimeOut = 0x6,
	GrabSeq1Win = 0x7,
	GrabSeqPrep2 = 0x8,
	GrabSeq2 = 0x9,
	GrabSeq2EarlyFail = 0xa,
	GrabSeq2TimeOut = 0xb,
	GrabSeq2Win = 0xc,
	Invalid = 0x7fffffff,
};
enum CChozoWarriorAIComponent::ETransformationType {
	None = 0x0,
	Quick = 0x1,
	Full = 0x2,
	Quick_without_init = 0x3,
	Invalid = 0x7fffffff,
};
enum CChozoZombieXPoisonClawsAttack::EState {
	None = 0x0,
	Started = 0x1,
	AttackState = 0x2,
	AttackEndState = 0x3,
	End = 0x4,
	Invalid = 0x7fffffff,
};
enum ELavaCarpetState {
	Init = 0x0,
	ShotInit = 0x1,
	Shot = 0x2,
	StopShot = 0x3,
	Breathe = 0x4,
	End = 0x5,
	Invalid = 0x7fffffff,
};
enum ELavaDropArm {
	LeftUp = 0x0,
	LeftDown = 0x1,
	RightUp = 0x2,
	RightDown = 0x3,
	Invalid = 0x7fffffff,
};
enum ELavaDropArmPos {
	A = 0x0,
	B = 0x1,
	Invalid = 0x7fffffff,
};
enum CCharClassDredhedAIComponent::ESubspecies {
	Dredhed = 0x0,
	Sakai = 0x1,
	Invalid = 0x7fffffff,
};
enum CCharClassDropterAIComponent::ESubspecies {
	Dropter = 0x0,
	Sharpaw = 0x1,
	Iceflea = 0x2,
	Invalid = 0x7fffffff,
};
enum EIceMode {
	Mode1 = 0x0,
	Mode2 = 0x1,
	Invalid = 0x7fffffff,
};
enum EMinimapMode {
	Never = 0x0,
	Always = 0x1,
	Patrol2Search = 0x2,
	ChaseAndSearchRange = 0x3,
	Search = 0x4,
	AlwaysExceptPatrol = 0x5,
	Invalid = 0x7fffffff,
};
enum CEmmyAIComponent::ETargetPerceptionType {
	None = 0x0,
	Indirect = 0x1,
	Direct = 0x2,
	Invalid = 0x7fffffff,
};
enum EEmmyAlertLevel {
	Patrol = 0x0,
	Search = 0x1,
	Chase = 0x2,
	Invalid = 0x7fffffff,
};
enum EGrabEmmySamusQTEMode {
	VFX = 0x0,
	HUD = 0x1,
	Invalid = 0x7fffffff,
};
enum CGoliathAttack::EGoliathAttackState {
	None = 0x0,
	Started = 0x1,
	PostAttackLoop = 0x2,
	Recovering = 0x3,
	Invalid = 0x7fffffff,
};
enum CCharClassGooplotAIComponent::ESubspecies {
	Gooplot = 0x0,
	Gooshocker = 0x1,
	Invalid = 0x7fffffff,
};
enum CGroundShockerAttack::EState {
	None = 0x0,
	Started = 0x1,
	Start2Init = 0x2,
	InitLoop = 0x3,
	Init2Hit = 0x4,
	HitLoop = 0x5,
	Aborting = 0x6,
	End = 0x7,
	Invalid = 0x7fffffff,
};
enum CCharClassHecathonAIComponent::ESubspecies {
	Hecathon = 0x0,
	Omnithon = 0x1,
	Invalid = 0x7fffffff,
};
enum CInfesterShootAttack::EState {
	None = 0x0,
	ShootState = 0x1,
	End = 0x2,
	Invalid = 0x7fffffff,
};
enum CCharClassInfesterAIComponent::ESubspecies {
	Infester = 0x0,
	Fulmite = 0x1,
	Invalid = 0x7fffffff,
};
enum ESpinningNailsState {
	init = 0x0,
	nail1 = 0x1,
	nail2 = 0x2,
	nail3 = 0x3,
	nail4 = 0x4,
	end = 0x5,
	Invalid = 0x7fffffff,
};
enum ESpinningNailsSpeed {
	fast = 0x0,
	medium = 0x1,
	slow = 0x2,
	Invalid = 0x7fffffff,
};
enum CCharClassNailongThornsAttack::EDepthornAttackType {
	ClassicShoot = 0x0,
	SequenceShoot = 0x1,
	SineWaveShoot = 0x2,
	Invalid = 0x7fffffff,
};
enum CNailongThornsAttack::EState {
	InitState = 0x0,
	ChargeThornsState = 0x1,
	WaitToNextAttackState = 0x2,
	TransitionToNextAttackState = 0x3,
	ReleaseThornsState = 0x4,
	ReleaseEndThornsState = 0x5,
	Invalid = 0x7fffffff,
};
enum CNailongAIComponent::EType {
	Nailong = 0x0,
	Nailugger = 0x1,
	Depthorn = 0x2,
	Invalid = 0x7fffffff,
};
enum CNailuggerAcidBallsAttack::EState {
	InitState = 0x0,
	ChargeAttackState = 0x1,
	AttackLoopState = 0x2,
	EndAttackState = 0x3,
	Invalid = 0x7fffffff,
};
enum CObsydomithonAttack::EState {
	None = 0x0,
	Started = 0x1,
	ChargeLoop = 0x2,
	Charge2Attack = 0x3,
	AttackLoop = 0x4,
	AttackLoopEnd = 0x5,
	Ending = 0x6,
	Invalid = 0x7fffffff,
};
enum CCharClassPoisonFlyAIComponent::ESubspecies {
	Poisonfly = 0x0,
	Blindfly = 0x1,
	Invalid = 0x7fffffff,
};
enum CCharClassQuetzoaAIComponent::ESubspecies {
	Quetzoa = 0x0,
	Quetshocker = 0x1,
	Invalid = 0x7fffffff,
};
enum CRinkaUnitComponent::ERinkaType {
	A = 0x0,
	B = 0x1,
	C = 0x2,
	Invalid = 0x7fffffff,
};
enum CRinkaUnitComponent::ECentralUnitType {
	Caves = 0x0,
	Magma = 0x1,
	Lab = 0x2,
	Forest = 0x3,
	Sanc = 0x4,
	Invalid = 0x7fffffff,
};
enum CCharClassRodomithonXAIComponent::SFirePillarConfig::EType {
	None = 0x0,
	Short = 0x1,
	Medium = 0x2,
	Long = 0x3,
	Invalid = 0x7fffffff,
};
enum CCharClassRodotukAIComponent::SAbsorbConfig::EType {
	None = 0x0,
	Short = 0x1,
	Medium = 0x2,
	Long = 0x3,
	Invalid = 0x7fffffff,
};
enum CSabotoruTurnInDoorAttack::EState {
	None = 0x0,
	Started = 0x1,
	TurnState = 0x2,
	TurnInDoorState = 0x3,
	End = 0x4,
	Invalid = 0x7fffffff,
};
enum CCharClassSabotoruAIComponent::ESubspecies {
	Sabotoru = 0x0,
	Kreep = 0x1,
	Invalid = 0x7fffffff,
};
enum EForceOpticCamouflageMode {
	Default = 0x0,
	ForceEnabled = 0x1,
	ForceDisabled = 0x2,
	Invalid = 0x7fffffff,
};
enum CScourgeTongueSlashAttack::EState {
	None = 0x0,
	Starting = 0x1,
	Init = 0x2,
	InitLoop = 0x3,
	Stretch = 0x4,
	Shrink = 0x5,
	End = 0x6,
	Invalid = 0x7fffffff,
};
enum CShakernautDoubleGroundShockAttack::EState {
	None = 0x0,
	InitState = 0x1,
	ChargeInitState = 0x2,
	ShotInitFirstArmState = 0x3,
	ShotInitSecondArmState = 0x4,
	ChargeLoopFirstArmState = 0x5,
	ChargeLoopSecondArmState = 0x6,
	ShotFirstArmState = 0x7,
	ShotSecondArmState = 0x8,
	ShotEndFirstArmState = 0x9,
	ShotEndSecondArmState = 0xa,
	ChangeArmState = 0xb,
	EndAttackState = 0xc,
	Invalid = 0x7fffffff,
};
enum CShakernautDoubleGroundShockAttack::ESide {
	None = 0x0,
	Left = 0x1,
	Right = 0x2,
	Invalid = 0x7fffffff,
};
enum CShakernautPiercingLaserAttack::EState {
	None = 0x0,
	ToRelaxInitState = 0x1,
	InitState = 0x2,
	ChargeShotState = 0x3,
	FirstShotState = 0x4,
	ShotLoopState = 0x5,
	RelocateEyeState = 0x6,
	EndState = 0x7,
	Invalid = 0x7fffffff,
};
enum CShakernautPiercingLaserAttack::ESide {
	None = 0x0,
	Left = 0x1,
	Right = 0x2,
	Invalid = 0x7fffffff,
};
enum CShelmitPlasmaRayAttack::EAttackState {
	STARTING = 0x0,
	ON_HOLD_CHASE = 0x1,
	CHASING = 0x2,
	PREPARE_SHOOTING = 0x3,
	INIT_SHOOTING = 0x4,
	SHOOTING = 0x5,
	END_SHOOTING = 0x6,
	PREPARE_LAUNCH = 0x7,
	INIT_LAUNCH = 0x8,
	LAUNCHED = 0x9,
	EXPLODING = 0xa,
	ENDING = 0xb,
	Invalid = 0x7fffffff,
};
enum EShellState {
	SHELTERED = 0x0,
	UNSHELTERED = 0x1,
	Invalid = 0x7fffffff,
};
enum CSluggerSpitAttack::EState {
	None = 0x0,
	Started = 0x1,
	Spit = 0x2,
	RepeatAttack = 0x3,
	End = 0x4,
	Invalid = 0x7fffffff,
};
enum CTakumakuDashAttack::EState {
	None = 0x0,
	Starting = 0x1,
	ChargeLoop = 0x2,
	RunningLoop = 0x3,
	Stopping = 0x4,
	Invalid = 0x7fffffff,
};
enum CCharClassTakumakuAIComponent::ESubspecies {
	Takumaku = 0x0,
	Armadigger = 0x1,
	Klaida = 0x2,
	Invalid = 0x7fffffff,
};
enum CCharClassVulkranAIComponent::EDir {
	Right = 0x0,
	Down = 0x1,
	Left = 0x2,
	Up = 0x3,
	Invalid = 0x7fffffff,
};
enum CCharClassVulkranAIComponent::ESubspecies {
	Vulkran = 0x0,
	Spittail = 0x1,
	Invalid = 0x7fffffff,
};
enum CXParasiteAIComponent::EXParasiteBehaviorType {
	EDrop = 0x0,
	EWanderThenFlee = 0x1,
	EFlee = 0x2,
	EStayOnPlace = 0x3,
	EGoSpawn = 0x4,
	EGoTransform = 0x5,
	EGoToPlayer = 0x6,
	EBeingAbsorbed = 0x7,
	ESpawnOutOfCamera = 0x8,
	Invalid = 0x7fffffff,
};
enum CCharClassYamplotXAIComponent::ESubspecies {
	Yampa = 0x0,
	YamplotX = 0x1,
	Invalid = 0x7fffffff,
};
enum ENavigablePathType {
	NONE = 0x0,
	GROUND = 0x1,
	STICKY = 0x2,
	Invalid = 0x7fffffff,
};
enum EFollowPathRotationMode {
	None = 0x0,
	VerticalRotationToMovement = 0x1,
	InvertVerticalRotationToMovement = 0x2,
	PositiveVerticalRotationToMovement = 0x3,
	NegativeVerticalRotationToMovement = 0x4,
	HorizontalRotationToMovement = 0x5,
	Invalid = 0x7fffffff,
};
enum EFollowInPathOrientation {
	None = 0x0,
	HorizontalOrientation = 0x1,
	VerticalOrientation = 0x2,
	HeuristicOrientation = 0x3,
	Invalid = 0x7fffffff,
};
enum CAnimationPrefix::SPrefix::Enum {
	None = 0x0,
	water = 0x1,
	speedbooster = 0x2,
	speedbooster45up = 0x3,
	left = 0x4,
	right = 0x5,
	patrol = 0x6,
	search = 0x7,
	chase = 0x8,
	chase2 = 0x9,
	chasereachable = 0xa,
	combat = 0xb,
	flee = 0xc,
	brokenshield = 0xd,
	grab2 = 0xe,
	grabwater = 0xf,
	protoemmytuto = 0x10,
	preseta = 0x11,
	presetb = 0x12,
	presetc = 0x13,
	Count = 0x14,
};
enum EAnimationTag {
	slope = 0x0,
	stealth = 0x1,
	left = 0x2,
	right = 0x3,
	shield = 0x4,
	hiddenshield = 0x5,
	attack = 0x6,
	stage2 = 0x7,
	super = 0x8,
	low = 0x9,
	preseta = 0xa,
	presetb = 0xb,
	presetc = 0xc,
	chozowarriorx_powerbomb = 0xd,
	slope26up = 0xe,
};
enum CCharClassFlockingSwarmControllerComponent::SRotationMode {
	Raw = 0x0,
	Inclinate = 0x1,
	Invalid = 0x7fffffff,
};
enum CCentralUnitComponent::ECentralUnitMode {
	Default = 0x0,
	Decayed = 0x1,
	Cave = 0x2,
	Shipyard = 0x3,
	Invalid = 0x7fffffff,
};
enum darkness::EDarknessPreset {
	DISABLED = 0x0,
	ENABLED = 0x1,
	CENTRAL_UNIT = 0x2,
};
enum SDropProbabilities::SDir {
	None = 0x0,
	Front = 0x1,
	Back = 0x2,
	Up = 0x3,
	Down = 0x4,
	FrontUp = 0x5,
	FrontDown = 0x6,
	BackUp = 0x7,
	BackDown = 0x8,
	Player = 0x9,
	Invalid = 0x7fffffff,
};
enum SDropProbabilities::SType {
	None = 0x0,
	Default = 0x1,
	Melee = 0x2,
	Invalid = 0x7fffffff,
};
enum CEscapeSequenceExplosionComponent::EExplosionType {
	SMALL = 0x0,
	MEDIUM = 0x1,
	BIG = 0x2,
	Invalid = 0x7fffffff,
};
enum CForcedMovementAreaComponent::EForcedDirection {
	None = 0x0,
	Right = 0x1,
	Left = 0x2,
	Invalid = 0x7fffffff,
};
enum CGrappleBeamGun::ESelectionMode {
	AIM_AUTOMATIC = 0x0,
	AIM_AUTOMATIC_DESELECT_HOLDING_INPUT = 0x1,
	AIM_MANUAL_SELECT_HOLDING_INPUT = 0x2,
	NO_AIM_SELECT_HOLDING_INPUT = 0x3,
	NO_AIM_TOGGLE_PRESSING_INPUT = 0x4,
	Invalid = 0xffffffff,
};
enum CGrappleBeamGun::ESelectionInput {
	LS = 0x0,
	ZR = 0x1,
	RS = 0x2,
	Invalid = 0xffffffff,
};
enum EInputAction {
	None = 0x0,
	MoveX = 0x1,
	MoveY = 0x2,
	Fire = 0x4,
	SwitchGunMode = 0x10,
	Jump = 0x20,
	Aim = 0x40,
	Melee = 0x80,
	ActivateAbility = 0x100,
	SelectAbilityLeftRight = 0x200,
	SelectAbilityUpDown = 0x400,
	SwitchGun = 0x800,
	RawMove = 0x1000,
	RawLook = 0x2000,
	LoosingInputs = 0x4000,
	Convert = 0x8000,
	LookX = 0x10000,
	LookY = 0x20000,
	Walk = 0x40000,
	WalkToggle = 0x80000,
	OpticCamouflage = 0x100000,
	Sonar = 0x200000,
	MinimapEx = 0x400000,
	All = 0xffff,
};
enum EWalkInputMode {
	None = 0x0,
	ZLHold = 0x1,
	LSHold = 0x2,
	LSToggle = 0x3,
	Invalid = 0x7fffffff,
};
enum EDamageType {
	UNKNOWN = 0x0,
	ELECTRIC = 0x1,
	FIRE = 0x2,
	BLOOD = 0x3,
	STEAM = 0x4,
	NO_DAMAGE = 0x5,
	Invalid = 0x7fffffff,
};
enum EForcedDamageMode {
	NOT_FORCED = 0x0,
	ONLY_REACTION = 0x1,
	FORCED = 0x2,
	Invalid = 0x7fffffff,
};
enum EDamageStrength {
	DEFAULT = 0x0,
	MEDIUM = 0x1,
	MEDIUM_HORIZONTAL = 0x2,
	HARD_WITHOUT_SHAKE = 0x3,
	HARD = 0x4,
	SUPER_HARD = 0x5,
	Invalid = 0x7fffffff,
};
enum EDemolitionPhase {
	None = 0x0,
	Idle = 0x1,
	StartSwelling = 0x2,
	HeartBeat = 0x3,
	Explosion = 0x4,
	Invalid = 0x7fffffff,
};
enum CDoorLifeComponent::SState {
	None = 0x0,
	Opened = 0x1,
	Closed = 0x2,
	Locked = 0x3,
	Invalid = 0x7fffffff,
};
enum CDoorShieldLifeComponent::EColor {
	NONE = 0x0,
	RED = 0x1,
	GREEN = 0x2,
	YELLOW = 0x3,
	Invalid = 0x7fffffff,
};
enum CDoorShieldLifeComponent::EDoorsShieldType {
	MISSILE = 0x0,
	SUPERMISSILE = 0x1,
	POWERBOOM = 0x2,
	PLASMA = 0x3,
	WAVE = 0x4,
	WIDE = 0x5,
	Invalid = 0x7fffffff,
};
enum CLiquidPoolBaseComponent::ELiquidType {
	None = 0x0,
	Water = 0x1,
	Lava = 0x2,
	All = 0x3,
	Invalid = 0x7fffffff,
};
enum CMeleeComponent::EMeleeTrailFXType {
	None = 0x0,
	Trail = 0x1,
	TrailEnd = 0x2,
};
enum EAIAnimationStates {
	None = 0x0,
	Idle = 0x1,
	Walking = 0x2,
	WalkingWall = 0x3,
	WalkingCeil = 0x4,
	Flying = 0x5,
	Side = 0x6,
	Invalid = 0x7fffffff,
};
enum CCharClassEnemyMovement::ETurn180Mode {
	AxisX = 0x0,
	AxisY = 0x1,
	Dot = 0x2,
	Invalid = 0x7fffffff,
};
enum ESamusUsingGrapplePullPointStatePullStage {
	None = 0x0,
	ControlledPull = 0x1,
	UncontrolledPull = 0x2,
	FinalPull = 0x3,
	Invalid = 0x7fffffff,
};
enum CSamusMagnetGloveMovementState::ESurfaceType {
	WALL = 0x0,
	CEILING = 0x1,
	CEILING_45 = 0x2,
	Invalid = 0x7fffffff,
};
enum CSideEnemyMovement::EDir {
	left = 0x0,
	right = 0x1,
	Invalid = 0x7fffffff,
};
enum ENavMeshItemType {
	Static = 0x0,
	Dynamic = 0x1,
	Destructible = 0x2,
	Invalid = 0x7fffffff,
};
enum CNavMeshItemStage::ESide {
	None = 0x0,
	Left = 0x1,
	Right = 0x2,
	Invalid = 0x7fffffff,
};
enum ERotationDirection {
	RIGHT = 0x0,
	LEFT = 0x1,
	Invalid = 0x7fffffff,
};
enum CSamusMovement::EUpdateCollisionsPhaseOrder {
	SinglePhaseVerticalHorizontal = 0x0,
	TwoPhasesVerticalThenHorizontal = 0x1,
	Invalid = 0x7fffffff,
};
enum ESwifterSpawnGroupDirection {
	Left = 0x0,
	Right = 0x1,
	Invalid = 0x7fffffff,
};
enum ESwifterSpawnGroupSpawnMode {
	Water = 0x0,
	Surface = 0x1,
	Invalid = 0x7fffffff,
};
enum EAutsharpSpawnPointDir {
	Left = 0x0,
	Right = 0x1,
	Both = 0x2,
	Invalid = 0x7fffffff,
};
enum EAutsniperSpawnPointDir {
	Clockwise = 0x0,
	Counterclockwise = 0x1,
	Invalid = 0x7fffffff,
};
enum ECaterzillaSpawnPointDir {
	Front = 0x0,
	Side = 0x1,
	Invalid = 0x7fffffff,
};
enum ECaterzillaSpawnPointOrder {
	First = 0x0,
	Second = 0x1,
	InFrustrum = 0x2,
	Invalid = 0x7fffffff,
};
enum ESlidleOutSpawnPointDir {
	ByDot = 0x0,
	Front = 0x1,
	Side = 0x2,
	Invalid = 0x7fffffff,
};
enum EThermalFreezeRoomType {
	FREEZE = 0x0,
	COOL_DOWN = 0x1,
	Invalid = 0x7fffffff,
};
enum EThermalHeatRoomType {
	HEAT = 0x0,
	COOL_DOWN = 0x1,
	Invalid = 0x7fffffff,
};
enum CTimelineComponent::ENextPolicy {
	NEXT = 0x0,
	RANDOM = 0x1,
	RANDOM_DELAY = 0x2,
	Invalid = 0x7fffffff,
};
enum eDoorStateLogicAction {
	Open = 0x0,
	Close = 0x1,
	Lock = 0x2,
	Unlock = 0x3,
	Invalid = 0x7fffffff,
};
enum CSaveGameLogicAction::EDestination {
	savedata = 0x0,
	checkpoint = 0x1,
	Invalid = 0x7fffffff,
};
enum CEmmyStateOverrideLogicAction::EMode {
	ShowVisualCone = 0x0,
	HideVisualCone = 0x1,
	Invalid = 0x7fffffff,
};
enum navmesh::ENavMeshGroup {
	DEFAULT = 0x0,
	EMMY = 0x1,
	EMMY_PROTO = 0x2,
	EMMY_CAVE = 0x3,
	EMMY_MAGMA = 0x4,
	Invalid = 0x7fffffff,
};
enum CForbiddenEdgesLogicAction::EState {
	Allowed = 0x0,
	Forbidden = 0x1,
	Invalid = 0x7fffffff,
};
enum CPerceptionModifierLogicAction::EMode {
	Add = 0x0,
	Remove = 0x1,
	Invalid = 0x7fffffff,
};
enum CTriggerComponent::EEvent {
	OnEnter = 0x0,
	OnExit = 0x1,
	OnAllExit = 0x2,
	OnStay = 0x3,
	OnEnable = 0x4,
	OnDisable = 0x5,
	TE_COUNT = 0x6,
	Invalid = 0x7fffffff,
};
enum CElectricGeneratorComponent::EBlackOutZone {
	Zone1 = 0x0,
	Zone2 = 0x1,
	Unknown = 0x2,
	Invalid = 0x7fffffff,
};
enum EElevatorDirection {
	UP = 0x0,
	DOWN = 0x1,
	Invalid = 0x7fffffff,
};
enum ETeleporterColorSphere {
	BLUE = 0x0,
	DARKBLUE = 0x1,
	GREEN = 0x2,
	ORANGE = 0x3,
	PINK = 0x4,
	PURPLE = 0x5,
	RED = 0x6,
	YELLOW = 0x7,
	Invalid = 0x7fffffff,
};
enum CThermalDeviceComponent::EPipeGroup {
	Group0 = 0x0,
	Group1 = 0x1,
	Group2 = 0x2,
	Group3 = 0x3,
	Group4 = 0x4,
	Group5 = 0x5,
	Group6 = 0x6,
	Group7 = 0x7,
	Invalid = 0x7fffffff,
};
enum ETrainDirection {
	LEFT = 0x0,
	RIGHT = 0x1,
	Invalid = 0x7fffffff,
};
enum CLockOnMissileMovement::SSubState {
	None = 0x0,
	Pooled = 0x1,
	Traking = 0x2,
	Invalid = 0x7fffffff,
};
enum CCharClassProjectileMovement::EProjectileMeleeHitReaction {
	IMPACT = 0x0,
	IMPACT_ATTACKER = 0x1,
	NONE = 0x2,
	Invalid = 0x7fffffff,
};
enum gameeditor::EPersistenceTarget {
	Logic = 0x0,
	Logic_Layer_RAL = 0x1,
	Logic_Sublayer_RASL = 0x2,
	Logic_Folders_RLEI = 0x3,
	Sublayer_Folders_RASLEI = 0x4,
	Environment_Data = 0x5,
	Subareas = 0x6,
	Editor = 0x7,
	Audio_Presets = 0x8,
	Collision_Material_Data = 0x9,
	Music_Presets_Data = 0xa,
	Invalid = 0x7fffffff,
};
enum EPickingMode {
	INVALID = 0x0,
	ENTITIES_PICKING = 0x1,
	SOUNDS_PICKING = 0x2,
	LIGHTS_PICKING = 0x3,
	PATH_PICKING = 0x4,
	WORLDGRAPH_PICKING = 0x5,
	SUBAREA_PICKING = 0x6,
};
enum GUI::CGlobalMapComposition::SState {
	None = 0x0,
	NORMAL = 0x1,
	TRANSPORT_CONNECTION = 0x2,
	TELEPORTER_TRAVELING = 0x3,
	TELEPORTER_NET = 0x4,
	AREA_TRAVEL = 0x5,
	NEWAREA_PRESENTATION = 0x6,
	Invalid = 0x7fffffff,
};
enum GUI::CMapMenuController::SState {
	None = 0x0,
	AreaMap = 0x1,
	GlobalMap = 0x2,
	Markers = 0x3,
	Transition = 0x4,
	Invalid = 0x7fffffff,
};
enum EActionProps {
	DCRootControlled = 0x0,
	DCRootRotationControlled = 0x1,
	DontBlend = 0x2,
	ForceModelUpdate = 0x3,
	IgnoreCullState = 0x4,
	HasNextAction = 0x5,
	HasEndPose = 0x6,
	Invalid = 0x7fffffff,
};
enum EActionPlayMode {
	TIME = 0x0,
	MANUAL = 0x1,
	Invalid = 0x7fffffff,
};
enum EOnActionEnd {
	HOLD = 0x0,
	LOOP = 0x1,
	PLAY_ACTION = 0x2,
	DEFAULT_LOOP = 0x3,
	Invalid = 0x7fffffff,
};
enum EActionSegmentType {
	Animation = 0x0,
	BlendSpace = 0x1,
	Wait = 0x2,
	Invalid = 0x7fffffff,
};
enum EActionInsertFlags {
	IGNORE_PRIORITY = 0x0,
	FORCE = 0x1,
	LOCAL_TRANSFORM = 0x2,
	CLEAR_ROOT_MOTION = 0x3,
	CLEAR_ROOT_MOTION_IF_NO_ADVANCE = 0x4,
	ACTIONSET_UPDATED = 0x5,
	REPLACE_LOOPED = 0x6,
	UPDATE_MODEL = 0x7,
	USE_LAST_REMAINING_TIME = 0x8,
	NEXT_ACTION = 0x9,
	LAUNCH_EVENTS_ON_SYNC = 0xa,
	RESET_STORED_ENTITY_TRANSFORM = 0xb,
	RESET_STORED_ENTITY_TRANSFORM_TRANSLATION = 0xc,
	START_EVENTS_ON_TICK = 0xd,
	LAUNCH_NON_DISCARDABLES = 0xe,
	NO_SET_SAME_ACTION_WITH_DIFFERENT_PREFIX = 0xf,
};
enum EShieldAction {
	Enable = 0x0,
	Disable = 0x1,
	Invalid = 0x7fffffff,
};
enum EWings {
	low = 0x0,
	high = 0x1,
	Invalid = 0x7fffffff,
};
enum game::logic::collision::EColMat {
	DEFAULT = 0x0,
	SCENARIO_GENERIC = 0x1,
	FLESH_GENERIC = 0x2,
	DAMAGE_BLOCKED = 0x3,
	METAL = 0x4,
	ENERGY = 0x5,
	DIRT = 0x6,
	ROCK = 0x7,
	ICE = 0x8,
	UNDER_WATER = 0x9,
	UNDER_WATER_SP = 0xa,
	MID_WATER = 0xb,
	MID_WATER_SP = 0xc,
	PUDDLE = 0xd,
	OIL = 0xe,
	END_WORLD = 0xf,
	Invalid = 0xffffffff,
};
enum game::curves::EProcessorType {
	Base = 0x0,
	PostProcess_DOF = 0x1,
	Variables = 0x2,
	SceneParam = 0x3,
	MaterialProperty = 0x4,
	MaterialColor = 0x5,
	FxMaterialColor = 0x6,
	FxMaterialProperty = 0x7,
	SceneParamDirtMaskMult = 0x8,
	SceneParamColorTint = 0x9,
	PostProcess_BloomFactor = 0xa,
	PostProcess_SelfIlumFactor = 0xb,
	PostProcess_MotionBlur = 0xc,
	LightIntensity = 0xd,
	PostProcess_AnamorphicBloomFactor = 0xe,
	AI = 0xf,
	Invalid = 0x7fffffff,
};
enum cutscene::ETakePlayMode {
	Once = 0x0,
	Loop = 0x1,
	Wait = 0x2,
	Invalid = 0x7fffffff,
};
enum cutscene::EDevelopmentState {
	Internal = 0x0,
	PlaceHolder = 0x1,
	WorkInProgress = 0x2,
	Completed = 0x3,
	ShowPlaceholder = 0x4,
	Invalid = 0x7fffffff,
};
enum EInFrustumMode {
	Position = 0x0,
	AnyDimension = 0x1,
	AllDimensions = 0x2,
	HalfDimensions = 0x3,
	VerticalDimension = 0x4,
	HorizontalDimension = 0x5,
	Invalid = 0x7fffffff,
};
enum EBreakableTileType {
	UNDEFINED = 0x0,
	POWERBEAM = 0x1,
	BOMB = 0x2,
	MISSILE = 0x3,
	SUPERMISSILE = 0x4,
	POWERBOMB = 0x5,
	SCREWATTACK = 0x6,
	WEIGHT = 0x7,
	BABYHATCHLING = 0x8,
	SPEEDBOOST = 0x9,
	Invalid = 0x7fffffff,
};
enum CCharClassSetCameraNearEvent::EDir {
	Any = 0x0,
	Left = 0x1,
	Right = 0x2,
	Invalid = 0x7fffffff,
};
enum CCharClassAnalogAimTrack::EAbortAnalogAimInput {
	None = 0x0,
	Back = 0x1,
	Any = 0x2,
	Invalid = 0x7fffffff,
};
enum CCharClassToStateTrack::EMaintainFrameMode {
	Pct = 0x0,
	Frame = 0x1,
	Invalid = 0x7fffffff,
};
enum EFXType {
	FXTYPE_PARTICLESYSTEM = 0x0,
	FXTYPE_RAGDOLL = 0x1,
	FXTYPE_LIGHT = 0x2,
	FXTYPE_MODEL = 0x3,
	FXTYPE_CUSTOMMATERIAL = 0x4,
	FXTYPE_LIGHTNING = 0x5,
	FXTYPE_CURVEMODELS = 0x6,
	FXTYPE_CURVEPARTICLES = 0x7,
	FXTYPE_TRAIL = 0x8,
};
enum ELinkType {
	FXLINK_POSITION_FIXED = 0x0,
	FXLINK_POSITION_ENTITY = 0x1,
	FXLINK_POSITION_MODEL = 0x2,
	FXLINK_POSITION_MODEL_NODE = 0x3,
	FXLINK_ATTACH_ENTITY = 0x4,
	FXLINK_ATTACH_MODEL = 0x5,
	FXLINK_ATTACH_MODEL_NODE = 0x6,
	FXLINK_ATTACH_POSITION_ENTITY = 0x7,
	FXLINK_ATTACH_POSITION_MODEL_NODE = 0x8,
	FXLINK_ATTACH_POSITION_MODEL_NODE_LOCAL = 0x9,
	FXLINK_POSITION_LAST_DAMAGE_DONE_HIT = 0xa,
	FXLINK_POSITION_AI_CUSTOM = 0xb,
	FXLINK_MOVEMENT_CUSTOM = 0xc,
	FXLINK_POSITION_CAMERA = 0xd,
	FXLINK_ATTACH_CAMERA = 0xe,
	FXLINK_ATTACH_POSITION_CAMERA = 0xf,
};
enum ELightType {
	Directional = 0x0,
	Omni = 0x1,
	Spot = 0x2,
	Seg = 0x3,
	Invalid = 0xffffffff,
};
enum ELightAttachment {
	PosRot3D = 0x0,
	Pos3D = 0x1,
	Rot3D = 0x2,
	PosRot2D = 0x3,
	Pos2D = 0x4,
	Rot2D = 0x5,
	Invalid = 0xffffffff,
};
enum IPath::EType {
	None = 0x0,
	Once = 0x1,
	PingPong = 0x2,
	Loop = 0x3,
	Invalid = 0x7fffffff,
};
enum SLinkType::ELinkType {
	ACTOR = 0x0,
	ENTITY = 0x1,
	SPAWN_GROUP_ACTOR = 0x2,
	SPAWN_POINT_ACTOR = 0x3,
	LOGIC_SHAPE_ACTOR = 0x4,
	CUTSCENE_ACTOR = 0x5,
	LANDMARK = 0x6,
	AI_SMART_OBJECT = 0x7,
	CAMERA_RAIL = 0x8,
	STEAMJET = 0x9,
	ACTIVATABLE = 0xa,
	MORPH_BALL_LAUNCHER_EXIT = 0xb,
	DEMOLITIONBLOCK_LIFE_ACTOR = 0xc,
	ANY = 0xd,
	INVALID = 0xe,
};
enum CAIManager::EAIGroup {
	Emmy = 0x0,
	Invalid = 0x7fffffff,
};
enum CAIManager::EBumpMode {
	EnemyPos2Hit = 0x0,
	SamusRay2Enemy = 0x1,
	SamusShape2Enemy = 0x2,
	SamusShape2EnemyAvg = 0x3,
	Invalid = 0x7fffffff,
};
enum EAmiibo {
	CazadoraSamus = 0x0,
	CazadoraEmmy = 0x1,
	SmashBrosSamus = 0x2,
	SmashBrosDarkSamus = 0x3,
	SmashBrosZeroSamus = 0x4,
	SmashBrosRidley = 0x5,
	SamusReturnsSamus = 0x6,
	SamusReturnsMetroid = 0x7,
	Invalid = 0x7fffffff,
};
enum CExplosionGfx::ETransitionOperationMode {
	None = 0x0,
	RGBA = 0x1,
	RGB = 0x2,
	A = 0x3,
	End = 0x4,
	Invalid = 0x7fffffff,
};
enum SLoadScenarioRequest::EMode {
	Game = 0x0,
	Debug = 0x1,
	Editor = 0x2,
};
enum EEntryType {
	ML_INFO_ENTRY = 0x0,
	ML_DIALOGUE_ENTRY = 0x1,
	ML_TUTO_ENTRY = 0x2,
	Invalid = 0x7fffffff,
};
enum ELoadingScreen {
	E_LOADINGSCREEN_GUI_2D = 0x0,
	E_LOADINGSCREEN_VIDEO = 0x1,
	E_LOADINGSCREEN_ELEVATOR_UP = 0x2,
	E_LOADINGSCREEN_ELEVATOR_DOWN = 0x3,
	E_LOADINGSCREEN_MAIN_ELEVATOR_UP = 0x4,
	E_LOADINGSCREEN_MAIN_ELEVATOR_DOWN = 0x5,
	E_LOADINGSCREEN_TELEPORTER = 0x6,
	E_LOADINGSCREEN_TRAIN_LEFT = 0x7,
	E_LOADINGSCREEN_TRAIN_LEFT_AQUA = 0x8,
	E_LOADINGSCREEN_TRAIN_RIGHT = 0x9,
	E_LOADINGSCREEN_TRAIN_RIGHT_AQUA = 0xa,
	Invalid = 0x7fffffff,
};
enum ETooltipCond {
	Bomb = 0x0,
	CentralUnit = 0x1,
	ChargeBeam = 0x2,
	ChozoWarrior = 0x3,
	DiscoveredEmmyCave = 0x4,
	DiscoveredEmmyZone = 0x5,
	DiscoveredEmmyDoors = 0x6,
	GhostDash = 0x7,
	HiddenItemTutorial = 0x8,
	IceMissile = 0x9,
	LineBomb = 0xa,
	Magnet = 0xb,
	MapRoomUsed = 0xc,
	MorphBall = 0xd,
	OpticCamouflage = 0xe,
	SpaceJump = 0xf,
	SpeedBooster = 0x10,
	TeleportUsed = 0x11,
	TeleportWorldUnlocked = 0x12,
	XParasite = 0x13,
	Count = 0x14,
};
enum ETooltipType {
	Exploration = 0x0,
	EmmyPhase1 = 0x1,
	EmmyPhase2 = 0x2,
	BossBattle = 0x3,
	Invalid = 0x7fffffff,
};
enum EMinimapFowType {
	CAMERA = 0x0,
	CIRCLE = 0x1,
	CLAMP_CIRCLE = 0x2,
	Invalid = 0x7fffffff,
};
enum EMarkerType {
	MARKER_A = 0x0,
	MARKER_B = 0x1,
	MARKER_C = 0x2,
	MARKER_D = 0x3,
	MARKER_E = 0x4,
	MARKER_F = 0x5,
	MARKER_G = 0x6,
	MARKER_H = 0x7,
	MARKER_I = 0x8,
	Invalid = 0x7fffffff,
};
enum EMapTutoType {
	HINT_ZONE = 0x0,
	EMMY_ZONE = 0x1,
	TELEPORTER_NET = 0x2,
	Invalid = 0x7fffffff,
};
enum minimap::EIconAnimID {
	SHOW = 0x0,
	SELECT = 0x1,
	SAMUS_GLOW = 0x2,
	ITEM_SPHERE = 0x3,
	ITEM_CUBE = 0x4,
	ITEM_GLOW = 0x5,
	TELEPORTER_GLOW = 0x6,
	TRANSLUCID = 0x7,
	INVISIBLE = 0x8,
	EMMY_SHOW = 0x9,
	EMMY_GLOW = 0xa,
	HYPERBEAM_GLOW = 0xb,
	Invalid = 0x7fffffff,
};
enum EWeaponType {
	PowerBeam = 0x0,
	WideBeam = 0x1,
	PlasmaBeam = 0x2,
	WaveBeam = 0x3,
	SpecialEnergyBeam = 0x4,
	HyperBeam = 0x5,
	GrappleBeam = 0x6,
	Missile = 0x7,
	SuperMissile = 0x8,
	IceMissile = 0x9,
	LockOnMissile = 0xa,
	SpecialEnergyMissile = 0xb,
	Bomb = 0xc,
	LineBomb = 0xd,
	PowerBomb = 0xe,
	Invalid = 0xffffffff,
};
enum EWeaponState {
	Charging = 0x0,
	Charged = 0x1,
	ChargedLoop = 0x2,
	Fire = 0x3,
	FireCharged = 0x4,
	Impact = 0x5,
	ImpactCharged = 0x6,
	ImpactDiffusion = 0x7,
	Invalid = 0xffffffff,
};
enum CSubAreaManager::ETransitionType {
	None = 0x0,
	Camera = 0x1,
	Fade = 0x2,
	FakeFade = 0x3,
	Invalid = 0x7fffffff,
};
enum CPrologueMode::SState {
	None = 0x0,
	State0 = 0x1,
	State1 = 0x2,
	State2 = 0x3,
	Invalid = 0x7fffffff,
};
enum ESubAreaItem {
	ScenarioCollider = 0x0,
	LightGroup = 0x1,
	SoundGroup = 0x2,
	SceneGroup = 0x3,
	LogicEntityGroup = 0x4,
	BreakableTileGroupGroup = 0x5,
	EnvironmentPreset = 0x6,
	EnvironmentSoundPreset = 0x7,
	EnvironmentMusicPreset = 0x8,
	Invalid = 0xffffffff,
};
enum SMusicPlayFlag {
	None = 0x0,
	FORCE = 0x1,
	CLEAR_STACKS = 0x2,
	CLEAR_TRACKS = 0x3,
	POP_CURRENT = 0x4,
	PAUSE_CURRENT = 0x5,
	IGNORE_PAUSE = 0x6,
	SKIP_TO_LOOP = 0x7,
	PAUSE_ON_POP = 0x8,
	Invalid = 0x7fffffff,
};
enum SMusicStopFlag {
	None = 0x0,
	PLAY_NEXT = 0x1,
	CLEAR_STACK = 0x2,
	REMOVE_MUSIC_FROM_STACK = 0x3,
	Invalid = 0x7fffffff,
};
enum SMusicPriority {
	NONE = 0x0,
	LOWEST = 0x1,
	ENVIRONMENT = 0x2,
	TRIGGER = 0x3,
	NORMAL = 0x4,
	EVENT = 0x5,
	STATE = 0x6,
	SCRIPT = 0x7,
	LOADING = 0x8,
	Invalid = 0x7fffffff,
};
enum SMusicManagerState {
	None = 0x0,
	NO_MUSIC = 0x1,
	MAINMENU = 0x2,
	INGAME = 0x3,
	INGAME_MENU = 0x4,
	MAP_MENU = 0x5,
	CREDITS = 0x6,
	PROLOGUE = 0x7,
	Invalid = 0x7fffffff,
};
enum EMusicFadeType {
	None = 0x0,
	DEFAULT = 0x1,
	CROSS_FADE = 0x2,
	Invalid = 0x7fffffff,
};
enum EMusicManagerInGameState {
	None = 0x0,
	RELAX = 0x1,
	PATROL = 0x2,
	SEARCH = 0x3,
	PATROL2 = 0x4,
	SEARCH2 = 0x5,
	DEATH = 0x6,
	COMBAT = 0x7,
	Invalid = 0x7fffffff,
};
enum ELOSMode {
	None = 0x0,
	Position = 0x1,
	FrontAndBack = 0x2,
	Parabolic = 0x3,
	Invalid = 0x7fffffff,
};
enum ELOSCheckLevel {
	None = 0x0,
	CenterPos = 0x1,
	TopPos = 0x2,
	DownPos = 0x3,
	CenterTopPos = 0x4,
	CenterDownPos = 0x5,
	TopDownPos = 0x6,
	CenterTopDownPos = 0x7,
	Invalid = 0x7fffffff,
};
enum CAIComponent::PathLimitSelectionMode {
	FarthestFromTarget = 0x0,
	FarthestFromEntity = 0x1,
	InCurrentDir = 0x2,
	InOppositeDir2Target = 0x3,
	InOppositePathDir2Target = 0x4,
	InDir2Target = 0x5,
	InPathDir2Target = 0x6,
	Invalid = 0x7fffffff,
};
enum CSpawnPointComponent::EDynamicSpawnPositionMode {
	ClosestToPlayer = 0x0,
	FarthestToPlayer = 0x1,
	Random = 0x2,
	Invalid = 0x7fffffff,
};
enum CSpawnPointComponent::EXCellSpawnPositionMode {
	FarthestToSpawnPoint = 0x0,
	ClosestToSpawnPoint = 0x1,
	Invalid = 0x7fffffff,
};
enum CGrabComponent::ELinkMode {
	None = 0x0,
	RootToDC_Grab = 0x1,
	FeetToRoot = 0x2,
	Invalid = 0x7fffffff,
};
enum CInterpolationComponent::EInterpDirection {
	INDIR_Left = 0x0,
	INDIR_Right = 0x1,
	INDIR_Any = 0x2,
	Invalid = 0x7fffffff,
};
enum CInterpolationComponent::EInterpolationType {
	ACCUMULATIVE = 0x0,
	LINEAR = 0x1,
	INSTANT = 0x2,
	EASY_IN_EASY_OUT = 0x3,
	Invalid = 0x7fffffff,
};
enum GUI::CButton::TextAlign {
	Align_Centered = 0x0,
	Align_Left = 0x1,
	Align_Right = 0x2,
	Invalid = 0x7fffffff,
};
enum GUI::CHUD::EForceVisibilityState {
	DONT_FORCE = 0x0,
	FORCE_VISIBLE_WITH_FADE = 0x1,
	FORCE_INVISIBLE_WITH_FADE = 0x2,
	FORCE_VISIBLE_NO_FADE = 0x3,
	FORCE_INVISIBLE_NO_FADE = 0x4,
}