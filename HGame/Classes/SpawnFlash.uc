Class SpawnFlash extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter54
         Acceleration=(Z=100.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=128,G=128,R=104))
         ColorScale(2)=(RelativeTime=1.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=1.000000,Max=15.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.250000,Max=0.500000))
         StartSizeRange=(X=(Min=5.000000,Max=30.000000))
         UniformSize=True
         InitialParticlesPerSecond=500.000000
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         LifetimeRange=(Min=0.500000,Max=1.750000)
         StartVelocityRange=(Z=(Min=2.000000,Max=10.000000))
         Name="SpriteEmitter54"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SpawnFlash.SpriteEmitter54'
}
