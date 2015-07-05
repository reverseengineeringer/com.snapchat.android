package com.snapchat.android.fragments.verification;

import ajx;
import aku;
import amk;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import anf;
import aok;
import aol;
import ath;
import atj;
import aud;
import auh;
import avh;
import bet;
import bgo;
import bkr;
import bks.a;
import bkt;
import boh;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.PhoneVerificationAnalytics.VerificationType;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics.PhoneVerificationMethod;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.receiver.SmsReceiver;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import ep;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import ki;
import kl;
import kq;
import ks;
import kt;
import kw;
import kx;
import ot;

public abstract class PhoneVerificationFragment
  extends SnapchatFragment
{
  private boolean A = false;
  private boolean B = false;
  private aok C = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      bkt localbkt;
      if (PhoneVerificationFragment.a(PhoneVerificationFragment.this).contains(Integer.valueOf(i)))
      {
        PhoneVerificationFragment.a(PhoneVerificationFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousamk instanceof anf))
        {
          paramAnonymousamk = (anf)paramAnonymousamk;
          localbkt = b;
          if (a) {
            AlertDialogUtils.b(getActivity(), getString(2131493561), getString(2131493560));
          }
          if (!aud.a(localbkt.a())) {
            break label112;
          }
          a(localbkt);
        }
      }
      return;
      label112:
      b(localbkt.b());
    }
  };
  private String a;
  private View b;
  protected final RegistrationAnalytics c;
  protected final ajx d;
  public FragmentActivity e;
  public View f;
  public EditText g;
  protected TextView h;
  protected View i;
  protected EditText j;
  public Button k;
  protected ProgressBar l;
  protected String m = "";
  protected boolean n = false;
  public boolean o = true;
  private TextView p;
  private Handler q;
  private a r;
  private AlertDialog s;
  private int t;
  private SmsReceiver u;
  private final aol v;
  private final Set<Integer> w = new HashSet();
  private boolean x = false;
  private boolean y = false;
  private boolean z = false;
  
  public PhoneVerificationFragment()
  {
    this(new WindowConfiguration());
  }
  
  public PhoneVerificationFragment(RegistrationAnalytics paramRegistrationAnalytics, ajx paramajx, WindowConfiguration paramWindowConfiguration)
  {
    this(paramRegistrationAnalytics, paramajx, paramWindowConfiguration, aol.a());
  }
  
  private PhoneVerificationFragment(RegistrationAnalytics paramRegistrationAnalytics, ajx paramajx, WindowConfiguration paramWindowConfiguration, aol paramaol)
  {
    super(paramWindowConfiguration);
    c = paramRegistrationAnalytics;
    d = paramajx;
    v = paramaol;
  }
  
  public PhoneVerificationFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(RegistrationAnalytics.a(), ajx.a(), paramWindowConfiguration, aol.a());
  }
  
  private static CharSequence[] a(String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    Locale localLocale1 = Locale.getDefault();
    int i1 = 0;
    while (i1 < paramArrayOfString.length)
    {
      String str = paramArrayOfString[i1];
      Locale localLocale2 = new Locale(localLocale1.getLanguage(), str);
      arrayOfString[i1] = (str + " - " + localLocale2.getDisplayCountry());
      i1 += 1;
    }
    return arrayOfString;
  }
  
  private void e(String paramString)
  {
    if (paramString == null)
    {
      h.setText("");
      paramString = h;
      if (j.getVisibility() == 0) {}
      for (int i1 = 4;; i1 = 8)
      {
        paramString.setVisibility(i1);
        i.setVisibility(4);
        return;
      }
    }
    h.setVisibility(0);
    h.setText(paramString);
    i.setVisibility(0);
  }
  
  public abstract void a(bkr parambkr);
  
  protected final void a(bkt parambkt)
  {
    PhoneVerificationAnalytics.VerificationType localVerificationType;
    if (r()) {
      localVerificationType = PhoneVerificationAnalytics.VerificationType.VERIFIED_NUMBER;
    }
    for (;;)
    {
      new EasyMetric("FORCE_PHONE_VERIFICATION_SUCCESS").a("result", ath.a(localVerificationType)).d();
      if (ajx.v())
      {
        ScAnalyticsEventEngine.a(new kw());
        if (ajx.v()) {
          new EasyMetric("R01_REGISTER_PHONE_NUMBER_VERIFICATION_SUCCESS").d();
        }
      }
      if (isAdded())
      {
        ajx.a(m);
        a(parambkt.e());
        v();
      }
      return;
      if (ajx.f()) {
        localVerificationType = PhoneVerificationAnalytics.VerificationType.VERIFIED_NEW_NUMBER;
      } else {
        localVerificationType = PhoneVerificationAnalytics.VerificationType.REGISTERED_NUMBER;
      }
    }
  }
  
  public void a(String paramString) {}
  
  protected final void b(String paramString)
  {
    if (isAdded())
    {
      t();
      l.setVisibility(4);
      g.setEnabled(true);
      j.setEnabled(true);
      e(paramString);
    }
    a(paramString);
    RegistrationAnalytics.k();
    if (ajx.v()) {
      ScAnalyticsEventEngine.a(new kt());
    }
  }
  
  public abstract void i();
  
  public final boolean l_()
  {
    return true;
  }
  
  public bks.a m()
  {
    return bks.a.DEFAULT_TYPE;
  }
  
  public final void n()
  {
    g.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          PhoneVerificationFragment.a(PhoneVerificationFragment.this, WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI);
          avh.g(getActivity());
          paramAnonymousView = c;
          if (ajx.v())
          {
            ScAnalyticsEventEngine.a(new kl());
            if (ajx.v()) {
              new EasyMetric("R01_FOCUS_ON_PHONE_NUMBER").d();
            }
          }
          return;
        }
        PhoneVerificationFragment.a(PhoneVerificationFragment.this, false);
      }
    });
    g.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        m = "";
        if (PhoneVerificationFragment.b(PhoneVerificationFragment.this) != null)
        {
          PhoneVerificationFragment.b(PhoneVerificationFragment.this).c();
          PhoneVerificationFragment.a(PhoneVerificationFragment.this, null);
        }
        PhoneVerificationFragment.a(PhoneVerificationFragment.this, null);
        PhoneVerificationFragment.c(PhoneVerificationFragment.this);
        t();
        if (!PhoneVerificationFragment.d(PhoneVerificationFragment.this))
        {
          RegistrationAnalytics.d();
          PhoneVerificationFragment.a(PhoneVerificationFragment.this, true);
        }
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        PhoneVerificationFragment.a(PhoneVerificationFragment.this, null);
        g.setText("");
        g.requestFocus();
        RegistrationAnalytics.l();
      }
    });
    String str = ((TelephonyManager)e.getApplicationContext().getSystemService("phone")).getLine1Number();
    if (str != null)
    {
      g.setText(str);
      RegistrationAnalytics.c();
    }
  }
  
  public final void o()
  {
    j.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        PhoneVerificationFragment.e(PhoneVerificationFragment.this);
        t();
        if (!PhoneVerificationFragment.f(PhoneVerificationFragment.this))
        {
          RegistrationAnalytics.j();
          PhoneVerificationFragment.b(PhoneVerificationFragment.this, true);
        }
        PhoneVerificationFragment.g(PhoneVerificationFragment.this);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    j.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          PhoneVerificationFragment.b(PhoneVerificationFragment.this, WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI);
          RegistrationAnalytics.i();
          return;
        }
        PhoneVerificationFragment.b(PhoneVerificationFragment.this, false);
      }
    });
    i.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        PhoneVerificationFragment.e(PhoneVerificationFragment.this);
        j.setText("");
        j.requestFocus();
        RegistrationAnalytics.m();
      }
    });
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    e = ((FragmentActivity)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968707, null);
    q();
    p();
    u();
    n();
    o();
    return mFragmentLayout;
  }
  
  public void onDetach()
  {
    super.onDetach();
    e = null;
  }
  
  public void onPause()
  {
    H().setSoftInputMode(3);
    super.onPause();
    if (s != null) {
      s.dismiss();
    }
    v.b(1024, C);
    w.clear();
    Timber.c("PhoneVerificationFragment", "unregisterSmsReceiver()", new Object[0]);
    if (u != null)
    {
      getActivity().unregisterReceiver(u);
      u = null;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    v.a(1024, C);
  }
  
  @boh
  public void onVerificationCodeReceivedEvent(bet parambet)
  {
    if (TextUtils.isEmpty(j.getText()))
    {
      j.setText(code);
      B = true;
      k.performClick();
    }
  }
  
  public final void p()
  {
    Button localButton = k;
    getActivity().getAssets();
    atj.a(localButton);
    k.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if ((TextUtils.equals(g.getText(), m)) && (j.length() == 6))
        {
          w();
          paramAnonymousView = PhoneVerificationFragment.a(PhoneVerificationFragment.this);
          aol localaol = PhoneVerificationFragment.h(PhoneVerificationFragment.this);
          FragmentActivity localFragmentActivity = getActivity();
          String str1 = j.getText().toString();
          String str2 = m().name();
          Intent localIntent = localaol.b(localFragmentActivity);
          localIntent.putExtra("op_code", 1024);
          localIntent.putExtra("action", "verifyPhoneNumber");
          localIntent.putExtra("code", str1);
          localIntent.putExtra("type", str2);
          paramAnonymousView.add(Integer.valueOf(localaol.a(localFragmentActivity, localIntent)));
          paramAnonymousView = c;
          boolean bool = PhoneVerificationFragment.i(PhoneVerificationFragment.this);
          if (ajx.v())
          {
            paramAnonymousView = new ks();
            autofill = Boolean.valueOf(bool);
            ScAnalyticsEventEngine.a(paramAnonymousView);
            if (ajx.v()) {
              new EasyMetric("R01_ATTEMPT_VERIFY_WITH_CODE").d();
            }
          }
        }
        do
        {
          do
          {
            do
            {
              return;
              PhoneVerificationFragment.j(PhoneVerificationFragment.this);
              RegistrationAnalytics.g();
              if (PhoneVerificationFragment.k(PhoneVerificationFragment.this)) {
                break;
              }
              paramAnonymousView = c;
            } while (!ajx.v());
            ScAnalyticsEventEngine.a(new kq());
            return;
            paramAnonymousView = c;
          } while (!ajx.v());
          ScAnalyticsEventEngine.a(new kx());
        } while (!ajx.v());
        new EasyMetric("R01_RESEND_VERIFICATION_CODE").d();
      }
    });
  }
  
  public void q()
  {
    g = ((EditText)c(2131362011));
    p = ((TextView)c(2131362013));
    b = c(2131362012);
    j = ((EditText)c(2131362014));
    h = ((TextView)c(2131362016));
    i = c(2131362015);
    k = ((Button)c(2131362018));
    Object localObject = k;
    getActivity().getAssets();
    atj.a((View)localObject);
    l = ((ProgressBar)c(2131362019));
    f = c(2131362529);
    if (f != null)
    {
      localObject = f;
      if (!o) {
        break label172;
      }
    }
    label172:
    for (int i1 = 0;; i1 = 8)
    {
      ((View)localObject).setVisibility(i1);
      q = new Handler();
      return;
    }
  }
  
  protected final boolean r()
  {
    return (n) && (TextUtils.equals(g.getText(), ajx.e()));
  }
  
  protected void t()
  {
    if ((TextUtils.isEmpty(g.getText())) || ((!n) && (TextUtils.equals(g.getText(), ajx.e()))))
    {
      k.setVisibility(8);
      z = false;
      return;
    }
    if (!TextUtils.equals(g.getText(), m))
    {
      ep localep = ep.a();
      if ((TextUtils.isEmpty(a)) || (localep.a(g.getText().toString(), a)))
      {
        k.setVisibility(0);
        k.setText(2131493067);
        k.setClickable(true);
        k.setEnabled(true);
      }
      for (;;)
      {
        z = false;
        return;
        k.setVisibility(8);
      }
    }
    k.setVisibility(0);
    z = false;
    if (j.length() == 6)
    {
      k.setText(2131493067);
      k.setClickable(true);
      k.setEnabled(true);
      return;
    }
    if (r == null)
    {
      k.setText(2131493306);
      k.setClickable(true);
      k.setEnabled(true);
    }
    for (;;)
    {
      z = true;
      return;
      k.setText(getString(2131493306) + " " + t);
      k.setEnabled(false);
    }
  }
  
  public final void u()
  {
    final TextView localTextView = (TextView)c(2131362010);
    final String[] arrayOfString = Locale.getISOCountries();
    Object localObject = Locale.getDefault().getCountry();
    int i1 = 0;
    if (i1 < arrayOfString.length) {
      if (TextUtils.equals((CharSequence)localObject, arrayOfString[i1])) {
        localObject = new Pair(Integer.valueOf(i1), localObject);
      }
    }
    for (;;)
    {
      a = ((String)second);
      final CharSequence[] arrayOfCharSequence = a(arrayOfString);
      s = new AlertDialog.Builder(e).setInverseBackgroundForced(true).setSingleChoiceItems(arrayOfCharSequence, ((Integer)first).intValue(), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          PhoneVerificationFragment.b(PhoneVerificationFragment.this, arrayOfString[paramAnonymousInt]);
          localTextView.setText(arrayOfCharSequence[paramAnonymousInt]);
          t();
          paramAnonymousDialogInterface.dismiss();
          RegistrationAnalytics.f();
          PhoneVerificationFragment.m(PhoneVerificationFragment.this);
        }
      }).setCancelable(true).setTitle(2131493063).create();
      localTextView.setText(arrayOfCharSequence[((Integer)first).intValue()]);
      localTextView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          PhoneVerificationFragment.n(PhoneVerificationFragment.this).show();
          paramAnonymousView = c;
          if (!PhoneVerificationFragment.o(PhoneVerificationFragment.this)) {}
          for (paramAnonymousView = PhoneVerificationFragment.p(PhoneVerificationFragment.this);; paramAnonymousView = null)
          {
            if (ajx.v())
            {
              ki localki = new ki();
              country = paramAnonymousView;
              ScAnalyticsEventEngine.a(localki);
              if (ajx.v()) {
                new EasyMetric("R01_FOCUS_ON_COUNTRY").d();
              }
            }
            return;
          }
        }
      });
      return;
      i1 += 1;
      break;
      i1 = 0;
      for (;;)
      {
        if (i1 >= arrayOfString.length) {
          break label224;
        }
        if (TextUtils.equals(Locale.US.getCountry(), arrayOfString[i1]))
        {
          localObject = new Pair(Integer.valueOf(i1), Locale.US.getCountry());
          break;
        }
        i1 += 1;
      }
      label224:
      localObject = new Pair(Integer.valueOf(0), arrayOfString[0]);
    }
  }
  
  protected void v()
  {
    i();
  }
  
  protected final void w()
  {
    g.setEnabled(false);
    j.setEnabled(false);
    k.setText("");
    k.setEnabled(false);
    l.setVisibility(0);
    if (r != null)
    {
      r.c();
      r = null;
    }
  }
  
  protected boolean x()
  {
    return true;
  }
  
  final class a
    extends bgo
  {
    public a(int paramInt, long paramLong, Handler paramHandler)
    {
      super(paramLong, paramHandler);
      PhoneVerificationFragment.a(PhoneVerificationFragment.this, paramInt);
      t();
    }
    
    public final void a()
    {
      if (!isAdded()) {
        return;
      }
      PhoneVerificationFragment.r(PhoneVerificationFragment.this);
      t();
    }
    
    public final void b()
    {
      if (!isAdded()) {
        return;
      }
      PhoneVerificationFragment.a(PhoneVerificationFragment.this, null);
      t();
    }
  }
  
  final class b
    extends ot
  {
    private final String b;
    private String c = null;
    
    public b(boolean paramBoolean1, boolean paramBoolean2)
    {
      m = g.getText().toString();
      if (paramBoolean2)
      {
        b = "requestPhoneVerification";
        if (paramBoolean1)
        {
          c = "text";
          return;
        }
        c = "call";
        return;
      }
      if (paramBoolean1)
      {
        b = "updatePhoneNumber";
        return;
      }
      b = "updatePhoneNumberWithCall";
    }
    
    protected final String a()
    {
      return "/bq/phone_verify";
    }
    
    protected final void a(aku paramaku)
    {
      if (isAdded())
      {
        l.setVisibility(8);
        g.setEnabled(true);
      }
      super.a(paramaku);
    }
    
    protected final void a(String paramString, int paramInt)
    {
      super.a(paramString, paramInt);
      if (isAdded())
      {
        m = "";
        t();
        PhoneVerificationFragment.a(PhoneVerificationFragment.this, paramString);
        avh.a(e, g);
      }
      a(paramString);
      RegistrationAnalytics.e();
    }
    
    protected final Bundle b()
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("action", b);
      localBundle.putString("username", ajx.l());
      localBundle.putString("phoneNumber", m);
      localBundle.putString("countryCode", PhoneVerificationFragment.p(PhoneVerificationFragment.this));
      localBundle.putBoolean("skipConfirmation", x());
      if (c != null) {
        localBundle.putString("method", c);
      }
      return localBundle;
    }
    
    protected final void b(aku paramaku)
    {
      super.b(paramaku);
      if (!TextUtils.isEmpty(message_format)) {
        ajx.v(message_format);
      }
      if (isAdded())
      {
        PhoneVerificationFragment.c(PhoneVerificationFragment.this);
        j.requestFocus();
        PhoneVerificationFragment.a(PhoneVerificationFragment.this, new PhoneVerificationFragment.a(PhoneVerificationFragment.this, (int)TimeUnit.MINUTES.toSeconds(1L), TimeUnit.SECONDS.toMillis(1L), PhoneVerificationFragment.q(PhoneVerificationFragment.this)));
        PhoneVerificationFragment.b(PhoneVerificationFragment.this).e();
        t();
        if (b.equals("updatePhoneNumberWithCall")) {
          AlertDialogUtils.a(2131493060, e);
        }
      }
      RegistrationAnalytics.h();
    }
    
    protected final String c()
    {
      return "RequestPhoneVerificationCodeTask";
    }
    
    protected final void onPreExecute()
    {
      super.onPreExecute();
      g.setEnabled(false);
      k.setText("");
      k.setEnabled(false);
      l.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */