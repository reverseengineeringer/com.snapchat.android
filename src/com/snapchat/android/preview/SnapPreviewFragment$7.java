package com.snapchat.android.preview;

import android.view.View;
import android.view.View.OnClickListener;
import bdn;
import bgr;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.ui.SendToBottomPanelView;
import com.squareup.otto.Bus;

final class SnapPreviewFragment$7
  implements View.OnClickListener
{
  SnapPreviewFragment$7(SnapPreviewFragment paramSnapPreviewFragment) {}
  
  public final void onClick(View paramView)
  {
    if (!a.n()) {
      return;
    }
    SnapPreviewFragment.w(a).a(new bdn(SnapPreviewFragment.i(a), true));
    new EasyMetric("TAP_RECIPIENTS_IN_PREVIEW").d();
    ((SendToBottomPanelView)SnapPreviewFragment.x(a).a()).setOnClickListener(null);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */