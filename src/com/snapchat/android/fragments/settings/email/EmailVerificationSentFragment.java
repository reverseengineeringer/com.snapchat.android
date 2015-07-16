package com.snapchat.android.fragments.settings.email;

import akr;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.TextView;
import anh;
import anz;
import anz.c;
import apg;
import aph;
import auv;
import bbo;
import bev;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.eventbus.ShowDialogEvent.a;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Set;

public class EmailVerificationSentFragment
  extends SnapchatFragment
{
  private View a;
  private View b;
  private TextView c;
  private TextView d;
  private akr e;
  private final Set<Integer> f = new HashSet();
  private final aph g;
  private apg h = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if ((EmailVerificationSentFragment.a(EmailVerificationSentFragment.this).contains(Integer.valueOf(i))) && ((paramAnonymousanh instanceof anz)))
      {
        EmailVerificationSentFragment.a(EmailVerificationSentFragment.this).remove(Integer.valueOf(i));
        paramAnonymousanh = b;
        EmailVerificationSentFragment.b(EmailVerificationSentFragment.this).setVisibility(8);
        EmailVerificationSentFragment.c(EmailVerificationSentFragment.this).setVisibility(0);
        if (a)
        {
          paramAnonymousanh = new ShowDialogEvent.a(ShowDialogEvent.DialogType.ONE_BUTTON);
          mTitleResId = 2131493151;
          EmailVerificationSentFragment.d(EmailVerificationSentFragment.this);
          mMessage = auv.a(null, 2131493150, new Object[] { akr.bk() });
          paramAnonymousanh = paramAnonymousanh.a();
          bbo.a().a(paramAnonymousanh);
        }
      }
      else
      {
        return;
      }
      bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, d));
    }
  };
  
  public EmailVerificationSentFragment()
  {
    this(akr.a(), aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private EmailVerificationSentFragment(akr paramakr, aph paramaph)
  {
    e = paramakr;
    g = paramaph;
  }
  
  public final boolean g()
  {
    if (d(LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag())) {
      return true;
    }
    return super.g();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968729, paramViewGroup, false);
    c = ((TextView)c(2131362668));
    c.setText(akr.bk());
    d = ((TextView)c(2131362669));
    if (akr.bj())
    {
      d.setText(auv.a(null, 2131493153, new Object[] { akr.G() }));
      d.setVisibility(0);
    }
    for (;;)
    {
      b = c(2131362670);
      a = c(2131362671);
      c(2131362664).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          getActivity().onBackPressed();
        }
      });
      b.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = EmailVerificationSentFragment.a(EmailVerificationSentFragment.this);
          aph localaph = EmailVerificationSentFragment.e(EmailVerificationSentFragment.this);
          FragmentActivity localFragmentActivity = getActivity();
          EmailVerificationSentFragment.d(EmailVerificationSentFragment.this);
          paramAnonymousView.add(Integer.valueOf(localaph.a(localFragmentActivity, "verifyEmail", akr.bk(), null)));
          EmailVerificationSentFragment.b(EmailVerificationSentFragment.this).setVisibility(0);
          EmailVerificationSentFragment.c(EmailVerificationSentFragment.this).setVisibility(8);
        }
      });
      c.setOnTouchListener(new View.OnTouchListener()
      {
        public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (paramAnonymousMotionEvent.getAction() == 0)
          {
            bbo.a().a(new bev(new EmailSettingsFragment(), EmailSettingsFragment.class.getSimpleName(), LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag()));
            return true;
          }
          return false;
        }
      });
      return mFragmentLayout;
      d.setVisibility(8);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    g.b(1012, h);
    f.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    g.a(1012, h);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailVerificationSentFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */