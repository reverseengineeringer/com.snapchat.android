package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.AnalyticsEvents;

final class SettingsFragment$22
  implements View.OnClickListener
{
  SettingsFragment$22(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new AlertDialog(a.getActivity()) {};
    paramView.setTitle(2131493478);
    paramView.setMessage(a.getString(2131493425));
    paramView.setButton(-1, a.getString(2131493088), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        AnalyticsEvents.g(true);
        paramAnonymousDialogInterface = new Intent("android.intent.action.VIEW", Uri.parse("https://www.snapchat.com/beta"));
        a.startActivity(paramAnonymousDialogInterface);
      }
    });
    paramView.setButton(-2, a.getString(2131493256), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        AnalyticsEvents.g(false);
      }
    });
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */