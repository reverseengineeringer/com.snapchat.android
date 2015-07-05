package com.snapchat.android.fragments.stories;

import afl;
import android.content.Context;
import android.text.TextUtils;
import aop;
import aqb;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import lp;
import lr;
import pu;

final class StoriesAdapter$3$1
  extends aqb
{
  StoriesAdapter$3$1(StoriesAdapter.3 param3, Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext, paramString1, paramString2, paramString3);
  }
  
  protected final void a() {}
  
  protected final void b()
  {
    new pu(a.a.h(), false).f();
    String str = a.a.h();
    if (!TextUtils.isEmpty(str))
    {
      lp locallp = new lp();
      storyType = lr.OUR;
      posterId = str;
      if (aop.a(str)) {
        geoFence = "LOCAL";
      }
      ScAnalyticsEventEngine.a(locallp);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */