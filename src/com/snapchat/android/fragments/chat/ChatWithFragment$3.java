package com.snapchat.android.fragments.chat;

import agy.b;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.model.Friend;

final class ChatWithFragment$3
  implements AdapterView.OnItemClickListener
{
  ChatWithFragment$3(ChatWithFragment paramChatWithFragment) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ChatFragment.a(getTagb.l());
    ((LandingPageActivity)a.getActivity()).a(0, false);
    a.getActivity().onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatWithFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */