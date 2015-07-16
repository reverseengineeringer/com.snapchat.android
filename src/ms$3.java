import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import com.snapchat.android.util.TitleBarManager.LockedState;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.squareup.otto.Bus;

final class ms$3
  implements Animator.AnimatorListener
{
  ms$3(ms paramms, ms.a parama) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    ms.a(b, null);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ms.a(b, null);
    b.a();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    b.b.a(new bfk(TitleBarManager.Visibility.HIDDEN, TitleBarManager.LockedState.LOCKED));
    ms.a(b, a);
  }
}

/* Location:
 * Qualified Name:     ms.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */