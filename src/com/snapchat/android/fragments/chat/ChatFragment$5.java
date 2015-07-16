package com.snapchat.android.fragments.chat;

import agr;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.List;
import tt;

final class ChatFragment$5
  implements View.OnClickListener
{
  ChatFragment$5(ChatFragment paramChatFragment) {}
  
  public final void onClick(View paramView)
  {
    if ((!ChatFragment.t(a).isEmpty()) && (!ChatFragment.u(a).isEmpty()) && (ChatFragment.f(a) != null))
    {
      paramView = ChatFragment.v(a).a(fa).mId, true);
      a.a(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */