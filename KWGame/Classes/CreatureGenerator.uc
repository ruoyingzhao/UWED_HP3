//================================================================================
// CreatureGenerator.
//================================================================================

class CreatureGenerator extends KWPawn
  Config(User);

enum eMoveType {
  MT_Walk,
  MT_Run
}; 

const MAX_CREATURES= 20;
const NUM_BASE_CHARS= 16;
const NUM_BASE_ROUTES= 4;

var() eMoveType BaseMovingType[16];
var() Class<KWPawn> BaseCreatureToSpawn[16];
var() string BaseBumpLineSet[16];
var() string BaseRouteName[4];
var() float BaseCreatureLife;
var() bool bCaptureHero;
var() int TooFar;
var() Range SpawnDelay;
var() int MaxCreaturesOnFastMachine;
var() int MaxCreaturesOnSlowMachine;
var() float TriggerWaitingTime;
var Route myRoute;
var KWPawn Creatures[20];
var float TotalLifes[20];
var float Lifes[20];
var int HowManyBaseCreatures;
var int HowManyBaseRoutes;
var int PreviousBaseCreatureIndex;
var int NumCreatures;
var int MaxCreatures;
var float fCurrTime;
var float fWaitTime;
var bool bGenerateCreature;
var bool bOff;

function PostBeginPlay ()
{
}

function Tick (float DeltaTime)
{
}

event OnResolveGameState ()
{
}

function string GetRandomRouteName ()
{
	return "";
}

function bool TooFarFromHarry (Vector Loc)
{
  return False;
}

function bool CameraCanSeeYou (Vector Loc)
{
	return false;
}

function UpdateCreatureLife (int Index, float DeltaTime)
{
}

function UpdateCreaturesLife (float DeltaTime)
{
}

function DestroyCreature (int Index)
{
}

function DestroyCreatures ()
{
}

function GenerateCreature ()
{
}

state() TriggerOpenTimed
{
}

defaultproperties
{
     BaseCreatureLife=100.000000
     TooFar=10000
     MaxCreaturesOnFastMachine=10
     MaxCreaturesOnSlowMachine=5
     PreviousBaseCreatureIndex=-1
     bHidden=True
     InitialState="TriggerOpenTimed"
     CollisionRadius=10.000000
     CollisionHeight=15.000000
     bCollideActors=False
     bBlockActors=False
     bBlockPlayers=False
}