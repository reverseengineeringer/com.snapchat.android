package com.snapchat.android.ui.ptr;

import android.graphics.drawable.AnimationDrawable;

final class DancingGhostPtrHeader$1
  implements Runnable
{
  DancingGhostPtrHeader$1(DancingGhostPtrHeader paramDancingGhostPtrHeader, int paramInt) {}
  
  public final void run()
  {
    if (!DancingGhostPtrHeader.a(b).isRunning()) {
      return;
    }
    switch (a)
    {
    default: 
      return;
    case 2130837643: 
      b.a(2130837765);
      return;
    case 2130838164: 
      b.a(2130838066);
      return;
    case 2130838066: 
      b.a(2130837875);
      return;
    case 2130837875: 
      b.a(2130837643);
      return;
    }
    b.a(2130838164);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ptr.DancingGhostPtrHeader.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */