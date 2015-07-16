package com.snapchat.android.util.chat;

import akp;
import akr;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.Pair;
import aty;
import avb;
import ayi;
import ayj;
import ayl;
import ayn;
import ayq;
import bgo;
import bij;
import bik;
import bji;
import bji.a;
import bjl;
import bjy;
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
    long l = System.currentTimeMillis();
    if (SecureChatSession.a(this$0) != SecureChatSession.b.CONNECTED$7133d94d) {}
    final Object localObject1;
    Object localObject3;
    final Object localObject4;
    int i;
    do
    {
      do
      {
        do
        {
          return;
        } while (SecureChatSession.b(this$0) != SecureChatSession.ConnectionState.DISCONNECTED);
        localObject1 = aethis$0)).mMessagingGatewayInfo;
      } while (localObject1 == null);
      localObject3 = ((bjl)localObject1).b().split(":");
      localObject3 = new Pair(localObject3[0], Integer.valueOf(Integer.parseInt(localObject3[1])));
      localObject4 = (String)first;
      i = ((Integer)second).intValue();
      localObject3 = ((bjl)localObject1).a();
    } while (localObject3 == null);
    SecureChatSession.a(this$0, System.currentTimeMillis());
    SecureChatSession.i(this$0).set(false);
    SecureChatSession.j(this$0);
    SecureChatSession.a(this$0, SecureChatSession.ConnectionState.CONNECTING);
    try
    {
      a((String)localObject4, i);
      SecureChatSession.a(this$0, new ayi(SecureChatSession.g(this$0).getInputStream(), this$0.mGson));
      SecureChatSession.a(this$0, new ayj(SecureChatSession.g(this$0).getOutputStream(), this$0.mGson));
      localObject4 = new AtomicBoolean(false);
      localObject1 = SecureChatSession.g(this$0);
      final Object localObject5 = SecureChatSession.k(this$0);
      final ayj localayj = SecureChatSession.h(this$0);
      SecureChatSession.l(this$0).schedule(new Runnable()
      {
        public final void run()
        {
          if (localObject4.compareAndSet(false, true))
          {
            bgo.a(localObject1);
            bgo.a(localayj);
            bgo.a(localObject5);
          }
        }
      }, 20000L, TimeUnit.MILLISECONDS);
      SecureChatSession.l(this$0).schedule(new Runnable()
      {
        public final void run()
        {
          if (!this$0.d())
          {
            Iterator localIterator = SecureChatSession.m(this$0).iterator();
            while (localIterator.hasNext()) {
              localIterator.next();
            }
          }
        }
      }, 3000L, TimeUnit.MILLISECONDS);
      localObject1 = ScApplicationInfo.b(SecureChatSession.e(this$0));
      if (!ScApplicationInfo.DEFAULT_VERSION_NAME.equals(localObject1)) {
        break label802;
      }
      localObject1 = "unknown";
      localObject5 = (bij)aty.b(bji.a.CONNECT);
      ((bij)localObject5).a(akr.l()).b("android").c(Integer.toString(Build.VERSION.SDK_INT)).d((String)localObject1).a((bjy)localObject3);
      new StringBuilder("CHAT-LOG: SecureChatSession writeConnectMessage: ").append(localObject5);
      SecureChatSession.h(this$0).a((bji)localObject5);
      localObject1 = SecureChatSession.k(this$0).a();
      if (!((AtomicBoolean)localObject4).compareAndSet(false, true)) {
        break label782;
      }
      if (((bji)localObject1).j() != bji.a.CONNECT_RESPONSE) {
        break label796;
      }
      localObject1 = (bik)localObject1;
      if (!avb.a(((bik)localObject1).a())) {
        break label722;
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
      new StringBuilder("CHAT-LOG: SecureChatSession DISCONNECT due to exception when attempting to connect ").append(Log.getStackTraceString(localException));
      SecureChatSession.c(this$0);
      SecureChatSession.f(this$0);
      return;
      ayn localayn = SecureChatSession.o(this$0);
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
      SecureChatSession.c(this$0);
      SecureChatSession.f(this$0);
      bool = false;
      continue;
      label722:
      new StringBuilder("CHAT-LOG: SecureChatSession DISCONNECT due to unsuccessful ConnectResponse ").append(localObject2);
      SecureChatSession.c(this$0);
      if (((bik)localObject2).b().equals("wrong_server"))
      {
        SecureChatSession.t(this$0);
        SecureChatSession.a(this$0, ((bik)localObject2).c());
        break label805;
        label782:
        SecureChatSession.c(this$0);
        SecureChatSession.f(this$0);
        label796:
        bool = false;
        continue;
        label802:
        break;
      }
      label805:
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */