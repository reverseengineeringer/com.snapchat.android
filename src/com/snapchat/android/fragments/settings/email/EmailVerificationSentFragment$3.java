package com.snapchat.android.fragments.settings.email;

import ajx;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import aol;
import java.util.Set;

final class EmailVerificationSentFragment$3
  implements View.OnClickListener
{
  EmailVerificationSentFragment$3(EmailVerificationSentFragment paramEmailVerificationSentFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = EmailVerificationSentFragment.a(a);
    aol localaol = EmailVerificationSentFragment.e(a);
    FragmentActivity localFragmentActivity = a.getActivity();
    EmailVerificationSentFragment.d(a);
    paramView.add(Integer.valueOf(localaol.a(localFragmentActivity, "verifyEmail", ajx.bn(), null)));
    EmailVerificationSentFragment.b(a).setVisibility(0);
    EmailVerificationSentFragment.c(a).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailVerificationSentFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */