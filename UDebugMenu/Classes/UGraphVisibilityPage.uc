//================================================================================
// UGraphVisibilityPage.
//================================================================================

class UGraphVisibilityPage extends UWindowPageWindow Config(VisibilityOptions);


var UWindowLabelControl Labels[8];
var localized string StatNameText[8];
var localized string CatNameText;
var UWindowEditControl DesiredMaxEdit[8];
var localized string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[8];
var localized string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[8];
var localized string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[8];
var localized string SmallIsBadText;
var config string DesiredMaxEditSettings[8];
var config int SmallIsBadSettings[8];
var config int UseBarStatSettings[8];
var config int UseLineStatSettings[8];
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
     StatNameText(0)="Setup"
     StatNameText(1)="MaskTests"
     StatNameText(2)="MaskRejects"
     StatNameText(3)="BoxTests"
     StatNameText(4)="BoxRejects"
     StatNameText(5)="Traverse"
     StatNameText(6)="ScratchBytes"
     StatNameText(7)="MeshLightRender"
     CatNameText="Visibility"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
