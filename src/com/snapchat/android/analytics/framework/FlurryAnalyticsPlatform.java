package com.snapchat.android.analytics.framework;

import android.app.Activity;
import avf;
import chc;
import chd;
import com.flurry.android.FlurryAgent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public class FlurryAnalyticsPlatform
  implements AnalyticsPlatform
{
  public final void a(@chc final Activity paramActivity)
  {
    avf.SERIAL_BACKGROUND_EXECUTOR.submit(new Runnable()
    {
      public void run()
      {
        FlurryAgent.setUseHttps(true);
        FlurryAgent.setReportLocation(false);
        FlurryAgent.onStartSession(paramActivity, "FRW84M2GG56RMM8VWT5G");
      }
    });
  }
  
  public final void a(@chc String paramString, @chd Map<String, Object> paramMap1, @chd Map<String, Object> paramMap2, @chd Map<String, Long> paramMap3, @chd Map<String, Long> paramMap4)
  {
    if (paramMap1 == null)
    {
      FlurryAgent.logEvent(paramString);
      return;
    }
    if (paramMap1.size() > 10)
    {
      new StringBuilder("Flurry only supports up to 10 parameters. Found: ").append(paramMap1.size()).append(". Truncating!");
      paramMap2 = new HashMap(10);
      paramMap1 = paramMap1.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        paramMap3 = (Map.Entry)paramMap1.next();
        if (paramMap2.size() >= 10) {
          break;
        }
        paramMap2.put(paramMap3.getKey(), paramMap3.getValue().toString());
      }
    }
    for (paramMap1 = paramMap2;; paramMap1 = paramMap2)
    {
      FlurryAgent.logEvent(paramString, paramMap1);
      return;
      paramMap2 = new HashMap(paramMap1.size());
      paramMap1 = paramMap1.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        paramMap3 = (Map.Entry)paramMap1.next();
        paramMap2.put(paramMap3.getKey(), paramMap3.getValue().toString());
      }
    }
  }
  
  public final void b(@chc final Activity paramActivity)
  {
    avf.SERIAL_BACKGROUND_EXECUTOR.submit(new Runnable()
    {
      public void run()
      {
        FlurryAgent.onEndSession(paramActivity);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */