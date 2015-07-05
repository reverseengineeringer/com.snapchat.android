package com.snapchat.android.fragments.cash;

import cgb;
import cgc;
import java.util.Iterator;
import java.util.List;
import qv;
import qv.a;

final class CashSettingsFragment$4$1
  implements qv.a
{
  CashSettingsFragment$4$1(CashSettingsFragment.4 param4) {}
  
  public final void a(@cgb qv paramqv) {}
  
  public final void a(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    if (paramList != null)
    {
      paramqv = paramList.iterator();
      while (paramqv.hasNext())
      {
        paramList = (qv)paramqv.next();
        if (paramList.d()) {
          paramList.a(null);
        }
      }
    }
    CashSettingsFragment.a(a.a, null);
  }
  
  public final void b(@cgb qv paramqv) {}
  
  public final void b(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    CashSettingsFragment.a(a.a, Integer.valueOf(2131493195));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.4.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */