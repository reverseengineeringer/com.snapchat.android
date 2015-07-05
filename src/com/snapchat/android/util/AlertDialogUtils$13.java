package com.snapchat.android.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import pp;
import pp.a;

final class AlertDialogUtils$13
  implements DialogInterface.OnClickListener
{
  AlertDialogUtils$13(Friend paramFriend, Message paramMessage, AnalyticsEvents.AnalyticsContext paramAnalyticsContext, pp.a parama) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new pp(val$friend, FriendAction.UNBLOCK);
    mOnFriendActionMessage = val$onFriendActionMessage;
    mAnalyticsContext = val$analyticsContext;
    mFriendActionCompleteCallback = val$friendActionCompleteCallback;
    paramDialogInterface.e().f();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */