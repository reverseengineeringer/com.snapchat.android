package com.snapchat.android.fragments.settings;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;

final class CustomStoryPrivacyFragment$1
  implements View.OnTouchListener
{
  CustomStoryPrivacyFragment$1(CustomStoryPrivacyFragment paramCustomStoryPrivacyFragment) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (CustomStoryPrivacyFragment.a(a)) {
      CustomStoryPrivacyFragment.b(a).hideSoftInputFromWindow(a.getView().getWindowToken(), 0);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.CustomStoryPrivacyFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */