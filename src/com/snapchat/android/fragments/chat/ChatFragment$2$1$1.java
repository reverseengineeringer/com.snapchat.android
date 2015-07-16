package com.snapchat.android.fragments.chat;

import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.CashUtils;
import yq;

final class ChatFragment$2$1$1
  implements Runnable
{
  ChatFragment$2$1$1(ChatFragment.2.1 param1) {}
  
  public final void run()
  {
    yq localyq = a.d.a.h;
    yq.a(ChatFragment.i(a.d.a), a.b);
    ChatFragment.q(a.d.a);
    AnalyticsEvents.t(CashUtils.a(a.c));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.2.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */