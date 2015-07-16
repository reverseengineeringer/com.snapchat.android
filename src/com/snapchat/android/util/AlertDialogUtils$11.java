package com.snapchat.android.util;

import agh;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import il;
import qg;
import qg.a;

final class AlertDialogUtils$11
  implements DialogInterface.OnClickListener
{
  AlertDialogUtils$11(Context paramContext, Friend paramFriend, Message paramMessage, AnalyticsEvents.AnalyticsContext paramAnalyticsContext, qg.a parama) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      AlertDialogUtils.a(val$context, val$friend, val$onFriendActionMessage, val$analyticsContext);
      return;
    case 1: 
      paramDialogInterface = new qg(val$friend, FriendAction.DELETE);
      mOnFriendActionMessage = val$onFriendActionMessage;
      mAnalyticsContext = val$analyticsContext;
      mFriendActionCompleteCallback = val$friendActionCompleteCallback;
      paramDialogInterface = paramDialogInterface.a();
      mActionMethod = il.SETTING_GEAR;
      paramDialogInterface.execute();
      return;
    }
    new agh(val$context, val$friend, il.SETTING_GEAR).a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */