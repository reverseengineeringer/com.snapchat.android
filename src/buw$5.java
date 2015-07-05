import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class buw$5
  implements Animation.AnimationListener
{
  buw$5(buw parambuw, buw.c paramc) {}
  
  public final void onAnimationEnd(Animation paramAnimation) {}
  
  public final void onAnimationRepeat(Animation paramAnimation)
  {
    a.b();
    a.a();
    a.a(a.f);
    buw.a(b, (buw.c(b) + 1.0F) % 5.0F);
  }
  
  public final void onAnimationStart(Animation paramAnimation)
  {
    buw.a(b, 0.0F);
  }
}

/* Location:
 * Qualified Name:     buw.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */