package com.snapchat.android.fragments.signup;

import android.text.Editable;
import android.text.TextWatcher;
import com.snapchat.android.analytics.AnalyticsEvents;
import java.util.Collections;

final class PickUsernameFragment$3
  implements TextWatcher
{
  PickUsernameFragment$3(PickUsernameFragment paramPickUsernameFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    a.a(null);
    a.a(PickUsernameFragment.UsernameState.CLEAR);
    if (!PickUsernameFragment.e(a))
    {
      a.a(Collections.emptyList());
      PickUsernameFragment.a(a, true);
    }
    PickUsernameFragment.f(a);
    if (!PickUsernameFragment.g(a))
    {
      AnalyticsEvents.C();
      PickUsernameFragment.b(a, true);
    }
    PickUsernameFragment.h(a);
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.PickUsernameFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */