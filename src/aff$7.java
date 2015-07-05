import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View;

final class aff$7
  implements Animator.AnimatorListener
{
  aff$7(aff paramaff, Runnable paramRunnable) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    b.I.post(a);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    b.I.post(a);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     aff.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */