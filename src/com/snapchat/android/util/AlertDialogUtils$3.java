package com.snapchat.android.util;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

final class AlertDialogUtils$3
  implements DialogInterface.OnClickListener
{
  AlertDialogUtils$3(Context paramContext) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent("android.intent.action.VIEW", Uri.parse("http://productforums.google.com/forum/#!topic/mobile/gsBvuZzG_xc/discussion"));
    paramDialogInterface.setFlags(32768);
    try
    {
      val$context.startActivity(paramDialogInterface);
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface)
    {
      AlertDialogUtils.a("Could not start browser", val$context);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */