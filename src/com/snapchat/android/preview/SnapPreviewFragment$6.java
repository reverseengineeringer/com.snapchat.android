package com.snapchat.android.preview;

import aim;
import ajk;
import ajv;
import android.view.View;
import android.view.View.OnClickListener;
import bap;
import bba;
import bdn;
import bgr;
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
    SnapPreviewFragment.u(a).a("SNAP_SENT_DELAY", ia).mClientId, "preview_screen");
    paramView = ia).mMediaMailingMetadata;
    if (!paramView.d().isEmpty())
    {
      SnapPreviewFragment.a(a, ajv.a(a.getActivity()));
      SnapPreviewFragment.v(a).e();
    }
    aim localaim;
    if (ia).mSnapType == Mediabryo.SnapType.SNAP)
    {
      paramView = (ajk)paramView;
      if (!mPostToStories.isEmpty())
      {
        localaim = SnapPreviewFragment.i(a);
        if (paramView.d().isEmpty()) {
          break label222;
        }
      }
    }
    label222:
    for (boolean bool = true;; bool = false)
    {
      AnalyticsEvents.a(localaim, true, bool, "SEND_TO_SCREEN");
      SnapPreviewFragment.w(a).a(new bap(CameraDisplayState.SHOW));
      SnapPreviewFragment.w(a).a(new bba());
      SnapPreviewFragment.w(a).a(new bdn(SnapPreviewFragment.i(a)));
      ((SendToBottomPanelView)SnapPreviewFragment.x(a).a()).setSendButtonOnClickListener(null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */