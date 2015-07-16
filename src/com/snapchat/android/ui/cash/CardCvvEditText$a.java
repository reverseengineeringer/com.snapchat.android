package com.snapchat.android.ui.cash;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import za;

final class CardCvvEditText$a
  implements TextWatcher
{
  private CharSequence b = null;
  
  private CardCvvEditText$a(CardCvvEditText paramCardCvvEditText) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    paramEditable = new StringBuilder(paramEditable);
    if (!TextUtils.equals(b, paramEditable))
    {
      if (paramEditable.length() != 3) {
        break label65;
      }
      CardCvvEditText.a(a, true);
      if (CardCvvEditText.a(a) != null) {
        CardCvvEditText.a(a).b();
      }
    }
    for (;;)
    {
      b = paramEditable;
      return;
      label65:
      CardCvvEditText.a(a, false);
      if (CardCvvEditText.a(a) != null) {
        CardCvvEditText.a(a).a();
      }
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.CardCvvEditText.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */