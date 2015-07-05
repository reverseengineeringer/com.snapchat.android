package com.snapchat.android.util;

import aio;
import aje;
import ajv;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import aut;
import ban;
import bdp;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

final class AlertDialogUtils$23
  implements DialogInterface.OnClickListener
{
  AlertDialogUtils$23(aje paramaje, ajv paramajv, aio paramaio) {}
  
  public final void onClick(DialogInterface arg1, int paramInt)
  {
    val$snap.s();
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
          if (((localChatFeedItem instanceof aje)) && (((aje)localChatFeedItem).ap())) {
            ((aje)localChatFeedItem).s();
          }
        }
      }
    }
    aut.b();
    ban.a().a(new bdp());
    AnalyticsEvents.a(true, val$snap);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */