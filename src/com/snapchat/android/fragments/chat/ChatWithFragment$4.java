package com.snapchat.android.fragments.chat;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import awf;

final class ChatWithFragment$4
  implements AbsListView.OnScrollListener
{
  ChatWithFragment$4(ChatWithFragment paramChatWithFragment) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt != 0) {
      awf.a(a.getActivity(), ChatWithFragment.b(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatWithFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */