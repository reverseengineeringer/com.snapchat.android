import android.util.Pair;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.inject.Inject;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.io.Charsets;

public final class aya
{
  private static final String FIELD_SEPARATOR_FOR_SIGNATURE = "|";
  private static final String FILENAME = "device_token_1";
  private static final String SECURE_HASH_ALGORITHM = "HmacSHA256";
  private static final String TAG = "DeviceTokenManager";
  private static final int TRUNCATED_SIZE_IN_BYTES = 10;
  private static aya sInstance;
  private final pk mApiTaskFactory;
  private final azn mDeveloperSettings;
  protected axz mDeviceToken;
  protected ExecutorService mExecutorService = auh.MISCELLANEOUS_EXECUTOR;
  private final ato mGsonWrapper;
  protected boolean mIsFetchingDeviceTokenFromServer = false;
  private final Object mMutex = new Object();
  private final ayg mSlightlySecurePreferences;
  
  @Inject
  protected aya(ayg paramayg, ato paramato, pk parampk, azn paramazn)
  {
    mSlightlySecurePreferences = paramayg;
    mGsonWrapper = paramato;
    mApiTaskFactory = parampk;
    mDeveloperSettings = paramazn;
  }
  
  public static aya a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = SnapchatApplication.b().c().a();
      }
      aya localaya = sInstance;
      return localaya;
    }
    finally {}
  }
  
  public static String a(axz paramaxz, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramaxz = new SecretKeySpec(mValue.getBytes(Charsets.UTF_8), "HmacSHA256");
    try
    {
      Mac localMac = Mac.getInstance("HmacSHA256");
      localMac.init(paramaxz);
      paramaxz = new String(Hex.encodeHex(Arrays.copyOf(localMac.doFinal((paramString1 + "|" + paramString2 + "|" + paramString3 + "|" + paramString4).getBytes(Charsets.UTF_8)), 10))).toLowerCase(Locale.ENGLISH);
      return paramaxz;
    }
    catch (NoSuchAlgorithmException paramaxz)
    {
      Timber.a("DeviceTokenManager", paramaxz);
      return null;
    }
    catch (InvalidKeyException paramaxz)
    {
      for (;;) {}
    }
  }
  
  private void a(String paramString)
  {
    String str = paramString;
    if (mDeveloperSettings.c())
    {
      str = paramString;
      if (mDeviceToken != null) {
        str = paramString + "\n" + mDeviceToken.mId;
      }
      AlertDialogUtils.a(str, SnapchatApplication.b().getApplicationContext(), 1);
    }
    Timber.c("DeviceTokenManager", str, new Object[0]);
  }
  
  @cgc
  private axz c()
  {
    File localFile = d();
    if ((localFile == null) || (!localFile.exists())) {
      return null;
    }
    Object localObject = mSlightlySecurePreferences.a(ayj.DEVICE_TOKEN_1_KEY_AND_IV);
    if (localObject == null) {}
    for (localObject = null; localObject == null; localObject = (axu)mGsonWrapper.a((String)localObject, axu.class))
    {
      localFile.delete();
      return null;
    }
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(localFile));
    long l = localFile.length();
    if (l > 2147483647L) {
      throw new IOException("Cannot read files larger than 2147483647 bytes");
    }
    int i = (int)l;
    byte[] arrayOfByte = new byte[i];
    localBufferedInputStream.read(arrayOfByte, 0, i);
    localBufferedInputStream.close();
    localObject = new CbcEncryptionAlgorithm(mKey, mIv).b(arrayOfByte, "no dataId provided");
    if (localObject != null) {
      try
      {
        localObject = (axz)mGsonWrapper.a(new String((byte[])localObject), axz.class);
        return (axz)localObject;
      }
      catch (JsonSyntaxException localJsonSyntaxException)
      {
        Timber.a("DeviceTokenManager", localJsonSyntaxException);
      }
    }
    localFile.delete();
    return null;
  }
  
  @cgc
  private static File d()
  {
    File localFile3 = new File(axa.sInternalCacheDirectory.getAbsolutePath() + "/Snapchat");
    File localFile2 = new File(localFile3, "device_token_1");
    File localFile1 = localFile2;
    if (!localFile3.exists())
    {
      localFile1 = localFile2;
      if (!localFile3.mkdirs()) {
        localFile1 = null;
      }
    }
    return localFile1;
  }
  
  @caq
  @cgc
  public final Pair<String, String> a(String paramString1, String paramString2, String paramString3)
  {
    b(false);
    if ((mDeviceToken != null) && (mDeviceToken.mId != null) && (mDeviceToken.mValue != null))
    {
      paramString1 = a(mDeviceToken, paramString1, paramString1, paramString2, paramString3);
      return Pair.create(mDeviceToken.mId, paramString1);
    }
    return null;
  }
  
  @caq
  @cgc
  public final axz a(boolean paramBoolean)
  {
    b(paramBoolean);
    return mDeviceToken;
  }
  
  /* Error */
  public final void a(@cgc axz paramaxz)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 48	aya:mMutex	Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_0
    //   8: aload_1
    //   9: putfield 175	aya:mDeviceToken	Laxz;
    //   12: aload_0
    //   13: iconst_0
    //   14: putfield 50	aya:mIsFetchingDeviceTokenFromServer	Z
    //   17: aload_0
    //   18: getfield 175	aya:mDeviceToken	Laxz;
    //   21: ifnonnull +6 -> 27
    //   24: aload_2
    //   25: monitorexit
    //   26: return
    //   27: aload_2
    //   28: monitorexit
    //   29: ldc 19
    //   31: ldc_w 312
    //   34: iconst_0
    //   35: anewarray 4	java/lang/Object
    //   38: invokestatic 192	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   41: aload_0
    //   42: getfield 61	aya:mGsonWrapper	Lato;
    //   45: aload_0
    //   46: getfield 175	aya:mDeviceToken	Laxz;
    //   49: invokevirtual 315	ato:a	(Ljava/lang/Object;)Ljava/lang/String;
    //   52: invokevirtual 318	java/lang/String:getBytes	()[B
    //   55: astore_1
    //   56: new 257	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   59: dup
    //   60: invokespecial 319	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	()V
    //   63: astore_2
    //   64: new 221	axu
    //   67: dup
    //   68: aload_2
    //   69: invokevirtual 321	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:a	()Ljava/lang/String;
    //   72: aload_2
    //   73: invokevirtual 323	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:b	()Ljava/lang/String;
    //   76: invokespecial 324	axu:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   79: astore_3
    //   80: aload_0
    //   81: getfield 59	aya:mSlightlySecurePreferences	Layg;
    //   84: getstatic 211	ayj:DEVICE_TOKEN_1_KEY_AND_IV	Layh;
    //   87: aload_0
    //   88: getfield 61	aya:mGsonWrapper	Lato;
    //   91: aload_3
    //   92: invokevirtual 315	ato:a	(Ljava/lang/Object;)Ljava/lang/String;
    //   95: invokevirtual 327	ayg:a	(Layh;Ljava/lang/String;)V
    //   98: aload_2
    //   99: aload_1
    //   100: ldc_w 268
    //   103: invokevirtual 329	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:a	([BLjava/lang/String;)[B
    //   106: astore_3
    //   107: aload_3
    //   108: ifnull +95 -> 203
    //   111: invokestatic 200	aya:d	()Ljava/io/File;
    //   114: astore_2
    //   115: aload_2
    //   116: ifnull +87 -> 203
    //   119: aconst_null
    //   120: astore_1
    //   121: aload_2
    //   122: invokevirtual 219	java/io/File:delete	()Z
    //   125: pop
    //   126: aload_2
    //   127: invokevirtual 332	java/io/File:createNewFile	()Z
    //   130: pop
    //   131: new 334	java/io/BufferedOutputStream
    //   134: dup
    //   135: new 336	java/io/FileOutputStream
    //   138: dup
    //   139: aload_2
    //   140: invokespecial 337	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   143: invokespecial 340	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   146: astore_2
    //   147: aload_2
    //   148: astore_1
    //   149: aload_2
    //   150: aload_3
    //   151: invokevirtual 343	java/io/BufferedOutputStream:write	([B)V
    //   154: aload_2
    //   155: invokestatic 348	bfo:a	(Ljava/io/Closeable;)V
    //   158: return
    //   159: astore_1
    //   160: aload_2
    //   161: monitorexit
    //   162: aload_1
    //   163: athrow
    //   164: astore_3
    //   165: aconst_null
    //   166: astore_2
    //   167: aload_2
    //   168: astore_1
    //   169: ldc 19
    //   171: aload_3
    //   172: invokestatic 167	com/snapchat/android/Timber:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   175: aload_2
    //   176: invokestatic 348	bfo:a	(Ljava/io/Closeable;)V
    //   179: return
    //   180: astore_3
    //   181: aload_1
    //   182: astore_2
    //   183: aload_3
    //   184: astore_1
    //   185: aload_2
    //   186: invokestatic 348	bfo:a	(Ljava/io/Closeable;)V
    //   189: aload_1
    //   190: athrow
    //   191: astore_3
    //   192: aload_1
    //   193: astore_2
    //   194: aload_3
    //   195: astore_1
    //   196: goto -11 -> 185
    //   199: astore_3
    //   200: goto -33 -> 167
    //   203: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	204	0	this	aya
    //   0	204	1	paramaxz	axz
    //   4	190	2	localObject1	Object
    //   79	72	3	localObject2	Object
    //   164	8	3	localIOException1	IOException
    //   180	4	3	localObject3	Object
    //   191	4	3	localObject4	Object
    //   199	1	3	localIOException2	IOException
    // Exception table:
    //   from	to	target	type
    //   7	26	159	finally
    //   27	29	159	finally
    //   160	162	159	finally
    //   121	147	164	java/io/IOException
    //   121	147	180	finally
    //   149	154	191	finally
    //   169	175	191	finally
    //   149	154	199	java/io/IOException
  }
  
  @avl
  public final void b()
  {
    Runnable local1 = new Runnable()
    {
      public final void run()
      {
        b(true);
      }
    };
    mExecutorService.execute(local1);
  }
  
  @caq
  protected final void b(boolean paramBoolean)
  {
    mSlightlySecurePreferences.a();
    synchronized (mMutex)
    {
      if (mDeviceToken != null)
      {
        a("Device token successfully fetched in memory.");
        return;
      }
    }
  }
  
  public final String c(boolean paramBoolean)
  {
    axz localaxz = a(paramBoolean);
    if (localaxz == null) {
      return null;
    }
    return ayf.b(mId);
  }
}

/* Location:
 * Qualified Name:     aya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */