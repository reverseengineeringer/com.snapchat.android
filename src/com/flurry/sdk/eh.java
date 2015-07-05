package com.flurry.sdk;

import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.params.HttpParams;

public final class eh
{
  private static SchemeRegistry a;
  
  public static HttpClient a(HttpParams paramHttpParams)
  {
    return new DefaultHttpClient(new SingleClientConnManager(paramHttpParams, a()), paramHttpParams);
  }
  
  /* Error */
  private static SchemeRegistry a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 24	com/flurry/sdk/eh:a	Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   6: ifnull +12 -> 18
    //   9: getstatic 24	com/flurry/sdk/eh:a	Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: new 26	org/apache/http/conn/scheme/SchemeRegistry
    //   21: dup
    //   22: invokespecial 29	org/apache/http/conn/scheme/SchemeRegistry:<init>	()V
    //   25: astore_0
    //   26: aload_0
    //   27: putstatic 24	com/flurry/sdk/eh:a	Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   30: aload_0
    //   31: new 31	org/apache/http/conn/scheme/Scheme
    //   34: dup
    //   35: ldc 33
    //   37: invokestatic 39	org/apache/http/conn/scheme/PlainSocketFactory:getSocketFactory	()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    //   40: bipush 80
    //   42: invokespecial 42	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   45: invokevirtual 46	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   48: pop
    //   49: getstatic 24	com/flurry/sdk/eh:a	Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   52: new 31	org/apache/http/conn/scheme/Scheme
    //   55: dup
    //   56: ldc 48
    //   58: invokestatic 53	org/apache/http/conn/ssl/SSLSocketFactory:getSocketFactory	()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   61: sipush 443
    //   64: invokespecial 42	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   67: invokevirtual 46	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   70: pop
    //   71: getstatic 24	com/flurry/sdk/eh:a	Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   74: astore_0
    //   75: goto -62 -> 13
    //   78: astore_0
    //   79: ldc 2
    //   81: monitorexit
    //   82: aload_0
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   12	63	0	localSchemeRegistry	SchemeRegistry
    //   78	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	13	78	finally
    //   18	75	78	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */