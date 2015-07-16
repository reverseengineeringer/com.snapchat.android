package com.snapchat.android.fragments.sendto;

import aeb;
import aji;
import akg;
import akp;
import akr;
import android.view.View;
import android.view.View.OnClickListener;
import awf;
import bbo;
import bbq;
import bbs;
import bbt;
import bbu;
import beo;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import of;

final class SendToFragment$1
  implements View.OnClickListener
{
  SendToFragment$1(SendToFragment paramSendToFragment) {}
  
  public final void onClick(View paramView)
  {
    int j = 1;
    paramView = SendToFragment.a(a);
    paramView.a("send");
    paramView.b();
    paramView = (LandingPageActivity)a.getActivity();
    if ((paramView == null) || ((SendToFragment.b(a).isEmpty()) && (SendToFragment.c(a).isEmpty()))) {
      return;
    }
    SendToFragment.a(a, WindowConfiguration.StatusBarDrawMode.DRAW_BACKGROUND_BEHIND);
    if (!SendToFragment.b(a).isEmpty()) {
      SendToFragment.d(a).e();
    }
    Object localObject1 = mmMediaMailingMetadata;
    ((MediaMailingMetadata)localObject1).a(SendToFragment.b(a));
    boolean bool1;
    Object localObject2;
    boolean bool2;
    label174:
    label200:
    int i;
    if (mmSnapType == Mediabryo.SnapType.SNAP) {
      if (!SendToFragment.c(a).isEmpty())
      {
        akr.Q();
        if (paramView.g() != null)
        {
          bool1 = true;
          localObject2 = SendToFragment.m();
          if (SendToFragment.b(a).isEmpty()) {
            break label368;
          }
          bool2 = true;
          AnalyticsEvents.a((aji)localObject2, bool1, bool2, "SEND_TO_SCREEN");
        }
      }
      else
      {
        mPostToStories = SendToFragment.c(a);
        localObject1 = SendToFragment.f(a);
        localObject2 = mmClientId;
        if (SendToFragment.b(a).size() <= 0) {
          break label412;
        }
        i = 1;
        label232:
        if (SendToFragment.c(a).size() <= 0) {
          break label417;
        }
      }
    }
    for (;;)
    {
      if (i != 0) {
        ((NetworkAnalytics)localObject1).a("SNAP_SENT_DELAY", (String)localObject2, "send_to_screen");
      }
      if (j != 0) {
        ((NetworkAnalytics)localObject1).a("STORY_POST_DELAY", (String)localObject2, "send_to_screen");
      }
      bbo.a().a(new beo(SendToFragment.m(), false));
      bbo.a().a(new bbu());
      bbo.a().a(new bbs(false, false));
      bbo.a().a(new bbt((byte)0));
      bbo.a().a(new bbq(CameraDisplayState.SHOW));
      awf.a(paramView, SendToFragment.g(a));
      return;
      bool1 = false;
      break;
      label368:
      bool2 = false;
      break label174;
      if (mmSnapType != Mediabryo.SnapType.DISCOVER) {
        break label200;
      }
      SendToFragment.e(a);
      SendToFragment.a(a, (aeb)mmMediaExtras);
      break label200;
      label412:
      i = 0;
      break label232;
      label417:
      j = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.sendto.SendToFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */