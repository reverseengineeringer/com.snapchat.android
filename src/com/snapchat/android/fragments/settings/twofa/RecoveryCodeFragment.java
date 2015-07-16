package com.snapchat.android.fragments.settings.twofa;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import anh;
import anv;
import apg;
import aph;
import auv;
import bbo;
import bev;
import blk;
import cf;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Set;

public class RecoveryCodeFragment
  extends SnapchatFragment
{
  protected Button a;
  protected ProgressBar b;
  private final Set<Integer> c = new HashSet();
  private final aph d;
  private apg e = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (RecoveryCodeFragment.a(RecoveryCodeFragment.this).contains(Integer.valueOf(i)))
      {
        RecoveryCodeFragment.a(RecoveryCodeFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousanh instanceof anv))
        {
          b.setVisibility(8);
          a.setText(2131493564);
          a.setClickable(true);
          paramAnonymousanh = (anv)paramAnonymousanh;
          if (!b) {
            break label116;
          }
          bbo.a().a(new bev(new RecoveryCodePasswordValidationFragment()));
        }
      }
      return;
      label116:
      paramAnonymousanh = a;
      RecoveryCodeFragment.a(RecoveryCodeFragment.this, paramAnonymousanh);
    }
  };
  
  public RecoveryCodeFragment()
  {
    this(aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private RecoveryCodeFragment(aph paramaph)
  {
    d = paramaph;
  }
  
  private void a(blk paramblk)
  {
    if (paramblk.a().booleanValue())
    {
      AlertDialogUtils.a(getActivity(), auv.a(null, 2131493562, new Object[] { paramblk.b() }), getString(2131493561), getString(2131493567));
      return;
    }
    bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, paramblk.b()));
  }
  
  public final void e()
  {
    super.e();
    Intent localIntent = getActivity().getIntent();
    if ((localIntent != null) && (!TextUtils.isEmpty(localIntent.getStringExtra("recovery_code_message_key"))))
    {
      blk localblk = new blk().a(Boolean.valueOf(localIntent.getBooleanExtra("recovery_code_succeed_key", false))).a(localIntent.getStringExtra("recovery_code_message_key"));
      localIntent.removeExtra("recovery_code_succeed_key");
      localIntent.removeExtra("recovery_code_message_key");
      a(localblk);
    }
  }
  
  public final boolean g()
  {
    if (d(TwoFactorSettingsEnabledFragment.class.getSimpleName())) {
      return true;
    }
    return super.g();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968774, paramViewGroup, false);
    c(2131362815).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    a = ((Button)c(2131362819));
    b = ((ProgressBar)c(2131362820));
    ((TextView)c(2131362818)).setText(2131493563);
    a.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        RecoveryCodeFragment.a(RecoveryCodeFragment.this).add(Integer.valueOf(RecoveryCodeFragment.b(RecoveryCodeFragment.this).a(getActivity())));
        a.setClickable(false);
        a.setText("");
        b.setVisibility(0);
      }
    });
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    d.b(1023, e);
    c.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    d.a(1023, e);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.RecoveryCodeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */