package com.snapchat.android.fragments.signup;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import le;

final class PickUsernameFragment$4
  implements View.OnFocusChangeListener
{
  PickUsernameFragment$4(PickUsernameFragment paramPickUsernameFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      PickUsernameFragment.k(a);
      if ((PickUsernameFragment.i(a)) && (!PickUsernameFragment.j(a))) {}
      for (paramView = PickUsernameFragment.c(a).getText().toString();; paramView = null)
      {
        le localle = new le();
        usernameSuggestion = paramView;
        ScAnalyticsEventEngine.a(localle);
        AnalyticsEvents.B();
        return;
      }
    }
    PickUsernameFragment.b(a, false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.PickUsernameFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */