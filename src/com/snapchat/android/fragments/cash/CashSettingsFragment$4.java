package com.snapchat.android.fragments.cash;

import android.view.View;
import android.view.View.OnClickListener;
import chc;
import chd;
import java.util.Iterator;
import java.util.List;
import rl;
import rl.a;
import rx;

final class CashSettingsFragment$4
  implements View.OnClickListener
{
  CashSettingsFragment$4(CashSettingsFragment paramCashSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new rx((byte)0);
    mListener = new rl.a()
    {
      public final void a(@chc rl paramAnonymousrl) {}
      
      public final void a(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousList != null)
        {
          paramAnonymousrl = paramAnonymousList.iterator();
          while (paramAnonymousrl.hasNext())
          {
            paramAnonymousList = (rl)paramAnonymousrl.next();
            if (paramAnonymousList.d()) {
              paramAnonymousList.a(null);
            }
          }
        }
        CashSettingsFragment.a(a, null);
      }
      
      public final void b(@chc rl paramAnonymousrl) {}
      
      public final void b(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        CashSettingsFragment.a(a, Integer.valueOf(2131493195));
      }
    };
    paramView.a(null);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */