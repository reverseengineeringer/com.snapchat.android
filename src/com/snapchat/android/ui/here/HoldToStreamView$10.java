package com.snapchat.android.ui.here;

import android.os.SystemClock;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.chat.ChatConversation;
import hu;
import yq;

final class HoldToStreamView$10
  implements Runnable
{
  HoldToStreamView$10(HoldToStreamView paramHoldToStreamView, boolean paramBoolean) {}
  
  public final void run()
  {
    Object localObject = HoldToStreamView.d(b);
    boolean bool = a;
    if (mIsDisplayingVideo != bool)
    {
      mIsDisplayingVideo = bool;
      yq.a().a((ChatConversation)localObject, mAmIPresent, mIsRecipientPresent, mIsDisplayingVideo);
    }
    b.a.b(a);
    b.a.c(a);
    HoldToStreamView.e(b);
    HoldToStreamView.f(b);
    if (a)
    {
      HoldToStreamView.g(b);
      b.a.p();
      localObject = HoldToStreamView.i(b);
      bool = a;
      if (mIsVideoIncoming != bool)
      {
        mIsVideoIncoming = bool;
        if (!mIsVideoIncoming) {
          break label228;
        }
        new EasyMetric("HERE_INCOMING_SESSION_START").d();
        mVideoIncomingStart = SystemClock.elapsedRealtime();
      }
    }
    for (;;)
    {
      ((HereAnalytics)localObject).a("setIncomingVideo(" + Boolean.toString(bool) + ")");
      b.invalidate();
      return;
      HoldToStreamView.h(b);
      break;
      label228:
      long l = SystemClock.elapsedRealtime() - mVideoIncomingStart;
      hu localhu = new hu();
      view_time_sec = Double.valueOf(l / 1000.0D);
      ScAnalyticsEventEngine.a(localhu);
      new EasyMetric("HERE_INCOMING_SESSION_END").a(l).a("reason", null).d();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.HoldToStreamView.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */