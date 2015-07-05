package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;

final class SecureChatSession$3
  implements Runnable
{
  SecureChatSession$3(SecureChatSession paramSecureChatSession) {}
  
  public final void run()
  {
    if (SecureChatSession.a(this$0) == SecureChatSession.b.CONNECTED$7133d94d)
    {
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession START SESSION RECONNECT", new Object[0]);
      SecureChatSession.d(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */