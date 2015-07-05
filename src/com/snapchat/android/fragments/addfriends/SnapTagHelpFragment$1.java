package com.snapchat.android.fragments.addfriends;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class SnapTagHelpFragment$1
  implements View.OnTouchListener
{
  SnapTagHelpFragment$1(SnapTagHelpFragment paramSnapTagHelpFragment) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = a.getActivity();
    if (paramView != null) {
      paramView.onBackPressed();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.SnapTagHelpFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */