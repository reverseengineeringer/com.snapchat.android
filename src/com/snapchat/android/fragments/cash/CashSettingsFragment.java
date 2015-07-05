package com.snapchat.android.fragments.cash;

import ajx;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import atx;
import aza;
import ban;
import bbf;
import bdw;
import bgp;
import boh;
import cgb;
import cgc;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.square.data.CardBrand;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import qh;
import qo;
import qv;
import qv.a;
import rf;
import rh;
import rv;
import sq;
import su;
import su.b;

public class CashSettingsFragment
  extends SnapchatFragment
{
  @Inject
  public qh a;
  protected AlertDialog b;
  private ImageView c;
  private TextView d;
  private RelativeLayout e;
  private ImageView f;
  private ProgressBar g;
  private RelativeLayout h;
  private CheckBox i;
  private TextView j;
  private TextView k;
  private ProgressBar l;
  private View m;
  
  public CashSettingsFragment()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  protected static sq a(@cgb String paramString, @cgb su.b paramb)
  {
    return new su(paramString, paramb);
  }
  
  protected static sq a(@cgb su.b paramb)
  {
    return new su(paramb);
  }
  
  private void a(@cgc final Integer paramInteger)
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        CashSettingsFragment.a(CashSettingsFragment.this).setVisibility(8);
        if (ajx.ar()) {
          CashSettingsFragment.f(CashSettingsFragment.this);
        }
        for (;;)
        {
          CashSettingsFragment.h(CashSettingsFragment.this);
          if (paramInteger != null) {
            ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, paramInteger.intValue()));
          }
          return;
          CashSettingsFragment.g(CashSettingsFragment.this);
        }
      }
    });
  }
  
  protected static qv i()
  {
    return new rf();
  }
  
  protected static rv l()
  {
    return new rv();
  }
  
  protected static SecurityCodeFragment m()
  {
    return new SecurityCodeFragment();
  }
  
  private void n()
  {
    String str = ajx.at();
    if (str != null) {
      d.setText(str);
    }
    str = ajx.as();
    if (str != null) {
      c.setImageResource(CardBrand.getDrawable(CardBrand.valueOf(str)));
    }
    c.setVisibility(0);
    f.setVisibility(0);
    e.setEnabled(false);
    h.setEnabled(true);
    i.setEnabled(true);
    i.setAlpha(1.0F);
    j.setTextColor(-16777216);
    k.setTextColor(-16777216);
  }
  
  private void o()
  {
    d.setText(2131493430);
    c.setVisibility(8);
    f.setVisibility(8);
    e.setEnabled(true);
    h.setEnabled(false);
    i.setEnabled(false);
    i.setAlpha(0.4F);
    j.setTextColor(-7829368);
    k.setTextColor(-7829368);
  }
  
  private void p()
  {
    if (!ajx.av())
    {
      m.setEnabled(false);
      m.setAlpha(0.4F);
      return;
    }
    m.setEnabled(true);
    m.setAlpha(1.0F);
  }
  
  protected final su.b a(@cgc final SecurityCodeFragment paramSecurityCodeFragment, final boolean paramBoolean)
  {
    new su.b()
    {
      public final void a()
      {
        bgp.a(new Runnable()
        {
          public final void run()
          {
            CashSettingsFragment.d(CashSettingsFragment.this).setEnabled(true);
            CashSettingsFragment.c(CashSettingsFragment.this).setVisibility(0);
            CashSettingsFragment.e(CashSettingsFragment.this).setVisibility(8);
          }
        });
        ajx.n(paramBoolean);
        if (paramSecurityCodeFragment != null) {
          paramSecurityCodeFragment.l();
        }
      }
      
      public final void a(int paramAnonymousInt)
      {
        boolean bool = false;
        String str = atx.a(null, 2131492918, new Object[0]) + '\n' + atx.a(null, 2131493314, new Object[0]);
        ErrorType localErrorType = ErrorType.UNKNOWN;
        switch (paramAnonymousInt)
        {
        }
        for (;;)
        {
          CashSettingsFragment localCashSettingsFragment = CashSettingsFragment.this;
          CheckBox localCheckBox = CashSettingsFragment.c(CashSettingsFragment.this);
          RelativeLayout localRelativeLayout = CashSettingsFragment.d(CashSettingsFragment.this);
          ProgressBar localProgressBar = CashSettingsFragment.e(CashSettingsFragment.this);
          if (!paramBoolean) {
            bool = true;
          }
          CashSettingsFragment.a(localCashSettingsFragment, localCheckBox, localRelativeLayout, localProgressBar, bool, str);
          if (paramSecurityCodeFragment != null) {
            paramSecurityCodeFragment.a(localErrorType, paramAnonymousInt);
          }
          return;
          str = atx.a(null, 2131493204, new Object[0]) + '\n' + atx.a(null, 2131493314, new Object[0]);
          localErrorType = ErrorType.INVALID_PASSCODE;
          continue;
          str = atx.a(null, 2131493536, new Object[0]) + '\n' + atx.a(null, 2131493315, new Object[0]);
          localErrorType = ErrorType.TOO_MANY_ATTEMPTS;
        }
      }
    };
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968610, paramViewGroup, false);
    c = ((ImageView)c(2131362025));
    d = ((TextView)c(2131362026));
    e = ((RelativeLayout)c(2131362024));
    f = ((ImageView)c(2131362027));
    g = ((ProgressBar)c(2131362028));
    h = ((RelativeLayout)c(2131362029));
    i = ((CheckBox)c(2131362030));
    j = ((TextView)c(2131362031));
    k = ((TextView)c(2131362032));
    l = ((ProgressBar)c(2131362033));
    m = c(2131362035);
    c(2131361893).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    i.setChecked(ajx.aw());
    e.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new rh((byte)0);
        mListener = new qv.a()
        {
          public final void a(@cgb qv paramAnonymous2qv) {}
          
          public final void a(@cgb qv paramAnonymous2qv, @cgc List<qv> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            if (paramAnonymous2List != null)
            {
              paramAnonymous2qv = paramAnonymous2List.iterator();
              while (paramAnonymous2qv.hasNext())
              {
                paramAnonymous2List = (qv)paramAnonymous2qv.next();
                if (paramAnonymous2List.d()) {
                  paramAnonymous2List.a(null);
                }
              }
            }
            CashSettingsFragment.a(CashSettingsFragment.this, null);
          }
          
          public final void b(@cgb qv paramAnonymous2qv) {}
          
          public final void b(@cgb qv paramAnonymous2qv, @cgc List<qv> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            CashSettingsFragment.a(CashSettingsFragment.this, Integer.valueOf(2131493195));
          }
        };
        paramAnonymousView.a(null);
      }
    });
    f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new AlertDialog.Builder(getActivity());
        paramAnonymousView.setTitle(2131493581);
        paramAnonymousView.setMessage(2131493580);
        paramAnonymousView.setCancelable(true);
        paramAnonymousView.setPositiveButton(2131493603, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            CashSettingsFragment.a(CashSettingsFragment.this).setVisibility(0);
            CashSettingsFragment.b(CashSettingsFragment.this).setVisibility(8);
            paramAnonymous2DialogInterface = CashSettingsFragment.l();
            mListener = new qv.a()
            {
              public final void a(@cgb qv paramAnonymous3qv) {}
              
              public final void a(@cgb qv paramAnonymous3qv, @cgc List<qv> paramAnonymous3List, boolean paramAnonymous3Boolean)
              {
                CashSettingsFragment.a(CashSettingsFragment.this, null);
              }
              
              public final void b(@cgb qv paramAnonymous3qv)
              {
                CashSettingsFragment.a(CashSettingsFragment.this, Integer.valueOf(2131492954));
              }
              
              public final void b(@cgb qv paramAnonymous3qv, @cgc List<qv> paramAnonymous3List, boolean paramAnonymous3Boolean)
              {
                CashSettingsFragment.a(CashSettingsFragment.this, Integer.valueOf(2131492954));
              }
            };
            paramAnonymous2DialogInterface.a(null);
          }
        });
        paramAnonymousView.setNegativeButton(2131493248, null);
        b = paramAnonymousView.create();
        b.show();
      }
    });
    h.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = CashSettingsFragment.c(CashSettingsFragment.this);
        if (!CashSettingsFragment.c(CashSettingsFragment.this).isChecked()) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.setChecked(bool);
          return;
        }
      }
    });
    i.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, final boolean paramAnonymousBoolean)
      {
        if (paramAnonymousCompoundButton.getTag() != null)
        {
          paramAnonymousCompoundButton.setTag(null);
          return;
        }
        CashSettingsFragment.d(CashSettingsFragment.this).setEnabled(false);
        CashSettingsFragment.c(CashSettingsFragment.this).setVisibility(8);
        CashSettingsFragment.e(CashSettingsFragment.this).setVisibility(0);
        paramAnonymousCompoundButton = CashSettingsFragment.i();
        mListener = new qv.a()
        {
          public final void a(@cgb qv paramAnonymous2qv) {}
          
          public final void a(@cgb qv paramAnonymous2qv, @cgc List<qv> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            paramAnonymous2Boolean = true;
            if ((paramAnonymous2List == null) || (paramAnonymous2List.isEmpty()))
            {
              if (!paramAnonymousBoolean)
              {
                paramAnonymous2qv = CashSettingsFragment.m();
                b = new CashSettingsFragment.10(CashSettingsFragment.this, paramAnonymous2qv, CashSettingsFragment.c(CashSettingsFragment.this));
                ban.a().a(new bdw(paramAnonymous2qv));
                return;
              }
              paramAnonymous2qv = CashSettingsFragment.this;
              CashSettingsFragment.c(CashSettingsFragment.this);
              CashSettingsFragment.a(paramAnonymous2qv.a(null, true)).f();
              return;
            }
            paramAnonymous2qv = atx.a(null, 2131492918, new Object[0]) + '\n' + atx.a(null, 2131493314, new Object[0]);
            paramAnonymous2List = CashSettingsFragment.this;
            CheckBox localCheckBox = CashSettingsFragment.c(CashSettingsFragment.this);
            RelativeLayout localRelativeLayout = CashSettingsFragment.d(CashSettingsFragment.this);
            ProgressBar localProgressBar = CashSettingsFragment.e(CashSettingsFragment.this);
            if (!paramAnonymousBoolean) {}
            for (;;)
            {
              CashSettingsFragment.a(paramAnonymous2List, localCheckBox, localRelativeLayout, localProgressBar, paramAnonymous2Boolean, paramAnonymous2qv);
              return;
              paramAnonymous2Boolean = false;
            }
          }
          
          public final void b(@cgb qv paramAnonymous2qv) {}
          
          public final void b(@cgb qv paramAnonymous2qv, @cgc List<qv> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            paramAnonymous2Boolean = false;
            paramAnonymous2qv = atx.a(null, 2131492918, new Object[0]) + '\n' + atx.a(null, 2131493314, new Object[0]);
            paramAnonymous2List = CashSettingsFragment.this;
            CheckBox localCheckBox = CashSettingsFragment.c(CashSettingsFragment.this);
            RelativeLayout localRelativeLayout = CashSettingsFragment.d(CashSettingsFragment.this);
            ProgressBar localProgressBar = CashSettingsFragment.e(CashSettingsFragment.this);
            if (!paramAnonymousBoolean) {
              paramAnonymous2Boolean = true;
            }
            CashSettingsFragment.a(paramAnonymous2List, localCheckBox, localRelativeLayout, localProgressBar, paramAnonymous2Boolean, paramAnonymous2qv);
          }
        };
        paramAnonymousCompoundButton.a(null);
      }
    });
    m.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (a.b("SQUARE"))
        {
          paramAnonymousView = a.a("SQUARE");
          getActivity();
          paramAnonymousView.a(getString(2131493437));
          return;
        }
        qh.a();
      }
    });
    c(2131362036).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ban.a().a(new bdw(new WebFragment("https://accounts.snapchat.com", getString(2131493436), true, "/ca/snapcash")));
      }
    });
    if ((ajx.ar()) && (a.b(ajx.ap()))) {
      n();
    }
    for (;;)
    {
      p();
      return mFragmentLayout;
      o();
    }
  }
  
  @boh
  public void updateCardDetailsViewOnDetailsProvided(bbf parambbf)
  {
    a(null);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */