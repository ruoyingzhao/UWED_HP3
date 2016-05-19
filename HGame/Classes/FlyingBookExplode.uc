Class FlyingBookExplode extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter66
         Acceleration=(Z=-50.000000)
         DampingFactorRange=(Z=(Min=0.100000,Max=0.500000))
         UseMaxCollisions=True
         MaxCollisions=(Min=2.000000,Max=3.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=255,G=255,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=114,G=114,R=184))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=30
         StartLocationRange=(X=(Min=5.000000,Max=-5.000000),Y=(Min=5.000000,Max=-5.000000))
         StartLocationPolarRange=(Y=(Min=50.000000,Max=50.000000),Z=(Min=50.000000,Max=50.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-0.750000,Max=0.750000))
         StartSizeRange=(X=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=500.000000
         Texture=Texture'HP_FX.Particles.Reward_Bronze'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-25.000000,Max=25.000000),Y=(Min=-25.000000,Max=25.000000),Z=(Min=10.000000,Max=50.000000))
         VelocityLossRange=(Z=(Min=0.500000,Max=1.000000))
         VelocityScale(0)=(RelativeVelocity=(Z=-120.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(Z=120.000000))
         VelocityScale(2)=(RelativeTime=0.750000,RelativeVelocity=(X=20.000000,Y=20.000000))
         Name="SpriteEmitter66"
     End Object
     Emitters(0)=SpriteEmitter'HGame.FlyingBookExplode.SpriteEmitter66'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter72
         FadeOutStartTime=0.850000
         FadeOut=True
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-10.000000,Max=10.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.250000,Max=1.250000),Y=(Min=-1.000000,Max=1.000000))
         StartSizeRange=(X=(Min=4.000000,Max=5.000000),Y=(Min=4.000000,Max=5.000000))
         UniformSize=True
         InitialParticlesPerSecond=200.000000
         Texture=Texture'HP3_FX.Particles.MBoMTear'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         UseRandomSubdivision=True
         LifetimeRange=(Min=1.000000,Max=1.250000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-50.000000,Max=50.000000))
         VelocityLossRange=(X=(Max=2.000000),Y=(Max=2.000000),Z=(Max=2.000000))
         Name="SpriteEmitter72"
     End Object
     Emitters(1)=SpriteEmitter'HGame.FlyingBookExplode.SpriteEmitter72'
}