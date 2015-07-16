import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;

public final class aqi
  extends aqg
{
  public aqi(View paramView1, View paramView2)
  {
    super(paramView1, paramView2, 0L);
  }
  
  public final ObjectAnimator a()
  {
    float f = -awf.a(c) / 2.0F;
    return ObjectAnimator.ofFloat(b, "translationY", new float[] { f });
  }
  
  protected final ObjectAnimator b()
  {
    return ObjectAnimator.ofFloat(c, "alpha", new float[] { 1.0F });
  }
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    b.setTranslationY(0.0F);
    c.setVisibility(8);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (d) {
      return;
    }
    b.setTranslationY(0.0F);
    c.setAlpha(1.0F);
    c.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     aqi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */