package com.snapchat.android.fragments.sendto;

import ahd;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Filter;

final class SendToFragment$7
  implements TextWatcher
{
  SendToFragment$7(SendToFragment paramSendToFragment) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    SendToFragment.k(a).b().filter(paramCharSequence.toString());
    if (TextUtils.isEmpty(paramCharSequence))
    {
      SendToFragment.l(a).setVisibility(4);
      return;
    }
    SendToFragment.l(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.sendto.SendToFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */