package com.snapchat.android.fragments.settings.email;

import ajx;
import amk;
import ams;
import anc;
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
import aok;
import aol;
import atj;
import atx;
import avh;
import baj;
import cgc;
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
  private ajx l;
  private final aol m;
  private aok n = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (EmailSettingsFragment.a(EmailSettingsFragment.this).contains(Integer.valueOf(i)))
      {
        EmailSettingsFragment.a(EmailSettingsFragment.this).remove(Integer.valueOf(i));
        if (!(paramAnonymousamk instanceof anc)) {
          break label63;
        }
        EmailSettingsFragment.a(EmailSettingsFragment.this, b);
      }
      label63:
      while (!(paramAnonymousamk instanceof ams)) {
        return;
      }
      EmailSettingsFragment.a(EmailSettingsFragment.this, (ams)paramAnonymousamk);
    }
  };
  
  public EmailSettingsFragment()
  {
    this(ajx.a(), aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private EmailSettingsFragment(ajx paramajx, aol paramaol)
  {
    l = paramajx;
    m = paramaol;
  }
  
  private void a(@cgc String paramString)
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
      if ((TextUtils.equals(a.getText(), ajx.G())) && (ajx.bm())) {
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
    return (TextUtils.equals(a.getText(), ajx.bn())) || ((TextUtils.isEmpty(ajx.bn())) && (TextUtils.equals(a.getText(), ajx.G())) && (!ajx.bm()));
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
    avh.a(getActivity(), H().getDecorView().getRootView());
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
    if ((!TextUtils.isEmpty(a.getText())) && ((!TextUtils.isEmpty(ajx.bn())) || (!TextUtils.equals(ajx.G(), a.getText())) || (!ajx.bm())))
    {
      if (n())
      {
        c.setVisibility(0);
        c.setText(2131493588);
        c.setClickable(true);
        d.setVisibility(8);
      }
      for (;;)
      {
        if (a.requestFocus()) {
          avh.f(getActivity());
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968666, paramViewGroup, false);
    i = atx.a(null, 2131493156, new Object[0]);
    j = atx.a(null, 2131493159, new Object[0]);
    h = ((TextView)c(2131362324));
    h.setText(getResources().getString(2131493158, new Object[] { baj.a(Emoji.OK_HAND_SIGN) }));
    c(2131362317).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        avh.a(getActivity(), getView());
        getActivity().onBackPressed();
      }
    });
    b = ((TextView)c(2131362320));
    d = ((Button)c(2131362327));
    paramLayoutInflater = d;
    getActivity().getAssets();
    atj.a(paramLayoutInflater);
    e = c(2131362328);
    c = ((Button)c(2131362326));
    paramLayoutInflater = c;
    getActivity().getAssets();
    atj.a(paramLayoutInflater);
    f = c(2131362322);
    g = ((TextView)c(2131362323));
    f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        EmailSettingsFragment.b(EmailSettingsFragment.this).setText("");
        EmailSettingsFragment.c(EmailSettingsFragment.this).setVisibility(8);
        EmailSettingsFragment.d(EmailSettingsFragment.this).setVisibility(8);
      }
    });
    a = ((EditText)c(2131362321));
    if (!TextUtils.isEmpty(ajx.bn())) {
      a.setText(ajx.bn());
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
      if (!TextUtils.isEmpty(ajx.G())) {
        a.setText(ajx.G());
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