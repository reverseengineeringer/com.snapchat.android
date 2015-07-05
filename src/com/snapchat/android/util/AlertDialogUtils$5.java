package com.snapchat.android.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class AlertDialogUtils$5
  implements DialogInterface.OnClickListener
{
  AlertDialogUtils$5(SharedPreferences paramSharedPreferences) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = val$prefs.edit();
    paramDialogInterface.putBoolean("firstTimeUsingBeta", false);
    paramDialogInterface.apply();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */