package com.snapchat.android.analytics.framework;

import android.app.Activity;
import azk;
import cgb;
import cgc;
import java.util.Map;

public class UserActionTracePlatform
  implements AnalyticsPlatform
{
  public final void a(@cgb Activity paramActivity) {}
  
  public final void a(@cgb String paramString, @cgc Map<String, Object> paramMap1, @cgc Map<String, Object> paramMap2, @cgc Map<String, Long> paramMap3, @cgc Map<String, Long> paramMap4)
  {
    azk.a(paramString);
  }
  
  public final void b(@cgb Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.UserActionTracePlatform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */