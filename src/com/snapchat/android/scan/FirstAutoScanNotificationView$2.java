package com.snapchat.android.scan;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import ban;
import bdx;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;
import com.squareup.otto.Bus;

final class FirstAutoScanNotificationView$2
  implements View.OnClickListener
{
  FirstAutoScanNotificationView$2(FirstAutoScanNotificationView paramFirstAutoScanNotificationView) {}
  
  public final void onClick(View paramView)
  {
    Timber.c(FirstAutoScanNotificationView.a(), "Set library scanning enabled! YES!", new Object[0]);
    paramView = PreferenceManager.getDefaultSharedPreferences(a.getContext()).edit();
    paramView.putBoolean(SharedPreferenceKey.AUTO_LIBRARY_SCANNING_ENABLED.getKey(), true);
    paramView.commit();
    ban.a().a(new bdx());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.scan.FirstAutoScanNotificationView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */