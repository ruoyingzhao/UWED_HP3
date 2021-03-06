Class DepulsoHitComboEmitter extends HitComboEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter9
         UseColorScale=True
         ColorScale(0)=(Color=(R=200))
         ColorScale(1)=(RelativeTime=0.250000,Color=(R=200))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=128,G=255,R=255))
         ColorScale(3)=(RelativeTime=0.750000,Color=(R=200))
         ColorScale(4)=(RelativeTime=1.000000,Color=(R=200))
         FadeOutStartTime=0.150000
         FadeOut=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=200
         AutoReset=True
         AutoResetTimeRange=(Min=0.500000,Max=0.500000)
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         StartLocationShape=PTLS_Polar
         SphereRadiusRange=(Min=65536.000000,Max=65536.000000)
         StartLocationPolarRange=(X=(Min=65536.000000,Max=65536.000000),Y=(Max=65536.000000),Z=(Min=50.000000,Max=50.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-20.000000,Max=20.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.870000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=1000.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_8'
         LifetimeRange=(Min=1.000000,Max=1.500000)
         StartVelocityRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-10.000000,Max=10.000000))
         Name="SpriteEmitter9"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DepulsoHitComboEmitter.SpriteEmitter9'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter26
         UseDirectionAs=PTDU_Up
         UseColorScale=True
         ColorScale(0)=(Color=(R=255))
         ColorScale(1)=(RelativeTime=0.250000,Color=(R=255))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=128,G=255,R=255))
         ColorScale(3)=(RelativeTime=0.750000,Color=(R=255))
         ColorScale(4)=(RelativeTime=1.000000,Color=(R=255))
         FadeOutStartTime=0.150000
         FadeOut=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=500
         AutoReset=True
         AutoResetTimeRange=(Min=0.500000,Max=0.500000)
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         SphereRadiusRange=(Min=1000.000000,Max=1000.000000)
         MeshSpawningStaticMesh=StaticMesh'HP3_Particles_SM.Spell_Shapes.RictusempraShape_SM'
         MeshSpawning=PTMS_Random
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-20.000000,Max=20.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.870000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=1.000000,Max=2.000000),Y=(Min=1.000000,Max=2.000000),Z=(Min=1.000000,Max=2.000000))
         UniformSize=True
         InitialParticlesPerSecond=1000.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_8'
         LifetimeRange=(Min=1.000000,Max=1.500000)
         StartVelocityRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-5.000000,Max=5.000000))
         VelocityLossRange=(X=(Min=2.000000,Max=4.000000),Y=(Min=2.000000,Max=7.000000),Z=(Min=2.000000,Max=4.000000))
         Name="SpriteEmitter26"
     End Object
     Emitters(1)=SpriteEmitter'HGame.DepulsoHitComboEmitter.SpriteEmitter26'
     LightSaturation=70
}
