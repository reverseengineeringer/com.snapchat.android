package com.snapchat.android.fragments.chat;

import android.text.Editable;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.util.CashUtils;
import yw.a;

final class ChatFragment$9
  implements yw.a
{
  ChatFragment$9(ChatFragment paramChatFragment, ChatConversation paramChatConversation, int paramInt, CashFeedItem paramCashFeedItem, String paramString, Editable paramEditable) {}
  
  public final void a()
  {
    String str = a.mTheirUsername;
    CashUtils.a(b);
    ChatFragment.a(f, c);
    ChatFragment.a(f, a, c, d);
  }
  
  public final void b()
  {
    String str = a.mTheirUsername;
    CashUtils.a(b);
    e.clearSpans();
    ChatFragment.i(f).setText(e);
    ChatFragment.q(f);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */