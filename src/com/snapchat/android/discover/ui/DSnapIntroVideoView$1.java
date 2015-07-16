package com.snapchat.android.discover.ui;

import afq;
import android.view.View;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView.a;

final class DSnapIntroVideoView$1
  implements afq
{
  DSnapIntroVideoView$1(DSnapIntroVideoView paramDSnapIntroVideoView) {}
  
  public final void a(String paramString)
  {
    DSnapIntroVideoView.e(a);
    String str1 = ea).b;
    String str2 = DSnapIntroVideoView.e(a).d();
    EasyMetric.EasyMetricFactory.a("DISCOVER_INTRO_MEDIA_PLAYBACK_ERROR").a("publisher_name", str1).a("url", str2).a("description", paramString).a(false);
    p_();
    DSnapIntroVideoView.a(a, DiscoverUsageAnalytics.ViewStatus.ERROR);
  }
  
  public final void b()
  {
    DSnapIntroVideoView.c(a);
    DSnapIntroVideoView.d(a).setVisibility(8);
  }
  
  public final void p_()
  {
    if (DSnapIntroVideoView.a(a) != null)
    {
      DSnapIntroVideoView.a(a, DiscoverUsageAnalytics.ViewStatus.COMPLETED);
      DSnapIntroVideoView.b(a).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DSnapIntroVideoView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */