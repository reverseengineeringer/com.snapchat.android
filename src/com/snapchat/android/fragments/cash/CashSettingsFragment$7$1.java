package com.snapchat.android.fragments.cash;

import android.widget.CheckBox;
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

final class CashSettingsFragment$7$1
  implements rl.a
{
  CashSettingsFragment$7$1(CashSettingsFragment.7 param7, boolean paramBoolean) {}
  
  public final void a(@chc rl paramrl) {}
  
  public final void a(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    paramBoolean = true;
    if ((paramList == null) || (paramList.isEmpty()))
    {
      if (!a)
      {
        paramrl = CashSettingsFragment.m();
        b = new CashSettingsFragment.10(b.a, paramrl, CashSettingsFragment.c(b.a));
        bbo.a().a(new bev(paramrl));
        return;
      }
      paramrl = b.a;
      CashSettingsFragment.c(b.a);
      CashSettingsFragment.a(paramrl.a(null, true)).execute();
      return;
    }
    paramrl = auv.a(null, 2131492918, new Object[0]) + '\n' + auv.a(null, 2131493314, new Object[0]);
    paramList = b.a;
    CheckBox localCheckBox = CashSettingsFragment.c(b.a);
    RelativeLayout localRelativeLayout = CashSettingsFragment.d(b.a);
    ProgressBar localProgressBar = CashSettingsFragment.e(b.a);
    if (!a) {}
    for (;;)
    {
      CashSettingsFragment.a(paramList, localCheckBox, localRelativeLayout, localProgressBar, paramBoolean, paramrl);
      return;
      paramBoolean = false;
    }
  }
  
  public final void b(@chc rl paramrl) {}
  
  public final void b(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    paramBoolean = false;
    paramrl = auv.a(null, 2131492918, new Object[0]) + '\n' + auv.a(null, 2131493314, new Object[0]);
    paramList = b.a;
    CheckBox localCheckBox = CashSettingsFragment.c(b.a);
    RelativeLayout localRelativeLayout = CashSettingsFragment.d(b.a);
    ProgressBar localProgressBar = CashSettingsFragment.e(b.a);
    if (!a) {
      paramBoolean = true;
    }
    CashSettingsFragment.a(paramList, localCheckBox, localRelativeLayout, localProgressBar, paramBoolean, paramrl);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.7.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */