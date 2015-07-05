package com.snapchat.android.fragments.cash;

import android.view.View;
import android.view.View.OnClickListener;
import cgb;
import cgc;
import java.util.Iterator;
import java.util.List;
import qv;
import qv.a;
import rh;

final class CashSettingsFragment$4
  implements View.OnClickListener
{
  CashSettingsFragment$4(CashSettingsFragment paramCashSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new rh((byte)0);
    mListener = new qv.a()
    {
      public final void a(@cgb qv paramAnonymousqv) {}
      
      public final void a(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousList != null)
        {
          paramAnonymousqv = paramAnonymousList.iterator();
          while (paramAnonymousqv.hasNext())
          {
            paramAnonymousList = (qv)paramAnonymousqv.next();
            if (paramAnonymousList.d()) {
              paramAnonymousList.a(null);
            }
          }
        }
        CashSettingsFragment.a(a, null);
      }
      
      public final void b(@cgb qv paramAnonymousqv) {}
      
      public final void b(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
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