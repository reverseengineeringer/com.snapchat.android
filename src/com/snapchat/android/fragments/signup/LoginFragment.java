package com.snapchat.android.fragments.signup;

import akp;
import akr;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import att;
import auh;
import avm;
import awf;
import ayy;
import aze;
import azy;
import bbo;
import bjg;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.SnapchatCameraBackgroundActivity;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.api2.LoginTask.a;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.verification.NewUserPhoneVerificationFragment;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.Locale;
import javax.inject.Inject;
import javax.inject.Provider;
import lh;

public class LoginFragment
  extends SnapchatFragment
  implements LoginTask.a
{
  private static int b = -1;
  private static int c = -1;
  private static int d = -1;
  private static avm e;
  @Inject
  public aze a;
  private EditText f;
  private TextView g;
  private TextView h;
  private ImageView i;
  private ImageView j;
  private EditText k;
  private View l;
  private Button m;
  private boolean n = false;
  private long o;
  private Drawable p;
  private int q;
  private final Bus r;
  private final Provider<akp> s;
  private final ayy t;
  private final RegistrationAnalytics u;
  private final View.OnClickListener v = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(LoginFragment.a(LoginFragment.this).getApplicationWindowToken(), 0);
      paramAnonymousView = LoginFragment.a(LoginFragment.this).getText().toString().trim().toLowerCase(Locale.US);
      String str = LoginFragment.b(LoginFragment.this).getText().toString().trim();
      if (LoginFragment.i().a(paramAnonymousView))
      {
        avm localavm = LoginFragment.i();
        int i = localavm.b(paramAnonymousView);
        if (mSharedPreferences.getInt("SnapKidzLoginManager_passkey_" + i, -1) == str.hashCode()) {}
        for (i = 1; i != 0; i = 0)
        {
          LoginFragment.a(LoginFragment.this, paramAnonymousView);
          return;
        }
        AlertDialogUtils.a(getActivity(), getString(2131493202));
        return;
      }
      LoginFragment.c(LoginFragment.this);
    }
  };
  private final TextWatcher w = new TextWatcher()
  {
    public final void afterTextChanged(Editable paramAnonymousEditable)
    {
      LoginFragment.d(LoginFragment.this);
      LoginFragment.e(LoginFragment.this);
      LoginFragment.f(LoginFragment.this);
    }
    
    public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  
  public LoginFragment()
  {
    this(bbo.a(), akp.UNSAFE_USER_PROVIDER, ayy.a(), RegistrationAnalytics.a(), new WindowConfiguration());
  }
  
  @SuppressLint({"ValidFragment"})
  public LoginFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(bbo.a(), akp.UNSAFE_USER_PROVIDER, ayy.a(), RegistrationAnalytics.a(), paramWindowConfiguration);
  }
  
  @SuppressLint({"ValidFragment"})
  private LoginFragment(Bus paramBus, Provider<akp> paramProvider, ayy paramayy, RegistrationAnalytics paramRegistrationAnalytics, WindowConfiguration paramWindowConfiguration)
  {
    super(paramWindowConfiguration);
    SnapchatApplication.b().c().a(this);
    r = paramBus;
    s = paramProvider;
    t = paramayy;
    u = paramRegistrationAnalytics;
  }
  
  private void a(String paramString)
  {
    if (paramString == null)
    {
      g.setVisibility(4);
      i.setVisibility(4);
      return;
    }
    g.setVisibility(0);
    g.setText(paramString);
    i.setVisibility(0);
  }
  
  private void b(String paramString)
  {
    if (paramString == null)
    {
      h.setVisibility(4);
      j.setVisibility(4);
      return;
    }
    h.setVisibility(0);
    h.setText(paramString);
    j.setVisibility(0);
  }
  
  private void o()
  {
    l.setVisibility(4);
    m.setVisibility(4);
  }
  
  private void p()
  {
    if ((!TextUtils.isEmpty(f.getText())) && (!TextUtils.isEmpty(k.getText())))
    {
      m.setText(2131493209);
      m.setClickable(true);
      m.setVisibility(0);
      if (!n) {}
    }
    do
    {
      return;
      n = true;
      localObject = new TransitionDrawable(new Drawable[] { new ColorDrawable(c), new ColorDrawable(d) });
      int i1 = m.getPaddingBottom();
      m.setBackgroundDrawable((Drawable)localObject);
      m.setPadding(i1, i1, i1, i1);
      ((TransitionDrawable)localObject).startTransition(400);
      o = System.nanoTime();
      return;
      m.setVisibility(4);
    } while (!n);
    n = false;
    Object localObject = new Runnable()
    {
      public final void run()
      {
        TransitionDrawable localTransitionDrawable = new TransitionDrawable(new Drawable[] { new ColorDrawable(LoginFragment.m()), new ColorDrawable(LoginFragment.n()) });
        int i = LoginFragment.h(LoginFragment.this).getPaddingBottom();
        LoginFragment.h(LoginFragment.this).setBackgroundDrawable(localTransitionDrawable);
        LoginFragment.h(LoginFragment.this).setPadding(i, i, i, i);
        localTransitionDrawable.startTransition(400);
      }
    };
    long l1 = System.nanoTime();
    long l2 = o;
    new Handler().postDelayed((Runnable)localObject, 400L - 1000000L * (l1 - l2));
  }
  
  public final void a()
  {
    if (!super.isAdded()) {
      return;
    }
    o();
    try
    {
      FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
      PickUsernameFragment localPickUsernameFragment = new PickUsernameFragment(mWindowConfiguration);
      localFragmentTransaction.replace(q, localPickUsernameFragment).addToBackStack("PickUsernameFragment").commit();
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
  
  public final void a(int paramInt, String paramString)
  {
    if (!super.isAdded()) {
      return;
    }
    o();
    if (paramInt == -101)
    {
      a(paramString);
      return;
    }
    if (paramInt == -100)
    {
      b(paramString);
      return;
    }
    p();
    AlertDialogUtils.a(getActivity(), paramString, getString(2131493229));
  }
  
  public final void a(bjg parambjg)
  {
    if (!super.isAdded()) {
      return;
    }
    k.setText("");
    o();
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    parambjg = TwoFactorCodeVerificationFragment.a(parambjg.s(), parambjg.q(), parambjg.t());
    localFragmentTransaction.replace(q, parambjg).addToBackStack("TwoFactorCodeVerificationFragment").commit();
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    if (att.SUPPORTS_TRANSPARENT_STATUS_BAR) {
      return super.b();
    }
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public final void b(bjg parambjg)
  {
    if (!super.isAdded()) {}
    while (akr.l() == null) {
      return;
    }
    parambjg = getActivity();
    Intent localIntent = new Intent(parambjg, LandingPageActivity.class);
    localIntent.addFlags(67108864);
    startActivity(localIntent);
    parambjg.finish();
  }
  
  protected final boolean h_()
  {
    return super.isAdded();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e = avm.a();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968698, paramViewGroup, false);
    if (b == -1) {
      b = getResources().getColor(2131230816);
    }
    if (c == -1) {
      c = getResources().getColor(2131230796);
    }
    if (d == -1) {
      d = getResources().getColor(2131230797);
    }
    q = paramViewGroup.getId();
    paramLayoutInflater = getActivity();
    f = ((EditText)c(2131362420));
    f.addTextChangedListener(w);
    g = ((TextView)c(2131362422));
    i = ((ImageView)c(2131362421));
    i.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LoginFragment.a(LoginFragment.this).setText("");
        LoginFragment.e(LoginFragment.this);
      }
    });
    k = ((EditText)c(2131362423));
    k.setTypeface(Typeface.DEFAULT);
    k.setTransformationMethod(new PasswordTransformationMethod());
    k.addTextChangedListener(w);
    k.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        LoginFragment.c(LoginFragment.this);
        return false;
      }
    });
    h = ((TextView)c(2131362425));
    j = ((ImageView)c(2131362424));
    j.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LoginFragment.b(LoginFragment.this).setText("");
        LoginFragment.f(LoginFragment.this);
      }
    });
    m = ((Button)c(2131362427));
    paramViewGroup = m;
    paramLayoutInflater.getAssets();
    auh.a(paramViewGroup);
    m.setOnClickListener(v);
    m.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        LoginFragment.h(LoginFragment.this).setBackgroundDrawable(LoginFragment.g(LoginFragment.this));
        return false;
      }
    });
    l = c(2131362428);
    paramViewGroup = PreferenceManager.getDefaultSharedPreferences(paramLayoutInflater).getString(SharedPreferenceKey.LAST_SUCCESSFUL_LOGIN_USERNAME.getKey(), null);
    if (paramViewGroup != null)
    {
      f.setText(paramViewGroup);
      if (k.requestFocus()) {
        awf.f(paramLayoutInflater);
      }
    }
    for (;;)
    {
      m.setVisibility(4);
      p = getResources().getDrawable(2130838105);
      return mFragmentLayout;
      ScAnalyticsEventEngine.a(new lh());
      if (f.requestFocus()) {
        awf.f(paramLayoutInflater);
      }
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    f = null;
    k = null;
    l = null;
    m = null;
  }
  
  public void onResume()
  {
    super.onResume();
    FragmentActivity localFragmentActivity = getActivity();
    if ((localFragmentActivity instanceof SnapchatCameraBackgroundActivity)) {
      ((SnapchatCameraBackgroundActivity)localFragmentActivity).a(b);
    }
    K();
  }
  
  public final void w_()
  {
    if (!super.isAdded()) {
      return;
    }
    o();
    try
    {
      FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
      NewUserPhoneVerificationFragment localNewUserPhoneVerificationFragment = new NewUserPhoneVerificationFragment(mWindowConfiguration);
      localFragmentTransaction.replace(q, localNewUserPhoneVerificationFragment).addToBackStack("NewUserPhoneVerificationFragment").commit();
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.LoginFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */