package com.snapchat.android.fragments.settings.twofa;

import ajx;
import amk;
import anc;
import anc.c;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import aok;
import aol;
import atx;
import avh;
import ban;
import bdw;
import bet;
import boh;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.fragments.signup.GenericCodeVerificationFragment;
import com.snapchat.android.util.AlertDialogUtils;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Set;

public class TwoFAEnableCodeConfirmationFragment
  extends GenericCodeVerificationFragment
{
  private final ajx f;
  private final aol g;
  private final Set<Integer> h = new HashSet();
  private aok i = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      anc.c localc;
      if (TwoFAEnableCodeConfirmationFragment.a(TwoFAEnableCodeConfirmationFragment.this).contains(Integer.valueOf(i)))
      {
        TwoFAEnableCodeConfirmationFragment.a(TwoFAEnableCodeConfirmationFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousamk instanceof anc))
        {
          paramAnonymousamk = (anc)paramAnonymousamk;
          localc = b;
          TwoFAEnableCodeConfirmationFragment.b(TwoFAEnableCodeConfirmationFragment.this).setVisibility(8);
          TwoFAEnableCodeConfirmationFragment.c(TwoFAEnableCodeConfirmationFragment.this).setClickable(true);
          TwoFAEnableCodeConfirmationFragment.d(TwoFAEnableCodeConfirmationFragment.this).setEnabled(true);
          if (!TextUtils.equals(a, "enableTwoFA")) {
            break label164;
          }
          if (!a) {
            break label150;
          }
          ban.a().a(new bdw(new TwoFactorSettingsEnabledFragment(), TwoFactorSettingsEnabledFragment.class.getSimpleName(), LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag()));
        }
      }
      for (;;)
      {
        TwoFAEnableCodeConfirmationFragment.h(TwoFAEnableCodeConfirmationFragment.this);
        return;
        label150:
        TwoFAEnableCodeConfirmationFragment.a(TwoFAEnableCodeConfirmationFragment.this, d);
        continue;
        label164:
        if (a)
        {
          TwoFAEnableCodeConfirmationFragment.e(TwoFAEnableCodeConfirmationFragment.this).setText("");
          TwoFAEnableCodeConfirmationFragment.f(TwoFAEnableCodeConfirmationFragment.this).requestFocus();
          TwoFAEnableCodeConfirmationFragment.g(TwoFAEnableCodeConfirmationFragment.this);
        }
        else
        {
          AlertDialogUtils.a(getActivity(), d);
        }
      }
    }
  };
  
  public TwoFAEnableCodeConfirmationFragment()
  {
    this(ajx.a(), aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private TwoFAEnableCodeConfirmationFragment(ajx paramajx, aol paramaol)
  {
    f = paramajx;
    g = paramaol;
  }
  
  public final void i()
  {
    h.add(Integer.valueOf(g.a(getActivity(), "enableTwoFA", a.getText().toString(), null)));
  }
  
  public final void m()
  {
    h.add(Integer.valueOf(g.a(getActivity(), "sendTwoFACode", a.getText().toString(), null)));
  }
  
  public final String n()
  {
    return atx.a(null, 2131493547, new Object[] { PhoneNumberUtils.formatNumber(ajx.e()) });
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968767, null);
    c(2131362803).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        avh.a(getActivity(), getView());
        getActivity().onBackPressed();
      }
    });
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
    g.b(1012, i);
    h.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    g.a(1012, i);
  }
  
  @boh
  public void onVerificationCodeReceivedEvent(bet parambet)
  {
    super.onVerificationCodeReceivedEvent(parambet);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFAEnableCodeConfirmationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */