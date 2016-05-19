//----------------------------------------------------------------------------
//	PersistentStore
//
//	KW Specific
//
//	Engine class used to hold data that is persistent between  
//	level loads.  An instance of this obhect will be owned by the 
//	PlayerController's pawn and will thus travel.
//
//	History:
//		5/22/2003	Created	Todd Gilbertsen
//		3-16-2004	Added RJM: define persistence interface for Engine package
//----------------------------------------------------------------------------
class UPersistentStore extends Inventory
	native;


 
//----------------------------------------------------------------------------
//	
//----------------------------------------------------------------------------
function SaveInt( string VarName, int val );
//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function SaveBool( string VarName, bool val );

//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function SaveByte( string VarName, byte val );

//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function SaveFloat( string VarName, float val );

//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function SaveName( string VarName, Name val );

//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function SaveString( string VarName, String val );
//----------------------------------------------------------------------------
//	Restore functions
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function bool RestoreValue( string VarName, out string val );

//----------------------------------------------------------------------------
//	
//----------------------------------------------------------------------------
function bool RestoreInt( string VarName, out int val );

//----------------------------------------------------------------------------
//	RestoreBool()
//
//	THIS FUNCTION IS HACKED!
//
//	Since we can't have "out bool" paramaters, you need to send in an int and
//	then assign it yourself in your script code if the function returns true.
//----------------------------------------------------------------------------
function bool RestoreBool( string VarName, out int val )
{
	val = val;
	return false;
}
//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function bool RestoreByte( string VarName, out byte val )
{
	val = val;
	return false;
}

//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function bool RestoreFloat( string VarName, out float val )
{
	val = val;
	return false;
}

//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function bool RestoreName( string VarName, out name val )
{
	val = val;
	return false;
}
//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
function bool RestoreString( string VarName, out string val )
{
	val = val;
	return false;
}

//----------------------------------------------------------------------------
//	Default properties
//----------------------------------------------------------------------------

defaultproperties
{
}
