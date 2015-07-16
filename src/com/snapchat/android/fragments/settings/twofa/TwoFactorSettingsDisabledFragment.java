package com.snapchat.android.fragments.settings.twofa;

import akr;
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
import anh;
import anz;
import apg;
import aph;
import aup;
import auv;
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
  private final akr c;
  private final aup d;
  private final aph e;
  private TextView f;
  private TextView g;
  private final Set<Integer> h = new HashSet();
  private apg i = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (TwoFactorSettingsDisabledFragment.a(TwoFactorSettingsDisabledFragment.this).contains(Integer.valueOf(i)))
      {
        TwoFactorSettingsDisabledFragment.a(TwoFactorSettingsDisabledFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousanh instanceof anz)) {
          TwoFactorSettingsDisabledFragment.a(TwoFactorSettingsDisabledFragment.this, b);
        }
      }
    }
  };
  
  public TwoFactorSettingsDisabledFragment()
  {
    this(aph.a(), new aup(), akr.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private TwoFactorSettingsDisabledFragment(aph paramaph, aup paramaup, akr paramakr)
  {
    e = paramaph;
    d = paramaup;
    c = paramakr;
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968768, paramViewGroup, false);
    c(2131362789).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    f = ((TextView)c(2131362792));
    g = ((TextView)c(2131362793));
    if (TextUtils.isEmpty(akr.e()))
    {
      f.setText(auv.a(null, 2131493546, new Object[] { auv.a(null, 2131493572, new Object[0]) }));
      g.setVisibility(8);
    }
    for (;;)
    {
      b = ((Button)c(2131362794));
      a = ((ProgressBar)c(2131362795));
      b.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          TwoFactorSettingsDisabledFragment.b(TwoFactorSettingsDisabledFragment.this);
          if (TextUtils.isEmpty(akr.e()))
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
      f.setText(auv.a(null, 2131493546, new Object[] { PhoneNumberUtils.formatNumber(akr.e()) }));
      g.setVisibility(0);
      g.setText(2131493542);
      paramBundle = getActivity();
      paramLayoutInflater = g;
      paramViewGroup = new LinkTextViewUtils.a()
      {
        public final void a() {}
      };
      paramLayoutInflater.setLinkTextColor(paramBundle.getResources().getColor(2131230772));
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