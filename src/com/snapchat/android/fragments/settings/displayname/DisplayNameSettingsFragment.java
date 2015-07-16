package com.snapchat.android.fragments.settings.displayname;

import akr;
import android.annotation.SuppressLint;
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
import auh;
import awf;
import chd;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.fragment.SnapchatFragment;
import qg;
import qg.a;

public class DisplayNameSettingsFragment
  extends SnapchatFragment
  implements qg.a
{
  private EditText a;
  private Button b;
  private View c;
  private View d;
  private TextView e;
  private akr f;
  
  public DisplayNameSettingsFragment()
  {
    this(akr.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private DisplayNameSettingsFragment(akr paramakr)
  {
    f = paramakr;
  }
  
  private void a(@chd String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      d.setVisibility(0);
      e.setText(paramString);
      e.setVisibility(0);
      return;
    }
    d.setVisibility(8);
    e.setVisibility(8);
  }
  
  public final void a(FriendAction paramFriendAction, boolean paramBoolean, String paramString)
  {
    if (!super.isAdded()) {
      return;
    }
    if (paramBoolean)
    {
      getActivity().onBackPressed();
      return;
    }
    a(paramString);
    c.setVisibility(8);
    b.setVisibility(8);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public final void e()
  {
    super.e();
    i();
  }
  
  public final void f()
  {
    super.f();
    awf.a(getActivity(), J().getDecorView().getRootView());
  }
  
  protected final boolean h_()
  {
    return super.isAdded();
  }
  
  protected final void i()
  {
    c.setVisibility(8);
    if ((!TextUtils.isEmpty(a.getText())) && (!TextUtils.equals(akr.x(), a.getText())))
    {
      b.setVisibility(0);
      b.setText(2131493472);
      b.setClickable(true);
      a.requestFocus();
      return;
    }
    b.setVisibility(8);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968659, paramViewGroup, false);
    c(2131362279).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        awf.a(getActivity(), getView());
        getActivity().onBackPressed();
      }
    });
    b = ((Button)c(2131362286));
    paramLayoutInflater = b;
    getActivity().getAssets();
    auh.a(paramLayoutInflater);
    c = c(2131362287);
    d = c(2131362284);
    e = ((TextView)c(2131362285));
    d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        DisplayNameSettingsFragment.a(DisplayNameSettingsFragment.this).setText("");
        DisplayNameSettingsFragment.b(DisplayNameSettingsFragment.this).setVisibility(8);
        DisplayNameSettingsFragment.c(DisplayNameSettingsFragment.this).setVisibility(8);
      }
    });
    a = ((EditText)c(2131362283));
    if (!TextUtils.isEmpty(akr.y())) {
      a.setText(akr.y());
    }
    a.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        i();
        DisplayNameSettingsFragment.d(DisplayNameSettingsFragment.this);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    a.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          awf.g(getActivity());
        }
      }
    });
    b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        DisplayNameSettingsFragment.e(DisplayNameSettingsFragment.this).setText("");
        DisplayNameSettingsFragment.e(DisplayNameSettingsFragment.this).setClickable(false);
        DisplayNameSettingsFragment.f(DisplayNameSettingsFragment.this).setVisibility(0);
        DisplayNameSettingsFragment.g(DisplayNameSettingsFragment.this);
        paramAnonymousView = akr.l();
        DisplayNameSettingsFragment.g(DisplayNameSettingsFragment.this);
        paramAnonymousView = new Friend(paramAnonymousView, akr.y());
        String str = paramAnonymousView.a();
        mDisplayName = DisplayNameSettingsFragment.a(DisplayNameSettingsFragment.this).getText().toString().trim();
        paramAnonymousView = new qg(paramAnonymousView, FriendAction.SET_DISPLAY_NAME, str);
        mFriendActionCompleteCallback = DisplayNameSettingsFragment.this;
        mAnalyticsContext = AnalyticsEvents.AnalyticsContext.SETTINGS_DISPLAYNAME_CHANGE;
        mShowFailureDialog = false;
        paramAnonymousView.execute();
      }
    });
    i();
    return mFragmentLayout;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.displayname.DisplayNameSettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */