package com.snapchat.android.fragments.signup;

import akp;
import akr;
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
import att;
import auh;
import avm;
import awf;
import ayx;
import ayy;
import aze;
import azy;
import bbo;
import bka;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.SnapchatCameraBackgroundActivity;
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
import ct;
import dr;
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
import ko;
import lb;
import lc;
import lg;
import org.apache.commons.lang3.StringUtils;
import qo.b;

public class SignupFragment
  extends SnapchatFragment
  implements qo.b
{
  static final dr<String> a = dr.a("gmail", "hotmail", "yahoo", "ymail", "outlook", "aol", new String[0]);
  private static avm g;
  private static int h = -1;
  private static int i = -1;
  private static int j = -1;
  private boolean A = false;
  private boolean B = false;
  private boolean C = false;
  private boolean D = false;
  private final Provider<akp> E;
  private final Bus F;
  private final ayy G;
  private final akr H;
  String b;
  TextView c;
  @Inject
  public aze d;
  protected final DatePickerDialog.OnDateSetListener e = new DatePickerDialog.OnDateSetListener()
  {
    public final void onDateSet(DatePicker paramAnonymousDatePicker, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      boolean bool2 = false;
      paramAnonymousDatePicker = new GregorianCalendar(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
      SignupFragment localSignupFragment = SignupFragment.this;
      if ((SignupFragment.l(SignupFragment.this)) || (SignupFragment.m(SignupFragment.this).get(1) != paramAnonymousDatePicker.get(1)))
      {
        bool1 = true;
        SignupFragment.c(localSignupFragment, bool1);
        localSignupFragment = SignupFragment.this;
        if ((!SignupFragment.n(SignupFragment.this)) && (SignupFragment.m(SignupFragment.this).get(2) == paramAnonymousDatePicker.get(2))) {
          break label272;
        }
      }
      label272:
      for (boolean bool1 = true;; bool1 = false)
      {
        SignupFragment.d(localSignupFragment, bool1);
        localSignupFragment = SignupFragment.this;
        if (!SignupFragment.o(SignupFragment.this))
        {
          bool1 = bool2;
          if (SignupFragment.m(SignupFragment.this).get(5) == paramAnonymousDatePicker.get(5)) {}
        }
        else
        {
          bool1 = true;
        }
        SignupFragment.e(localSignupFragment, bool1);
        if ((SignupFragment.m(SignupFragment.this).get(1) != paramAnonymousDatePicker.get(1)) || (SignupFragment.m(SignupFragment.this).get(2) != paramAnonymousDatePicker.get(2)) || (SignupFragment.m(SignupFragment.this).get(5) != paramAnonymousDatePicker.get(5)))
        {
          SignupFragment.a(SignupFragment.this, paramAnonymousDatePicker);
          SignupFragment.p(SignupFragment.this).setText(new SimpleDateFormat("MM/dd/yyyy").format(SignupFragment.m(SignupFragment.this).getTime()));
          SignupFragment.d(SignupFragment.this);
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
    this(bbo.a(), akp.UNSAFE_USER_PROVIDER, ayy.a(), RegistrationAnalytics.a(), akr.a(), new WindowConfiguration());
  }
  
  @SuppressLint({"ValidFragment"})
  public SignupFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(bbo.a(), akp.UNSAFE_USER_PROVIDER, ayy.a(), RegistrationAnalytics.a(), akr.a(), paramWindowConfiguration);
  }
  
  @SuppressLint({"ValidFragment"})
  private SignupFragment(Bus paramBus, Provider<akp> paramProvider, ayy paramayy, RegistrationAnalytics paramRegistrationAnalytics, akr paramakr, WindowConfiguration paramWindowConfiguration)
  {
    super(paramWindowConfiguration);
    SnapchatApplication.b().c().a(this);
    F = paramBus;
    E = paramProvider;
    G = paramayy;
    f = paramRegistrationAnalytics;
    H = paramakr;
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
    catch (IllegalStateException paramString) {}
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
      RegistrationAnalytics.a(ko.EMAIL_INVALID);
      a(paramString);
      return;
    case -201: 
      RegistrationAnalytics.a(ko.EMAIL_EXISTS);
      a(paramString);
      return;
    case 7: 
      RegistrationAnalytics.a(ko.PASSWORD_TOO_SHORT);
      b(paramString);
      return;
    case 8: 
      RegistrationAnalytics.a(ko.PASSWORD_TOO_COMMON);
      b(paramString);
      return;
    case 9: 
      RegistrationAnalytics.a(ko.PASSWORD_TOO_EASY);
      b(paramString);
      return;
    case 10: 
      RegistrationAnalytics.a(ko.PASSWORD_TOO_SIMILAR_TO_USERNAME);
      b(paramString);
      return;
    }
    RegistrationAnalytics.a(ko.PASSWORD_TOO_SIMILAR_TO_EMAIL);
    b(paramString);
  }
  
  public final void a(String paramString1, String paramString2, bka parambka)
  {
    if (isAdded())
    {
      akp localakp = (akp)E.get();
      if (localakp != null)
      {
        akr.a(parambka);
        localakp.a(null);
      }
      a(parambka.j(), parambka.k().booleanValue(), parambka.l());
      if ((parambka.g()) && (parambka.i())) {
        G.a(new ayx(parambka.f(), parambka.h()));
      }
    }
    boolean bool1 = B;
    boolean bool2 = C;
    boolean bool3 = D;
    parambka = new lg();
    editBirthdayYear = Boolean.valueOf(bool1);
    editBirthdayMonth = Boolean.valueOf(bool2);
    editBirthdayDay = Boolean.valueOf(bool3);
    ScAnalyticsEventEngine.a(parambka);
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
    if (att.SUPPORTS_TRANSPARENT_STATUS_BAR) {
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968733, paramViewGroup, false);
    if (h == -1) {
      h = getResources().getColor(2131230816);
    }
    if (i == -1) {
      i = getResources().getColor(2131230796);
    }
    if (j == -1) {
      j = getResources().getColor(2131230797);
    }
    r = ((GregorianCalendar)GregorianCalendar.getInstance());
    r.add(1, -1);
    g = avm.a();
    l = paramViewGroup.getId();
    n = (getResources().getDimensionPixelSize(2131296296) + getResources().getDimensionPixelSize(2131296305));
    o = (n + getResources().getDimensionPixelSize(2131296301));
    m = ((EditText)c(2131362686));
    c = ((TextView)c(2131362688));
    c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (!ct.c(SignupFragment.a(SignupFragment.this))) {
          SignupFragment.b(SignupFragment.this).setText(SignupFragment.a(SignupFragment.this));
        }
      }
    });
    u = ((ImageView)c(2131362687));
    p = ((EditText)c(2131362689));
    v = ((TextView)c(2131362691));
    w = ((ImageView)c(2131362690));
    q = ((EditText)c(2131362692));
    t = ((Button)c(2131362694));
    m.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          SignupFragment.c(SignupFragment.this);
          ScAnalyticsEventEngine.a(new lb());
          AnalyticsEvents.n();
        }
        for (;;)
        {
          return;
          SignupFragment.a(SignupFragment.this, false);
          paramAnonymousView = SignupFragment.b(SignupFragment.this).getText().toString().trim().toLowerCase(Locale.US);
          SignupFragment localSignupFragment = SignupFragment.this;
          Object localObject1 = paramAnonymousView.split("@");
          if (localObject1.length == 2)
          {
            Object localObject2 = localObject1[1].split("\\.");
            if (localObject2.length == 2)
            {
              CharSequence localCharSequence = localObject2[0];
              if ((TextUtils.isEmpty(localCharSequence)) || (SignupFragment.a.contains(localCharSequence))) {
                paramAnonymousView = null;
              }
              while (paramAnonymousView != null)
              {
                paramAnonymousView = localObject1[0] + "@" + paramAnonymousView + "." + localObject2[1];
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
                Iterator localIterator = SignupFragment.a.iterator();
                for (;;)
                {
                  if (localIterator.hasNext())
                  {
                    paramAnonymousView = (String)localIterator.next();
                    i = StringUtils.getLevenshteinDistance(paramAnonymousView, localCharSequence);
                    if ((i <= 2) && (i > 0)) {
                      break;
                    }
                  }
                }
                paramAnonymousView = null;
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
            SignupFragment.d(SignupFragment.this);
            SignupFragment.e(SignupFragment.this);
            if (!SignupFragment.f(SignupFragment.this))
            {
              AnalyticsEvents.p();
              SignupFragment.a(SignupFragment.this, true);
            }
            SignupFragment.g(SignupFragment.this);
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
          awf.f(k);
        }
        p.setTypeface(Typeface.DEFAULT);
        p.setTransformationMethod(new PasswordTransformationMethod());
        p.addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable)
          {
            SignupFragment.d(SignupFragment.this);
            SignupFragment.h(SignupFragment.this);
            if (!SignupFragment.i(SignupFragment.this))
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
            SignupFragment.j(SignupFragment.this);
            return true;
          }
        });
        p.setOnFocusChangeListener(new View.OnFocusChangeListener()
        {
          public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
          {
            if (paramAnonymousBoolean)
            {
              SignupFragment.c(SignupFragment.this);
              ScAnalyticsEventEngine.a(new lc());
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
            SignupFragment.k(SignupFragment.this).setText("");
          }
        });
        q.setOnTouchListener(new View.OnTouchListener()
        {
          public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
          {
            paramAnonymousView = SignupFragment.k(SignupFragment.this).getOnFocusChangeListener();
            if ((1 == paramAnonymousMotionEvent.getAction()) && (paramAnonymousView != null))
            {
              SignupFragment.j(SignupFragment.this);
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
            String str = SignupFragment.k(SignupFragment.this).getText().toString().trim();
            if (SignupFragment.i().a(paramAnonymousView))
            {
              AlertDialogUtils.a(SignupFragment.q(SignupFragment.this), getString(2131493227, new Object[] { paramAnonymousView }));
              return;
            }
            Object localObject = (GregorianCalendar)GregorianCalendar.getInstance();
            ((GregorianCalendar)localObject).add(1, -13);
            if (!SignupFragment.m(SignupFragment.this).before(localObject))
            {
              localObject = SignupFragment.i();
              if (!((avm)localObject).a(paramAnonymousView))
              {
                mSharedPreferencesEditor.putString("SnapKidzLoginManager_username_" + numAccounts, paramAnonymousView);
                mSharedPreferencesEditor.putInt("SnapKidzLoginManager_passkey_" + numAccounts, str.hashCode());
                numAccounts += 1;
                mSharedPreferencesEditor.putInt("SnapKidzLoginManager_numAccounts", numAccounts);
                mSharedPreferencesEditor.apply();
              }
              AlertDialogUtils.a(2131493498, SignupFragment.q(SignupFragment.this));
              SignupFragment.a(SignupFragment.this, paramAnonymousView);
              return;
            }
            SignupFragment.r(SignupFragment.this);
          }
        });
        paramLayoutInflater = t;
        k.getAssets();
        auh.a(paramLayoutInflater);
        s = c(2131362695);
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
    K();
    if (akr.o()) {
      a(null, false, null);
    }
    while (!akr.p()) {
      return;
    }
    if (!akr.f()) {
      try
      {
        k.mFragments.beginTransaction().replace(l, new NewUserPhoneVerificationFragment(mWindowConfiguration)).commit();
        return;
      }
      catch (IllegalStateException localIllegalStateException1)
      {
        return;
      }
    }
    try
    {
      FragmentTransaction localFragmentTransaction = k.mFragments.beginTransaction();
      CaptchaFragment localCaptchaFragment = new CaptchaFragment(akr.s(), mWindowConfiguration);
      localFragmentTransaction.replace(l, localCaptchaFragment).commit();
      return;
    }
    catch (IllegalStateException localIllegalStateException2) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.SignupFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */