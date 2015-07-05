package com.snapchat.android.fragments.settings;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

final class BasePasswordValidationFragment$3
  implements TextWatcher
{
  BasePasswordValidationFragment$3(BasePasswordValidationFragment paramBasePasswordValidationFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    paramEditable = a;
    if (!TextUtils.isEmpty(a.getText()))
    {
      b.setText(2131493356);
      b.setClickable(true);
      b.setVisibility(0);
    }
    for (;;)
    {
      a.a(null);
      return;
      b.setVisibility(8);
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.BasePasswordValidationFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */