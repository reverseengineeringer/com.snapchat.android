package com.snapchat.android.fragments.settings;

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
import auh;
import awf;
import chd;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class BasePasswordValidationFragment
  extends SnapchatFragment
{
  public EditText a;
  public Button b;
  public View c;
  protected View d;
  protected TextView e;
  
  public final void a(@chd String paramString)
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
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968731, paramViewGroup, false);
    c(2131362672).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        awf.a(getActivity(), getView());
        getActivity().onBackPressed();
      }
    });
    b = ((Button)c(2131362679));
    paramLayoutInflater = b;
    getActivity().getAssets();
    auh.a(paramLayoutInflater);
    c = c(2131362680);
    d = c(2131362677);
    e = ((TextView)c(2131362678));
    d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.setText("");
        a(null);
      }
    });
    a = ((EditText)c(2131362676));
    a.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        paramAnonymousEditable = BasePasswordValidationFragment.this;
        if (!TextUtils.isEmpty(a.getText()))
        {
          b.setText(2131493356);
          b.setClickable(true);
          b.setVisibility(0);
        }
        for (;;)
        {
          a(null);
          return;
          b.setVisibility(8);
        }
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    return mFragmentLayout;
  }
  
  public void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.BasePasswordValidationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */