package com.snapchat.android.fragments.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.AlertDialogUtils;
import tc;

final class ClearConversationsFragment$2$1
  implements DialogInterface.OnClickListener
{
  ClearConversationsFragment$2$1(ClearConversationsFragment.2 param2) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AlertDialogUtils.a(a.a.getString(2131493420), a.a.getActivity());
    ClearConversationsFragment.a(a.a).setVisibility(8);
    ClearConversationsFragment.b(a.a).setVisibility(0);
    AnalyticsEvents.K();
    AnalyticsEvents.L();
    ClearConversationsFragment.c(a.a);
    new tc(a.a).f();
    ClearConversationsFragment.d(a.a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.ClearConversationsFragment.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */