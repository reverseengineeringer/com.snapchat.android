package com.snapchat.android.fragments.settings.email;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import bbo;
import bev;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.squareup.otto.Bus;

final class EmailVerificationSentFragment$4
  implements View.OnTouchListener
{
  EmailVerificationSentFragment$4(EmailVerificationSentFragment paramEmailVerificationSentFragment) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      bbo.a().a(new bev(new EmailSettingsFragment(), EmailSettingsFragment.class.getSimpleName(), LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag()));
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailVerificationSentFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */