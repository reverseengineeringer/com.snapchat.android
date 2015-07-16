import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class bvx$3
  implements Animation.AnimationListener
{
  bvx$3(bvx parambvx, bvx.c paramc) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    a.a();
    a.b();
    a.a(false);
    bvx.b(b).startAnimation(bvx.a(b));
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     bvx.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */