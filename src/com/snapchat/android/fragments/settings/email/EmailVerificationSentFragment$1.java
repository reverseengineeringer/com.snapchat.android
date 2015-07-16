package com.snapchat.android.fragments.settings.email;

import akr;
import android.view.View;
import anh;
import anz;
import anz.c;
import apg;
import aph;
import auv;
import bbo;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.eventbus.ShowDialogEvent.a;
import com.squareup.otto.Bus;
import java.util.Set;

final class EmailVerificationSentFragment$1
  implements apg
{
  EmailVerificationSentFragment$1(EmailVerificationSentFragment paramEmailVerificationSentFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if ((EmailVerificationSentFragment.a(a).contains(Integer.valueOf(i))) && ((paramanh instanceof anz)))
    {
      EmailVerificationSentFragment.a(a).remove(Integer.valueOf(i));
      paramanh = b;
      EmailVerificationSentFragment.b(a).setVisibility(8);
      EmailVerificationSentFragment.c(a).setVisibility(0);
      if (a)
      {
        paramanh = new ShowDialogEvent.a(ShowDialogEvent.DialogType.ONE_BUTTON);
        mTitleResId = 2131493151;
        EmailVerificationSentFragment.d(a);
        mMessage = auv.a(null, 2131493150, new Object[] { akr.bk() });
        paramanh = paramanh.a();
        bbo.a().a(paramanh);
      }
    }
    else
    {
      return;
    }
    bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, d));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailVerificationSentFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */