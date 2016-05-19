//=============================================================================
// Object: The base class all objects.
// This is a built-in Unreal class and it shouldn't be modified.
//=============================================================================
class Object
	noexport;

//=============================================================================
// UObject variables.

// Internal variables.
var native private const int ObjectInternal[6];
var native const object Outer;
var native const int ObjectFlags;
var(Object) native const editconst name Name;
var native const editconst class Class;

//=============================================================================
// Unreal base structures.

// Object flags.
const RF_Transactional	= 0x00000001; // Supports editor undo/redo.
const RF_Public         = 0x00000004; // Can be referenced by external package files.
const RF_Transient      = 0x00004000; // Can't be saved or loaded.
const RF_NotForClient	= 0x00100000; // Don't load for game client.
const RF_NotForServer	= 0x00200000; // Don't load for game server.
const RF_NotForEdit		= 0x00400000; // Don't load for editor.

// A globally unique identifier.
struct Guid
{
	var int A, B, C, D;
};

// A point or direction vector in 3d space.
struct Vector
{
	var() config float X, Y, Z;
};

// A plane definition in 3d space.
struct Plane extends Vector
{
	var() config float W;
};

// An orthogonal rotation in 3d space.
struct Rotator
{
	var() config int Pitch, Yaw, Roll;
};

// An arbitrary coordinate system in 3d space.
struct Coords
{
	var() config vector Origin, XAxis, YAxis, ZAxis;
};

// Quaternion
struct Quat
{
	var() config float X, Y, Z, W;
};

// Used to generate random values between Min and Max
struct Range
{
	var() config float Min;
	var() config float Max;
};

// Vector of Ranges
struct RangeVector
{
	var() config range X;
	var() config range Y;
	var() config range Z;
};

// A scale and sheering.
struct Scale
{
	var() config vector Scale;
	var() config float SheerRate;
	var() config enum ESheerAxis
	{
		SHEER_None,
		SHEER_XY,
		SHEER_XZ,
		SHEER_YX,
		SHEER_YZ,
		SHEER_ZX,
		SHEER_ZY,
	} SheerAxis;
};

// Camera orientations for Matinee
enum ECamOrientation
{
	CAMORIENT_None,
	CAMORIENT_LookAtActor,
	CAMORIENT_FacePath,
	CAMORIENT_Interpolate,
	CAMORIENT_Dolly,
};

// Generic axis enum.
enum EAxis
{
	AXIS_X,
	AXIS_Y,
	AXIS_Z
};

// A color.
struct Color
{
	var() config byte B, G, R, A;
};

// A bounding box.
struct Box
{
	var vector Min, Max;
	var byte IsValid;
};

// A bounding box sphere together.
struct BoundingVolume extends Box
{
	var plane Sphere;
};

// a 4x4 matrix
struct Matrix
{
	var() Plane XPlane;
	var() Plane YPlane;
	var() Plane ZPlane;
	var() Plane WPlane;
};

// A interpolated function
struct InterpCurvePoint
{
	var() float InVal;
	var() float OutVal;
};

struct InterpCurve
{
	var() array<InterpCurvePoint>	Points;
};

struct CompressedPosition
{
	var vector Location;
	var rotator Rotation;
	var vector Velocity;
};

//kw specific begin
enum enumMoveType
{
	MOVE_TYPE_LINEAR,
	MOVE_SNAP,
	MOVE_TYPE_EASE_FROM,
	MOVE_TYPE_EASE_TO,
	MOVE_TYPE_EASE_FROM_AND_TO,
};

// Material Types, use for sounds and more
enum EMaterialType
{
	MTYPE_None,
	MTYPE_Stone,
	MTYPE_Rug,
	MTYPE_Wood,
	MTYPE_Cave,
	MTYPE_Cloud,
	MTYPE_Wet,
	MTYPE_Grass,
	MTYPE_Metal,
	MTYPE_Dirt,
	MTYPE_Hay,
	MTYPE_Leaf,
	MTYPE_Snow,
	MTYPE_Sand,
	MTYPE_QuickSand,
	MTYPE_Mud,
	MTYPE_WetCanJump,
};

// rjm -- moved up from actor to use in objects (anim notifys specifically)
// Sound slots for actors.
enum ESoundSlot
{
	SLOT_None,
	SLOT_Misc,
	SLOT_Pain,
	SLOT_Interact,
	SLOT_Ambient,
	SLOT_Talk,
	SLOT_Interface,
};

// See beginning of Actor.uc for descriptions of AnimGroup and SoundGroup
struct AnimGroup
{
	var() name	anim;
	var() float	rate;
	var() float tweenTime;
	var() bool  bLoop;
};

struct SoundGroup
{
	var() sound Sound;
	var() string LocalizedSound;
	var() float volume;
	var() float pitch;
	var() float Radius;
	var() Range PitchRange;
	var() ESoundSlot slot;
};

//kw specific end

//=============================================================================
// Constants.

const MaxInt = 0x7fffffff;
const Pi     = 3.1415926535897932;

//=============================================================================
// Basic native operators and functions.

// Bool operators.
native(129) static final preoperator  bool  !  ( bool A );
native(242) static final operator(24) bool  == ( bool A, bool B );
native(243) static final operator(26) bool  != ( bool A, bool B );
native(130) static final operator(30) bool  && ( bool A, skip bool B );
native(131) static final operator(30) bool  ^^ ( bool A, bool B );
native(132) static final operator(32) bool  || ( bool A, skip bool B );

// Byte operators.
native(133) static final operator(34) byte *= ( out byte A, byte B );
native(134) static final operator(34) byte /= ( out byte A, byte B );
native(135) static final operator(34) byte += ( out byte A, byte B );
native(136) static final operator(34) byte -= ( out byte A, byte B );
native(137) static final preoperator  byte ++ ( out byte A );
native(138) static final preoperator  byte -- ( out byte A );
native(139) static final postoperator byte ++ ( out byte A );
native(140) static final postoperator byte -- ( out byte A );

// Integer operators.
native(141) static final preoperator  int  ~  ( int A );
native(143) static final preoperator  int  -  ( int A );
native(144) static final operator(16) int  *  ( int A, int B );
native(145) static final operator(16) int  /  ( int A, int B );
native(146) static final operator(20) int  +  ( int A, int B );
native(147) static final operator(20) int  -  ( int A, int B );
native(148) static final operator(22) int  << ( int A, int B );
native(149) static final operator(22) int  >> ( int A, int B );
native(196) static final operator(22) int  >>>( int A, int B );
native(150) static final operator(24) bool <  ( int A, int B );
native(151) static final operator(24) bool >  ( int A, int B );
native(152) static final operator(24) bool <= ( int A, int B );
native(153) static final operator(24) bool >= ( int A, int B );
native(154) static final operator(24) bool == ( int A, int B );
native(155) static final operator(26) bool != ( int A, int B );
native(156) static final operator(28) int  &  ( int A, int B );
native(157) static final operator(28) int  ^  ( int A, int B );
native(158) static final operator(28) int  |  ( int A, int B );
native(159) static final operator(34) int  *= ( out int A, float B );
native(160) static final operator(34) int  /= ( out int A, float B );
native(161) static final operator(34) int  += ( out int A, int B );
native(162) static final operator(34) int  -= ( out int A, int B );
native(163) static final preoperator  int  ++ ( out int A );
native(164) static final preoperator  int  -- ( out int A );
native(165) static final postoperator int  ++ ( out int A );
native(166) static final postoperator int  -- ( out int A );

// Integer functions.
native(167) static final Function     int  Rand  ( int Max );
native(249) static final function     int  Min   ( int A, int B );
native(250) static final function     int  Max   ( int A, int B );
native(251) static final function     int  Clamp ( int V, int A, int B );

// Float operators.
native(169) static final preoperator  float -  ( float A );
native(170) static final operator(12) float ** ( float A, float B );
native(171) static final operator(16) float *  ( float A, float B );
native(172) static final operator(16) float /  ( float A, float B );
native(173) static final operator(18) float %  ( float A, float B );
native(174) static final operator(20) float +  ( float A, float B );
native(175) static final operator(20) float -  ( float A, float B );
native(176) static final operator(24) bool  <  ( float A, float B );
native(177) static final operator(24) bool  >  ( float A, float B );
native(178) static final operator(24) bool  <= ( float A, float B );
native(179) static final operator(24) bool  >= ( float A, float B );
native(180) static final operator(24) bool  == ( float A, float B );
native(210) static final operator(24) bool  ~= ( float A, float B );
native(181) static final operator(26) bool  != ( float A, float B );
native(182) static final operator(34) float *= ( out float A, float B );
native(183) static final operator(34) float /= ( out float A, float B );
native(184) static final operator(34) float += ( out float A, float B );
native(185) static final operator(34) float -= ( out float A, float B );

// Float functions.
native(186) static final function     float Abs   ( float A );
native(187) static final function     float Sin   ( float A );
native      static final function	  float Asin  ( float A );
native(188) static final function     float Cos   ( float A );
native      static final function     float Acos  ( float A );
native(189) static final function     float Tan   ( float A );
native(190) static final function     float Atan  ( float A, float B ); 
native(191) static final function     float Exp   ( float A );
native(192) static final function     float Loge  ( float A );
native(193) static final function     float Sqrt  ( float A );
native(194) static final function     float Square( float A );
native(195) static final function     float FRand ();
native(244) static final function     float FMin  ( float A, float B );
native(245) static final function     float FMax  ( float A, float B );
            static final function     float AbsFloor(float a, float Floor) { if(a < 0)     return FMin(a, -Floor);     else     return FMax(a,  Floor); } //kw specific
native(246) static final function     float FClamp( float V, float A, float B );
native(247) static final function     float Lerp  ( float Alpha, float A, float B );
native(248) static final function     float Smerp ( float Alpha, float A, float B );

// Vector operators.
native(211) static final preoperator  vector -     ( vector A );
native(212) static final operator(16) vector *     ( vector A, float B );
native(213) static final operator(16) vector *     ( float A, vector B );
native(296) static final operator(16) vector *     ( vector A, vector B );
native(214) static final operator(16) vector /     ( vector A, float B );
native(215) static final operator(20) vector +     ( vector A, vector B );
native(216) static final operator(20) vector -     ( vector A, vector B );
native(275) static final operator(22) vector <<    ( vector A, rotator B );
native(276) static final operator(22) vector >>    ( vector A, rotator B );
native(217) static final operator(24) bool   ==    ( vector A, vector B );
native(218) static final operator(26) bool   !=    ( vector A, vector B );
native(219) static final operator(16) float  Dot   ( vector A, vector B );
native(220) static final operator(16) vector Cross ( vector A, vector B );
native(221) static final operator(34) vector *=    ( out vector A, float B );
native(297) static final operator(34) vector *=    ( out vector A, vector B );
native(222) static final operator(34) vector /=    ( out vector A, float B );
native(223) static final operator(34) vector +=    ( out vector A, vector B );
native(224) static final operator(34) vector -=    ( out vector A, vector B );

// Vector functions.
native(225) static final function float  VSize  ( vector A );
native(226) static final function vector Normal ( vector A );
native(227) static final function        Invert ( out vector X, out vector Y, out vector Z );
native(252) static final function vector VRand  ( );
native(300) static final function vector MirrorVectorByNormal( vector Vect, vector Normal );

// Rotator operators and functions.
native(142) static final operator(24) bool ==     ( rotator A, rotator B );
native(203) static final operator(26) bool !=     ( rotator A, rotator B );
native(287) static final operator(16) rotator *   ( rotator A, float    B );
native(288) static final operator(16) rotator *   ( float    A, rotator B );
native(289) static final operator(16) rotator /   ( rotator A, float    B );
native(290) static final operator(34) rotator *=  ( out rotator A, float B  );
native(291) static final operator(34) rotator /=  ( out rotator A, float B  );
native(316) static final operator(20) rotator +   ( rotator A, rotator B );
native(317) static final operator(20) rotator -   ( rotator A, rotator B );
native(318) static final operator(34) rotator +=  ( out rotator A, rotator B );
native(319) static final operator(34) rotator -=  ( out rotator A, rotator B );
native(229) static final function GetAxes         ( rotator A, out vector X, out vector Y, out vector Z );
native(230) static final function GetUnAxes       ( rotator A, out vector X, out vector Y, out vector Z );
native(320) static final function rotator RotRand ( optional bool bRoll );
native      static final function rotator OrthoRotation( vector X, vector Y, vector Z );
native      static final function rotator Normalize( rotator Rot );
native		static final operator(24) bool ClockwiseFrom( int A, int B );

// String operators.
native(112) static final operator(40) string $  ( coerce string A, coerce string B );
native(168) static final operator(40) string @  ( coerce string A, coerce string B );
native(115) static final operator(24) bool   <  ( string A, string B );
native(116) static final operator(24) bool   >  ( string A, string B );
native(120) static final operator(24) bool   <= ( string A, string B );
native(121) static final operator(24) bool   >= ( string A, string B );
native(122) static final operator(24) bool   == ( string A, string B );
native(123) static final operator(26) bool   != ( string A, string B );
native(124) static final operator(24) bool   ~= ( string A, string B );

// String functions.
native(125) static final function int    Len    ( coerce string S );
native(126) static final function int    InStr  ( coerce string S, coerce string t );
native(127) static final function string Mid    ( coerce string S, int i, optional int j );
native(128) static final function string Left   ( coerce string S, int i );
native(234) static final function string Right  ( coerce string S, int i );
native(235) static final function string Caps   ( coerce string S );
native(236) static final function string Chr    ( int i );
native(237) static final function int    Asc    ( string S );

// Object operators.
native(114) static final operator(24) bool == ( Object A, Object B );
native(119) static final operator(26) bool != ( Object A, Object B );

// Name operators.
native(254) static final operator(24) bool == ( name A, name B );
native(255) static final operator(26) bool != ( name A, name B );

// InterpCurve operator
native		static final function float InterpCurveEval( InterpCurve curve, float input );
native		static final function InterpCurveGetOutputRange( InterpCurve curve, out float min, out float max );
native		static final function InterpCurveGetInputDomain( InterpCurve curve, out float min, out float max );

// Quaternion functions
native		static final function Quat QuatProduct( Quat A, Quat B );
native		static final function Quat QuatInvert( Quat A );
native		static final function vector QuatRotateVector( Quat A, vector B );
native		static final function Quat QuatFindBetween( Vector A, Vector B );
native		static final function Quat QuatFromAxisAndAngle( Vector Axis, Float Angle );
native		static final function Quat QuatFromRotator( rotator A );
native		static final function rotator QuatToRotator( Quat A );

//=============================================================================
// General functions.

// Logging.
native(231) final static function Log( coerce string S, optional name Tag );
native(232) final static function Warn( coerce string S );
native static function string Localize( string SectionName, string KeyName, string PackageName );

// Goto state and label.
native(113) final function GotoState( optional name NewState, optional name Label );
native(281) final function bool IsInState( name TestState );
native(284) final function name GetStateName();

// Objects.
native(258) static final function bool ClassIsChildOf( class TestClass, class ParentClass );
native(303) final function bool IsA( name ClassName );

// Probe messages.
native(117) final function Enable( name ProbeFunc );
native(118) final function Disable( name ProbeFunc );

// Properties.
native final function string GetPropertyText( string PropName );
native final function SetPropertyText( string PropName, string PropValue );
native static final function name GetEnum( object E, int i );
native static final function object DynamicLoadObject( string ObjectName, class ObjectClass, optional bool MayFail );
native static final function object FindObject( string ObjectName, class ObjectClass );

// Configuration.
native(536) final function SaveConfig();
native static final function StaticSaveConfig();
native static final function ResetConfig();

// Return a random number within the given range.
final function float RandRange( float Min, float Max )
{
    return Min + (Max - Min) * FRand();
}

//=============================================================================
// Engine notification functions.

//
// Called immediately when entering a state, while within
// the GotoState call that caused the state change.
//
event BeginState();

//
// Called immediately before going out of the current state,
// while within the GotoState call that caused the state change.
// 
event EndState();

// kw specific begin ****************************************************************************************
static function float   VSize2d( vector v ) {   return  VSize( v * vect(1,1,0) );    }
static function vector  normal2d(vector v ) {   return normal( v * vect(1,1,0) );    }
static function vector  vector2d(vector v ) {   return v * vect(1,1,0);              }
//static function rotator rotatorMaxPitch( vector v, int mp ) { local rotator r;  r = rotator(v);   r.pitch = Clamp(r.Pitch, -mp, mp);  return r; }
//returns a rotator that's basically B - A, except each member uses RotationDir, so it's the shortest difference.
// This is unlike just subtracting the two rotators.
// Also, be aware that the params are swapped compared to the actual RotationDir function.
function rotator RotationDiff(Rotator B, Rotator A)
{
	local rotator deltaRot;

	deltaRot.Pitch = RotationDir(A.Pitch, B.Pitch);
	deltaRot.Yaw = RotationDir(A.Yaw, B.Yaw);
	deltaRot.Roll = RotationDir(A.Roll, B.Roll);

	return deltaRot;
}

// Return's the distance from A to B, as a number from -32768 to 32767
function int RotationDir(int A, int B)
{
	A = (B - A) & 65535;
	if( (A & 0x8000) != 0 )
		A = A | 0xFFFF8000;
	return A;
}

// works like vector * vector, multiplies each dimension together
static final operator(16) rotator *   ( rotator	 A, rotator B )
{
	local	rotator returnRot;

	returnRot.Yaw = A.Yaw * B.Yaw;
	returnRot.Pitch = A.Pitch * B.Pitch;
	returnRot.Roll = A.Roll * B.Roll;

	return returnRot;

}

//Clamps between c1 and c2, then scales it to "s1 to s2"   So FClampScale(10, 0, 40, 4, -4) would return 2;
//Uh, move this to object.uc some time...
function float FClampScale(float f, float c1, float c2, float s1, float s2)
{
	if( c2 >= c1 )
		return ( FClamp( f,  c1,  c2) - c1) / (c2-c1) * (s2-s1) + s1;
	else
		return (-FClamp(-f, -c1, -c2) - c1) / (c2-c1) * (s2-s1) + s1;
}

//*************************************************************************************************************************
//This function should be in object.uc
function float EaseBetween(float t)
{
	if( t <= 0 )
		return 0;
	else
	if( t < 0.5 )
		return 2.0*t*t;
	else
	if( t < 1.0 )
		return 1.0 - 2.0*(1.0-t)*(1.0-t);
	else
		return 1.0;
}

//*************************************************************************************************************************
//		   ****
//		 **	   **
//		*		 *
//	   *		  *
//	 **			   **
// **				 **
function float EaseBetweenBell(float t) //just two easebetweens stuck together...
{
	if( t == 0 )
		return 0;
	else
	if( t >= 1 )
		return 1;
	else
	if( t < 0.5 )
		return EaseBetween( 2*t );
	else
		return 1 - EaseBetween( 2*t-1 );

	//return (-cos( t*2*3.1416 ) + 1) / 2;  //this would also work
}

//*************************************************************************************************************************
//
//		 ****
//	   **	 **
//	  *		   *
//	 *			*
//	*			 *
function float EaseBetweenParabola(float t)
{
	t -= 0.5;
	return -t*t*4 + 1;
}

//*************************************************************************************************************************
// 2 is not linear at all, infinite is linear.
// if you change mm to m for the local var, ucc will export engineClasses with matrix m instead of matrix M in TexOscillator.  That is bad!  In fact, that blows!  Large heavy chunks, the size of my friggin' head...
function float FancyEaseBetween(float t, optional float HowLinear)
{
	local float x;
	//local float y;
	local float mm;  
	local float b;

	if( HowLinear <= 2 )
		return EaseBetween( t );

	x  = ( HowLinear - sqrt(HowLinear*HowLinear - 2*HowLinear) ) / ( 2*HowLinear );
	mm = 2*HowLinear*x;
	b  = -HowLinear*x*x;

	if( t <= 0 )
		return 0;
	else
	if( t < x )
		return HowLinear*t*t;
	else
	if( t < 1.0 - x )
		return mm*t + b;
	else
	if( t < 1.0 )
		return 1.0 - HowLinear*(1.0-t)*(1.0-t);
	else
		return 1.0;
}

//*************************************************************************************************************************

const EaseFromX =  0.2928932188; //<-- x,y is the exact point at which the parabola turns to a straight line and goes straight up to 1,1
const EaseFromY =  0.171573;    //2*x*x;  //These y,m,and b numbers are interesting...
const EaseFromM =  1.171573;    //(1 - y) / (1 - x);
const EaseFromB = -0.171573;    //(y - x) / (1 - x);
//const OneOverM =   0.8535533;
function float EaseFrom(float t)
{
	if( t <= 0 )
		return 0;
	else
	if( t < EaseFromX )
		return 2.0*t*t;
	else
	if( t < 1.0 )
		return EaseFromM*t + EaseFromB;
	else
		return 1.0;
}

function float EaseTo(float t)
{
	if( t <= 0 )
		return 0;
	else
	if( t < 1-EaseFromX )
		return EaseFromM*t + 0;
	else
	if( t < 1.0 )
		return 1.0 - 2.0*(1.0-t)*(1.0-t);
	else
		return 1.0;
}

function float EaseFunction(float t, enumMoveType EaseType )
{
	t = FClamp(t, 0, 1);

	switch( EaseType )
	{
		case MOVE_TYPE_EASE_FROM:
			return EaseFrom( t );
		case MOVE_TYPE_EASE_TO:
			return EaseTo( t );
		case MOVE_TYPE_EASE_FROM_AND_TO:
			return EaseBetween( t );
		case MOVE_TYPE_LINEAR:
			return t;
	}

	return t;
}

//*****************************************************************
function string StripSpaces( string s )
{
	while( left(s, 1) == " " )
		s = mid( s, 1 );
	while( right(s, 1) == " " )
		s = left(s, len(s)-1 );
	return s;
}

// kw specific end ******************************************************************************************



defaultproperties
{
}
