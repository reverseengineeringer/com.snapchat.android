package com.snapchat.android.fragments.settings.twofa;

import ajx;
import amk;
import anc;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.telephony.PhoneNumberUtils;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import aok;
import aol;
import atr;
import atx;
import cf;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.ui.LinkTextViewUtils.CustomURLSpan;
import com.snapchat.android.ui.LinkTextViewUtils.a;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.HashSet;
import java.util.Set;

public class TwoFactorSettingsDisabledFragment
  extends SnapchatFragment
{
  protected ProgressBar a;
  private Button b;
  private final ajx c;
  private final atr d;
  private final aol e;
  private TextView f;
  private TextView g;
  private final Set<Integer> h = new HashSet();
  private aok i = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (TwoFactorSettingsDisabledFragment.a(TwoFactorSettingsDisabledFragment.this).contains(Integer.valueOf(i)))
      {
        TwoFactorSettingsDisabledFragment.a(TwoFactorSettingsDisabledFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousamk instanceof anc)) {
          TwoFactorSettingsDisabledFragment.a(TwoFactorSettingsDisabledFragment.this, b);
        }
      }
    }
  };
  
  public TwoFactorSettingsDisabledFragment()
  {
    this(aol.a(), new atr(), ajx.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private TwoFactorSettingsDisabledFragment(aol paramaol, atr paramatr, ajx paramajx)
  {
    e = paramaol;
    d = paramatr;
    c = paramajx;
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968766, paramViewGroup, false);
    c(2131362796).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    f = ((TextView)c(2131362799));
    g = ((TextView)c(2131362800));
    if (TextUtils.isEmpty(ajx.e()))
    {
      f.setText(atx.a(null, 2131493548, new Object[] { atx.a(null, 2131493574, new Object[0]) }));
      g.setVisibility(8);
    }
    for (;;)
    {
      b = ((Button)c(2131362801));
      a = ((ProgressBar)c(2131362802));
      b.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          TwoFactorSettingsDisabledFragment.b(TwoFactorSettingsDisabledFragment.this);
          if (TextUtils.isEmpty(ajx.e()))
          {
            TwoFactorSettingsDisabledFragment.i();
            return;
          }
          TwoFactorSettingsDisabledFragment.a(TwoFactorSettingsDisabledFragment.this).add(Integer.valueOf(TwoFactorSettingsDisabledFragment.c(TwoFactorSettingsDisabledFragment.this).a(getActivity(), "sendTwoFACode", null, null)));
          TwoFactorSettingsDisabledFragment.d(TwoFactorSettingsDisabledFragment.this).setClickable(false);
          TwoFactorSettingsDisabledFragment.d(TwoFactorSettingsDisabledFragment.this).setText("");
          a.setVisibility(0);
        }
      });
      return mFragmentLayout;
      f.setText(atx.a(null, 2131493548, new Object[] { PhoneNumberUtils.formatNumber(ajx.e()) }));
      g.setVisibility(0);
      g.setText(2131493544);
      paramBundle = getActivity();
      paramLayoutInflater = g;
      paramViewGroup = new LinkTextViewUtils.a()
      {
        public final void a() {}
      };
      paramLayoutInflater.setLinkTextColor(paramBundle.getResources().getColor(2131230771));
      paramLayoutInflater.setMovementMethod(LinkMovementMethod.getInstance());
      paramBundle = (Spannable)paramLayoutInflater.getText();
      if (paramBundle == null) {
        throw new NullPointerException();
      }
      URLSpan[] arrayOfURLSpan = (URLSpan[])paramBundle.getSpans(0, paramBundle.length(), URLSpan.class);
      int k = arrayOfURLSpan.length;
      int j = 0;
      while (j < k)
      {
        URLSpan localURLSpan = arrayOfURLSpan[j];
        int m = paramBundle.getSpanStart(localURLSpan);
        int n = paramBundle.getSpanEnd(localURLSpan);
        paramBundle.removeSpan(localURLSpan);
        paramBundle.setSpan(new LinkTextViewUtils.CustomURLSpan(localURLSpan.getURL(), paramViewGroup), m, n, 0);
        j += 1;
      }
      paramLayoutInflater.setText(paramBundle);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    e.b(1012, i);
    h.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    e.a(1012, i);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFactorSettingsDisabledFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */