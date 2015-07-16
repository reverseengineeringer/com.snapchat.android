package com.snapchat.android.util.chat;

import ayi;
import ayj;
import bgo;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLSocket;

final class SecureChatSession$a$1
  implements Runnable
{
  SecureChatSession$a$1(SecureChatSession.a parama, AtomicBoolean paramAtomicBoolean, SSLSocket paramSSLSocket, ayj paramayj, ayi paramayi) {}
  
  public final void run()
  {
    if (val$timeoutCanceled.compareAndSet(false, true))
    {
      bgo.a(val$localSslSocket);
      bgo.a(val$localOutputStream);
      bgo.a(val$localInputStream);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */