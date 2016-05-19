//=============================================================================
// MatSubAction: Base class for Matinee sub actions.
//
// A Matinee action can have any number of sub actions.  These sub actions
// are executed while the main action is running.
//=============================================================================

#exec Texture Import File=Textures\SubActionFOV.bmp Name=SubActionFOV Mips=Off
#exec Texture Import File=Textures\SubActionTrigger.bmp Name=SubActionTrigger Mips=Off
#exec Texture Import File=Textures\SubActionOrientation.bmp Name=SubActionOrientation Mips=Off
#exec Texture Import File=Textures\SubActionFade.bmp Name=SubActionFade Mips=Off
#exec Texture Import File=Textures\SubActionGameSpeed.bmp Name=SubActionGameSpeed Mips=Off
#exec Texture Import File=Textures\SubActionSceneSpeed.bmp Name=SubActionSceneSpeed Mips=Off
#exec Texture Import File=Textures\SubActionCameraShake.bmp Name=SubActionCameraShake Mips=Off

class MatSubAction extends MatObject
	abstract
	native
	editinlinenew;

enum ESAStatus
{
	SASTATUS_Waiting,	// Waiting to execute
	SASTATUS_Running,	// Is currently executing
	SASTATUS_Ending,	// Is one tick away from expiring
	SASTATUS_Expired,	// Has executed and finished (ignore for rest of scene)
};

var(Time)		float		Delay;		// Seconds before it actually executes
var(Time)		float		Duration;	// How many seconds it should take to complete

var				texture		Icon;		// The icon to use in the matinee UI
var				ESAStatus	Status;		// The status of this subaction
var	localized	string		Desc;		// Desc used by the editor and engine stats

var				transient float		PctStarting;
var				transient float		PctEnding;
var				transient float		PctDuration;

defaultproperties
{
     Desc="N/A"
}
