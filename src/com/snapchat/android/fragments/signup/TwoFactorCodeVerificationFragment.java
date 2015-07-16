package com.snapchat.android.fragments.signup;

import akp;
import akr;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import anh;
import aod;
import apg;
import aph;
import auv;
import avb;
import aze;
import azy;
import bfs;
import bjg;
import blk;
import bpi;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.LoginTask;
import com.snapchat.android.api2.LoginTask.a;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashSet;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;

public class TwoFactorCodeVerificationFragment
  extends GenericCodeVerificationFragment
{
  @Inject
  public aze f;
  private String g;
  private String h;
  private String i;
  private final Provider<akp> j;
  private final aph k;
  private LoginTask.a l = new LoginTask.a()
  {
    public final void a()
    {
      if (ReleaseManager.f()) {
        throw new RuntimeException("Username required for two-factor authentication");
      }
      getActivity().onBackPressed();
    }
    
    public final void a(int paramAnonymousInt, String paramAnonymousString)
    {
      d.setClickable(true);
      a.setEnabled(true);
      e.setVisibility(8);
      t();
      a(paramAnonymousString);
    }
    
    public final void a(bjg paramAnonymousbjg)
    {
      getActivity().onBackPressed();
    }
    
    public final void b(bjg paramAnonymousbjg)
    {
      if (!isAdded()) {}
      TwoFactorCodeVerificationFragment localTwoFactorCodeVerificationFragment;
      do
      {
        return;
        localTwoFactorCodeVerificationFragment = TwoFactorCodeVerificationFragment.this;
      } while (akr.l() == null);
      FragmentActivity localFragmentActivity = localTwoFactorCodeVerificationFragment.getActivity();
      Intent localIntent = new Intent(localFragmentActivity, LandingPageActivity.class);
      localIntent.addFlags(67108864);
      localIntent.putExtra("recovery_code_used", avb.a(paramAnonymousbjg.u()));
      localTwoFactorCodeVerificationFragment.startActivity(localIntent);
      localFragmentActivity.finish();
    }
    
    public final void w_()
    {
      if (ReleaseManager.f()) {
        throw new RuntimeException("Verification required for two-factor authentication");
      }
      getActivity().onBackPressed();
    }
  };
  private final Set<Integer> m = new HashSet();
  private apg n = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if ((TwoFactorCodeVerificationFragment.a(TwoFactorCodeVerificationFragment.this).contains(Integer.valueOf(i))) && ((paramAnonymousanh instanceof aod)))
      {
        TwoFactorCodeVerificationFragment.a(TwoFactorCodeVerificationFragment.this).remove(Integer.valueOf(i));
        paramAnonymousanh = (aod)paramAnonymousanh;
        if (b) {
          getActivity().onBackPressed();
        }
      }
      else
      {
        return;
      }
      paramAnonymousanh = a;
      e.setVisibility(8);
      d.setClickable(true);
      a.setEnabled(true);
      if (avb.a(paramAnonymousanh.a()))
      {
        a.setText("");
        a.requestFocus();
        r();
      }
      for (;;)
      {
        t();
        return;
        AlertDialogUtils.a(getActivity(), paramAnonymousanh.b());
      }
    }
  };
  
  public TwoFactorCodeVerificationFragment()
  {
    this(akp.UNSAFE_USER_PROVIDER, aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private TwoFactorCodeVerificationFragment(Provider<akp> paramProvider, aph paramaph)
  {
    SnapchatApplication.b().c().a(this);
    j = paramProvider;
    k = paramaph;
  }
  
  public static final TwoFactorCodeVerificationFragment a(String paramString1, String paramString2, String paramString3)
  {
    TwoFactorCodeVerificationFragment localTwoFactorCodeVerificationFragment = new TwoFactorCodeVerificationFragment();
    Bundle localBundle = new Bundle(3);
    localBundle.putString("phone_number", paramString1);
    localBundle.putString("login_name", paramString2);
    localBundle.putString("pre_auth_token", paramString3);
    localTwoFactorCodeVerificationFragment.setArguments(localBundle);
    return localTwoFactorCodeVerificationFragment;
  }
  
  public final void i()
  {
    new LoginTask(h, a.getText().toString(), l, i, f, j).execute();
  }
  
  public final void m()
  {
    Set localSet = m;
    aph localaph = aph.a();
    FragmentActivity localFragmentActivity = getActivity();
    String str = i;
    Intent localIntent = localaph.b(localFragmentActivity);
    localIntent.putExtra("op_code", 1022);
    localIntent.putExtra("action", "requestTwoFactorCode");
    localIntent.putExtra("pre_auth_token", str);
    localSet.add(Integer.valueOf(localaph.a(localFragmentActivity, localIntent)));
  }
  
  public final String n()
  {
    return auv.a(null, 2131493573, new Object[] { g });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      g = paramBundle.getString("phone_number", null);
      h = paramBundle.getString("login_name", null);
      i = paramBundle.getString("pre_auth_token", null);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968777, null);
    o();
    p();
    q();
    r();
    t();
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    aph.a().b(1022, n);
    m.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    aph.a().a(1022, n);
  }
  
  @bpi
  public void onVerificationCodeReceivedEvent(bfs parambfs)
  {
    super.onVerificationCodeReceivedEvent(parambfs);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.TwoFactorCodeVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */