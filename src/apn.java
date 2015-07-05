import android.annotation.TargetApi;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;

public final class apn
  extends AnimationSet
{
  private final View a;
  
  public apn(View paramView)
  {
    super(true);
    a = paramView;
  }
  
  public static ScaleAnimation a()
  {
    ScaleAnimation localScaleAnimation = new ScaleAnimation(1.6F, 1.3F, 1.6F, 1.3F);
    localScaleAnimation.setDuration(100L);
    return localScaleAnimation;
  }
  
  public static TranslateAnimation a(int paramInt)
  {
    float f = paramInt * 1.6F - paramInt * 1.3F;
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, f / 2.0F, 0.0F, f / 2.0F);
    localTranslateAnimation.setDuration(100L);
    return localTranslateAnimation;
  }
}

/* Location:
 * Qualified Name:     apn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */