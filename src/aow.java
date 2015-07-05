import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.view.View;

public abstract class aow
  implements Animator.AnimatorListener
{
  public final AnimatorSet a;
  protected final View b;
  protected final View c;
  public boolean d;
  
  public aow(View paramView1, View paramView2)
  {
    b = paramView1;
    c = paramView2;
    a = new AnimatorSet();
    a.setStartDelay(0L);
    a.setDuration(300L);
    a.addListener(this);
    a.play(a()).with(b());
  }
  
  public abstract ObjectAnimator a();
  
  protected abstract ObjectAnimator b();
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     aow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */