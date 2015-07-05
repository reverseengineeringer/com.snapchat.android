package com.snapchat.android.fragments.chat;

import android.text.Editable;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.util.CashUtils;
import ya.a;

final class ChatFragment$8
  implements ya.a
{
  ChatFragment$8(ChatFragment paramChatFragment, ChatConversation paramChatConversation, int paramInt, CashFeedItem paramCashFeedItem, String paramString, Editable paramEditable) {}
  
  public final void a()
  {
    Timber.c("ChatFragment", "CASH-LOG: RECONFIRMED transaction recipient[%s] amount[%s]", new Object[] { a.mTheirUsername, CashUtils.a(b) });
    ChatFragment.a(f, c);
    ChatFragment.a(f, a, c, d);
  }
  
  public final void b()
  {
    Timber.c("ChatFragment", "CASH-LOG: RECONFIRM CANCELED recipient[%s] amount[%s]", new Object[] { a.mTheirUsername, CashUtils.a(b) });
    e.clearSpans();
    ChatFragment.i(f).setText(e);
    ChatFragment.q(f);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */