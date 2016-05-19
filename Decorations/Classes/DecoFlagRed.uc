//================================================================================
// DecoFlagRed.
//================================================================================

class DecoFlagRed extends DecoFlagBlue;

#exec MESH IMPORT MESH=NewFlag ANIVFILE=Models\NewFlag_a.3d DATAFILE=Models\NewFlag_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=NewFlag X=0 Y=0 Z=0 PITCH=0 YAW=0 ROLL=0
#exec MESHMAP   SCALE MESHMAP=NewFlag X=1.0 Y=1.0 Z=1.0

#exec TEXTURE IMPORT NAME=JpflagR FILE=Textures\JpflagR.bmp GROUP=Skins MIPS=OFF FLAGS=2
#exec MESHMAP SETTEXTURE MESHMAP=NewFlag NUM=0 TEXTURE=JpflagR

defaultproperties
{
}
