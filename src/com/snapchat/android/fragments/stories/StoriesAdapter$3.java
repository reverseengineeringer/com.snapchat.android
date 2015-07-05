package com.snapchat.android.fragments.stories;

import afl;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import aop;
import aqb;
import atx;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import lp;
import lr;
import pu;

final class StoriesAdapter$3
  implements View.OnClickListener
{
  StoriesAdapter$3(StoriesAdapter paramStoriesAdapter, afl paramafl) {}
  
  public final void onClick(View paramView)
  {
    String str = a.d;
    paramView = str;
    if (str == null) {
      paramView = atx.a(null, 2131492894, new Object[] { a.a() });
    }
    new aqb(StoriesAdapter.d(b), paramView, atx.a(null, 2131493269, new Object[0]), atx.a(null, 2131493577, new Object[0]))
    {
      protected final void a() {}
      
      protected final void b()
      {
        new pu(a.h(), false).f();
        String str = a.h();
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
    }.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */