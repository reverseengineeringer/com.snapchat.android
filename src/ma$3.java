import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import com.snapchat.android.util.TitleBarManager.LockedState;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.squareup.otto.Bus;

final class ma$3
  implements Animator.AnimatorListener
{
  ma$3(ma paramma, ma.a parama) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    ma.a(b, null);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ma.a(b, null);
    b.a();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    b.b.a(new bel(TitleBarManager.Visibility.HIDDEN, TitleBarManager.LockedState.LOCKED));
    ma.a(b, a);
  }
}

/* Location:
 * Qualified Name:     ma.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */