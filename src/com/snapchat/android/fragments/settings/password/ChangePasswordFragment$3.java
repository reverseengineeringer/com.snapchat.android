package com.snapchat.android.fragments.settings.password;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class ChangePasswordFragment$3
  implements TextWatcher
{
  ChangePasswordFragment$3(ChangePasswordFragment paramChangePasswordFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    a.k = PasswordStrength.UNKNOWN;
    a.f.setText("");
    ChangePasswordFragment.b(a);
    ChangePasswordFragment.c(a);
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.ChangePasswordFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */