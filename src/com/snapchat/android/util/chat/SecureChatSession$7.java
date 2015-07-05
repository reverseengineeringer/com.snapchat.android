package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;

final class SecureChatSession$7
  implements Runnable
{
  SecureChatSession$7(SecureChatSession paramSecureChatSession) {}
  
  public final void run()
  {
    Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT after being disconnected due to ping timeout", new Object[0]);
    this$0.b();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */