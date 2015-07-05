import android.animation.Animator;

final class aee$2
  extends avj
{
  private boolean c = false;
  
  aee$2(aee paramaee, boolean paramBoolean) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    c = true;
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if ((!a) || (!c)) {
      b.b();
    }
  }
}

/* Location:
 * Qualified Name:     aee.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */