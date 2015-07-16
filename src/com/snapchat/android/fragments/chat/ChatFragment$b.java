package com.snapchat.android.fragments.chat;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import bgd;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.LockingAboveTheFoldListView;
import ze;

final class ChatFragment$b
  implements AbsListView.OnScrollListener
{
  private ChatFragment$b(ChatFragment paramChatFragment) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 0)
    {
      ChatFragment.e(a).setIsActive(true);
      paramInt = ChatFragment.e(a).getFirstVisiblePosition();
      int i = ChatFragment.e(a).getLastVisiblePosition();
      ChatFeedItem localChatFeedItem = (ChatFeedItem)ChatFragment.e(a).getItemAtPosition(paramInt);
      if (paramInt != i) {}
      for (paramAbsListView = (ChatFeedItem)ChatFragment.e(a).getItemAtPosition(i);; paramAbsListView = null)
      {
        ChatFragment.n(a);
        if (((!ze.a(localChatFeedItem, paramAbsListView)) && (!ChatFragment.n(a).b())) || (bgd.a(ChatFragment.e(a))) || (bgd.b(ChatFragment.e(a))))
        {
          ChatFragment.A(a);
          ChatFragment.n(a).a();
        }
        return;
      }
    }
    ChatFragment.e(a).setIsActive(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */