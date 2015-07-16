package com.snapchat.android.fragments.settings.password;

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
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import anh;
import anq;
import anw;
import anw.b;
import apg;
import aph;
import auh;
import awf;
import bbj;
import chd;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.emoji.Emoji;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.HashSet;
import java.util.Set;

public class ChangePasswordFragment
  extends SnapchatFragment
{
  protected EditText a;
  protected TextView b;
  protected View c;
  protected TextView d;
  protected View e;
  protected EditText f;
  protected View g;
  protected TextView h;
  protected Button i;
  protected View j;
  protected PasswordStrength k = PasswordStrength.UNKNOWN;
  private final Set<Integer> l = new HashSet();
  private final aph m;
  private String n;
  private String o;
  private String p;
  private int q;
  private int r;
  private int s;
  private apg t = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (ChangePasswordFragment.a(ChangePasswordFragment.this).contains(Integer.valueOf(i)))
      {
        ChangePasswordFragment.a(ChangePasswordFragment.this).remove(Integer.valueOf(i));
        if (!(paramAnonymousanh instanceof anw)) {
          break label60;
        }
        a((anw)paramAnonymousanh);
      }
      label60:
      while (!(paramAnonymousanh instanceof anq)) {
        return;
      }
      ChangePasswordFragment.a(ChangePasswordFragment.this, (anq)paramAnonymousanh);
    }
  };
  
  public ChangePasswordFragment()
  {
    this(aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private ChangePasswordFragment(aph paramaph)
  {
    m = paramaph;
  }
  
  private void a(@chd String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      c.setVisibility(0);
      d.setText(paramString);
      d.setVisibility(0);
      a.requestFocus();
      return;
    }
    c.setVisibility(8);
    d.setVisibility(8);
  }
  
  private void m()
  {
    String str;
    switch (9.a[k.ordinal()])
    {
    default: 
      b.setVisibility(8);
      i();
      return;
    case 1: 
      str = o;
    }
    for (int i1 = r;; i1 = s)
    {
      b.setVisibility(0);
      b.setText(str);
      b.setTextColor(i1);
      break;
      str = p;
    }
  }
  
  protected final void a(anw paramanw)
  {
    if (TextUtils.equals(a.getText(), a))
    {
      PasswordStrength localPasswordStrength = PasswordStrength.fromValue(b.a);
      e.setVisibility(8);
      b.setVisibility(0);
      k = localPasswordStrength;
      if ((localPasswordStrength == PasswordStrength.TOO_WEAK) || (localPasswordStrength == PasswordStrength.UNKNOWN)) {
        a(b.b);
      }
    }
    m();
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public final void e()
  {
    super.e();
    if (a.requestFocus()) {
      awf.f(getActivity());
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
    if ((TextUtils.equals(a.getText(), f.getText())) && (k != PasswordStrength.UNKNOWN) && (k != PasswordStrength.TOO_WEAK))
    {
      i.setText(2131493368);
      i.setClickable(true);
      i.setVisibility(0);
      return;
    }
    i.setVisibility(8);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968614, paramViewGroup, false);
    paramLayoutInflater = getResources();
    n = paramLayoutInflater.getString(2131493281, new Object[] { bbj.a(Emoji.CONFUSED_FACE) });
    o = paramLayoutInflater.getString(2131493279, new Object[] { bbj.a(Emoji.OK_HAND_SIGN) });
    p = paramLayoutInflater.getString(2131493280, new Object[] { bbj.a(Emoji.SMILING_FACE_WITH_SUNGLASSES) });
    q = paramLayoutInflater.getColor(2131230780);
    r = paramLayoutInflater.getColor(2131230778);
    s = paramLayoutInflater.getColor(2131230779);
    a = ((EditText)c(2131362046));
    b = ((TextView)c(2131362048));
    c = c(2131362047);
    d = ((TextView)c(2131362050));
    e = c(2131362049);
    f = ((EditText)c(2131362051));
    g = c(2131362052);
    h = ((TextView)c(2131362053));
    i = ((Button)c(2131362054));
    paramLayoutInflater = i;
    getActivity().getAssets();
    auh.a(paramLayoutInflater);
    j = c(2131362055);
    c(2131362042).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        awf.a(getActivity(), getView());
        getActivity().onBackPressed();
      }
    });
    a.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        k = PasswordStrength.UNKNOWN;
        f.setText("");
        ChangePasswordFragment.b(ChangePasswordFragment.this);
        ChangePasswordFragment.c(ChangePasswordFragment.this);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    a.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if ((!paramAnonymousBoolean) && (!TextUtils.isEmpty(a.getText())))
        {
          paramAnonymousView = ChangePasswordFragment.a(ChangePasswordFragment.this);
          aph localaph = ChangePasswordFragment.d(ChangePasswordFragment.this);
          FragmentActivity localFragmentActivity = getActivity();
          String str = a.getText().toString();
          Intent localIntent = localaph.b(localFragmentActivity);
          localIntent.putExtra("op_code", 1018);
          localIntent.putExtra("new_password", str);
          paramAnonymousView.add(Integer.valueOf(localaph.a(localFragmentActivity, localIntent)));
          e.setVisibility(0);
          b.setVisibility(8);
        }
      }
    });
    c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.setText("");
        ChangePasswordFragment.b(ChangePasswordFragment.this);
      }
    });
    f.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        ChangePasswordFragment.e(ChangePasswordFragment.this);
        i();
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    g.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        f.setText("");
        ChangePasswordFragment.e(ChangePasswordFragment.this);
      }
    });
    i.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = ChangePasswordFragment.a(ChangePasswordFragment.this);
        aph localaph = ChangePasswordFragment.d(ChangePasswordFragment.this);
        FragmentActivity localFragmentActivity = getActivity();
        String str = a.getText().toString();
        Intent localIntent = localaph.b(localFragmentActivity);
        localIntent.putExtra("op_code", 1017);
        localIntent.putExtra("new_password", str);
        paramAnonymousView.add(Integer.valueOf(localaph.a(localFragmentActivity, localIntent)));
        i.setClickable(false);
        i.setText("");
        j.setVisibility(0);
      }
    });
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    m.b(1018, t);
    m.b(1017, t);
    l.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    m.a(1018, t);
    m.a(1017, t);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.ChangePasswordFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */