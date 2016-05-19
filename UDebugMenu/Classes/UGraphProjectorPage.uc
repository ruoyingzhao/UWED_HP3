//================================================================================
// UGraphProjectorPage.
//================================================================================

class UGraphProjectorPage extends UWindowPageWindow Config(ProjectorOptions);

var UWindowLabelControl Labels[4];
var localized string StatNameText[4];
var localized string CatNameText;
var UWindowEditControl DesiredMaxEdit[4];
var localized string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[4];
var localized string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[4];
var localized string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[4];
var localized string SmallIsBadText;
var config string DesiredMaxEditSettings[4];
var config int SmallIsBadSettings[4];
var config int UseBarStatSettings[4];
var config int UseLineStatSettings[4];
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
     StatNameText(0)="Render"
     StatNameText(1)="Attach"
     StatNameText(2)="Projectors"
     StatNameText(3)="Triangles"
     CatNameText="Projector"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
