package com.snapchat.android.fragments.chat;

import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import yw;
import yw.a;
import yw.b;

final class ChatFragment$17$1
  implements yw.a
{
  ChatFragment$17$1(ChatFragment.17 param17, CashFeedItem paramCashFeedItem) {}
  
  public final void a()
  {
    ChatFragment.b(b.c, a);
    b.c.i.a(b.a, a, "", new yw.b()
    {
      public final void a()
      {
        AnalyticsEvents.b(a.mCashTransaction.a(), a.mCashTransaction.mFromRain);
        ChatFragment.q(b.c);
      }
      
      public final void b()
      {
        ChatFragment.q(b.c);
      }
    });
  }
  
  public final void b()
  {
    ChatFragment.q(b.c);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.17.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */