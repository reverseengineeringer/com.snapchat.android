import android.animation.Animator;
import android.animation.AnimatorSet;
import android.widget.TextView;
import java.util.Map;

final class vk$1
  extends awh
{
  vk$1(vk paramvk, TextView paramTextView1, TextView paramTextView2, vs paramvs, String paramString) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    paramAnimator = new aqh(a, b, 3000L);
    c.o = paramAnimator;
    e.a.put(d, paramAnimator);
    a.start();
  }
}

/* Location:
 * Qualified Name:     vk.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */