import com.snapchat.android.Timber;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.Map;

public final class nb
{
  private static final String TAG = "FilterMetricsProvider";
  
  @cgc
  public static hm a(@cgb aim paramaim)
  {
    if (paramaim == null) {
      Timber.f("FilterMetricsProvider", "Snapbryo was null", new Object[0]);
    }
    do
    {
      return null;
      paramaim = a(paramaim, FilterPageType.INFOFILTER);
    } while (paramaim == null);
    paramaim = a;
    int i = -1;
    switch (paramaim.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        Timber.f("FilterMetricsProvider", "Conversion to FilterInfoType available", new Object[0]);
        return null;
        if (paramaim.equals("Speed"))
        {
          i = 0;
          continue;
          if (paramaim.equals("Weather"))
          {
            i = 1;
            continue;
            if (paramaim.equals("Time")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    return hm.SPEED;
    return hm.WEATHER;
    return hm.TIMESTAMP;
  }
  
  @cgc
  private static oi a(@cgb aim paramaim, @cgb FilterPageType paramFilterPageType)
  {
    if ((mBaseFilter != null) && (mBaseFilter.c != null) && (mBaseFilter.c.equals(paramFilterPageType))) {
      return mBaseFilter;
    }
    if ((mStackedFilter != null) && (mStackedFilter.c != null) && (mStackedFilter.c.equals(paramFilterPageType))) {
      return mStackedFilter;
    }
    return null;
  }
  
  public static void a(@cgb aim paramaim, @cgb Map<String, String> paramMap)
  {
    if (paramaim == null)
    {
      Timber.f("FilterMetricsProvider", "Snapbryo was null", new Object[0]);
      return;
    }
    a(mBaseFilter, paramMap);
    a(mStackedFilter, paramMap);
  }
  
  private static void a(@cgc oi paramoi, Map<String, String> paramMap)
  {
    if ((paramoi == null) || (c == null)) {
      return;
    }
    switch (c)
    {
    case ???: 
    default: 
      Timber.f("FilterMetricsProvider", "No metric set for " + c, new Object[0]);
      return;
    case ???: 
      paramMap.put("filter_info", a);
      return;
    }
    paramMap.put("filter_visual", a);
  }
  
  @cgc
  public static ho b(@cgb aim paramaim)
  {
    if (paramaim == null) {
      Timber.f("FilterMetricsProvider", "Snapbryo was null", new Object[0]);
    }
    do
    {
      return null;
      paramaim = a(paramaim, FilterPageType.BACKGROUNDFILTER);
    } while (paramaim == null);
    paramaim = a;
    int i = -1;
    switch (paramaim.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        Timber.f("FilterMetricsProvider", "Conversion to FilterVisualType available", new Object[0]);
        return null;
        if (paramaim.equals("Greyscale"))
        {
          i = 0;
          continue;
          if (paramaim.equals("Instasnap"))
          {
            i = 1;
            continue;
            if (paramaim.equals("Miss Etikate")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    return ho.GRAYSCALE;
    return ho.INSTASNAP;
    return ho.MISS_ETIKATE;
  }
}

/* Location:
 * Qualified Name:     nb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */