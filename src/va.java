import android.content.Context;
import javax.inject.Inject;
import javax.inject.Singleton;
import javax.net.ssl.SSLSocketFactory;

@Singleton
public final class va
  implements ug
{
  private static final String TAG = "SquareOkHttpClientFactory";
  private static bmz mSquareCertClient;
  private static bmz mSquareNonCertClient;
  private Context mContext;
  
  @Inject
  protected va(Context paramContext)
  {
    mContext = paramContext;
    if (mSquareNonCertClient == null) {
      mSquareNonCertClient = uz.a();
    }
    if (mSquareCertClient == null)
    {
      paramContext = uz.a();
      SSLSocketFactory localSSLSocketFactory = a();
      if (localSSLSocketFactory != null)
      {
        n = localSSLSocketFactory;
        mSquareCertClient = paramContext;
      }
    }
    else
    {
      return;
    }
    throw new AssertionError("Required Socket factory could not be created.");
  }
  
  /* Error */
  private SSLSocketFactory a()
  {
    // Byte code:
    //   0: ldc 56
    //   2: invokestatic 62	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   5: astore_1
    //   6: aload_0
    //   7: getfield 24	va:mContext	Landroid/content/Context;
    //   10: invokevirtual 68	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   13: ldc 69
    //   15: invokevirtual 75	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   18: astore_2
    //   19: aload_1
    //   20: aload_2
    //   21: ldc 77
    //   23: invokevirtual 83	java/lang/String:toCharArray	()[C
    //   26: invokevirtual 87	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   29: aload_2
    //   30: invokevirtual 92	java/io/InputStream:close	()V
    //   33: ldc 94
    //   35: invokestatic 99	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   38: astore_2
    //   39: invokestatic 105	javax/net/ssl/TrustManagerFactory:getDefaultAlgorithm	()Ljava/lang/String;
    //   42: invokestatic 108	javax/net/ssl/TrustManagerFactory:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   45: astore_3
    //   46: aload_3
    //   47: aload_1
    //   48: invokevirtual 112	javax/net/ssl/TrustManagerFactory:init	(Ljava/security/KeyStore;)V
    //   51: aload_2
    //   52: aconst_null
    //   53: aload_3
    //   54: invokevirtual 116	javax/net/ssl/TrustManagerFactory:getTrustManagers	()[Ljavax/net/ssl/TrustManager;
    //   57: aconst_null
    //   58: invokevirtual 119	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   61: aload_2
    //   62: invokevirtual 122	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   65: areturn
    //   66: astore_1
    //   67: aload_2
    //   68: invokevirtual 92	java/io/InputStream:close	()V
    //   71: aload_1
    //   72: athrow
    //   73: astore_1
    //   74: new 45	java/lang/AssertionError
    //   77: dup
    //   78: aload_1
    //   79: invokespecial 50	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	va
    //   5	43	1	localKeyStore	java.security.KeyStore
    //   66	6	1	localObject1	Object
    //   73	6	1	localException	Exception
    //   18	50	2	localObject2	Object
    //   45	9	3	localTrustManagerFactory	javax.net.ssl.TrustManagerFactory
    // Exception table:
    //   from	to	target	type
    //   19	29	66	finally
    //   0	19	73	java/lang/Exception
    //   29	66	73	java/lang/Exception
    //   67	73	73	java/lang/Exception
  }
  
  public final bmz a(String paramString)
  {
    if (bal.c())
    {
      if (mSquareNonCertClient == null) {
        throw new IllegalArgumentException("Square Http Client is null when it should not have been.");
      }
      return mSquareNonCertClient;
    }
    if (mSquareCertClient == null) {
      throw new IllegalArgumentException("Square Http Client is null when it should not have been.");
    }
    return mSquareCertClient;
  }
}

/* Location:
 * Qualified Name:     va
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */