import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.snapchat.android.ui.smartfilters.GeofilterView;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.Date;

public final class asb
  extends arn
{
  public final aiv b;
  private final GeofilterView c;
  
  public asb(aiv paramaiv, GeofilterView paramGeofilterView)
  {
    b = paramaiv;
    c = paramGeofilterView;
  }
  
  public final String a()
  {
    return "Geofilter~" + b.mFilterId;
  }
  
  public final void a(int paramInt)
  {
    c.setVisibilityOfPreviewOnlyContent(paramInt);
  }
  
  public final FilterPageType b()
  {
    return FilterPageType.GEOFILTER;
  }
  
  public final View d()
  {
    return c;
  }
  
  public final void g()
  {
    if (b.mIsSponsored)
    {
      Object localObject = c;
      if ((a != null) && (!c))
      {
        localObject = b;
        f = new Date();
        e = new AlphaAnimation(b.getAlpha(), 0.0F);
        e.setInterpolator(new AccelerateInterpolator());
        e.setDuration(d);
        e.setAnimationListener(new apc.1((apc)localObject));
        e.setStartOffset(c);
        b.startAnimation(e);
        g = false;
      }
    }
  }
  
  public final void h()
  {
    if (b.mIsSponsored) {
      c.a();
    }
  }
  
  public final void i()
  {
    c.a();
  }
}

/* Location:
 * Qualified Name:     asb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */