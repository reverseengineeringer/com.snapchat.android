package com.snapchat.android.fragments.cash;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
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
    mListener = new qv.a()
    {
      public final void a(@cgb qv paramAnonymousqv) {}
      
      public final void a(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        paramAnonymousBoolean = true;
        if ((paramAnonymousList == null) || (paramAnonymousList.isEmpty()))
        {
          if (!paramBoolean)
          {
            paramAnonymousqv = CashSettingsFragment.m();
            b = new CashSettingsFragment.10(a, paramAnonymousqv, CashSettingsFragment.c(a));
            ban.a().a(new bdw(paramAnonymousqv));
            return;
          }
          paramAnonymousqv = a;
          CashSettingsFragment.c(a);
          CashSettingsFragment.a(paramAnonymousqv.a(null, true)).f();
          return;
        }
        paramAnonymousqv = atx.a(null, 2131492918, new Object[0]) + '\n' + atx.a(null, 2131493314, new Object[0]);
        paramAnonymousList = a;
        CheckBox localCheckBox = CashSettingsFragment.c(a);
        RelativeLayout localRelativeLayout = CashSettingsFragment.d(a);
        ProgressBar localProgressBar = CashSettingsFragment.e(a);
        if (!paramBoolean) {}
        for (;;)
        {
          CashSettingsFragment.a(paramAnonymousList, localCheckBox, localRelativeLayout, localProgressBar, paramAnonymousBoolean, paramAnonymousqv);
          return;
          paramAnonymousBoolean = false;
        }
      }
      
      public final void b(@cgb qv paramAnonymousqv) {}
      
      public final void b(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        paramAnonymousBoolean = false;
        paramAnonymousqv = atx.a(null, 2131492918, new Object[0]) + '\n' + atx.a(null, 2131493314, new Object[0]);
        paramAnonymousList = a;
        CheckBox localCheckBox = CashSettingsFragment.c(a);
        RelativeLayout localRelativeLayout = CashSettingsFragment.d(a);
        ProgressBar localProgressBar = CashSettingsFragment.e(a);
        if (!paramBoolean) {
          paramAnonymousBoolean = true;
        }
        CashSettingsFragment.a(paramAnonymousList, localCheckBox, localRelativeLayout, localProgressBar, paramAnonymousBoolean, paramAnonymousqv);
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