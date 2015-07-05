package com.snapchat.android.fragments.cash;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;

final class SecurityCodeFragment$4
  implements TextWatcher
{
  private boolean c = false;
  
  SecurityCodeFragment$4(SecurityCodeFragment paramSecurityCodeFragment, View paramView) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    if (!c)
    {
      SecurityCodeFragment.a(a);
      c = true;
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.SecurityCodeFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */