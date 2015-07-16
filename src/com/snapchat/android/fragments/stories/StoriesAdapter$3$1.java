package com.snapchat.android.fragments.stories;

import agl;
import android.content.Context;
import android.text.TextUtils;
import apl;
import ara;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import mh;
import mj;
import ql;

final class StoriesAdapter$3$1
  extends ara
{
  StoriesAdapter$3$1(StoriesAdapter.3 param3, Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext, paramString1, paramString2, paramString3);
  }
  
  protected final void a() {}
  
  protected final void b()
  {
    new ql(a.a.l(), false).execute();
    String str = a.a.l();
    if (!TextUtils.isEmpty(str))
    {
      mh localmh = new mh();
      storyType = mj.OUR;
      posterId = str;
      if (apl.a(str)) {
        geoFence = "LOCAL";
      }
      ScAnalyticsEventEngine.a(localmh);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */