package com.snapchat.android.database.table;

import akw;
import bbo;
import bca;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.squareup.otto.Bus;
import zi;

final class ChatTable$1
  implements Runnable
{
  ChatTable$1(akw paramakw, String paramString) {}
  
  public final void run()
  {
    if (a.mSendReceiveStatus.equals(StatefulChatFeedItem.SendReceiveStatus.SENDING))
    {
      a.mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
      ChatConversation localChatConversation = zi.a(b);
      if (localChatConversation != null) {
        localChatConversation.a(a, FeedIconChangeType.FAILED_TO_SEND);
      }
      bbo.a().a(new bca(a.Y(), a.d()));
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.database.table.ChatTable.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */