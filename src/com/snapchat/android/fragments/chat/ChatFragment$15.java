package com.snapchat.android.fragments.chat;

import ban;
import bdd;
import bgp;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.squareup.otto.Bus;
import java.util.HashMap;
import ya.b;

final class ChatFragment$15
  implements ya.b
{
  ChatFragment$15(ChatFragment paramChatFragment, CashFeedItem paramCashFeedItem, ChatConversation paramChatConversation) {}
  
  public final void a()
  {
    Timber.c("ChatFragment", "CASH-LOG: SENDING transaction id[%s] recipient[%s] amount[%s]", new Object[] { a.d(), b.mTheirUsername, a.mCashTransaction.a() });
    bgp.a(new Runnable()
    {
      public final void run()
      {
        ChatFragment.i(c).setText("");
      }
    });
    ChatFragment.a(c, null);
    ChatFragment.B(c).remove(b.mTheirUsername);
    ChatFragment.q(c);
    ban.a().a(new bdd());
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