package com.snapchat.android.fragments.settings.twofa;

import amk;
import amy;
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
import aok;
import aol;
import atx;
import ban;
import bdw;
import bkj;
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
  private final aol d;
  private aok e = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (RecoveryCodeFragment.a(RecoveryCodeFragment.this).contains(Integer.valueOf(i)))
      {
        RecoveryCodeFragment.a(RecoveryCodeFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousamk instanceof amy))
        {
          b.setVisibility(8);
          a.setText(2131493566);
          a.setClickable(true);
          paramAnonymousamk = (amy)paramAnonymousamk;
          if (!b) {
            break label116;
          }
          ban.a().a(new bdw(new RecoveryCodePasswordValidationFragment()));
        }
      }
      return;
      label116:
      paramAnonymousamk = a;
      RecoveryCodeFragment.a(RecoveryCodeFragment.this, paramAnonymousamk);
    }
  };
  
  public RecoveryCodeFragment()
  {
    this(aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private RecoveryCodeFragment(aol paramaol)
  {
    d = paramaol;
  }
  
  private void a(bkj parambkj)
  {
    if (parambkj.a().booleanValue())
    {
      AlertDialogUtils.a(getActivity(), atx.a(null, 2131493564, new Object[] { parambkj.b() }), getString(2131493563), getString(2131493569));
      return;
    }
    ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, parambkj.b()));
  }
  
  public final void e()
  {
    super.e();
    Intent localIntent = getActivity().getIntent();
    if ((localIntent != null) && (!TextUtils.isEmpty(localIntent.getStringExtra("recovery_code_message_key"))))
    {
      bkj localbkj = new bkj().a(Boolean.valueOf(localIntent.getBooleanExtra("recovery_code_succeed_key", false))).a(localIntent.getStringExtra("recovery_code_message_key"));
      localIntent.removeExtra("recovery_code_succeed_key");
      localIntent.removeExtra("recovery_code_message_key");
      a(localbkj);
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968772, paramViewGroup, false);
    c(2131362822).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    a = ((Button)c(2131362826));
    b = ((ProgressBar)c(2131362827));
    ((TextView)c(2131362825)).setText(2131493565);
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