package com.snapchat.android.discover.ui;

import android.os.SystemClock;

final class DiscoverButtonView$1
  implements Runnable
{
  DiscoverButtonView$1(DiscoverButtonView paramDiscoverButtonView) {}
  
  public final void run()
  {
    DiscoverButtonView.a(a, SystemClock.elapsedRealtime());
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DiscoverButtonView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */