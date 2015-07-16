package com.snapchat.android.fragments.cash;

import akr;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import arh;
import auh;
import auv;
import awf;
import bhp;
import chc;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.CardInputError;
import com.snapchat.android.ui.cash.CardCvvEditText;
import com.snapchat.android.ui.cash.CardExpiryEditText;
import com.snapchat.android.ui.cash.CardNumberEditText;
import com.snapchat.android.ui.cash.ZipEditText;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import rm;
import za;

public class CardLinkFragment
  extends SnapchatFragment
  implements rm
{
  public a a;
  private ScrollView b;
  private CardNumberEditText c;
  private ImageView d;
  private TextView e;
  private CardExpiryEditText f;
  private ImageView g;
  private TextView h;
  private CardCvvEditText i;
  private ImageView j;
  private ImageView k;
  private TextView l;
  private ZipEditText m;
  private ImageView n;
  private TextView o;
  private Button p;
  private ProgressBar q;
  private boolean r = true;
  private boolean s = false;
  private Animation t;
  private boolean u;
  
  private static String b(@chc CardInputError paramCardInputError)
  {
    switch (6.a[paramCardInputError.ordinal()])
    {
    default: 
      return auv.a(null, 2131492918, new Object[0]) + " " + auv.a(null, 2131493314, new Object[0]);
    case 6: 
    case 7: 
      return auv.a(null, 2131492972, new Object[0]);
    case 1: 
      return auv.a(null, 2131493203, new Object[0]) + " " + auv.a(null, 2131493314, new Object[0]);
    case 3: 
    case 4: 
      return auv.a(null, 2131493205, new Object[0]) + " " + auv.a(null, 2131493314, new Object[0]);
    case 5: 
      return auv.a(null, 2131493206, new Object[0]) + " " + auv.a(null, 2131493314, new Object[0]);
    case 8: 
      return auv.a(null, 2131493534, new Object[0]) + " " + auv.a(null, 2131493315, new Object[0]);
    case 2: 
      return auv.a(null, 2131492965, new Object[0]) + " " + auv.a(null, 2131493313, new Object[0]);
    }
    return auv.a(null, 2131493250, new Object[0]) + " " + auv.a(null, 2131493328, new Object[0]);
  }
  
  private void i()
  {
    WindowManager localWindowManager = getActivity().getWindowManager();
    Window localWindow = getActivity().getWindow();
    try
    {
      localWindowManager.removeView(localWindow.getDecorView());
      localWindowManager.addView(localWindow.getDecorView(), localWindow.getAttributes());
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      getActivity().getWindow().clearFlags(8192);
    }
  }
  
  public final void a()
  {
    AnalyticsEvents.k(s);
    bhp.a(new Runnable()
    {
      public final void run()
      {
        CardLinkFragment.l(CardLinkFragment.this);
        FragmentActivity localFragmentActivity = getActivity();
        if ((CardLinkFragment.m(CardLinkFragment.this)) && (localFragmentActivity != null)) {
          localFragmentActivity.onBackPressed();
        }
      }
    });
  }
  
  public final void a(final CardInputError paramCardInputError)
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        switch (CardLinkFragment.6.a[paramCardInputError.ordinal()])
        {
        default: 
          CardLinkFragment.e(CardLinkFragment.this, paramCardInputError);
        }
        for (;;)
        {
          AnalyticsEvents.u(paramCardInputError.name());
          CardLinkFragment.j(CardLinkFragment.this).setVisibility(8);
          CardLinkFragment.c(CardLinkFragment.this);
          return;
          CardLinkFragment.a(CardLinkFragment.this, paramCardInputError);
          continue;
          CardLinkFragment.b(CardLinkFragment.this, paramCardInputError);
          CardLinkFragment.c(CardLinkFragment.this, paramCardInputError);
          continue;
          CardLinkFragment.d(CardLinkFragment.this, paramCardInputError);
        }
      }
    });
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public final void e()
  {
    super.e();
    awf.g(getActivity());
    s = false;
    if (akr.aq())
    {
      AlertDialogUtils.b(getActivity(), getString(2131493361), getString(2131493362));
      AnalyticsEvents.S();
      s = true;
    }
  }
  
  public final boolean f_()
  {
    return true;
  }
  
  public final boolean g()
  {
    if (!u) {
      a.e();
    }
    a = null;
    awf.a(getActivity(), mFragmentLayout);
    getActivity().getWindow().clearFlags(8192);
    i();
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (Build.VERSION.SDK_INT >= 11)
    {
      getActivity().getWindow().setFlags(8192, 8192);
      i();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968607, paramViewGroup, false);
    paramLayoutInflater = (TextView)c(2131361985);
    paramViewGroup = (ImageView)c(2131361824);
    p = ((Button)c(2131361988));
    paramBundle = getArguments();
    if ((paramBundle != null) && (paramBundle.getBoolean("use_default_green")))
    {
      paramLayoutInflater.setTextColor(getResources().getColor(2131230766));
      paramViewGroup.setBackgroundResource(2130837520);
      p.setBackgroundResource(2130838105);
    }
    for (;;)
    {
      b = ((ScrollView)c(2131361987));
      c(2131361984).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          getActivity().onBackPressed();
        }
      });
      c = ((CardNumberEditText)c(2131361989));
      c.setValidatedInputCallback(new za()
      {
        public final void a()
        {
          CardLinkFragment.a(CardLinkFragment.this);
          CardInputError localCardInputError = CardLinkFragment.b(CardLinkFragment.this).getCardInputError();
          if (localCardInputError != null) {
            a(localCardInputError);
          }
        }
        
        public final void b()
        {
          if (!CardLinkFragment.c(CardLinkFragment.this)) {
            CardLinkFragment.d(CardLinkFragment.this).requestFocus();
          }
        }
        
        public final void c() {}
      });
      c.setCustomSelectionActionModeCallback(new arh());
      d = ((ImageView)c(2131361990));
      d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CardLinkFragment.b(CardLinkFragment.this).setText(null);
          CardLinkFragment.a(CardLinkFragment.this, CardLinkFragment.b(CardLinkFragment.this));
        }
      });
      e = ((TextView)c(2131361991));
      c.addTextChangedListener(new b(e, d));
      c.requestFocus();
      f = ((CardExpiryEditText)c(2131361992));
      f.setValidatedInputCallback(new za()
      {
        public final void a()
        {
          CardLinkFragment.a(CardLinkFragment.this);
        }
        
        public final void b()
        {
          if (!CardLinkFragment.c(CardLinkFragment.this)) {
            CardLinkFragment.e(CardLinkFragment.this).requestFocus();
          }
        }
        
        public final void c()
        {
          CardLinkFragment.b(CardLinkFragment.this).requestFocus();
        }
      });
      f.setCustomSelectionActionModeCallback(new arh());
      g = ((ImageView)c(2131361993));
      g.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CardLinkFragment.d(CardLinkFragment.this).setText(null);
          CardLinkFragment.a(CardLinkFragment.this, CardLinkFragment.d(CardLinkFragment.this));
        }
      });
      h = ((TextView)c(2131361994));
      f.addTextChangedListener(new b(h, g));
      i = ((CardCvvEditText)c(2131361977));
      i.setValidatedInputCallback(new za()
      {
        public final void a()
        {
          CardLinkFragment.a(CardLinkFragment.this);
          CardLinkFragment.f(CardLinkFragment.this).setVisibility(8);
        }
        
        public final void b()
        {
          if (!CardLinkFragment.c(CardLinkFragment.this)) {
            CardLinkFragment.g(CardLinkFragment.this).requestFocus();
          }
          CardLinkFragment.f(CardLinkFragment.this).setVisibility(0);
        }
        
        public final void c()
        {
          CardLinkFragment.d(CardLinkFragment.this).requestFocus();
        }
      });
      i.setCustomSelectionActionModeCallback(new arh());
      k = ((ImageView)c(2131361996));
      k.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CardLinkFragment.e(CardLinkFragment.this).setText(null);
          CardLinkFragment.a(CardLinkFragment.this, CardLinkFragment.e(CardLinkFragment.this));
        }
      });
      l = ((TextView)c(2131361997));
      j = ((ImageView)c(2131361995));
      i.addTextChangedListener(new b(l, k));
      m = ((ZipEditText)c(2131361978));
      m.setValidatedInputCallback(new za()
      {
        public final void a()
        {
          CardLinkFragment.a(CardLinkFragment.this);
        }
        
        public final void b()
        {
          CardLinkFragment.c(CardLinkFragment.this);
        }
        
        public final void c()
        {
          CardLinkFragment.e(CardLinkFragment.this).requestFocus();
        }
      });
      m.setCustomSelectionActionModeCallback(new arh());
      n = ((ImageView)c(2131361998));
      n.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CardLinkFragment.g(CardLinkFragment.this).setText(null);
          CardLinkFragment.a(CardLinkFragment.this, CardLinkFragment.g(CardLinkFragment.this));
        }
      });
      o = ((TextView)c(2131361999));
      m.addTextChangedListener(new b(o, n));
      paramLayoutInflater = p;
      getActivity().getAssets();
      auh.a(paramLayoutInflater);
      p.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CardLinkFragment.h(CardLinkFragment.this);
          CardLinkFragment.i(CardLinkFragment.this).setText("");
          CardLinkFragment.i(CardLinkFragment.this).setClickable(false);
          CardLinkFragment.j(CardLinkFragment.this).setVisibility(0);
          CardLinkFragment.k(CardLinkFragment.this).a(CardLinkFragment.b(CardLinkFragment.this).getUnformattedText(), CardLinkFragment.d(CardLinkFragment.this).getUnformattedText(), CardLinkFragment.e(CardLinkFragment.this).getUnformattedText(), CardLinkFragment.g(CardLinkFragment.this).getUnformattedText(), CardLinkFragment.this);
        }
      });
      q = ((ProgressBar)c(2131362001));
      t = AnimationUtils.loadAnimation(getActivity(), 2131034114);
      return mFragmentLayout;
      paramLayoutInflater.setTextColor(getResources().getColor(2131230803));
      paramViewGroup.setBackgroundResource(2130837665);
      p.setBackgroundResource(2130837667);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(@chc String paramString1, @chc String paramString2, @chc String paramString3, @chc String paramString4, @chc rm paramrm);
    
    public abstract void e();
  }
  
  static final class b
    implements TextWatcher
  {
    private TextView a;
    private ImageView b;
    
    b(@chc TextView paramTextView, @chc ImageView paramImageView)
    {
      a = paramTextView;
      b = paramImageView;
    }
    
    public final void afterTextChanged(Editable paramEditable) {}
    
    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      if (a.getVisibility() == 0)
      {
        a.setText("");
        a.setVisibility(4);
        b.setVisibility(8);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CardLinkFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */