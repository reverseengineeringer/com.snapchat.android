package com.snapchat.android.discover.ui;

import aex;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;

final class DSnapView$a
  implements Runnable
{
  DSnapView a;
  float b;
  float c;
  
  public DSnapView$a(DSnapView paramDSnapView1, DSnapView paramDSnapView2)
  {
    a = paramDSnapView2;
  }
  
  public final void run()
  {
    if (DSnapView.b(d) != null)
    {
      ReleaseManager.k();
      if (DSnapView.c(d)) {
        DSnapView.d(d).a(new aex(a, b, c));
      }
    }
    DSnapView.e(d);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DSnapView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */