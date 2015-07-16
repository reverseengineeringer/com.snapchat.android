package com.snapchat.android.fragments.cash;

import akr;
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
import auv;
import azy;
import bbo;
import bcf;
import bev;
import bhp;
import bpi;
import chc;
import chd;
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
import qx;
import re;
import rl;
import rl.a;
import rv;
import rx;
import sl;
import tg;
import tk;
import tk.b;

public class CashSettingsFragment
  extends SnapchatFragment
{
  @Inject
  public qx a;
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
  
  protected static tg a(@chc String paramString, @chc tk.b paramb)
  {
    return new tk(paramString, paramb);
  }
  
  protected static tg a(@chc tk.b paramb)
  {
    return new tk(paramb);
  }
  
  private void a(@chd final Integer paramInteger)
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        CashSettingsFragment.a(CashSettingsFragment.this).setVisibility(8);
        if (akr.aq()) {
          CashSettingsFragment.f(CashSettingsFragment.this);
        }
        for (;;)
        {
          CashSettingsFragment.h(CashSettingsFragment.this);
          if (paramInteger != null) {
            bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, paramInteger.intValue()));
          }
          return;
          CashSettingsFragment.g(CashSettingsFragment.this);
        }
      }
    });
  }
  
  protected static rl i()
  {
    return new rv();
  }
  
  protected static sl l()
  {
    return new sl();
  }
  
  protected static SecurityCodeFragment m()
  {
    return new SecurityCodeFragment();
  }
  
  private void n()
  {
    String str = akr.as();
    if (str != null) {
      d.setText(str);
    }
    str = akr.ar();
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
    if (!akr.au())
    {
      m.setEnabled(false);
      m.setAlpha(0.4F);
      return;
    }
    m.setEnabled(true);
    m.setAlpha(1.0F);
  }
  
  protected final tk.b a(@chd final SecurityCodeFragment paramSecurityCodeFragment, final boolean paramBoolean)
  {
    new tk.b()
    {
      public final void a()
      {
        bhp.a(new Runnable()
        {
          public final void run()
          {
            CashSettingsFragment.d(CashSettingsFragment.this).setEnabled(true);
            CashSettingsFragment.c(CashSettingsFragment.this).setVisibility(0);
            CashSettingsFragment.e(CashSettingsFragment.this).setVisibility(8);
          }
        });
        akr.m(paramBoolean);
        if (paramSecurityCodeFragment != null) {
          paramSecurityCodeFragment.l();
        }
      }
      
      public final void a(int paramAnonymousInt)
      {
        boolean bool = false;
        String str = auv.a(null, 2131492918, new Object[0]) + '\n' + auv.a(null, 2131493314, new Object[0]);
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
          str = auv.a(null, 2131493204, new Object[0]) + '\n' + auv.a(null, 2131493314, new Object[0]);
          localErrorType = ErrorType.INVALID_PASSCODE;
          continue;
          str = auv.a(null, 2131493534, new Object[0]) + '\n' + auv.a(null, 2131493315, new Object[0]);
          localErrorType = ErrorType.TOO_MANY_ATTEMPTS;
        }
      }
    };
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968611, paramViewGroup, false);
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
    c(2131361895).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    i.setChecked(akr.av());
    e.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new rx((byte)0);
        mListener = new rl.a()
        {
          public final void a(@chc rl paramAnonymous2rl) {}
          
          public final void a(@chc rl paramAnonymous2rl, @chd List<rl> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            if (paramAnonymous2List != null)
            {
              paramAnonymous2rl = paramAnonymous2List.iterator();
              while (paramAnonymous2rl.hasNext())
              {
                paramAnonymous2List = (rl)paramAnonymous2rl.next();
                if (paramAnonymous2List.d()) {
                  paramAnonymous2List.a(null);
                }
              }
            }
            CashSettingsFragment.a(CashSettingsFragment.this, null);
          }
          
          public final void b(@chc rl paramAnonymous2rl) {}
          
          public final void b(@chc rl paramAnonymous2rl, @chd List<rl> paramAnonymous2List, boolean paramAnonymous2Boolean)
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
        paramAnonymousView.setTitle(2131493579);
        paramAnonymousView.setMessage(2131493578);
        paramAnonymousView.setCancelable(true);
        paramAnonymousView.setPositiveButton(2131493601, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            CashSettingsFragment.a(CashSettingsFragment.this).setVisibility(0);
            CashSettingsFragment.b(CashSettingsFragment.this).setVisibility(8);
            paramAnonymous2DialogInterface = CashSettingsFragment.l();
            mListener = new rl.a()
            {
              public final void a(@chc rl paramAnonymous3rl) {}
              
              public final void a(@chc rl paramAnonymous3rl, @chd List<rl> paramAnonymous3List, boolean paramAnonymous3Boolean)
              {
                CashSettingsFragment.a(CashSettingsFragment.this, null);
              }
              
              public final void b(@chc rl paramAnonymous3rl)
              {
                CashSettingsFragment.a(CashSettingsFragment.this, Integer.valueOf(2131492954));
              }
              
              public final void b(@chc rl paramAnonymous3rl, @chd List<rl> paramAnonymous3List, boolean paramAnonymous3Boolean)
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
        mListener = new rl.a()
        {
          public final void a(@chc rl paramAnonymous2rl) {}
          
          public final void a(@chc rl paramAnonymous2rl, @chd List<rl> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            paramAnonymous2Boolean = true;
            if ((paramAnonymous2List == null) || (paramAnonymous2List.isEmpty()))
            {
              if (!paramAnonymousBoolean)
              {
                paramAnonymous2rl = CashSettingsFragment.m();
                b = new CashSettingsFragment.10(CashSettingsFragment.this, paramAnonymous2rl, CashSettingsFragment.c(CashSettingsFragment.this));
                bbo.a().a(new bev(paramAnonymous2rl));
                return;
              }
              paramAnonymous2rl = CashSettingsFragment.this;
              CashSettingsFragment.c(CashSettingsFragment.this);
              CashSettingsFragment.a(paramAnonymous2rl.a(null, true)).execute();
              return;
            }
            paramAnonymous2rl = auv.a(null, 2131492918, new Object[0]) + '\n' + auv.a(null, 2131493314, new Object[0]);
            paramAnonymous2List = CashSettingsFragment.this;
            CheckBox localCheckBox = CashSettingsFragment.c(CashSettingsFragment.this);
            RelativeLayout localRelativeLayout = CashSettingsFragment.d(CashSettingsFragment.this);
            ProgressBar localProgressBar = CashSettingsFragment.e(CashSettingsFragment.this);
            if (!paramAnonymousBoolean) {}
            for (;;)
            {
              CashSettingsFragment.a(paramAnonymous2List, localCheckBox, localRelativeLayout, localProgressBar, paramAnonymous2Boolean, paramAnonymous2rl);
              return;
              paramAnonymous2Boolean = false;
            }
          }
          
          public final void b(@chc rl paramAnonymous2rl) {}
          
          public final void b(@chc rl paramAnonymous2rl, @chd List<rl> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            paramAnonymous2Boolean = false;
            paramAnonymous2rl = auv.a(null, 2131492918, new Object[0]) + '\n' + auv.a(null, 2131493314, new Object[0]);
            paramAnonymous2List = CashSettingsFragment.this;
            CheckBox localCheckBox = CashSettingsFragment.c(CashSettingsFragment.this);
            RelativeLayout localRelativeLayout = CashSettingsFragment.d(CashSettingsFragment.this);
            ProgressBar localProgressBar = CashSettingsFragment.e(CashSettingsFragment.this);
            if (!paramAnonymousBoolean) {
              paramAnonymous2Boolean = true;
            }
            CashSettingsFragment.a(paramAnonymous2List, localCheckBox, localRelativeLayout, localProgressBar, paramAnonymous2Boolean, paramAnonymous2rl);
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
        qx.a();
      }
    });
    c(2131362036).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bev(new WebFragment("https://accounts.snapchat.com", getString(2131493436), true, "/ca/snapcash")));
      }
    });
    if ((akr.aq()) && (a.b(akr.ao()))) {
      n();
    }
    for (;;)
    {
      p();
      return mFragmentLayout;
      o();
    }
  }
  
  @bpi
  public void updateCardDetailsViewOnDetailsProvided(bcf parambcf)
  {
    a(null);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */