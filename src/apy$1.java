import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.snapchat.android.ui.SelfScalingImageView;
import com.snapchat.android.ui.smartfilters.GeofilterView;

public final class apy$1
  implements Animation.AnimationListener
{
  public apy$1(apy paramapy) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (!a.g)
    {
      paramAnimation = a.a;
      a.setVisibility(8);
      c = true;
    }
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     apy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */