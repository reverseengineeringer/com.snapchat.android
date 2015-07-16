import android.animation.Animator;

final class afc$2
  extends awh
{
  private boolean c = false;
  
  afc$2(afc paramafc, boolean paramBoolean) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    c = true;
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if ((!a) || (!c)) {
      b.a();
    }
  }
}

/* Location:
 * Qualified Name:     afc.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */