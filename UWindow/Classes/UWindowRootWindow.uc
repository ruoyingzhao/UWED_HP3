//================================================================================
// UWindowRootWindow.
//================================================================================

class UWindowRootWindow extends UWindowWindow;

var UWindowWindow MouseWindow;
var bool bMouseCapture;
var float OldMouseX;
var float OldMouseY;
var UWindowWindow FocusedWindow;
var UWindowWindow KeyFocusWindow;
var MouseCursor NormalCursor;
var MouseCursor MoveCursor;
var MouseCursor DiagCursor1;
var MouseCursor HandCursor;
var MouseCursor HSplitCursor;
var MouseCursor VSplitCursor;
var MouseCursor DiagCursor2;
var MouseCursor NSCursor;
var MouseCursor WECursor;
var MouseCursor WaitCursor;
var bool bQuickKeyEnable;
var UWindowHotkeyWindowList HotkeyWindows;
var config float GUIScale;
var float RealWidth;
var float RealHeight;
var Font Fonts[10];
var UWindowLookAndFeel LooksAndFeels[20];
var config string LookAndFeelClass;
var bool bRequestQuit;
var float QuitTime;
var bool bAllowConsole;
var config float MouseScale;
var float MouseX;
var float MouseY;
var float OldClipX;
var float OldClipY;
var Class<UWindowConsoleWindow> ConsoleClass;
var UWindowConsoleWindow ConsoleWindow;

function BeginPlay ()
{
}

function UWindowLookAndFeel GetLookAndFeel (string LFClassName)
{
  return None;
}

function Created ()
{
}

function MoveMouse (float X, float Y)
{
}

function DrawMouse (Canvas C)
{
}

function bool CheckCaptureMouseUp ()
{
  return False;
}

function bool CheckCaptureMouseDown ()
{
  return False;
}

function CancelCapture ()
{
}

function CaptureMouse (optional UWindowWindow W)
{
}

function Texture GetLookAndFeelTexture ()
{
  return LookAndFeel.Active;
}

function bool IsActive ()
{
  return True;
}

function AddHotkeyWindow (UWindowWindow W)
{
}

function RemoveHotkeyWindow (UWindowWindow W)
{
}

function WindowEvent (WinMessage Msg, Canvas C, float X, float Y, int Key)
{
}

function bool HotKeyDown (int Key, float X, float Y)
{
  return False;
}

function bool HotKeyUp (int Key, float X, float Y)
{
  return False;
}

function CloseActiveWindow ()
{
}

function Resized ()
{
}

function SetScale (float NewScale)
{
}

function SetupFonts ()
{
}

function ChangeLookAndFeel (string NewLookAndFeel)
{
}

function HideWindow ()
{
}

function SetMousePos (float X, float Y)
{
}

function QuitGame ()
{
}

function DoQuitGame ()
{
}

function Tick (float Delta)
{
}

event Initialized ()
{
}

function bool KeyEvent (out EInputKey Key, out EInputAction Action, float Delta)
{
  return Super.KeyEvent(Key,Action,Delta);
}

state UWindows
{
}

function PostRender (Canvas Canvas)
{
}

function Message (coerce string Msg, float MsgLife)
{
}

defaultproperties
{
     GUIScale=1.000000
     bAllowConsole=True
     MouseScale=0.600000
     ConsoleClass=Class'UWindow.UWindowConsoleWindow'
}
