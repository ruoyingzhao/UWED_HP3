//================================================================================
// UGraphStaticMeshPage.
//================================================================================

class UGraphStaticMeshPage extends UWindowPageWindow Config(StaticMeshOptions);

var UWindowLabelControl Labels[14];
var localized string StatNameText[14];
var localized string CatNameText;
var UWindowEditControl DesiredMaxEdit[14];
var localized string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[14];
var localized string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[14];
var localized string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[14];
var localized string SmallIsBadText;
var config string DesiredMaxEditSettings[14];
var config int SmallIsBadSettings[14];
var config int UseBarStatSettings[14];
var config int UseLineStatSettings[14];
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
     StatNameText(0)="Batches"
     StatNameText(1)="BatchedSortedSections"
     StatNameText(2)="BatchedSortedTriangles"
     StatNameText(3)="BatchedSort"
     StatNameText(4)="BatchedUnsortedSections"
     StatNameText(5)="BatchedUnsortedTriangles"
     StatNameText(6)="BatchedRender"
     StatNameText(7)="UnbatchedSortedSections"
     StatNameText(8)="UnbatchedSortedTriangles"
     StatNameText(9)="UnbatchedSort"
     StatNameText(10)="UnbatchedUnsortedSections"
     StatNameText(11)="UnbatchedUnsortedTriangles"
     StatNameText(12)="UnbatchedRender"
     StatNameText(13)="Batches"
     CatNameText="StaticMesh"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}