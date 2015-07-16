package com.snapchat.android.fragments.stories;

import agl;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import apl;
import ara;
import auv;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import mh;
import mj;
import ql;

final class StoriesAdapter$3
  implements View.OnClickListener
{
  StoriesAdapter$3(StoriesAdapter paramStoriesAdapter, agl paramagl) {}
  
  public final void onClick(View paramView)
  {
    String str = a.d;
    paramView = str;
    if (str == null) {
      paramView = auv.a(null, 2131492894, new Object[] { a.a() });
    }
    new ara(StoriesAdapter.d(b), paramView, auv.a(null, 2131493269, new Object[0]), auv.a(null, 2131493575, new Object[0]))
    {
      protected final void a() {}
      
      protected final void b()
      {
        new ql(a.l(), false).execute();
        String str = a.l();
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
    }.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */