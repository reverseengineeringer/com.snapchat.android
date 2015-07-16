import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.Map;

public final class ns
{
  private static final String TAG = "FilterMetricsProvider";
  
  @chd
  public static hv a(@chc aji paramaji)
  {
    if (paramaji == null) {}
    do
    {
      return null;
      paramaji = a(paramaji, FilterPageType.INFOFILTER);
    } while (paramaji == null);
    paramaji = a;
    int i = -1;
    switch (paramaji.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return null;
      case 0: 
        return hv.SPEED;
        if (paramaji.equals("Speed"))
        {
          i = 0;
          continue;
          if (paramaji.equals("Weather"))
          {
            i = 1;
            continue;
            if (paramaji.equals("Time")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    return hv.WEATHER;
    return hv.TIMESTAMP;
  }
  
  @chd
  private static oz a(@chc aji paramaji, @chc FilterPageType paramFilterPageType)
  {
    if ((mBaseFilter != null) && (mBaseFilter.c != null) && (mBaseFilter.c.equals(paramFilterPageType))) {
      return mBaseFilter;
    }
    if ((mStackedFilter != null) && (mStackedFilter.c != null) && (mStackedFilter.c.equals(paramFilterPageType))) {
      return mStackedFilter;
    }
    return null;
  }
  
  public static void a(@chc aji paramaji, @chc Map<String, String> paramMap)
  {
    if (paramaji == null) {
      return;
    }
    a(mBaseFilter, paramMap);
    a(mStackedFilter, paramMap);
  }
  
  private static void a(@chd oz paramoz, Map<String, String> paramMap)
  {
    if ((paramoz == null) || (c == null)) {
      return;
    }
    switch (c)
    {
    case ???: 
    default: 
      new StringBuilder("No metric set for ").append(c);
      return;
    case ???: 
      paramMap.put("filter_info", a);
      return;
    }
    paramMap.put("filter_visual", a);
  }
  
  @chd
  public static hx b(@chc aji paramaji)
  {
    if (paramaji == null) {}
    do
    {
      return null;
      paramaji = a(paramaji, FilterPageType.BACKGROUNDFILTER);
    } while (paramaji == null);
    paramaji = a;
    int i = -1;
    switch (paramaji.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return null;
      case 0: 
        return hx.GRAYSCALE;
        if (paramaji.equals("Greyscale"))
        {
          i = 0;
          continue;
          if (paramaji.equals("Instasnap"))
          {
            i = 1;
            continue;
            if (paramaji.equals("Miss Etikate")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    return hx.INSTASNAP;
    return hx.MISS_ETIKATE;
  }
}

/* Location:
 * Qualified Name:     ns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */