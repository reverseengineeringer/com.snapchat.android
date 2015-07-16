package com.snapchat.android.util.chat;

import com.snapchat.android.analytics.AnalyticsEvents;

final class SecureChatSession$2
  implements Runnable
{
  SecureChatSession$2(SecureChatSession paramSecureChatSession) {}
  
  public final void run()
  {
    
    if (SecureChatSession.a(this$0) != SecureChatSession.b.DISCONNECTED$7133d94d) {}
    while (SecureChatSession.b(this$0) == SecureChatSession.ConnectionState.DISCONNECTED) {
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