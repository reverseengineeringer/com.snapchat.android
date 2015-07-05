package com.snapchat.android.util.chat;

import ajv;
import ajx;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.Pair;
import asz;
import aud;
import axk;
import axl;
import axn;
import axp;
import axs;
import bfo;
import bhj;
import bhk;
import bii;
import bii.a;
import bil;
import bix;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.debug.ScApplicationInfo;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

final class SecureChatSession$a
  implements Runnable
{
  private SecureChatSession$a(SecureChatSession paramSecureChatSession) {}
  
  private void a(String paramString, int paramInt)
  {
    Object localObject = amSslContext;
    if (localObject == null) {
      return;
    }
    localObject = ((SSLContext)localObject).getSocketFactory();
    SecureChatSession.a(this$0, (SSLSocket)((SSLSocketFactory)localObject).createSocket());
    localObject = SecureChatSession.g(this$0).getSSLParameters();
    ArrayList localArrayList = new ArrayList(Arrays.asList(((SSLParameters)localObject).getCipherSuites()));
    String[] arrayOfString = SecureChatSession.g();
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = arrayOfString[i];
      if (localArrayList.remove(str)) {
        localArrayList.add(0, str);
      }
      i += 1;
    }
    ((SSLParameters)localObject).setCipherSuites(SecureChatSession.a(localArrayList));
    SecureChatSession.g(this$0).setSSLParameters((SSLParameters)localObject);
    SecureChatSession.g(this$0).setUseClientMode(true);
    SecureChatSession.g(this$0).connect(new InetSocketAddress(paramString, paramInt), 10000);
    SecureChatSession.g(this$0).startHandshake();
  }
  
  public final void run()
  {
    Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession executing CONNECT runnable", new Object[0]);
    long l = System.currentTimeMillis();
    if (SecureChatSession.a(this$0) != SecureChatSession.b.CONNECTED$7133d94d)
    {
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because intended connection state != CONNECTED", new Object[0]);
      return;
    }
    if (SecureChatSession.b(this$0) != SecureChatSession.ConnectionState.DISCONNECTED)
    {
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because connection state != DISCONNECTED", new Object[0]);
      return;
    }
    final Object localObject1 = aethis$0)).mMessagingGatewayInfo;
    if (localObject1 == null)
    {
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because messaging gateway info is null", new Object[0]);
      return;
    }
    Object localObject3 = ((bil)localObject1).b().split(":");
    localObject3 = new Pair(localObject3[0], Integer.valueOf(Integer.parseInt(localObject3[1])));
    final Object localObject4 = (String)first;
    int i = ((Integer)second).intValue();
    localObject3 = ((bil)localObject1).a();
    if (localObject3 == null)
    {
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession CONNECT returning because messaging gateway auth token is null", new Object[0]);
      return;
    }
    SecureChatSession.a(this$0, System.currentTimeMillis());
    SecureChatSession.i(this$0).set(false);
    SecureChatSession.j(this$0);
    SecureChatSession.a(this$0, SecureChatSession.ConnectionState.CONNECTING);
    try
    {
      a((String)localObject4, i);
      SecureChatSession.a(this$0, new axk(SecureChatSession.g(this$0).getInputStream(), this$0.mGson));
      SecureChatSession.a(this$0, new axl(SecureChatSession.g(this$0).getOutputStream(), this$0.mGson));
      localObject4 = new AtomicBoolean(false);
      localObject1 = SecureChatSession.g(this$0);
      final Object localObject5 = SecureChatSession.k(this$0);
      final axl localaxl = SecureChatSession.h(this$0);
      SecureChatSession.l(this$0).schedule(new Runnable()
      {
        public final void run()
        {
          if (localObject4.compareAndSet(false, true))
          {
            Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT due to ConnectMessage timeout", new Object[0]);
            bfo.a(localObject1);
            bfo.a(localaxl);
            bfo.a(localObject5);
          }
        }
      }, 20000L, TimeUnit.MILLISECONDS);
      SecureChatSession.l(this$0).schedule(new Runnable()
      {
        public final void run()
        {
          if (!this$0.d())
          {
            Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession ran into soft-timeout", new Object[0]);
            Iterator localIterator = SecureChatSession.m(this$0).iterator();
            while (localIterator.hasNext()) {
              localIterator.next();
            }
          }
        }
      }, 3000L, TimeUnit.MILLISECONDS);
      localObject1 = ScApplicationInfo.b(SecureChatSession.e(this$0));
      if (!ScApplicationInfo.DEFAULT_VERSION_NAME.equals(localObject1)) {
        break label917;
      }
      localObject1 = "unknown";
      localObject5 = (bhj)asz.b(bii.a.CONNECT);
      ((bhj)localObject5).a(ajx.l()).b("android").c(Integer.toString(Build.VERSION.SDK_INT)).d((String)localObject1).a((bix)localObject3);
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession writeConnectMessage: " + localObject5, new Object[0]);
      SecureChatSession.h(this$0).a((bii)localObject5);
      localObject1 = SecureChatSession.k(this$0).a();
      if (!((AtomicBoolean)localObject4).compareAndSet(false, true)) {
        break label885;
      }
      if (((bii)localObject1).j() != bii.a.CONNECT_RESPONSE) {
        break label911;
      }
      localObject1 = (bhk)localObject1;
      if (!aud.a(((bhk)localObject1).a())) {
        break label814;
      }
      SecureChatSession.a(this$0, new CountDownLatch(2));
      localObject1 = SecureChatSession.n(this$0);
      localObject3 = SecureChatSession.k(this$0);
      if (!mInputStreamQueue.offer(localObject3)) {
        throw new IllegalStateException();
      }
    }
    catch (Exception localException)
    {
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT due to exception when attempting to connect " + Log.getStackTraceString(localException), new Object[0]);
      SecureChatSession.c(this$0);
      SecureChatSession.f(this$0);
      return;
      axp localaxp = SecureChatSession.o(this$0);
      localObject3 = SecureChatSession.h(this$0);
      if (!mOutputStreamQueue.offer(localObject3)) {
        throw new IllegalStateException();
      }
    }
    finally
    {
      AnalyticsEvents.c(false, System.currentTimeMillis() - l);
    }
    boolean bool;
    if (SecureChatSession.p(this$0).await(1L, TimeUnit.SECONDS))
    {
      SecureChatSession.a(this$0, SecureChatSession.ConnectionState.CONNECTED);
      AnalyticsEvents.c(SecureChatSession.q(this$0));
      SecureChatSession.r(this$0);
      SecureChatSession.s(this$0);
      bool = true;
    }
    for (;;)
    {
      AnalyticsEvents.c(bool, System.currentTimeMillis() - l);
      return;
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT due to countdown latch timeout", new Object[0]);
      SecureChatSession.c(this$0);
      SecureChatSession.f(this$0);
      bool = false;
      continue;
      label814:
      Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT due to unsuccessful ConnectResponse " + localObject2, new Object[0]);
      SecureChatSession.c(this$0);
      if (((bhk)localObject2).b().equals("wrong_server"))
      {
        SecureChatSession.t(this$0);
        SecureChatSession.a(this$0, ((bhk)localObject2).c());
        break label920;
        label885:
        Timber.g("SecureChatSession", "CHAT-LOG: SecureChatSession DISCONNECT due to ConnectMessage timeout", new Object[0]);
        SecureChatSession.c(this$0);
        SecureChatSession.f(this$0);
        label911:
        bool = false;
        continue;
        label917:
        break;
      }
      label920:
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */