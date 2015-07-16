package com.snapchat.android.fragments.verification;

import android.os.Handler;
import bho;

final class PhoneVerificationFragment$a
  extends bho
{
  public PhoneVerificationFragment$a(PhoneVerificationFragment paramPhoneVerificationFragment, int paramInt, long paramLong, Handler paramHandler)
  {
    super(paramInt, paramLong, paramHandler);
    PhoneVerificationFragment.a(paramPhoneVerificationFragment, paramInt);
    paramPhoneVerificationFragment.t();
  }
  
  public final void a()
  {
    if (!a.isAdded()) {
      return;
    }
    PhoneVerificationFragment.r(a);
    a.t();
  }
  
  public final void b()
  {
    if (!a.isAdded()) {
      return;
    }
    PhoneVerificationFragment.a(a, null);
    a.t();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */