import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.snapchat.android.ui.SelfScalingImageView;
import com.snapchat.android.ui.smartfilters.GeofilterView;

public final class apc$1
  implements Animation.AnimationListener
{
  public apc$1(apc paramapc) {}
  
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
 * Qualified Name:     apc.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */