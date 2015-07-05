import android.animation.Animator;
import android.view.ViewGroup;

final class aec$2
  extends avj
{
  private boolean c = false;
  
  aec$2(aec paramaec, boolean paramBoolean) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    c = true;
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if ((!a) || (!c))
    {
      paramAnimator = b;
      a.setVisibility(8);
      e = false;
      f = null;
    }
  }
}

/* Location:
 * Qualified Name:     aec.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */