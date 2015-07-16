package com.snapchat.android.ui.cash;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import aua;
import za;

final class CardNumberEditText$a
  implements TextWatcher
{
  private CharSequence b = null;
  private boolean c = false;
  private boolean d;
  private boolean e = false;
  private int f = 0;
  
  private CardNumberEditText$a(CardNumberEditText paramCardNumberEditText) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    if (c) {}
    StringBuilder localStringBuilder2;
    do
    {
      return;
      if (e)
      {
        c = true;
        paramEditable.delete(f - 1, f);
        e = false;
        c = false;
      }
      localStringBuilder2 = CardNumberEditText.a(paramEditable);
    } while (TextUtils.equals(b, localStringBuilder2));
    StringBuilder localStringBuilder1;
    if (localStringBuilder2.length() == 19)
    {
      localStringBuilder1 = localStringBuilder2;
      if (CardNumberEditText.a(a) != null)
      {
        if (!aua.a(a.getUnformattedText())) {
          break label192;
        }
        CardNumberEditText.a(a).b();
        localStringBuilder1 = localStringBuilder2;
      }
    }
    for (;;)
    {
      b = localStringBuilder1;
      c = true;
      paramEditable.replace(0, paramEditable.length(), localStringBuilder1);
      int i = paramEditable.length();
      if ((d) && (i > 0) && ((i % 4 == 0) || (i == 3))) {
        a.setSelection(a.getSelectionStart() + 1);
      }
      c = false;
      return;
      label192:
      CardNumberEditText.a(a).a();
      localStringBuilder1 = localStringBuilder2;
      continue;
      if (localStringBuilder2.length() > 19)
      {
        localStringBuilder1 = new StringBuilder(b);
      }
      else
      {
        localStringBuilder1 = localStringBuilder2;
        if (CardNumberEditText.a(a) != null)
        {
          CardNumberEditText.a(a).a();
          localStringBuilder1 = localStringBuilder2;
        }
      }
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 < paramInt2)
    {
      d = true;
      if ((paramCharSequence.length() > 0) && (paramCharSequence.charAt(paramInt1) == ' '))
      {
        e = true;
        f = paramInt1;
      }
      return;
    }
    d = false;
    e = false;
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.CardNumberEditText.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */