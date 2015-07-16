package com.snapchat.android.fragments.chat;

import bbo;
import bed;
import bhp;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.squareup.otto.Bus;
import java.util.HashMap;
import yw.b;

final class ChatFragment$15
  implements yw.b
{
  ChatFragment$15(ChatFragment paramChatFragment, CashFeedItem paramCashFeedItem, ChatConversation paramChatConversation) {}
  
  public final void a()
  {
    a.d();
    String str = b.mTheirUsername;
    a.mCashTransaction.a();
    bhp.a(new Runnable()
    {
      public final void run()
      {
        ChatFragment.i(c).setText("");
      }
    });
    ChatFragment.a(c, null);
    ChatFragment.B(c).remove(b.mTheirUsername);
    ChatFragment.q(c);
    bbo.a().a(new bed());
    AnalyticsEvents.b(a.mCashTransaction.a(), a.mCashTransaction.mFromRain);
  }
  
  public final void b()
  {
    ChatFragment.q(c);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */