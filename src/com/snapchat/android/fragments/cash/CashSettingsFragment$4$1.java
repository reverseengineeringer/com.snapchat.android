package com.snapchat.android.fragments.cash;

import chc;
import chd;
import java.util.Iterator;
import java.util.List;
import rl;
import rl.a;

final class CashSettingsFragment$4$1
  implements rl.a
{
  CashSettingsFragment$4$1(CashSettingsFragment.4 param4) {}
  
  public final void a(@chc rl paramrl) {}
  
  public final void a(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    if (paramList != null)
    {
      paramrl = paramList.iterator();
      while (paramrl.hasNext())
      {
        paramList = (rl)paramrl.next();
        if (paramList.d()) {
          paramList.a(null);
        }
      }
    }
    CashSettingsFragment.a(a.a, null);
  }
  
  public final void b(@chc rl paramrl) {}
  
  public final void b(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    CashSettingsFragment.a(a.a, Integer.valueOf(2131493195));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.4.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */