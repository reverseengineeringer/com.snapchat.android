import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;

public final class ui
  implements tq
{
  private static final String ENABLE_SPDY = "ENABLE_SPDY";
  private static final String SPDY_TEST = "SPDY";
  private static final String TAG = "SnapchatOkHttpClientFactory";
  private static final ajt mStudySettings = ajt.a();
  private static bly sChatClient;
  private static final Object sChatMutex;
  private static bly sNonCertClient;
  private static final Object sNonCertMutex = new Object();
  private static bly sSnapchatCertClient;
  private static final Object sSnapchatCertMutex = new Object();
  
  static
  {
    sChatMutex = new Object();
  }
  
  public static bly a()
  {
    bly localbly = new bly();
    Object localObject = new ok();
    localbly.a(10000L, TimeUnit.MILLISECONDS);
    localbly.b(((pe)localObject).a(), TimeUnit.MILLISECONDS);
    localObject = new ArrayList();
    if (mStudySettings.a("SPDY", "ENABLE_SPDY", false)) {
      ((List)localObject).add(blz.c);
    }
    ((List)localObject).add(blz.b);
    localObject = bmp.a((List)localObject);
    if (!((List)localObject).contains(blz.b)) {
      throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + localObject);
    }
    if (((List)localObject).contains(blz.a)) {
      throw new IllegalArgumentException("protocols must not contain http/1.0: " + localObject);
    }
    if (((List)localObject).contains(null)) {
      throw new IllegalArgumentException("protocols must not contain null");
    }
    f = bmp.a((List)localObject);
    return localbly;
  }
  
  private static bly a(bly parambly)
  {
    SSLSocketFactory localSSLSocketFactory = b();
    if (localSSLSocketFactory != null)
    {
      n = localSSLSocketFactory;
      return parambly;
    }
    throw new IOException("Required Socket factory could not be created.");
  }
  
  private static bly b(String paramString)
  {
    synchronized (sChatMutex)
    {
      bly localbly;
      if (sChatClient == null)
      {
        localbly = a();
        pi localpi = new pi();
        localbly.a(10000L, TimeUnit.MILLISECONDS);
        localbly.b(localpi.a(), TimeUnit.MILLISECONDS);
        if (paramString.contains("https://app.snapchat.com")) {
          sChatClient = a(localbly);
        }
      }
      else
      {
        paramString = sChatClient;
        return paramString;
      }
      sChatClient = localbly;
    }
  }
  
  /* Error */
  private static SSLSocketFactory b()
  {
    // Byte code:
    //   0: ldc 15
    //   2: ldc -95
    //   4: iconst_0
    //   5: anewarray 4	java/lang/Object
    //   8: invokestatic 166	com/snapchat/android/Timber:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   11: ldc -88
    //   13: invokestatic 174	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   16: astore_0
    //   17: invokestatic 179	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   20: invokevirtual 183	com/snapchat/android/SnapchatApplication:getResources	()Landroid/content/res/Resources;
    //   23: ldc -72
    //   25: invokevirtual 190	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   28: astore_1
    //   29: aload_0
    //   30: aload_1
    //   31: ldc -64
    //   33: invokevirtual 196	java/lang/String:toCharArray	()[C
    //   36: invokevirtual 200	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   39: aload_1
    //   40: invokevirtual 205	java/io/InputStream:close	()V
    //   43: ldc -49
    //   45: invokestatic 212	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   48: astore_1
    //   49: invokestatic 217	javax/net/ssl/TrustManagerFactory:getDefaultAlgorithm	()Ljava/lang/String;
    //   52: invokestatic 220	javax/net/ssl/TrustManagerFactory:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   55: astore_2
    //   56: aload_2
    //   57: aload_0
    //   58: invokevirtual 224	javax/net/ssl/TrustManagerFactory:init	(Ljava/security/KeyStore;)V
    //   61: aload_1
    //   62: aconst_null
    //   63: aload_2
    //   64: invokevirtual 228	javax/net/ssl/TrustManagerFactory:getTrustManagers	()[Ljavax/net/ssl/TrustManager;
    //   67: aconst_null
    //   68: invokevirtual 231	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   71: ldc 15
    //   73: ldc -23
    //   75: iconst_0
    //   76: anewarray 4	java/lang/Object
    //   79: invokestatic 166	com/snapchat/android/Timber:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   82: aload_1
    //   83: invokevirtual 236	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   86: areturn
    //   87: astore_0
    //   88: aload_1
    //   89: invokevirtual 205	java/io/InputStream:close	()V
    //   92: aload_0
    //   93: athrow
    //   94: astore_0
    //   95: ldc 15
    //   97: ldc -18
    //   99: iconst_0
    //   100: anewarray 4	java/lang/Object
    //   103: invokestatic 240	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   106: new 137	java/io/IOException
    //   109: dup
    //   110: aload_0
    //   111: invokespecial 243	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   114: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   16	42	0	localKeyStore	java.security.KeyStore
    //   87	6	0	localObject1	Object
    //   94	17	0	localException	Exception
    //   28	61	1	localObject2	Object
    //   55	9	2	localTrustManagerFactory	javax.net.ssl.TrustManagerFactory
    // Exception table:
    //   from	to	target	type
    //   29	39	87	finally
    //   0	29	94	java/lang/Exception
    //   39	87	94	java/lang/Exception
    //   88	94	94	java/lang/Exception
  }
  
  private static bly c(String arg0)
  {
    if (???.contains("https://app.snapchat.com")) {
      synchronized (sSnapchatCertMutex)
      {
        if (sSnapchatCertClient == null) {
          sSnapchatCertClient = a(a());
        }
        bly localbly1 = sSnapchatCertClient;
        return localbly1;
      }
    }
    synchronized (sNonCertMutex)
    {
      if (sNonCertClient == null) {
        sNonCertClient = a();
      }
      bly localbly2 = sNonCertClient;
      return localbly2;
    }
  }
  
  public final bly a(String paramString)
  {
    try
    {
      paramString = ud.a(paramString);
      paramString = paramString.toString();
      if (paramString.contains("/bq/chat_typing")) {
        return b(paramString);
      }
    }
    catch (URISyntaxException paramString)
    {
      throw new IllegalArgumentException("Invalid URL: " + paramString.getMessage());
    }
    return c(paramString);
  }
}

/* Location:
 * Qualified Name:     ui
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */