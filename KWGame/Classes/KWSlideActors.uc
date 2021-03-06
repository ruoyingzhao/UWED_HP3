//================================================================================
// KWSlideActors.
//================================================================================

class KWSlideActors extends Keypoint;

// Collision flags. 
var(Collision) enum ECollideType
{
	CT_Cylinder,				// Default: World-aligned (vertical) cylinder, using CollisionRadius/Height, CollisionWidth as vertical offset.
	CT_Box,						// Oriented centered box, using CollisionRadius/Width/Height.

} CollideType;

var(Collision) const float CollisionWidth;		// Y of collision box.
var(Collision) const float CollisionHeight;		// Half-height cyllinder.

defaultproperties
{
     CollisionWidth=150.000000
     CollisionHeight=120.000000
     bStatic=False
     CollisionRadius=15.000000
     bCollideActors=True
     bDirectional=True
}
