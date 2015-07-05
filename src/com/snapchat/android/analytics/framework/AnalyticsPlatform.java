package com.snapchat.android.analytics.framework;

import android.app.Activity;
import cgb;
import cgc;
import java.util.Map;

public abstract interface AnalyticsPlatform
{
  public abstract void a(@cgb Activity paramActivity);
  
  public abstract void a(@cgb String paramString, @cgc Map<String, Object> paramMap1, @cgc Map<String, Object> paramMap2, @cgc Map<String, Long> paramMap3, @cgc Map<String, Long> paramMap4);
  
  public abstract void b(@cgb Activity paramActivity);
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.AnalyticsPlatform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */