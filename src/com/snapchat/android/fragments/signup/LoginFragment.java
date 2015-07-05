package com.snapchat.android.fragments.signup;

import ajv;
import ajx;
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
import asu;
import atj;
import auo;
import avh;
import aya;
import ayg;
import aza;
import ban;
import big;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.SnapchatCameraBackgroundActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
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
import kp;
import pw.a;

public class LoginFragment
  extends SnapchatFragment
  implements pw.a
{
  private static int b = -1;
  private static int c = -1;
  private static int d = -1;
  private static auo e;
  @Inject
  public ayg a;
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
  private final Provider<ajv> s;
  private final aya t;
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
        auo localauo = LoginFragment.i();
        int i = localauo.b(paramAnonymousView);
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
    this(ban.a(), ajv.UNSAFE_USER_PROVIDER, aya.a(), RegistrationAnalytics.a(), new WindowConfiguration());
  }
  
  @SuppressLint({"ValidFragment"})
  public LoginFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(ban.a(), ajv.UNSAFE_USER_PROVIDER, aya.a(), RegistrationAnalytics.a(), paramWindowConfiguration);
  }
  
  @SuppressLint({"ValidFragment"})
  private LoginFragment(Bus paramBus, Provider<ajv> paramProvider, aya paramaya, RegistrationAnalytics paramRegistrationAnalytics, WindowConfiguration paramWindowConfiguration)
  {
    super(paramWindowConfiguration);
    SnapchatApplication.b().c().a(this);
    r = paramBus;
    s = paramProvider;
    t = paramaya;
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
    l.setVisibility(4);
    m.setVisibility(4);
    try
    {
      FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
      PickUsernameFragment localPickUsernameFragment = new PickUsernameFragment(mWindowConfiguration);
      localFragmentTransaction.replace(q, localPickUsernameFragment).addToBackStack("PickUsernameFragment").commit();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Timber.f("LoginFragment", "Attempted to go to PickUsernameFragment", new Object[0]);
    }
  }
  
  public final void a(int paramInt, String paramString)
  {
    if (!isAdded()) {
      return;
    }
    l.setVisibility(4);
    m.setVisibility(4);
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
    o();
    AlertDialogUtils.a(getActivity(), paramString, getString(2131493229));
  }
  
  public final void a(big parambig)
  {
    k.setText("");
    l.setVisibility(4);
    m.setVisibility(4);
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    parambig = TwoFactorCodeVerificationFragment.a(parambig.s(), parambig.q(), parambig.t());
    localFragmentTransaction.replace(q, parambig).addToBackStack("TwoFactorCodeVerificationFragment").commit();
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    if (asu.SUPPORTS_TRANSPARENT_STATUS_BAR) {
      return super.b();
    }
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public final void b(big parambig)
  {
    if (!isAdded()) {}
    while (ajx.l() == null) {
      return;
    }
    parambig = getActivity();
    Intent localIntent = new Intent(parambig, LandingPageActivity.class);
    localIntent.addFlags(67108864);
    startActivity(localIntent);
    parambig.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e = auo.a();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968697, paramViewGroup, false);
    if (b == -1) {
      b = getResources().getColor(2131230814);
    }
    if (c == -1) {
      c = getResources().getColor(2131230795);
    }
    if (d == -1) {
      d = getResources().getColor(2131230796);
    }
    q = paramViewGroup.getId();
    paramLayoutInflater = getActivity();
    f = ((EditText)c(2131362422));
    f.addTextChangedListener(w);
    g = ((TextView)c(2131362424));
    i = ((ImageView)c(2131362423));
    i.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LoginFragment.a(LoginFragment.this).setText("");
        LoginFragment.e(LoginFragment.this);
      }
    });
    k = ((EditText)c(2131362425));
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
    h = ((TextView)c(2131362427));
    j = ((ImageView)c(2131362426));
    j.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LoginFragment.b(LoginFragment.this).setText("");
        LoginFragment.f(LoginFragment.this);
      }
    });
    m = ((Button)c(2131362429));
    paramViewGroup = m;
    paramLayoutInflater.getAssets();
    atj.a(paramViewGroup);
    m.setOnClickListener(v);
    m.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        LoginFragment.h(LoginFragment.this).setBackgroundDrawable(LoginFragment.g(LoginFragment.this));
        return false;
      }
    });
    l = c(2131362430);
    paramViewGroup = PreferenceManager.getDefaultSharedPreferences(paramLayoutInflater).getString(SharedPreferenceKey.LAST_SUCCESSFUL_LOGIN_USERNAME.getKey(), null);
    if (paramViewGroup != null)
    {
      f.setText(paramViewGroup);
      if (k.requestFocus()) {
        avh.f(paramLayoutInflater);
      }
    }
    for (;;)
    {
      m.setVisibility(4);
      p = getResources().getDrawable(2130838105);
      return mFragmentLayout;
      ScAnalyticsEventEngine.a(new kp());
      if (f.requestFocus()) {
        avh.f(paramLayoutInflater);
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
    I();
  }
  
  public final void x_()
  {
    l.setVisibility(4);
    m.setVisibility(4);
    try
    {
      FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
      NewUserPhoneVerificationFragment localNewUserPhoneVerificationFragment = new NewUserPhoneVerificationFragment(mWindowConfiguration);
      localFragmentTransaction.replace(q, localNewUserPhoneVerificationFragment).addToBackStack("NewUserPhoneVerificationFragment").commit();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Timber.f("LoginFragment", "Attempted to go to NewUserVerificationFragment", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.LoginFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */