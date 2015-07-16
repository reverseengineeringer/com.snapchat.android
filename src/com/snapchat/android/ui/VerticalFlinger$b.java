package com.snapchat.android.ui;

import aqk;
import aqk.b;
import bgf;
import bj;
import bj.a;
import chc;
import co;

final class VerticalFlinger$b
  implements aqk.b
{
  VerticalFlinger$b(VerticalFlinger paramVerticalFlinger) {}
  
  public final void a()
  {
    switch (VerticalFlinger.1.a[VerticalFlinger.a(a).ordinal()])
    {
    default: 
      throw new IllegalStateException("Unhandled state: " + VerticalFlinger.a(a));
    case 3: 
      VerticalFlinger.a(a, VerticalFlinger.MovementState.GONE);
    case 1: 
    case 2: 
    case 4: 
      return;
    case 5: 
      VerticalFlinger.a(a, VerticalFlinger.MovementState.CENTER);
      return;
    }
    VerticalFlinger.a(a, VerticalFlinger.MovementState.CENTER);
  }
  
  public final void a(@chc aqk paramaqk)
  {
    VerticalFlinger localVerticalFlinger = a;
    paramaqk.f();
    if (d) {}
    for (paramaqk = new bgf(a.d.a, b.d.a);; paramaqk = e)
    {
      VerticalFlinger.a(localVerticalFlinger, paramaqk);
      return;
      co.a(e);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VerticalFlinger.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */