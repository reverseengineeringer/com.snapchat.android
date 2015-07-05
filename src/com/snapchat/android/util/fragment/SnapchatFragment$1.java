package com.snapchat.android.util.fragment;

import aux;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.util.StartupPath;
import nf;

final class SnapchatFragment$1
  implements Runnable
{
  SnapchatFragment$1(SnapchatFragment paramSnapchatFragment) {}
  
  public final void run()
  {
    this$0.f(true);
    nf localnf = SnapchatFragment.a(this$0);
    if (mStartupMetric != null)
    {
      StartupPath localStartupPath2 = aux.b();
      StartupPath localStartupPath1 = localStartupPath2;
      if (localStartupPath2 == StartupPath.FROM_DESTROYED_STATE) {
        localStartupPath1 = StartupPath.FROM_KILLED_STATE;
      }
      mStartupMetric.a("type", localStartupPath1);
      mStartupMetric.a(false);
      mStartupMetric = null;
    }
    if (this$0.mPageIndex != 2) {
      amDictionaryEasyMetric.a("CAMERA_READY");
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.fragment.SnapchatFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */