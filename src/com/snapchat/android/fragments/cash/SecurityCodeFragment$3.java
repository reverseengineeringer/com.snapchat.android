package com.snapchat.android.fragments.cash;

import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import avh;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.ui.cash.CardCvvEditText;

final class SecurityCodeFragment$3
  implements Runnable
{
  SecurityCodeFragment$3(SecurityCodeFragment paramSecurityCodeFragment, ErrorType paramErrorType, int paramInt) {}
  
  public final void run()
  {
    SecurityCodeFragment.a(c, false);
    SecurityCodeFragment.a(c).setText(SecurityCodeFragment.b(a, b));
    if (!ErrorType.isNonRecoverableError(a))
    {
      SecurityCodeFragment.b(c).setText("");
      SecurityCodeFragment.b(c).setEnabled(true);
      if (SecurityCodeFragment.b(c).requestFocus()) {
        avh.g(c.getActivity());
      }
    }
    for (;;)
    {
      SecurityCodeFragment.d(c).setVisibility(8);
      SecurityCodeFragment.e(c).setBackgroundColor(c.getResources().getColor(2131230792));
      SecurityCodeFragment.b(c, true);
      return;
      SecurityCodeFragment.c(c);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.SecurityCodeFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */