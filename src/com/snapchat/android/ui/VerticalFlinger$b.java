package com.snapchat.android.ui;

import apl;
import apl.b;
import bff;
import bj;
import bj.a;
import cgb;
import ck;
import com.snapchat.android.Timber;

final class VerticalFlinger$b
  implements apl.b
{
  VerticalFlinger$b(VerticalFlinger paramVerticalFlinger) {}
  
  public final void a()
  {
    switch (VerticalFlinger.1.a[VerticalFlinger.a(a).ordinal()])
    {
    default: 
      throw new IllegalStateException("Unhandled state: " + VerticalFlinger.a(a));
    case 2: 
      Timber.e("VerticalFlinger", "Received spring rest event while in DRAG state. Weird. Ignoring.", new Object[0]);
    case 1: 
    case 4: 
      return;
    case 3: 
      VerticalFlinger.a(a, VerticalFlinger.MovementState.GONE);
      return;
    case 5: 
      VerticalFlinger.a(a, VerticalFlinger.MovementState.CENTER);
      return;
    }
    VerticalFlinger.a(a, VerticalFlinger.MovementState.CENTER);
  }
  
  public final void a(@cgb apl paramapl)
  {
    VerticalFlinger localVerticalFlinger = a;
    paramapl.f();
    if (d) {}
    for (paramapl = new bff(a.d.a, b.d.a);; paramapl = e)
    {
      VerticalFlinger.a(localVerticalFlinger, paramapl);
      return;
      ck.a(e);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VerticalFlinger.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */