package com.snapchat.android.util;

import android.content.Context;
import android.widget.Toast;

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
      new StringBuilder("Toasting wayyy too many times ").append(val$string);
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */