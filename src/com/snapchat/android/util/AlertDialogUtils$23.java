package com.snapchat.android.util;

import ajk;
import aka;
import akp;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import avr;
import bbo;
import bep;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

final class AlertDialogUtils$23
  implements DialogInterface.OnClickListener
{
  AlertDialogUtils$23(aka paramaka, akp paramakp, ajk paramajk) {}
  
  public final void onClick(DialogInterface arg1, int paramInt)
  {
    val$snap.t();
    val$user.mNextReplayAvailableRealtime = -1L;
    if ((val$provider != null) && ((val$provider instanceof ChatConversation)))
    {
      Object localObject1 = (ChatConversation)val$provider;
      synchronized (mChats)
      {
        localObject1 = mChats.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          ChatFeedItem localChatFeedItem = (ChatFeedItem)((Iterator)localObject1).next();
          if (((localChatFeedItem instanceof aka)) && (((aka)localChatFeedItem).an())) {
            ((aka)localChatFeedItem).t();
          }
        }
      }
      ((ChatConversation)val$provider).r();
    }
    avr.b();
    bbo.a().a(new bep());
    AnalyticsEvents.a(true, val$snap);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */