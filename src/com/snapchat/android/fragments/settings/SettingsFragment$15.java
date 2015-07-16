package com.snapchat.android.fragments.settings;

import akr;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import avf;
import bbo;
import bev;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.squareup.otto.Bus;
import pr;

final class SettingsFragment$15
  implements View.OnClickListener
{
  SettingsFragment$15(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new AlertDialog.Builder(a.getActivity());
    paramView.setSingleChoiceItems(2131165198, akr.h(), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        AnalyticsEvents.a(SettingsFragment.PrivacyOptions.values()[akr.h()].toString(), SettingsFragment.PrivacyOptions.values()[paramAnonymousInt].toString());
        akr.d(paramAnonymousInt);
        SettingsFragment.c(a).setText(a.getResources().getStringArray(2131165198)[paramAnonymousInt]);
        String str = SettingsFragment.PrivacyOptions.values()[paramAnonymousInt].toString();
        if (str.equals("CUSTOM")) {
          bbo.a().a(new bev(new CustomStoryPrivacyFragment()));
        }
        for (;;)
        {
          paramAnonymousDialogInterface.dismiss();
          return;
          new pr("updateStoryPrivacy", new String[] { str }).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
        }
      }
    });
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */