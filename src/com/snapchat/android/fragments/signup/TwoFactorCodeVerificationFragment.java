package com.snapchat.android.fragments.signup;

import ajv;
import ajx;
import amk;
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
import ang;
import aok;
import aol;
import atx;
import aud;
import ayg;
import aza;
import bet;
import big;
import bkj;
import boh;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashSet;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;
import pw;
import pw.a;

public class TwoFactorCodeVerificationFragment
  extends GenericCodeVerificationFragment
{
  @Inject
  public ayg f;
  private String g;
  private String h;
  private String i;
  private final Provider<ajv> j;
  private final aol k;
  private pw.a l = new pw.a()
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
    
    public final void a(big paramAnonymousbig)
    {
      getActivity().onBackPressed();
    }
    
    public final void b(big paramAnonymousbig)
    {
      if (!isAdded()) {}
      TwoFactorCodeVerificationFragment localTwoFactorCodeVerificationFragment;
      do
      {
        return;
        localTwoFactorCodeVerificationFragment = TwoFactorCodeVerificationFragment.this;
      } while (ajx.l() == null);
      FragmentActivity localFragmentActivity = localTwoFactorCodeVerificationFragment.getActivity();
      Intent localIntent = new Intent(localFragmentActivity, LandingPageActivity.class);
      localIntent.addFlags(67108864);
      localIntent.putExtra("recovery_code_used", aud.a(paramAnonymousbig.u()));
      localTwoFactorCodeVerificationFragment.startActivity(localIntent);
      localFragmentActivity.finish();
    }
    
    public final void x_()
    {
      if (ReleaseManager.f()) {
        throw new RuntimeException("Verification required for two-factor authentication");
      }
      getActivity().onBackPressed();
    }
  };
  private final Set<Integer> m = new HashSet();
  private aok n = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if ((TwoFactorCodeVerificationFragment.a(TwoFactorCodeVerificationFragment.this).contains(Integer.valueOf(i))) && ((paramAnonymousamk instanceof ang)))
      {
        TwoFactorCodeVerificationFragment.a(TwoFactorCodeVerificationFragment.this).remove(Integer.valueOf(i));
        paramAnonymousamk = (ang)paramAnonymousamk;
        if (b) {
          getActivity().onBackPressed();
        }
      }
      else
      {
        return;
      }
      paramAnonymousamk = a;
      e.setVisibility(8);
      d.setClickable(true);
      a.setEnabled(true);
      if (aud.a(paramAnonymousamk.a()))
      {
        a.setText("");
        a.requestFocus();
        r();
      }
      for (;;)
      {
        t();
        return;
        AlertDialogUtils.a(getActivity(), paramAnonymousamk.b());
      }
    }
  };
  
  public TwoFactorCodeVerificationFragment()
  {
    this(ajv.UNSAFE_USER_PROVIDER, aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private TwoFactorCodeVerificationFragment(Provider<ajv> paramProvider, aol paramaol)
  {
    SnapchatApplication.b().c().a(this);
    j = paramProvider;
    k = paramaol;
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
    new pw(h, a.getText().toString(), l, i, f, j).f();
  }
  
  public final void m()
  {
    Set localSet = m;
    aol localaol = aol.a();
    FragmentActivity localFragmentActivity = getActivity();
    String str = i;
    Intent localIntent = localaol.b(localFragmentActivity);
    localIntent.putExtra("op_code", 1022);
    localIntent.putExtra("action", "requestTwoFactorCode");
    localIntent.putExtra("pre_auth_token", str);
    localSet.add(Integer.valueOf(localaol.a(localFragmentActivity, localIntent)));
  }
  
  public final String n()
  {
    return atx.a(null, 2131493575, new Object[] { g });
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968775, null);
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
    aol.a().b(1022, n);
    m.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    aol.a().a(1022, n);
  }
  
  @boh
  public void onVerificationCodeReceivedEvent(bet parambet)
  {
    super.onVerificationCodeReceivedEvent(parambet);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.TwoFactorCodeVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */