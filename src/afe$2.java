import android.animation.Animator;

final class afe$2
  extends awh
{
  private boolean c = false;
  
  afe$2(afe paramafe, boolean paramBoolean) {}
  
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
 * Qualified Name:     afe.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */