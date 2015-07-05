package com.snapchat.android.fragments.settings.displayname;

import ajx;
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
import atj;
import avh;
import cgc;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.fragment.SnapchatFragment;
import pp;
import pp.a;

public class DisplayNameSettingsFragment
  extends SnapchatFragment
  implements pp.a
{
  private EditText a;
  private Button b;
  private View c;
  private View d;
  private TextView e;
  private ajx f;
  
  public DisplayNameSettingsFragment()
  {
    this(ajx.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private DisplayNameSettingsFragment(ajx paramajx)
  {
    f = paramajx;
  }
  
  private void a(@cgc String paramString)
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
    avh.a(getActivity(), H().getDecorView().getRootView());
  }
  
  protected final void i()
  {
    c.setVisibility(8);
    if ((!TextUtils.isEmpty(a.getText())) && (!TextUtils.equals(ajx.x(), a.getText())))
    {
      b.setVisibility(0);
      b.setText(2131493472);
      b.setClickable(true);
      a.requestFocus();
      return;
    }
    b.setVisibility(8);
  }
  
  protected final boolean j_()
  {
    return super.isAdded();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968658, paramViewGroup, false);
    c(2131362281).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        avh.a(getActivity(), getView());
        getActivity().onBackPressed();
      }
    });
    b = ((Button)c(2131362288));
    paramLayoutInflater = b;
    getActivity().getAssets();
    atj.a(paramLayoutInflater);
    c = c(2131362289);
    d = c(2131362286);
    e = ((TextView)c(2131362287));
    d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        DisplayNameSettingsFragment.a(DisplayNameSettingsFragment.this).setText("");
        DisplayNameSettingsFragment.b(DisplayNameSettingsFragment.this).setVisibility(8);
        DisplayNameSettingsFragment.c(DisplayNameSettingsFragment.this).setVisibility(8);
      }
    });
    a = ((EditText)c(2131362285));
    if (!TextUtils.isEmpty(ajx.y())) {
      a.setText(ajx.y());
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
          avh.g(getActivity());
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
        paramAnonymousView = ajx.l();
        DisplayNameSettingsFragment.g(DisplayNameSettingsFragment.this);
        paramAnonymousView = new Friend(paramAnonymousView, ajx.y());
        String str = paramAnonymousView.a();
        mDisplayName = DisplayNameSettingsFragment.a(DisplayNameSettingsFragment.this).getText().toString().trim();
        paramAnonymousView = new pp(paramAnonymousView, FriendAction.SET_DISPLAY_NAME, str);
        mFriendActionCompleteCallback = DisplayNameSettingsFragment.this;
        mAnalyticsContext = AnalyticsEvents.AnalyticsContext.SETTINGS_DISPLAYNAME_CHANGE;
        mShowFailureDialog = false;
        paramAnonymousView.f();
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