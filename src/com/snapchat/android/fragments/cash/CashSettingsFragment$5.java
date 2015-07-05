package com.snapchat.android.fragments.cash;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import cgb;
import cgc;
import java.util.List;
import qv;
import qv.a;
import rv;

final class CashSettingsFragment$5
  implements View.OnClickListener
{
  CashSettingsFragment$5(CashSettingsFragment paramCashSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new AlertDialog.Builder(a.getActivity());
    paramView.setTitle(2131493581);
    paramView.setMessage(2131493580);
    paramView.setCancelable(true);
    paramView.setPositiveButton(2131493603, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        CashSettingsFragment.a(a).setVisibility(0);
        CashSettingsFragment.b(a).setVisibility(8);
        paramAnonymousDialogInterface = CashSettingsFragment.l();
        mListener = new qv.a()
        {
          public final void a(@cgb qv paramAnonymous2qv) {}
          
          public final void a(@cgb qv paramAnonymous2qv, @cgc List<qv> paramAnonymous2List, boolean paramAnonymous2Boolean)
          {
            CashSettingsFragment.a(a, null);
          }
          
          public final void b(@cgb qv paramAnonymous2qv)
          {
            CashSettingsFragment.a(a, Integer.valueOf(2131492954));
          }
          
          public final void b(@cgb qv paramAnonymous2qv, @cgc List<qv> paramAnonymous2List, boolean paramAnonymous2Boolean)
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