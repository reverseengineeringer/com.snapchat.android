import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class buw$3
  implements Animation.AnimationListener
{
  buw$3(buw parambuw, buw.c paramc) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    a.a();
    a.b();
    a.a(false);
    buw.b(b).startAnimation(buw.a(b));
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     buw.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */