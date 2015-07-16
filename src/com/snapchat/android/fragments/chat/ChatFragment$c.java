package com.snapchat.android.fragments.chat;

import agr;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import ayd;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.List;
import tt;

final class ChatFragment$c
  implements AbsListView.OnScrollListener
{
  private ChatFragment$c(ChatFragment paramChatFragment) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 0) {
      ChatFragment.M(a);
    }
    if ((!ChatFragment.t(a).isEmpty()) && (paramAbsListView.getFirstVisiblePosition() < ChatFragment.z()) && (!ChatFragment.u(a).isEmpty()) && (ChatFragment.f(a) != null))
    {
      paramAbsListView = ChatFragment.N(a);
      if (mRenderSize >= mMessageCount) {
        break label92;
      }
    }
    label92:
    for (paramInt = 1; paramInt != 0; paramInt = 0)
    {
      ChatFragment.O(a);
      return;
    }
    paramAbsListView = ChatFragment.v(a).a(fa).mId, true);
    a.a(paramAbsListView);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */