package com.snapchat.android.fragments.signup;

import ajv;
import ajx;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.DatePickerDialog.OnDateSetListener;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.text.style.ForegroundColorSpan;
import android.util.Patterns;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import asu;
import atj;
import auo;
import avh;
import axz;
import aya;
import ayg;
import aza;
import ban;
import biz;
import co;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.SnapchatCameraBackgroundActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.fragments.captcha.CaptchaFragment;
import com.snapchat.android.fragments.verification.NewUserPhoneVerificationFragment;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import di;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Inject;
import javax.inject.Provider;
import jw;
import kj;
import kk;
import ko;
import lt;
import org.apache.commons.lang3.StringUtils;
import py.b;

public class SignupFragment
  extends SnapchatFragment
  implements py.b
{
  static final di<String> a = di.a("gmail", "hotmail", "yahoo", "ymail", "outlook", "aol", new String[0]);
  private static auo g;
  private static int h = -1;
  private static int i = -1;
  private static int j = -1;
  private boolean A = false;
  private boolean B = false;
  private boolean C = false;
  private boolean D = false;
  private final Provider<ajv> E;
  private final Bus F;
  private final aya G;
  private final ajx H;
  String b;
  TextView c;
  @Inject
  public ayg d;
  protected final DatePickerDialog.OnDateSetListener e = new DatePickerDialog.OnDateSetListener()
  {
    public final void onDateSet(DatePicker paramAnonymousDatePicker, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      boolean bool2 = false;
      paramAnonymousDatePicker = new GregorianCalendar(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
      SignupFragment localSignupFragment = SignupFragment.this;
      if ((SignupFragment.n(SignupFragment.this)) || (SignupFragment.o(SignupFragment.this).get(1) != paramAnonymousDatePicker.get(1)))
      {
        bool1 = true;
        SignupFragment.c(localSignupFragment, bool1);
        localSignupFragment = SignupFragment.this;
        if ((!SignupFragment.p(SignupFragment.this)) && (SignupFragment.o(SignupFragment.this).get(2) == paramAnonymousDatePicker.get(2))) {
          break label272;
        }
      }
      label272:
      for (boolean bool1 = true;; bool1 = false)
      {
        SignupFragment.d(localSignupFragment, bool1);
        localSignupFragment = SignupFragment.this;
        if (!SignupFragment.q(SignupFragment.this))
        {
          bool1 = bool2;
          if (SignupFragment.o(SignupFragment.this).get(5) == paramAnonymousDatePicker.get(5)) {}
        }
        else
        {
          bool1 = true;
        }
        SignupFragment.e(localSignupFragment, bool1);
        if ((SignupFragment.o(SignupFragment.this).get(1) != paramAnonymousDatePicker.get(1)) || (SignupFragment.o(SignupFragment.this).get(2) != paramAnonymousDatePicker.get(2)) || (SignupFragment.o(SignupFragment.this).get(5) != paramAnonymousDatePicker.get(5)))
        {
          SignupFragment.a(SignupFragment.this, paramAnonymousDatePicker);
          SignupFragment.r(SignupFragment.this).setText(new SimpleDateFormat("MM/dd/yyyy").format(SignupFragment.o(SignupFragment.this).getTime()));
          SignupFragment.f(SignupFragment.this);
          AnalyticsEvents.z();
        }
        return;
        bool1 = false;
        break;
      }
    }
  };
  private final RegistrationAnalytics f;
  private FragmentActivity k;
  private int l;
  private EditText m;
  private int n;
  private int o;
  private EditText p;
  private EditText q;
  private GregorianCalendar r;
  private View s;
  private Button t;
  private ImageView u;
  private TextView v;
  private ImageView w;
  private boolean x = false;
  private boolean y = false;
  private boolean z = false;
  
  public SignupFragment()
  {
    this(ban.a(), ajv.UNSAFE_USER_PROVIDER, aya.a(), RegistrationAnalytics.a(), ajx.a(), new WindowConfiguration());
  }
  
  @SuppressLint({"ValidFragment"})
  public SignupFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(ban.a(), ajv.UNSAFE_USER_PROVIDER, aya.a(), RegistrationAnalytics.a(), ajx.a(), paramWindowConfiguration);
  }
  
  @SuppressLint({"ValidFragment"})
  private SignupFragment(Bus paramBus, Provider<ajv> paramProvider, aya paramaya, RegistrationAnalytics paramRegistrationAnalytics, ajx paramajx, WindowConfiguration paramWindowConfiguration)
  {
    super(paramWindowConfiguration);
    SnapchatApplication.b().c().a(this);
    F = paramBus;
    E = paramProvider;
    G = paramaya;
    f = paramRegistrationAnalytics;
    H = paramajx;
  }
  
  private void a(String paramString)
  {
    if (paramString == null)
    {
      c.setText("");
      c.setVisibility(4);
      u.setVisibility(4);
      a(false);
      return;
    }
    c.setText(paramString);
    c.setVisibility(0);
    u.setVisibility(0);
    a(true);
    c.setLinksClickable(false);
  }
  
  private void a(String paramString, boolean paramBoolean, List<String> paramList)
  {
    try
    {
      PickUsernameFragment localPickUsernameFragment = new PickUsernameFragment(mWindowConfiguration);
      if (!TextUtils.isEmpty(paramString))
      {
        Bundle localBundle = new Bundle();
        localBundle.putString("defaultUsername", paramString);
        localBundle.putBoolean("defaultUsernameStatus", paramBoolean);
        if ((paramList != null) && (!paramList.isEmpty())) {
          localBundle.putStringArrayList("usernameSuggestions", new ArrayList(paramList));
        }
        localPickUsernameFragment.setArguments(localBundle);
      }
      k.mFragments.beginTransaction().replace(l, localPickUsernameFragment).commit();
      return;
    }
    catch (IllegalStateException paramString)
    {
      Timber.f("SignupFragment", "Attempted to go to PickUsernameFragment", new Object[0]);
    }
  }
  
  private void b(String paramString)
  {
    if (paramString == null)
    {
      v.setText("");
      v.setVisibility(4);
      w.setVisibility(4);
      return;
    }
    v.setText(paramString);
    v.setVisibility(0);
    w.setVisibility(0);
  }
  
  private void m()
  {
    if ((!TextUtils.isEmpty(m.getText())) && (!TextUtils.isEmpty(p.getText())) && (!TextUtils.isEmpty(q.getText())))
    {
      t.setVisibility(0);
      t.setText(2131493210);
      t.setClickable(true);
      return;
    }
    t.setVisibility(8);
  }
  
  public final void a(int paramInt, String paramString)
  {
    if (!isAdded()) {
      return;
    }
    s.setVisibility(8);
    t.setVisibility(8);
    switch (paramInt)
    {
    default: 
      m();
      AlertDialogUtils.a(k, paramString);
      return;
    case -200: 
      RegistrationAnalytics.a(jw.EMAIL_INVALID);
      a(paramString);
      return;
    case -201: 
      RegistrationAnalytics.a(jw.EMAIL_EXISTS);
      a(paramString);
      return;
    case 7: 
      RegistrationAnalytics.a(jw.PASSWORD_TOO_SHORT);
      b(paramString);
      return;
    case 8: 
      RegistrationAnalytics.a(jw.PASSWORD_TOO_COMMON);
      b(paramString);
      return;
    case 9: 
      RegistrationAnalytics.a(jw.PASSWORD_TOO_EASY);
      b(paramString);
      return;
    case 10: 
      RegistrationAnalytics.a(jw.PASSWORD_TOO_SIMILAR_TO_USERNAME);
      b(paramString);
      return;
    }
    RegistrationAnalytics.a(jw.PASSWORD_TOO_SIMILAR_TO_EMAIL);
    b(paramString);
  }
  
  public final void a(String paramString1, String paramString2, biz parambiz)
  {
    if (isAdded())
    {
      ajv localajv = (ajv)E.get();
      if (localajv != null)
      {
        ajx.a(parambiz);
        localajv.a(null);
      }
      a(parambiz.j(), parambiz.k().booleanValue(), parambiz.l());
      if ((parambiz.g()) && (parambiz.i())) {
        G.a(new axz(parambiz.f(), parambiz.h()));
      }
    }
    boolean bool1 = B;
    boolean bool2 = C;
    boolean bool3 = D;
    parambiz = new ko();
    editBirthdayYear = Boolean.valueOf(bool1);
    editBirthdayMonth = Boolean.valueOf(bool2);
    editBirthdayDay = Boolean.valueOf(bool3);
    ScAnalyticsEventEngine.a(parambiz);
    AnalyticsEvents.b(paramString1, paramString2);
  }
  
  final void a(boolean paramBoolean)
  {
    int i2 = m.getPaddingLeft();
    int i3 = m.getPaddingTop();
    int i4 = m.getPaddingBottom();
    EditText localEditText = m;
    if (paramBoolean) {}
    for (int i1 = o;; i1 = n)
    {
      localEditText.setPadding(i2, i3, i1, i4);
      return;
    }
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    if (asu.SUPPORTS_TRANSPARENT_STATUS_BAR) {
      return super.b();
    }
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    k = ((FragmentActivity)paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i1 = 0;
    mFragmentLayout = paramLayoutInflater.inflate(2130968731, paramViewGroup, false);
    if (h == -1) {
      h = getResources().getColor(2131230814);
    }
    if (i == -1) {
      i = getResources().getColor(2131230795);
    }
    if (j == -1) {
      j = getResources().getColor(2131230796);
    }
    r = ((GregorianCalendar)GregorianCalendar.getInstance());
    r.add(1, -1);
    g = auo.a();
    l = paramViewGroup.getId();
    n = (getResources().getDimensionPixelSize(2131296296) + getResources().getDimensionPixelSize(2131296306));
    o = (n + getResources().getDimensionPixelSize(2131296302));
    m = ((EditText)c(2131362687));
    c = ((TextView)c(2131362689));
    c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (!co.c(SignupFragment.a(SignupFragment.this))) {
          SignupFragment.b(SignupFragment.this).setText(SignupFragment.a(SignupFragment.this));
        }
      }
    });
    u = ((ImageView)c(2131362688));
    p = ((EditText)c(2131362690));
    v = ((TextView)c(2131362692));
    w = ((ImageView)c(2131362691));
    q = ((EditText)c(2131362693));
    t = ((Button)c(2131362695));
    m.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        Object localObject1 = null;
        if (paramAnonymousBoolean)
        {
          SignupFragment.e(SignupFragment.this);
          if ((SignupFragment.c(SignupFragment.this)) && (!SignupFragment.d(SignupFragment.this)))
          {
            paramAnonymousView = SignupFragment.b(SignupFragment.this).getText().toString();
            localObject1 = new kj();
            emailSuggestion = paramAnonymousView;
            ScAnalyticsEventEngine.a((lt)localObject1);
            AnalyticsEvents.n();
          }
        }
        for (;;)
        {
          return;
          paramAnonymousView = null;
          break;
          SignupFragment.a(SignupFragment.this, false);
          paramAnonymousView = SignupFragment.b(SignupFragment.this).getText().toString().trim().toLowerCase(Locale.US);
          SignupFragment localSignupFragment = SignupFragment.this;
          Object localObject2 = paramAnonymousView.split("@");
          if (localObject2.length == 2)
          {
            String[] arrayOfString = localObject2[1].split("\\.");
            if (arrayOfString.length == 2)
            {
              String str = arrayOfString[0];
              paramAnonymousView = (View)localObject1;
              if (!TextUtils.isEmpty(str))
              {
                if (!SignupFragment.a.contains(str)) {
                  break label370;
                }
                paramAnonymousView = (View)localObject1;
              }
              while (paramAnonymousView != null)
              {
                paramAnonymousView = localObject2[0] + "@" + paramAnonymousView + "." + arrayOfString[1];
                localObject1 = new SpannableStringBuilder();
                localObject2 = localSignupFragment.getString(2131493118, new Object[] { paramAnonymousView });
                int i = ((String)localObject2).indexOf(paramAnonymousView);
                ((SpannableStringBuilder)localObject1).append((CharSequence)localObject2);
                ((SpannableStringBuilder)localObject1).setSpan(new ForegroundColorSpan(-16776961), i, paramAnonymousView.length() + i, 0);
                ((SpannableStringBuilder)localObject1).setSpan(new ForegroundColorSpan(-16777216), 0, i, 0);
                ((SpannableStringBuilder)localObject1).setSpan(new ForegroundColorSpan(-16777216), i + paramAnonymousView.length(), ((String)localObject2).length(), 0);
                c.setText((CharSequence)localObject1);
                c.setVisibility(0);
                localSignupFragment.a(false);
                c.setLinksClickable(true);
                b = paramAnonymousView;
                return;
                label370:
                Iterator localIterator = SignupFragment.a.iterator();
                do
                {
                  paramAnonymousView = (View)localObject1;
                  if (!localIterator.hasNext()) {
                    break;
                  }
                  paramAnonymousView = (String)localIterator.next();
                  i = StringUtils.getLevenshteinDistance(paramAnonymousView, str);
                } while ((i > 2) || (i <= 0));
              }
            }
          }
        }
      }
    });
    paramViewGroup = AccountManager.get(k.getApplicationContext()).getAccounts();
    int i2 = paramViewGroup.length;
    if (i1 < i2)
    {
      paramLayoutInflater = paramViewGroup[i1];
      if (Patterns.EMAIL_ADDRESS.matcher(name).matches())
      {
        AnalyticsEvents.o();
        z = true;
      }
    }
    for (;;)
    {
      if (paramLayoutInflater == null) {
        m.setHint(2131493486);
      }
      for (;;)
      {
        m.addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable)
          {
            SignupFragment.f(SignupFragment.this);
            SignupFragment.g(SignupFragment.this);
            if (!SignupFragment.h(SignupFragment.this))
            {
              AnalyticsEvents.p();
              SignupFragment.a(SignupFragment.this, true);
            }
            SignupFragment.i(SignupFragment.this);
          }
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        u.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SignupFragment.b(SignupFragment.this).setText("");
          }
        });
        if (m.requestFocus()) {
          avh.f(k);
        }
        p.setTypeface(Typeface.DEFAULT);
        p.setTransformationMethod(new PasswordTransformationMethod());
        p.addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable)
          {
            SignupFragment.f(SignupFragment.this);
            SignupFragment.j(SignupFragment.this);
            if (!SignupFragment.k(SignupFragment.this))
            {
              AnalyticsEvents.t();
              SignupFragment.b(SignupFragment.this, true);
            }
          }
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        p.setOnEditorActionListener(new TextView.OnEditorActionListener()
        {
          public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
          {
            SignupFragment.l(SignupFragment.this);
            return true;
          }
        });
        p.setOnFocusChangeListener(new View.OnFocusChangeListener()
        {
          public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
          {
            if (paramAnonymousBoolean)
            {
              SignupFragment.e(SignupFragment.this);
              ScAnalyticsEventEngine.a(new kk());
              AnalyticsEvents.s();
              return;
            }
            SignupFragment.b(SignupFragment.this, false);
          }
        });
        w.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SignupFragment.m(SignupFragment.this).setText("");
          }
        });
        q.setOnTouchListener(new View.OnTouchListener()
        {
          public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
          {
            paramAnonymousView = SignupFragment.m(SignupFragment.this).getOnFocusChangeListener();
            if ((1 == paramAnonymousMotionEvent.getAction()) && (paramAnonymousView != null))
            {
              SignupFragment.l(SignupFragment.this);
              return true;
            }
            return false;
          }
        });
        t.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = SignupFragment.b(SignupFragment.this).getText().toString().trim().toLowerCase(Locale.US);
            String str = SignupFragment.m(SignupFragment.this).getText().toString().trim();
            if (SignupFragment.i().a(paramAnonymousView))
            {
              AlertDialogUtils.a(SignupFragment.s(SignupFragment.this), getString(2131493227, new Object[] { paramAnonymousView }));
              return;
            }
            Object localObject = (GregorianCalendar)GregorianCalendar.getInstance();
            ((GregorianCalendar)localObject).add(1, -13);
            if (!SignupFragment.o(SignupFragment.this).before(localObject))
            {
              localObject = SignupFragment.i();
              if (!((auo)localObject).a(paramAnonymousView))
              {
                mSharedPreferencesEditor.putString("SnapKidzLoginManager_username_" + numAccounts, paramAnonymousView);
                mSharedPreferencesEditor.putInt("SnapKidzLoginManager_passkey_" + numAccounts, str.hashCode());
                numAccounts += 1;
                mSharedPreferencesEditor.putInt("SnapKidzLoginManager_numAccounts", numAccounts);
                mSharedPreferencesEditor.apply();
              }
              AlertDialogUtils.a(2131493498, SignupFragment.s(SignupFragment.this));
              SignupFragment.a(SignupFragment.this, paramAnonymousView);
              return;
            }
            SignupFragment.t(SignupFragment.this);
          }
        });
        paramLayoutInflater = t;
        k.getAssets();
        atj.a(paramLayoutInflater);
        s = c(2131362696);
        return mFragmentLayout;
        i1 += 1;
        break;
        m.setText(name);
      }
      paramLayoutInflater = null;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    k = null;
  }
  
  public void onResume()
  {
    super.onResume();
    if ((k != null) && ((k instanceof SnapchatCameraBackgroundActivity))) {
      ((SnapchatCameraBackgroundActivity)k).a(h);
    }
    I();
    if (ajx.o()) {
      a(null, false, null);
    }
    while (!ajx.p()) {
      return;
    }
    if (!ajx.f()) {
      try
      {
        k.mFragments.beginTransaction().replace(l, new NewUserPhoneVerificationFragment(mWindowConfiguration)).commit();
        return;
      }
      catch (IllegalStateException localIllegalStateException1)
      {
        Timber.f("SignupFragment", "Attempted to go to PhoneVerificationFragment", new Object[0]);
        return;
      }
    }
    try
    {
      FragmentTransaction localFragmentTransaction = k.mFragments.beginTransaction();
      CaptchaFragment localCaptchaFragment = new CaptchaFragment(ajx.s(), mWindowConfiguration);
      localFragmentTransaction.replace(l, localCaptchaFragment).commit();
      return;
    }
    catch (IllegalStateException localIllegalStateException2)
    {
      Timber.f("SignupFragment", "Attempted to go to CaptchaFragment", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.SignupFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */