package com.snapchat.android.fragments.cash;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import auv;
import bbo;
import bev;
import chc;
import chd;
import com.squareup.otto.Bus;
import java.util.List;
import rl;
import rl.a;
import tg;

final class CashSettingsFragment$7
  implements CompoundButton.OnCheckedChangeListener
{
  CashSettingsFragment$7(CashSettingsFragment paramCashSettingsFragment) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, final boolean paramBoolean)
  {
    if (paramCompoundButton.getTag() != null)
    {
      paramCompoundButton.setTag(null);
      return;
    }
    CashSettingsFragment.d(a).setEnabled(false);
    CashSettingsFragment.c(a).setVisibility(8);
    CashSettingsFragment.e(a).setVisibility(0);
    paramCompoundButton = CashSettingsFragment.i();
    mListener = new rl.a()
    {
      public final void a(@chc rl paramAnonymousrl) {}
      
      public final void a(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        paramAnonymousBoolean = true;
        if ((paramAnonymousList == null) || (paramAnonymousList.isEmpty()))
        {
          if (!paramBoolean)
          {
            paramAnonymousrl = CashSettingsFragment.m();
            b = new CashSettingsFragment.10(a, paramAnonymousrl, CashSettingsFragment.c(a));
            bbo.a().a(new bev(paramAnonymousrl));
            return;
          }
          paramAnonymousrl = a;
          CashSettingsFragment.c(a);
          CashSettingsFragment.a(paramAnonymousrl.a(null, true)).execute();
          return;
        }
        paramAnonymousrl = auv.a(null, 2131492918, new Object[0]) + '\n' + auv.a(null, 2131493314, new Object[0]);
        paramAnonymousList = a;
        CheckBox localCheckBox = CashSettingsFragment.c(a);
        RelativeLayout localRelativeLayout = CashSettingsFragment.d(a);
        ProgressBar localProgressBar = CashSettingsFragment.e(a);
        if (!paramBoolean) {}
        for (;;)
        {
          CashSettingsFragment.a(paramAnonymousList, localCheckBox, localRelativeLayout, localProgressBar, paramAnonymousBoolean, paramAnonymousrl);
          return;
          paramAnonymousBoolean = false;
        }
      }
      
      public final void b(@chc rl paramAnonymousrl) {}
      
      public final void b(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        paramAnonymousBoolean = false;
        paramAnonymousrl = auv.a(null, 2131492918, new Object[0]) + '\n' + auv.a(null, 2131493314, new Object[0]);
        paramAnonymousList = a;
        CheckBox localCheckBox = CashSettingsFragment.c(a);
        RelativeLayout localRelativeLayout = CashSettingsFragment.d(a);
        ProgressBar localProgressBar = CashSettingsFragment.e(a);
        if (!paramBoolean) {
          paramAnonymousBoolean = true;
        }
        CashSettingsFragment.a(paramAnonymousList, localCheckBox, localRelativeLayout, localProgressBar, paramAnonymousBoolean, paramAnonymousrl);
      }
    };
    paramCompoundButton.a(null);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */