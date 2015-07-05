package com.snapchat.android.fragments.cash;

import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import atx;
import ban;
import bdw;
import cgb;
import cgc;
import com.squareup.otto.Bus;
import java.util.List;
import qv;
import qv.a;
import sq;

final class CashSettingsFragment$7$1
  implements qv.a
{
  CashSettingsFragment$7$1(CashSettingsFragment.7 param7, boolean paramBoolean) {}
  
  public final void a(@cgb qv paramqv) {}
  
  public final void a(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    paramBoolean = true;
    if ((paramList == null) || (paramList.isEmpty()))
    {
      if (!a)
      {
        paramqv = CashSettingsFragment.m();
        b = new CashSettingsFragment.10(b.a, paramqv, CashSettingsFragment.c(b.a));
        ban.a().a(new bdw(paramqv));
        return;
      }
      paramqv = b.a;
      CashSettingsFragment.c(b.a);
      CashSettingsFragment.a(paramqv.a(null, true)).f();
      return;
    }
    paramqv = atx.a(null, 2131492918, new Object[0]) + '\n' + atx.a(null, 2131493314, new Object[0]);
    paramList = b.a;
    CheckBox localCheckBox = CashSettingsFragment.c(b.a);
    RelativeLayout localRelativeLayout = CashSettingsFragment.d(b.a);
    ProgressBar localProgressBar = CashSettingsFragment.e(b.a);
    if (!a) {}
    for (;;)
    {
      CashSettingsFragment.a(paramList, localCheckBox, localRelativeLayout, localProgressBar, paramBoolean, paramqv);
      return;
      paramBoolean = false;
    }
  }
  
  public final void b(@cgb qv paramqv) {}
  
  public final void b(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    paramBoolean = false;
    paramqv = atx.a(null, 2131492918, new Object[0]) + '\n' + atx.a(null, 2131493314, new Object[0]);
    paramList = b.a;
    CheckBox localCheckBox = CashSettingsFragment.c(b.a);
    RelativeLayout localRelativeLayout = CashSettingsFragment.d(b.a);
    ProgressBar localProgressBar = CashSettingsFragment.e(b.a);
    if (!a) {
      paramBoolean = true;
    }
    CashSettingsFragment.a(paramList, localCheckBox, localRelativeLayout, localProgressBar, paramBoolean, paramqv);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.7.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */