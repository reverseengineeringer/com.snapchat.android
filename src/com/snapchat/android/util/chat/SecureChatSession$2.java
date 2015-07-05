package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;

final class SecureChatSession$2
  implements Runnable
{
  SecureChatSession$2(SecureChatSession paramSecureChatSession) {}
  
  public final void run()
  {
    AnalyticsEvents.W();
    Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession executing DISCONNECT runnable", new Object[0]);
    if (SecureChatSession.a(this$0) != SecureChatSession.b.DISCONNECTED$7133d94d)
    {
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT returning because intended connection state != DISCONNECTED", new Object[0]);
      return;
    }
    if (SecureChatSession.b(this$0) == SecureChatSession.ConnectionState.DISCONNECTED)
    {
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT returning because connection state == DISCONNECTED", new Object[0]);
      return;
    }
    SecureChatSession.c(this$0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */