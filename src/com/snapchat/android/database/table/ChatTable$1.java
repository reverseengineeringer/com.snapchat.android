package com.snapchat.android.database.table;

import akb;
import ban;
import baz;
import ben;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.squareup.otto.Bus;
import ym;
import yn;

final class ChatTable$1
  implements Runnable
{
  ChatTable$1(akb paramakb, String paramString) {}
  
  public final void run()
  {
    if (a.mSendReceiveStatus.equals(StatefulChatFeedItem.SendReceiveStatus.SENDING))
    {
      a.mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
      ChatConversation localChatConversation = ym.a(b);
      if (localChatConversation != null) {
        yn.a().a(localChatConversation, false);
      }
      ban.a().a(new ben());
      ban.a().a(new baz(a.X(), a.d()));
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.database.table.ChatTable.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */