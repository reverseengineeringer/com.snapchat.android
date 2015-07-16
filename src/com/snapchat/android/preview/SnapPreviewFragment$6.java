package com.snapchat.android.preview;

import aji;
import akg;
import akp;
import android.view.View;
import android.view.View.OnClickListener;
import bbq;
import bcb;
import ben;
import bhr;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.ui.SendToBottomPanelView;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.LinkedHashSet;

final class SnapPreviewFragment$6
  implements View.OnClickListener
{
  SnapPreviewFragment$6(SnapPreviewFragment paramSnapPreviewFragment) {}
  
  public final void onClick(View paramView)
  {
    if (!a.n()) {
      return;
    }
    SnapPreviewFragment.v(a).a("SNAP_SENT_DELAY", ia).mClientId, "preview_screen");
    paramView = ia).mMediaMailingMetadata;
    if (!paramView.d().isEmpty())
    {
      SnapPreviewFragment.a(a, akp.a(a.getActivity()));
      SnapPreviewFragment.w(a).e();
    }
    aji localaji;
    if (ia).mSnapType == Mediabryo.SnapType.SNAP)
    {
      paramView = (akg)paramView;
      if (!mPostToStories.isEmpty())
      {
        localaji = SnapPreviewFragment.i(a);
        if (paramView.d().isEmpty()) {
          break label222;
        }
      }
    }
    label222:
    for (boolean bool = true;; bool = false)
    {
      AnalyticsEvents.a(localaji, true, bool, "SEND_TO_SCREEN");
      SnapPreviewFragment.x(a).a(new bbq(CameraDisplayState.SHOW));
      SnapPreviewFragment.x(a).a(new bcb());
      SnapPreviewFragment.x(a).a(new ben(SnapPreviewFragment.i(a)));
      ((SendToBottomPanelView)SnapPreviewFragment.y(a).a()).setSendButtonOnClickListener(null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */