package com.snapchat.android.fragments.signup;

import akr;
import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import avb;
import bjg;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.api2.LoginTask.a;
import com.snapchat.android.util.debug.ReleaseManager;

final class TwoFactorCodeVerificationFragment$1
  implements LoginTask.a
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
  
  public final void a(bjg parambjg)
  {
    a.getActivity().onBackPressed();
  }
  
  public final void b(bjg parambjg)
  {
    if (!a.isAdded()) {}
    TwoFactorCodeVerificationFragment localTwoFactorCodeVerificationFragment;
    do
    {
      return;
      localTwoFactorCodeVerificationFragment = a;
    } while (akr.l() == null);
    FragmentActivity localFragmentActivity = localTwoFactorCodeVerificationFragment.getActivity();
    Intent localIntent = new Intent(localFragmentActivity, LandingPageActivity.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("recovery_code_used", avb.a(parambjg.u()));
    localTwoFactorCodeVerificationFragment.startActivity(localIntent);
    localFragmentActivity.finish();
  }
  
  public final void w_()
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