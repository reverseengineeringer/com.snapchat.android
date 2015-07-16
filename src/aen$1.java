import android.animation.Animator;
import android.animation.AnimatorSet;
import android.view.View;
import com.snapchat.android.ui.CashSwiperView.a;

final class aen$1
  extends CashSwiperView.a
{
  aen$1(aen paramaen) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (a.i)
    {
      a.h.start();
      return;
    }
    a.e.setY(a.f);
    a.e.invalidate();
  }
}

/* Location:
 * Qualified Name:     aen.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */