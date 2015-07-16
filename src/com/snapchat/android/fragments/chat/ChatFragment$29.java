package com.snapchat.android.fragments.chat;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.snapchat.android.ui.LockingAboveTheFoldListView;
import ze;

final class ChatFragment$29
  implements View.OnTouchListener
{
  ChatFragment$29(ChatFragment paramChatFragment) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      ChatFragment.m(a);
      ChatFragment.e(a).c();
      new Handler().post(new Runnable()
      {
        public final void run()
        {
          ChatFragment.c(a, 0.0F);
          ChatFragment.n(a).a();
        }
      });
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.29
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */