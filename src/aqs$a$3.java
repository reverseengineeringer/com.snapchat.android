import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.widget.ImageView;

final class aqs$a$3
  implements Animator.AnimatorListener
{
  aqs$a$3(aqs.a parama) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    a.j.setVisibility(8);
    paramAnimator = ObjectAnimator.ofFloat(a.g, "alpha", new float[] { 1.0F, 0.0F });
    paramAnimator.setDuration(500L);
    paramAnimator.start();
    paramAnimator.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        a.u.a(true);
      }
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator) {}
    });
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    a.g.setAlpha(1.0F);
  }
}

/* Location:
 * Qualified Name:     aqs.a.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */