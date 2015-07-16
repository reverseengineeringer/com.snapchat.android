package com.snapchat.android.preview;

import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;

final class SnapPreviewFragment$3
  implements View.OnClickListener
{
  SnapPreviewFragment$3(SnapPreviewFragment paramSnapPreviewFragment) {}
  
  public final void onClick(View paramView)
  {
    if (!SnapPreviewFragment.q(a))
    {
      ra).mPrepareSnapMetric = EasyMetric.EasyMetricFactory.b("PREPARE_SNAP").b();
      SnapPreviewFragment.s(a);
    }
    SnapPreviewFragment.t(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */