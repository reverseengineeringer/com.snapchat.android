package com.snapchat.android.fragments.cash;

import android.view.View;
import com.snapchat.android.ui.cash.CardCvvEditText;
import za;

final class SecurityCodeFragment$b
  implements za
{
  private SecurityCodeFragment$b(SecurityCodeFragment paramSecurityCodeFragment) {}
  
  public final void a()
  {
    SecurityCodeFragment.d(a).setVisibility(8);
  }
  
  public final void b()
  {
    if (SecurityCodeFragment.f(a) == null) {
      throw new RuntimeException("Forgot to set a callback on SecurityCodeFragment!");
    }
    if (SecurityCodeFragment.g(a))
    {
      SecurityCodeFragment.b(a, false);
      SecurityCodeFragment.h(a).setBackgroundColor(-16777216);
    }
    SecurityCodeFragment.d(a).setVisibility(0);
    SecurityCodeFragment.b(a).setEnabled(false);
    SecurityCodeFragment.f(a).a(SecurityCodeFragment.b(a).getUnformattedText());
  }
  
  public final void c() {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.SecurityCodeFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */