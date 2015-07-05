package com.snapchat.android.ui.caption;

import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import aps;
import ban;
import baw;
import com.squareup.otto.Bus;

final class VanillaCaptionEditText$1
  implements TextWatcher
{
  private int b = 0;
  
  VanillaCaptionEditText$1(VanillaCaptionEditText paramVanillaCaptionEditText) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    if (a.f) {}
    label74:
    label135:
    label257:
    do
    {
      return;
      String str2 = paramEditable.toString();
      VanillaCaptionEditText localVanillaCaptionEditText = a;
      String str1 = str2;
      if (localVanillaCaptionEditText.getPaint().measureText(str1) > 0.975F * q) {}
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label74;
        }
        str1 = str1.substring(0, str1.length() - 1);
        break;
      }
      if (!TextUtils.equals(str2, str1))
      {
        a.setMaxTextLengthInputFilter(str1.length());
        a.f = true;
        paramEditable.clear();
        paramEditable.append(str1);
        a.j = str1.length();
        a.f = false;
        if (a.h)
        {
          if (!a.e()) {
            continue;
          }
          ban.a().a(new baw(6));
        }
      }
      else
      {
        if (a.j > 0) {
          a.j = Math.max(a.j, str2.length());
        }
        if (str2.length() <= b) {
          break label257;
        }
      }
      for (i = 1;; i = 0)
      {
        b = str2.length();
        if ((i == 0) || (a.c == null)) {
          break label135;
        }
        a.c.a(str2);
        break label135;
        break;
      }
    } while (a.i);
    ban.a().a(new baw(-1));
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.VanillaCaptionEditText.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */