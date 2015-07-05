package com.snapchat.android.util;

import android.content.Context;
import android.widget.Toast;
import com.snapchat.android.Timber;

final class AlertDialogUtils$20
  implements Runnable
{
  AlertDialogUtils$20(int paramInt, String paramString, Context paramContext) {}
  
  public final void run()
  {
    int i = AlertDialogUtils.a(val$length);
    try
    {
      if (AlertDialogUtils.a(val$string))
      {
        AlertDialogUtils.a(Toast.makeText(val$context, val$string, i));
        AlertDialogUtils.b().show();
        return;
      }
      Timber.e("AlertDialogUtils", "Toasting wayyy too many times " + val$string, new Object[0]);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Timber.c("AlertDialogUtils", "Well, this is awkward.", new Object[0]);
      Timber.a("AlertDialogUtils", localIllegalStateException);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */