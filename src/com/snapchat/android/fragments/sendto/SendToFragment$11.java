package com.snapchat.android.fragments.sendto;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;

final class SendToFragment$11
  implements View.OnTouchListener
{
  SendToFragment$11(SendToFragment paramSendToFragment) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (SendToFragment.h(a))
    {
      SendToFragment.o(a).a(WindowConfiguration.StatusBarDrawMode.DRAW_BACKGROUND_BEHIND);
      SendToFragment.p(a).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.sendto.SendToFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */