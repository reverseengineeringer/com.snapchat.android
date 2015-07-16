package com.snapchat.android.util;

import agh;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import il;

final class AlertDialogUtils$14
  implements DialogInterface.OnClickListener
{
  AlertDialogUtils$14(Context paramContext, Friend paramFriend, Message paramMessage, AnalyticsEvents.AnalyticsContext paramAnalyticsContext) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      AlertDialogUtils.a(val$context, val$friend, val$onFriendActionMessage, val$analyticsContext);
      return;
    }
    new agh(val$context, val$friend, il.SETTING_GEAR).a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */