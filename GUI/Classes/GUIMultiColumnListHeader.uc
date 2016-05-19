class GUIMultiColumnListHeader extends GUIComponent
	native;

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

var GUIMultiColumnList MyList;
var int SizingCol;
var int ClickingCol;

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

cpptext
{
	UBOOL MousePressed(UBOOL IsRepeat);
	UBOOL MouseReleased();
	UBOOL MouseMove(INT XDelta, INT YDelta);
	UBOOL MouseHover();
	void Draw(UCanvas* Canvas);
	void PreDraw(UCanvas* Canvas);


}


defaultproperties
{
     SizingCol=-1
     ClickingCol=-1
     StyleName="ServerBrowserGridHeader"
     bAcceptsInput=True
}
