package com.snapchat.android.fragments.signup;

import ajx;
import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import aud;
import big;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.util.debug.ReleaseManager;
import pw.a;

final class TwoFactorCodeVerificationFragment$1
  implements pw.a
{
  TwoFactorCodeVerificationFragment$1(TwoFactorCodeVerificationFragment paramTwoFactorCodeVerificationFragment) {}
  
  public final void a()
  {
    if (ReleaseManager.f()) {
      throw new RuntimeException("Username required for two-factor authentication");
    }
    a.getActivity().onBackPressed();
  }
  
  public final void a(int paramInt, String paramString)
  {
    a.d.setClickable(true);
    a.a.setEnabled(true);
    a.e.setVisibility(8);
    a.t();
    a.a(paramString);
  }
  
  public final void a(big parambig)
  {
    a.getActivity().onBackPressed();
  }
  
  public final void b(big parambig)
  {
    if (!a.isAdded()) {}
    TwoFactorCodeVerificationFragment localTwoFactorCodeVerificationFragment;
    do
    {
      return;
      localTwoFactorCodeVerificationFragment = a;
    } while (ajx.l() == null);
    FragmentActivity localFragmentActivity = localTwoFactorCodeVerificationFragment.getActivity();
    Intent localIntent = new Intent(localFragmentActivity, LandingPageActivity.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("recovery_code_used", aud.a(parambig.u()));
    localTwoFactorCodeVerificationFragment.startActivity(localIntent);
    localFragmentActivity.finish();
  }
  
  public final void x_()
  {
    if (ReleaseManager.f()) {
      throw new RuntimeException("Verification required for two-factor authentication");
    }
    a.getActivity().onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.TwoFactorCodeVerificationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */