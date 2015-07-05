import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import java.util.concurrent.atomic.AtomicInteger;

final class aqs$a$2
  implements Animator.AnimatorListener
{
  aqs$a$2(aqs.a parama) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    a.t.incrementAndGet();
    if (aqs.a.a(a).booleanValue()) {
      return;
    }
    if ((aqs.a.b(a).booleanValue()) || (a.t.get() >= 3))
    {
      if ((aqs.a.c(a).booleanValue()) && (a.t.get() < 3))
      {
        a.p.start();
        a.u.n.c.b(a.u.m);
        a.s.start();
      }
      for (;;)
      {
        aqs.a.a(a, Boolean.valueOf(true));
        return;
        a.q.start();
        a.s.start();
      }
    }
    a.o.start();
    a.r.start();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     aqs.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */