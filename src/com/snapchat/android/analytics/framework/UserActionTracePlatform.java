package com.snapchat.android.analytics.framework;

import android.app.Activity;
import baj;
import chc;
import chd;
import java.util.Map;

public class UserActionTracePlatform
  implements AnalyticsPlatform
{
  public final void a(@chc Activity paramActivity) {}
  
  public final void a(@chc String paramString, @chd Map<String, Object> paramMap1, @chd Map<String, Object> paramMap2, @chd Map<String, Long> paramMap3, @chd Map<String, Long> paramMap4)
  {
    baj.a(paramString);
  }
  
  public final void b(@chc Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.UserActionTracePlatform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */