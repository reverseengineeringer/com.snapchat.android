package com.snapchat.android.fragments.sendto;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;

final class SendToFragment$9
  implements View.OnTouchListener
{
  SendToFragment$9(SendToFragment paramSendToFragment) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      SendToFragment.n(a).a(WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.sendto.SendToFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */