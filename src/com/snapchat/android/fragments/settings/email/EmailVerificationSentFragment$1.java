package com.snapchat.android.fragments.settings.email;

import ajx;
import amk;
import anc;
import anc.c;
import android.view.View;
import aok;
import aol;
import atx;
import ban;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.eventbus.ShowDialogEvent.a;
import com.squareup.otto.Bus;
import java.util.Set;

final class EmailVerificationSentFragment$1
  implements aok
{
  EmailVerificationSentFragment$1(EmailVerificationSentFragment paramEmailVerificationSentFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if ((EmailVerificationSentFragment.a(a).contains(Integer.valueOf(i))) && ((paramamk instanceof anc)))
    {
      EmailVerificationSentFragment.a(a).remove(Integer.valueOf(i));
      paramamk = b;
      EmailVerificationSentFragment.b(a).setVisibility(8);
      EmailVerificationSentFragment.c(a).setVisibility(0);
      if (a)
      {
        paramamk = new ShowDialogEvent.a(ShowDialogEvent.DialogType.ONE_BUTTON);
        mTitleResId = 2131493152;
        EmailVerificationSentFragment.d(a);
        mMessage = atx.a(null, 2131493151, new Object[] { ajx.bn() });
        paramamk = paramamk.a();
        ban.a().a(paramamk);
      }
    }
    else
    {
      return;
    }
    ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, d));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailVerificationSentFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */