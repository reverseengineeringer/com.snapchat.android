package com.snapchat.android.fragments.sendto;

import android.widget.HorizontalScrollView;
import com.snapchat.android.ui.SendToBottomPanelView;
import java.util.ArrayList;
import java.util.LinkedHashSet;

final class SendToFragment$2
  implements Runnable
{
  SendToFragment$2(SendToFragment paramSendToFragment) {}
  
  public final void run()
  {
    SendToFragment.q(a).getScrollView().fullScroll(66);
    if ((SendToFragment.b(a).isEmpty()) && (SendToFragment.c(a).isEmpty()))
    {
      SendToFragment.r(a);
      return;
    }
    if (SendToFragment.q(a).getVisibility() == 8)
    {
      SendToFragment.s(a);
      return;
    }
    SendToFragment.q(a).a(true);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.sendto.SendToFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */