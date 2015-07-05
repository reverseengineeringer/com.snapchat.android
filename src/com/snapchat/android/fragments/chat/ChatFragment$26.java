package com.snapchat.android.fragments.chat;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.LockingAboveTheFoldListView;

final class ChatFragment$26
  implements View.OnFocusChangeListener
{
  ChatFragment$26(ChatFragment paramChatFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      ChatFragment.e(a).setIsActive(true);
    }
    if (ChatFragment.f(a) != null) {
      ChatFragment.f(a).e(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */