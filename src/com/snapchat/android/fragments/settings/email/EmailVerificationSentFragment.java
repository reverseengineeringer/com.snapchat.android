package com.snapchat.android.fragments.settings.email;

import ajx;
import amk;
import anc;
import anc.c;
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
import aok;
import aol;
import atx;
import ban;
import bdw;
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
  private ajx e;
  private final Set<Integer> f = new HashSet();
  private final aol g;
  private aok h = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if ((EmailVerificationSentFragment.a(EmailVerificationSentFragment.this).contains(Integer.valueOf(i))) && ((paramAnonymousamk instanceof anc)))
      {
        EmailVerificationSentFragment.a(EmailVerificationSentFragment.this).remove(Integer.valueOf(i));
        paramAnonymousamk = b;
        EmailVerificationSentFragment.b(EmailVerificationSentFragment.this).setVisibility(8);
        EmailVerificationSentFragment.c(EmailVerificationSentFragment.this).setVisibility(0);
        if (a)
        {
          paramAnonymousamk = new ShowDialogEvent.a(ShowDialogEvent.DialogType.ONE_BUTTON);
          mTitleResId = 2131493152;
          EmailVerificationSentFragment.d(EmailVerificationSentFragment.this);
          mMessage = atx.a(null, 2131493151, new Object[] { ajx.bn() });
          paramAnonymousamk = paramAnonymousamk.a();
          ban.a().a(paramAnonymousamk);
        }
      }
      else
      {
        return;
      }
      ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, d));
    }
  };
  
  public EmailVerificationSentFragment()
  {
    this(ajx.a(), aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private EmailVerificationSentFragment(ajx paramajx, aol paramaol)
  {
    e = paramajx;
    g = paramaol;
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968727, paramViewGroup, false);
    c = ((TextView)c(2131362669));
    c.setText(ajx.bn());
    d = ((TextView)c(2131362670));
    if (ajx.bm())
    {
      d.setText(atx.a(null, 2131493154, new Object[] { ajx.G() }));
      d.setVisibility(0);
    }
    for (;;)
    {
      b = c(2131362671);
      a = c(2131362672);
      c(2131362665).setOnClickListener(new View.OnClickListener()
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
          aol localaol = EmailVerificationSentFragment.e(EmailVerificationSentFragment.this);
          FragmentActivity localFragmentActivity = getActivity();
          EmailVerificationSentFragment.d(EmailVerificationSentFragment.this);
          paramAnonymousView.add(Integer.valueOf(localaol.a(localFragmentActivity, "verifyEmail", ajx.bn(), null)));
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
            ban.a().a(new bdw(new EmailSettingsFragment(), EmailSettingsFragment.class.getSimpleName(), LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag()));
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