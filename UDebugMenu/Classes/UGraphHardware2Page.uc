//================================================================================
// UGraphHardware2Page.
//================================================================================

class UGraphHardware2Page extends UWindowPageWindow Config(Hardware2Options);

var UWindowLabelControl Labels[15];
var string StatNameText[15];
var string CatNameText;
var UWindowEditControl DesiredMaxEdit[15];
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[15];
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[15];
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[15];
var string SmallIsBadText;
var config string DesiredMaxEditSettings[15];
var config int SmallIsBadSettings[15];
var config int UseBarStatSettings[15];
var config int UseLineStatSettings[15];
var bool bIsLoading;
var bool bShouldDelayChange;

function Created ()
{
  Super.Created();
}

function Notify (UWindowDialogControl C, byte E)
{
  Super.Notify(C,E);
}

function Change (int nIndex)
{
}

defaultproperties
{
     StatNameText(0)="TransformChanges"
     StatNameText(1)="LightChanges"
     StatNameText(2)="LightSet"
     StatNameText(3)="Clear"
     StatNameText(4)="DynVBLock"
     StatNameText(5)="DynVBDiscards"
     StatNameText(6)="DynVBBytes"
     StatNameText(7)="DynIBBytes"
     StatNameText(8)="NumVertexStreams"
     StatNameText(9)="NumIndexBuffers"
     StatNameText(10)="VertexStreamBytes"
     StatNameText(11)="IndexBufferBytes"
     StatNameText(12)="StreamSourceChanges"
     CatNameText="Hardware"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
