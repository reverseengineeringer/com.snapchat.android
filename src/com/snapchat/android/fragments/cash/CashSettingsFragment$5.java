package com.snapchat.android.fragments.cash;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import chc;
import chd;
import java.util.List;
import rl;
import rl.a;
import sl;

final class CashSettingsFragment$5
  implements View.OnClickListener
{
  CashSettingsFragment$5(CashSettingsFragment paramCashSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new AlertDialog.Builder(a.getActivity());
    paramView.setTitle(2131493579);
    paramView.setMessage(2131493578);
    paramView.setCancelable(true);
    paramView.setPositiveButton(2131493601, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        CashSettingsFragment.a(a).setVisibility(0);
        CashSettingsFragment.b(a).setVisibility(8);
        paramAnonymousDialogInterface = CashSettingsFragment.l();
        mListener = new rl.a()
        {
          public final void a(@chc rl paramAnonymous2rl) {}
          
          public final void a(@chc rl paramAnonymous2rl, @chd List<rl> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            CashSettingsFragment.a(a, null);
          }
          
          public final void b(@chc rl paramAnonymous2rl)
          {
            CashSettingsFragment.a(a, Integer.valueOf(2131492954));
          }
          
          public final void b(@chc rl paramAnonymous2rl, @chd List<rl> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            CashSettingsFragment.a(a, Integer.valueOf(2131492954));
          }
        };
        paramAnonymousDialogInterface.a(null);
      }
    });
    paramView.setNegativeButton(2131493248, null);
    a.b = paramView.create();
    a.b.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashSettingsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */