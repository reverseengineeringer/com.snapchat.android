import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;

public final class uz
  implements ug
{
  private static final String ENABLE_SPDY = "ENABLE_SPDY";
  private static final String SPDY_TEST = "SPDY";
  private static final String TAG = "SnapchatOkHttpClientFactory";
  private static final akn mStudySettings = akn.a();
  private static bmz sChatClient;
  private static final Object sChatMutex;
  private static bmz sNonCertClient;
  private static final Object sNonCertMutex = new Object();
  private static bmz sSnapchatCertClient;
  private static final Object sSnapchatCertMutex = new Object();
  
  static
  {
    sChatMutex = new Object();
  }
  
  public static bmz a()
  {
    bmz localbmz = new bmz();
    Object localObject = new pb();
    localbmz.a(10000L, TimeUnit.MILLISECONDS);
    localbmz.b(((pv)localObject).a(), TimeUnit.MILLISECONDS);
    localObject = new ArrayList();
    if (mStudySettings.a("SPDY", "ENABLE_SPDY", false)) {
      ((List)localObject).add(bna.c);
    }
    ((List)localObject).add(bna.b);
    localObject = bnq.a((List)localObject);
    if (!((List)localObject).contains(bna.b)) {
      throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + localObject);
    }
    if (((List)localObject).contains(bna.a)) {
      throw new IllegalArgumentException("protocols must not contain http/1.0: " + localObject);
    }
    if (((List)localObject).contains(null)) {
      throw new IllegalArgumentException("protocols must not contain null");
    }
    f = bnq.a((List)localObject);
    return localbmz;
  }
  
  private static bmz a(bmz parambmz)
  {
    SSLSocketFactory localSSLSocketFactory = b();
    if (localSSLSocketFactory != null)
    {
      n = localSSLSocketFactory;
      return parambmz;
    }
    throw new IOException("Required Socket factory could not be created.");
  }
  
  private static bmz b(String paramString)
  {
    synchronized (sChatMutex)
    {
      bmz localbmz;
      if (sChatClient == null)
      {
        localbmz = a();
        pz localpz = new pz();
        localbmz.a(10000L, TimeUnit.MILLISECONDS);
        localbmz.b(localpz.a(), TimeUnit.MILLISECONDS);
        if (paramString.contains("https://app.snapchat.com")) {
          sChatClient = a(localbmz);
        }
      }
      else
      {
        paramString = sChatClient;
        return paramString;
      }
      sChatClient = localbmz;
    }
  }
  
  /* Error */
  private static SSLSocketFactory b()
  {
    // Byte code:
    //   0: ldc -95
    //   2: invokestatic 167	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   5: astore_0
    //   6: invokestatic 172	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   9: invokevirtual 176	com/snapchat/android/SnapchatApplication:getResources	()Landroid/content/res/Resources;
    //   12: ldc -79
    //   14: invokevirtual 183	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   17: astore_1
    //   18: aload_0
    //   19: aload_1
    //   20: ldc -71
    //   22: invokevirtual 189	java/lang/String:toCharArray	()[C
    //   25: invokevirtual 193	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   28: aload_1
    //   29: invokevirtual 198	java/io/InputStream:close	()V
    //   32: ldc -56
    //   34: invokestatic 205	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   37: astore_1
    //   38: invokestatic 210	javax/net/ssl/TrustManagerFactory:getDefaultAlgorithm	()Ljava/lang/String;
    //   41: invokestatic 213	javax/net/ssl/TrustManagerFactory:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   44: astore_2
    //   45: aload_2
    //   46: aload_0
    //   47: invokevirtual 217	javax/net/ssl/TrustManagerFactory:init	(Ljava/security/KeyStore;)V
    //   50: aload_1
    //   51: aconst_null
    //   52: aload_2
    //   53: invokevirtual 221	javax/net/ssl/TrustManagerFactory:getTrustManagers	()[Ljavax/net/ssl/TrustManager;
    //   56: aconst_null
    //   57: invokevirtual 224	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   60: aload_1
    //   61: invokevirtual 227	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   64: areturn
    //   65: astore_0
    //   66: aload_1
    //   67: invokevirtual 198	java/io/InputStream:close	()V
    //   70: aload_0
    //   71: athrow
    //   72: astore_0
    //   73: new 137	java/io/IOException
    //   76: dup
    //   77: aload_0
    //   78: invokespecial 230	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   81: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   5	42	0	localKeyStore	java.security.KeyStore
    //   65	6	0	localObject1	Object
    //   72	6	0	localException	Exception
    //   17	50	1	localObject2	Object
    //   44	9	2	localTrustManagerFactory	javax.net.ssl.TrustManagerFactory
    // Exception table:
    //   from	to	target	type
    //   18	28	65	finally
    //   0	18	72	java/lang/Exception
    //   28	65	72	java/lang/Exception
    //   66	72	72	java/lang/Exception
  }
  
  private static bmz c(String arg0)
  {
    if (???.contains("https://app.snapchat.com")) {
      synchronized (sSnapchatCertMutex)
      {
        if (sSnapchatCertClient == null) {
          sSnapchatCertClient = a(a());
        }
        bmz localbmz1 = sSnapchatCertClient;
        return localbmz1;
      }
    }
    synchronized (sNonCertMutex)
    {
      if (sNonCertClient == null) {
        sNonCertClient = a();
      }
      bmz localbmz2 = sNonCertClient;
      return localbmz2;
    }
  }
  
  public final bmz a(String paramString)
  {
    try
    {
      paramString = ut.a(paramString);
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
 * Qualified Name:     uz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */