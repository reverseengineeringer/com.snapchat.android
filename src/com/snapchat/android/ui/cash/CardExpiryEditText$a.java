package com.snapchat.android.ui.cash;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import java.util.Calendar;
import ye;

final class CardExpiryEditText$a
  implements TextWatcher
{
  private CharSequence b = null;
  private boolean c = false;
  private boolean d = false;
  
  private CardExpiryEditText$a(CardExpiryEditText paramCardExpiryEditText) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    if (d) {
      return;
    }
    StringBuilder localStringBuilder = CardExpiryEditText.a(a, paramEditable);
    if (c) {
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    CardExpiryEditText localCardExpiryEditText;
    Object localObject;
    int k;
    int i;
    if (!TextUtils.equals(b, localStringBuilder.toString()))
    {
      localCardExpiryEditText = a;
      localObject = localStringBuilder.toString();
      if (!((String)localObject).matches("[0-9]{2}/[0-9]{2}")) {
        break label305;
      }
      localObject = ((String)localObject).split("/");
      k = Integer.parseInt(localObject[0]);
      if ((k > 0) && (k <= 12)) {
        break label181;
      }
      i = 0;
      if (i == 0) {
        break label310;
      }
      CardExpiryEditText.a(a, true);
      if (CardExpiryEditText.a(a) != null) {
        CardExpiryEditText.a(a).b();
      }
    }
    for (;;)
    {
      b = localStringBuilder;
      d = true;
      paramEditable.replace(0, paramEditable.length(), localStringBuilder);
      d = false;
      return;
      label181:
      i = Integer.parseInt(localObject[1]);
      int m = a.get(1);
      int j = i + (m - m % 100);
      i = j;
      if (j < m) {
        i = j + 100;
      }
      b.set(1, i);
      b.set(2, k - 1);
      b.set(5, b.getActualMaximum(5));
      b.add(5, 1);
      if ((!b.before(a)) && (i - m <= 25))
      {
        i = 1;
        break;
      }
      label305:
      i = 0;
      break;
      label310:
      CardExpiryEditText.a(a, false);
      if (CardExpiryEditText.a(a) != null) {
        CardExpiryEditText.a(a).a();
      }
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt3 == 0) && (paramCharSequence.subSequence(paramInt1, paramInt1 + paramInt2).toString().equals("/"))) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.CardExpiryEditText.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */