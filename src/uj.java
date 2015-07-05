import android.content.Context;
import javax.inject.Inject;
import javax.inject.Singleton;
import javax.net.ssl.SSLSocketFactory;

@Singleton
public final class uj
  implements tq
{
  private static final String TAG = "SquareOkHttpClientFactory";
  private static bly mSquareCertClient;
  private static bly mSquareNonCertClient;
  private Context mContext;
  
  @Inject
  protected uj(Context paramContext)
  {
    mContext = paramContext;
    if (mSquareNonCertClient == null) {
      mSquareNonCertClient = ui.a();
    }
    if (mSquareCertClient == null)
    {
      paramContext = ui.a();
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
    //   0: ldc 11
    //   2: ldc 56
    //   4: iconst_0
    //   5: anewarray 4	java/lang/Object
    //   8: invokestatic 62	com/snapchat/android/Timber:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   11: ldc 64
    //   13: invokestatic 70	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   16: astore_1
    //   17: aload_0
    //   18: getfield 24	uj:mContext	Landroid/content/Context;
    //   21: invokevirtual 76	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   24: ldc 77
    //   26: invokevirtual 83	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   29: astore_2
    //   30: aload_1
    //   31: aload_2
    //   32: ldc 85
    //   34: invokevirtual 91	java/lang/String:toCharArray	()[C
    //   37: invokevirtual 95	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   40: aload_2
    //   41: invokevirtual 100	java/io/InputStream:close	()V
    //   44: ldc 102
    //   46: invokestatic 107	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   49: astore_2
    //   50: invokestatic 113	javax/net/ssl/TrustManagerFactory:getDefaultAlgorithm	()Ljava/lang/String;
    //   53: invokestatic 116	javax/net/ssl/TrustManagerFactory:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   56: astore_3
    //   57: aload_3
    //   58: aload_1
    //   59: invokevirtual 120	javax/net/ssl/TrustManagerFactory:init	(Ljava/security/KeyStore;)V
    //   62: aload_2
    //   63: aconst_null
    //   64: aload_3
    //   65: invokevirtual 124	javax/net/ssl/TrustManagerFactory:getTrustManagers	()[Ljavax/net/ssl/TrustManager;
    //   68: aconst_null
    //   69: invokevirtual 127	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   72: aload_2
    //   73: invokevirtual 130	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   76: areturn
    //   77: astore_1
    //   78: aload_2
    //   79: invokevirtual 100	java/io/InputStream:close	()V
    //   82: aload_1
    //   83: athrow
    //   84: astore_1
    //   85: new 45	java/lang/AssertionError
    //   88: dup
    //   89: aload_1
    //   90: invokespecial 50	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   93: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	uj
    //   16	43	1	localKeyStore	java.security.KeyStore
    //   77	6	1	localObject1	Object
    //   84	6	1	localException	Exception
    //   29	50	2	localObject2	Object
    //   56	9	3	localTrustManagerFactory	javax.net.ssl.TrustManagerFactory
    // Exception table:
    //   from	to	target	type
    //   30	40	77	finally
    //   0	30	84	java/lang/Exception
    //   40	77	84	java/lang/Exception
    //   78	84	84	java/lang/Exception
  }
  
  public final bly a(String paramString)
  {
    if (azm.c())
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
 * Qualified Name:     uj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */