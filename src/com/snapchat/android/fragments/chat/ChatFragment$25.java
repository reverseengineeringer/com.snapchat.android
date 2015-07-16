package com.snapchat.android.fragments.chat;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import chd;

final class ChatFragment$25
  implements TextView.OnEditorActionListener
{
  ChatFragment$25(ChatFragment paramChatFragment) {}
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, @chd KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) || ((paramKeyEvent != null) && (paramKeyEvent.getKeyCode() == 66)))
    {
      ChatFragment.d(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.25
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */