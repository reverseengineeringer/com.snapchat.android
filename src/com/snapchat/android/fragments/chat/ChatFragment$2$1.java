package com.snapchat.android.fragments.chat;

import bgp;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.util.CashUtils;
import xu;
import ya.a;

final class ChatFragment$2$1
  implements ya.a
{
  ChatFragment$2$1(ChatFragment.2 param2, CashFeedItem paramCashFeedItem, int paramInt1, int paramInt2) {}
  
  public final void a()
  {
    ChatFragment.a(d.a, a);
    bgp.a(new Runnable()
    {
      public final void run()
      {
        xu localxu = d.a.h;
        xu.a(ChatFragment.i(d.a), b);
        ChatFragment.q(d.a);
        AnalyticsEvents.u(CashUtils.a(c));
      }
    });
  }
  
  public final void b()
  {
    ChatFragment.q(d.a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */