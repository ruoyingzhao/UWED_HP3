//================================================================================
// UWindowPulldownMenu.
//================================================================================

class UWindowPulldownMenu extends UWindowListControl;

var UWindowPulldownMenuItem Selected;
var UWindowList Owner;
var int ItemHeight;
var int VBorder;
var int HBorder;
var int TextBorder;
var UWindowMenuBar MyMenuBar;

function UWindowPulldownMenuItem AddMenuItem (string C, Texture G)
{
  local UWindowPulldownMenuItem i;
  return i;
}

function Created ()
{
}

function Clear ()
{
}

function DeSelect ()
{
}

function Select (UWindowPulldownMenuItem i)
{
}

function PerformSelect (UWindowPulldownMenuItem NewSelected)
{
}

function SetSelected (float X, float Y)
{
}

function ShowWindow ()
{
}

function MouseMove (float X, float Y)
{
}

function LMouseUp (float X, float Y)
{
}

function LMouseDown (float X, float Y)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function DrawMenuBackground (Canvas C)
{
}

function DrawItem (Canvas C, UWindowList item, float X, float Y, float W, float H)
{
}

function BeforeExecuteItem (UWindowPulldownMenuItem i)
{
}

function ExecuteItem (UWindowPulldownMenuItem i)
{
}

function CloseUp (optional bool bByOwner)
{
}

function UWindowMenuBar GetMenuBar ()
{
	return None;
}

function FocusOtherWindow (UWindowWindow W)
{
}

function KeyDown (int Key, float X, float Y)
{
}

function KeyUp (int Key, float X, float Y)
{
}

function MenuCmd (int item)
{
}

defaultproperties
{
     bAlwaysOnTop=True
}
