//================================================================================
// UGraphDecoLayerPage.
//================================================================================

class UGraphDecoLayerPage extends UWindowPageWindow Config(DecoLayerOptions);

var UWindowLabelControl Labels[3];
var string StatNameText[3];
var string CatNameText;
var UWindowEditControl DesiredMaxEdit[3];
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[3];
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[3];
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[3];
var string SmallIsBadText;
var config string DesiredMaxEditSettings[3];
var config int SmallIsBadSettings[3];
var config int UseBarStatSettings[3];
var config int UseLineStatSettings[3];
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
     StatNameText(0)="Triangles"
     StatNameText(1)="Decorations"
     StatNameText(2)="Tick"
     CatNameText="DecoLayer"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
