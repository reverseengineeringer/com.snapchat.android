package com.snapchat.android.fragments.chat;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnLongClickListener;
import bhr;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.ui.ChatCameraButton;
import com.snapchat.android.ui.here.HereTooltip;
import com.snapchat.android.ui.here.StreamView;

final class ChatFragment$10
  implements View.OnLongClickListener
{
  ChatFragment$10(ChatFragment paramChatFragment, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public final boolean onLongClick(View paramView)
  {
    if ((ChatFragment.g(c).getIsEmoji()) || (ChatFragment.g(c).getCashtagDetected()) || (ChatFragment.g(c).getCashSwipeDetected())) {
      return false;
    }
    if (a)
    {
      c.p();
      ((StreamView)c.g.a()).c();
      paramView = lc).a.edit();
      paramView.putInt(SharedPreferenceKey.TIMES_DISPLAYED_HERE_TOOLTIP.getKey(), 3);
      paramView.apply();
    }
    for (;;)
    {
      return true;
      if (b) {
        ChatFragment.l(c).a(true);
      } else {
        ChatFragment.s(c);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */