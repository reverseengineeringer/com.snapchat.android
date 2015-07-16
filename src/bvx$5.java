import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class bvx$5
  implements Animation.AnimationListener
{
  bvx$5(bvx parambvx, bvx.c paramc) {}
  
  public final void onAnimationEnd(Animation paramAnimation) {}
  
  public final void onAnimationRepeat(Animation paramAnimation)
  {
    a.b();
    a.a();
    a.a(a.f);
    bvx.a(b, (bvx.c(b) + 1.0F) % 5.0F);
  }
  
  public final void onAnimationStart(Animation paramAnimation)
  {
    bvx.a(b, 0.0F);
  }
}

/* Location:
 * Qualified Name:     bvx.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */