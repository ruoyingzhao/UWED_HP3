//================================================================================
// UWindowDialogControl.
//================================================================================

class UWindowDialogControl extends UWindowWindow;

var UWindowDialogClientWindow NotifyWindow;
var string Text;
var int Font;
var Color TextColor;
var TextAlign Align;
var float TextX;
var float TextY;
var bool bHasKeyboardFocus;
var bool bNoKeyboard;
var bool bAcceptExternalDragDrop;
var string HelpText;
var float MinWidth;
var float MinHeight;
var UWindowDialogControl TabNext;
var UWindowDialogControl TabPrev;

function Created ()
{
}

function KeyFocusEnter ()
{
}

function KeyFocusExit ()
{
}

function SetHelpText (string NewHelpText)
{
}

function SetText (string NewText)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function SetFont (int NewFont)
{
}

function SetTextColor (Color NewColor)
{
}

function Register (UWindowDialogClientWindow W)
{
}

function Notify (byte E)
{
}

function bool ExternalDragOver (UWindowDialogControl ExternalControl, float X, float Y)
{
  return False;
}

function UWindowDialogControl CheckExternalDrag (float X, float Y)
{
  return None;
}

function KeyDown (int Key, float X, float Y)
{
}

function MouseMove (float X, float Y)
{
}

function MouseEnter ()
{
}

function MouseLeave ()
{
}

defaultproperties
{
     TextColor=(A=255)
}
