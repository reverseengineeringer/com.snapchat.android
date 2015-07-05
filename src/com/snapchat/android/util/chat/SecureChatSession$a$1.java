package com.snapchat.android.util.chat;

import axk;
import axl;
import bfo;
import com.snapchat.android.Timber;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLSocket;

final class SecureChatSession$a$1
  implements Runnable
{
  SecureChatSession$a$1(SecureChatSession.a parama, AtomicBoolean paramAtomicBoolean, SSLSocket paramSSLSocket, axl paramaxl, axk paramaxk) {}
  
  public final void run()
  {
    if (val$timeoutCanceled.compareAndSet(false, true))
    {
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT due to ConnectMessage timeout", new Object[0]);
      bfo.a(val$localSslSocket);
      bfo.a(val$localOutputStream);
      bfo.a(val$localInputStream);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */