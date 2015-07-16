package com.snapchat.android.util.chat;

import java.util.Iterator;
import java.util.List;

final class SecureChatSession$a$2
  implements Runnable
{
  SecureChatSession$a$2(SecureChatSession.a parama) {}
  
  public final void run()
  {
    if (!this$1.this$0.d())
    {
      Iterator localIterator = SecureChatSession.m(this$1.this$0).iterator();
      while (localIterator.hasNext()) {
        localIterator.next();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */