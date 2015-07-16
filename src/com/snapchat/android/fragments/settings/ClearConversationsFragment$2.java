package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.AlertDialogUtils;
import ts;

final class ClearConversationsFragment$2
  implements View.OnClickListener
{
  ClearConversationsFragment$2(ClearConversationsFragment paramClearConversationsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new AlertDialog.Builder(a.getActivity());
    paramView.setTitle(a.getString(2131493413)).setMessage(a.getString(2131493414)).setPositiveButton(a.getString(2131493269), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        AlertDialogUtils.a(a.getString(2131493420), a.getActivity());
        ClearConversationsFragment.a(a).setVisibility(8);
        ClearConversationsFragment.b(a).setVisibility(0);
        AnalyticsEvents.K();
        AnalyticsEvents.L();
        ClearConversationsFragment.c(a);
        new ts(a).execute();
        ClearConversationsFragment.d(a).notifyDataSetChanged();
      }
    }).setNegativeButton(a.getString(2131492952), null);
    paramView.create().show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.ClearConversationsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */