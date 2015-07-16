package com.snapchat.android.fragments.settings.email;

import akr;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import anh;
import anp;
import anz;
import apg;
import aph;
import auh;
import auv;
import awf;
import bbj;
import chd;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.emoji.Emoji;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.HashSet;
import java.util.Set;

public class EmailSettingsFragment
  extends SnapchatFragment
{
  private EditText a;
  private TextView b;
  private Button c;
  private Button d;
  private View e;
  private View f;
  private TextView g;
  private TextView h;
  private String i;
  private String j;
  private final Set<Integer> k = new HashSet();
  private akr l;
  private final aph m;
  private apg n = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (EmailSettingsFragment.a(EmailSettingsFragment.this).contains(Integer.valueOf(i)))
      {
        EmailSettingsFragment.a(EmailSettingsFragment.this).remove(Integer.valueOf(i));
        if (!(paramAnonymousanh instanceof anz)) {
          break label63;
        }
        EmailSettingsFragment.a(EmailSettingsFragment.this, b);
      }
      label63:
      while (!(paramAnonymousanh instanceof anp)) {
        return;
      }
      EmailSettingsFragment.a(EmailSettingsFragment.this, (anp)paramAnonymousanh);
    }
  };
  
  public EmailSettingsFragment()
  {
    this(akr.a(), aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private EmailSettingsFragment(akr paramakr, aph paramaph)
  {
    l = paramakr;
    m = paramaph;
  }
  
  private void a(@chd String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      f.setVisibility(0);
      g.setText(paramString);
      g.setVisibility(0);
      return;
    }
    f.setVisibility(8);
    g.setVisibility(8);
  }
  
  private void m()
  {
    if (!TextUtils.isEmpty(a.getText()))
    {
      if ((TextUtils.equals(a.getText(), akr.G())) && (akr.bj())) {
        h.setVisibility(0);
      }
      while (n())
      {
        b.setText(j);
        return;
        h.setVisibility(8);
      }
      b.setText(i);
      return;
    }
    h.setVisibility(8);
    b.setText(i);
  }
  
  private boolean n()
  {
    return (TextUtils.equals(a.getText(), akr.bk())) || ((TextUtils.isEmpty(akr.bk())) && (TextUtils.equals(a.getText(), akr.G())) && (!akr.bj()));
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public final void e()
  {
    super.e();
    i();
    Intent localIntent = getActivity().getIntent();
    if (!TextUtils.isEmpty(localIntent.getStringExtra("change_email_key")))
    {
      a.setText(localIntent.getStringExtra("change_email_key"));
      localIntent.removeExtra("change_email_key");
      a(localIntent.getStringExtra("change_email_message_key"));
      localIntent.removeExtra("change_email_message_key");
    }
  }
  
  public final void f()
  {
    super.f();
    awf.a(getActivity(), J().getDecorView().getRootView());
  }
  
  public final boolean g()
  {
    if (d(LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag())) {
      return true;
    }
    return super.g();
  }
  
  protected final void i()
  {
    e.setVisibility(8);
    if ((!TextUtils.isEmpty(a.getText())) && ((!TextUtils.isEmpty(akr.bk())) || (!TextUtils.equals(akr.G(), a.getText())) || (!akr.bj())))
    {
      if (n())
      {
        c.setVisibility(0);
        c.setText(2131493586);
        c.setClickable(true);
        d.setVisibility(8);
      }
      for (;;)
      {
        if (a.requestFocus()) {
          awf.f(getActivity());
        }
        return;
        c.setVisibility(8);
        d.setVisibility(0);
        d.setText(2131493356);
        d.setClickable(true);
      }
    }
    c.setVisibility(8);
    d.setVisibility(8);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968667, paramViewGroup, false);
    i = auv.a(null, 2131493155, new Object[0]);
    j = auv.a(null, 2131493158, new Object[0]);
    h = ((TextView)c(2131362322));
    h.setText(getResources().getString(2131493157, new Object[] { bbj.a(Emoji.OK_HAND_SIGN) }));
    c(2131362315).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        awf.a(getActivity(), getView());
        getActivity().onBackPressed();
      }
    });
    b = ((TextView)c(2131362318));
    d = ((Button)c(2131362325));
    paramLayoutInflater = d;
    getActivity().getAssets();
    auh.a(paramLayoutInflater);
    e = c(2131362326);
    c = ((Button)c(2131362324));
    paramLayoutInflater = c;
    getActivity().getAssets();
    auh.a(paramLayoutInflater);
    f = c(2131362320);
    g = ((TextView)c(2131362321));
    f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        EmailSettingsFragment.b(EmailSettingsFragment.this).setText("");
        EmailSettingsFragment.c(EmailSettingsFragment.this).setVisibility(8);
        EmailSettingsFragment.d(EmailSettingsFragment.this).setVisibility(8);
      }
    });
    a = ((EditText)c(2131362319));
    if (!TextUtils.isEmpty(akr.bk())) {
      a.setText(akr.bk());
    }
    for (;;)
    {
      a.addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable)
        {
          EmailSettingsFragment.e(EmailSettingsFragment.this);
          i();
          EmailSettingsFragment.f(EmailSettingsFragment.this);
        }
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      c.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          EmailSettingsFragment.a(EmailSettingsFragment.this).add(Integer.valueOf(EmailSettingsFragment.g(EmailSettingsFragment.this).a(getActivity(), "verifyEmail", null, null)));
          EmailSettingsFragment.h(EmailSettingsFragment.this).setText("");
          EmailSettingsFragment.h(EmailSettingsFragment.this).setClickable(false);
          EmailSettingsFragment.i(EmailSettingsFragment.this).setVisibility(0);
        }
      });
      d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          EmailSettingsFragment.a(EmailSettingsFragment.this).add(Integer.valueOf(EmailSettingsFragment.g(EmailSettingsFragment.this).a(getActivity(), EmailSettingsFragment.b(EmailSettingsFragment.this).getText().toString())));
          EmailSettingsFragment.j(EmailSettingsFragment.this).setText("");
          EmailSettingsFragment.j(EmailSettingsFragment.this).setClickable(false);
          EmailSettingsFragment.i(EmailSettingsFragment.this).setVisibility(0);
        }
      });
      m();
      i();
      return mFragmentLayout;
      if (!TextUtils.isEmpty(akr.G())) {
        a.setText(akr.G());
      }
    }
  }
  
  public void onPause()
  {
    super.onPause();
    m.b(1012, n);
    m.b(1015, n);
    k.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    m.a(1012, n);
    m.a(1015, n);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailSettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */