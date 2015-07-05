import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.ui.swipefilters.FilterPageType;

public final class oj
{
  public int a;
  public int b = 0;
  public int c = 0;
  public int d = 0;
  public oi e = new oi();
  public oi f = new oi();
  
  public final void a(@cgb arn paramarn, @cgb oi paramoi)
  {
    boolean bool2 = true;
    if (paramarn.a().equals(a)) {
      return;
    }
    String str = null;
    if ((paramarn instanceof asb))
    {
      d += 1;
      str = b.mFilterId;
    }
    b = str;
    a = paramarn.a();
    c = paramarn.b();
    boolean bool1;
    if (c == FilterPageType.GEOFILTER)
    {
      bool1 = true;
      if (a != 0) {
        break label111;
      }
    }
    for (;;)
    {
      AnalyticsEvents.a(a, bool1, bool2, b);
      return;
      bool1 = false;
      break;
      label111:
      bool2 = false;
    }
  }
}

/* Location:
 * Qualified Name:     oj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */