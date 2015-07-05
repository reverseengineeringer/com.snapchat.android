package com.snapchat.android.ui;

import android.os.SystemClock;

final class ChatCameraButton$1
  implements Runnable
{
  ChatCameraButton$1(ChatCameraButton paramChatCameraButton) {}
  
  public final void run()
  {
    ChatCameraButton.a(a);
    if (ChatCameraButton.b(a))
    {
      ChatCameraButton.c(a);
      return;
    }
    ChatCameraButton.a(a, SystemClock.elapsedRealtime());
    ChatCameraButton.d(a);
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ChatCameraButton.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */