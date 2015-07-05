package com.snapchat.android.ui.caption;

import android.text.Editable;
import android.text.TextWatcher;
import aps;
import ban;
import baw;
import com.squareup.otto.Bus;

final class FatCaptionEditText$3
  implements TextWatcher
{
  private int b = 0;
  
  FatCaptionEditText$3(FatCaptionEditText paramFatCaptionEditText) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    int i = 1;
    if ((a.f) || (FatCaptionEditText.b(a))) {
      return;
    }
    a.y = false;
    if (FatCaptionEditText.a(paramEditable))
    {
      a.b(true);
      return;
    }
    paramEditable = paramEditable.toString();
    if (paramEditable.length() > b) {}
    for (;;)
    {
      if ((i != 0) && (a.c != null)) {
        a.c.a(paramEditable);
      }
      b = paramEditable.length();
      if ((!a.h) || (a.i)) {
        break;
      }
      ban.a().a(new baw(-1));
      return;
      i = 0;
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.FatCaptionEditText.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */