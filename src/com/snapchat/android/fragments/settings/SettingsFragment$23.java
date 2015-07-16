package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import atq;
import com.snapchat.android.analytics.AnalyticsEvents;

final class SettingsFragment$23
  implements View.OnClickListener
{
  SettingsFragment$23(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new AlertDialog(a.getActivity()) {};
    paramView.setTitle(2131493468);
    paramView.setMessage(a.getString(2131493469));
    paramView.setButton(-1, a.getString(2131493269), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        AnalyticsEvents.h(true);
        atq.a(a.getActivity());
      }
    });
    paramView.setButton(-2, a.getString(2131493256), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        AnalyticsEvents.h(false);
      }
    });
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */