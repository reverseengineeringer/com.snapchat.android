import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.graphics.drawable.AnimationDrawable;

final class ma$1
  implements Animator.AnimatorListener
{
  ma$1(ma paramma) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    a.a(8);
    if (a.c != null) {
      a.c.stop();
    }
  }
  
  public final void onAnimationEnd(Animator paramAnimator) {}
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    a.a(0);
    if (a.c != null) {
      a.c.start();
    }
  }
}

/* Location:
 * Qualified Name:     ma.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */