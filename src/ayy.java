import android.util.Pair;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.SnapchatApplication;
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

public final class ayy
{
  private static final String FIELD_SEPARATOR_FOR_SIGNATURE = "|";
  private static final String FILENAME = "device_token_1";
  private static final String SECURE_HASH_ALGORITHM = "HmacSHA256";
  private static final String TAG = "DeviceTokenManager";
  private static final int TRUNCATED_SIZE_IN_BYTES = 10;
  private static ayy sInstance;
  private final qb mApiTaskFactory;
  private final bam mDeveloperSettings;
  protected ayx mDeviceToken;
  protected ExecutorService mExecutorService = avf.MISCELLANEOUS_EXECUTOR;
  private final aum mGsonWrapper;
  protected boolean mIsFetchingDeviceTokenFromServer = false;
  private final Object mMutex = new Object();
  private final aze mSlightlySecurePreferences;
  
  @Inject
  protected ayy(aze paramaze, aum paramaum, qb paramqb, bam parambam)
  {
    mSlightlySecurePreferences = paramaze;
    mGsonWrapper = paramaum;
    mApiTaskFactory = paramqb;
    mDeveloperSettings = parambam;
  }
  
  public static ayy a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = SnapchatApplication.b().c().a();
      }
      ayy localayy = sInstance;
      return localayy;
    }
    finally {}
  }
  
  public static String a(ayx paramayx, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramayx = new SecretKeySpec(mValue.getBytes(Charsets.UTF_8), "HmacSHA256");
    try
    {
      Mac localMac = Mac.getInstance("HmacSHA256");
      localMac.init(paramayx);
      paramayx = new String(Hex.encodeHex(Arrays.copyOf(localMac.doFinal((paramString1 + "|" + paramString2 + "|" + paramString3 + "|" + paramString4).getBytes(Charsets.UTF_8)), 10))).toLowerCase(Locale.ENGLISH);
      return paramayx;
    }
    catch (NoSuchAlgorithmException paramayx)
    {
      return null;
    }
    catch (InvalidKeyException paramayx)
    {
      for (;;) {}
    }
  }
  
  private void a(String paramString)
  {
    if (mDeveloperSettings.c())
    {
      String str = paramString;
      if (mDeviceToken != null) {
        str = paramString + "\n" + mDeviceToken.mId;
      }
      AlertDialogUtils.a(str, SnapchatApplication.b().getApplicationContext(), 1);
    }
  }
  
  @chd
  private ayx c()
  {
    File localFile = d();
    if ((localFile == null) || (!localFile.exists())) {
      return null;
    }
    Object localObject = mSlightlySecurePreferences.a(azh.DEVICE_TOKEN_1_KEY_AND_IV);
    if (localObject == null) {}
    for (localObject = null; localObject == null; localObject = (ays)mGsonWrapper.a((String)localObject, ays.class))
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
        localObject = (ayx)mGsonWrapper.a(new String((byte[])localObject), ayx.class);
        return (ayx)localObject;
      }
      catch (JsonSyntaxException localJsonSyntaxException) {}
    }
    localFile.delete();
    return null;
  }
  
  @chd
  private static File d()
  {
    File localFile3 = new File(axy.sInternalCacheDirectory.getAbsolutePath() + "/Snapchat");
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
  
  @cbr
  @chd
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
  
  @cbr
  @chd
  public final ayx a(boolean paramBoolean)
  {
    b(paramBoolean);
    return mDeviceToken;
  }
  
  /* Error */
  public final void a(@chd ayx paramayx)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 48	ayy:mMutex	Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_0
    //   8: aload_1
    //   9: putfield 170	ayy:mDeviceToken	Layx;
    //   12: aload_0
    //   13: iconst_0
    //   14: putfield 50	ayy:mIsFetchingDeviceTokenFromServer	Z
    //   17: aload_0
    //   18: getfield 170	ayy:mDeviceToken	Layx;
    //   21: ifnonnull +6 -> 27
    //   24: aload_2
    //   25: monitorexit
    //   26: return
    //   27: aload_2
    //   28: monitorexit
    //   29: aload_0
    //   30: getfield 61	ayy:mGsonWrapper	Laum;
    //   33: aload_0
    //   34: getfield 170	ayy:mDeviceToken	Layx;
    //   37: invokevirtual 305	aum:a	(Ljava/lang/Object;)Ljava/lang/String;
    //   40: invokevirtual 308	java/lang/String:getBytes	()[B
    //   43: astore_1
    //   44: new 249	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   47: dup
    //   48: invokespecial 309	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	()V
    //   51: astore_2
    //   52: new 213	ays
    //   55: dup
    //   56: aload_2
    //   57: invokevirtual 311	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:a	()Ljava/lang/String;
    //   60: aload_2
    //   61: invokevirtual 313	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:b	()Ljava/lang/String;
    //   64: invokespecial 314	ays:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: astore_3
    //   68: aload_0
    //   69: getfield 59	ayy:mSlightlySecurePreferences	Laze;
    //   72: getstatic 203	azh:DEVICE_TOKEN_1_KEY_AND_IV	Lazf;
    //   75: aload_0
    //   76: getfield 61	ayy:mGsonWrapper	Laum;
    //   79: aload_3
    //   80: invokevirtual 305	aum:a	(Ljava/lang/Object;)Ljava/lang/String;
    //   83: invokevirtual 317	aze:a	(Lazf;Ljava/lang/String;)V
    //   86: aload_2
    //   87: aload_1
    //   88: ldc_w 260
    //   91: invokevirtual 319	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:a	([BLjava/lang/String;)[B
    //   94: astore_3
    //   95: aload_3
    //   96: ifnull +81 -> 177
    //   99: invokestatic 192	ayy:d	()Ljava/io/File;
    //   102: astore_1
    //   103: aload_1
    //   104: ifnull +73 -> 177
    //   107: aconst_null
    //   108: astore_2
    //   109: aload_1
    //   110: invokevirtual 211	java/io/File:delete	()Z
    //   113: pop
    //   114: aload_1
    //   115: invokevirtual 322	java/io/File:createNewFile	()Z
    //   118: pop
    //   119: new 324	java/io/BufferedOutputStream
    //   122: dup
    //   123: new 326	java/io/FileOutputStream
    //   126: dup
    //   127: aload_1
    //   128: invokespecial 327	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   131: invokespecial 330	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   134: astore_1
    //   135: aload_1
    //   136: aload_3
    //   137: invokevirtual 333	java/io/BufferedOutputStream:write	([B)V
    //   140: aload_1
    //   141: invokestatic 338	bgo:a	(Ljava/io/Closeable;)V
    //   144: return
    //   145: astore_1
    //   146: aload_2
    //   147: monitorexit
    //   148: aload_1
    //   149: athrow
    //   150: astore_1
    //   151: aconst_null
    //   152: astore_1
    //   153: aload_1
    //   154: invokestatic 338	bgo:a	(Ljava/io/Closeable;)V
    //   157: return
    //   158: astore_3
    //   159: aload_2
    //   160: astore_1
    //   161: aload_3
    //   162: astore_2
    //   163: aload_1
    //   164: invokestatic 338	bgo:a	(Ljava/io/Closeable;)V
    //   167: aload_2
    //   168: athrow
    //   169: astore_2
    //   170: goto -7 -> 163
    //   173: astore_2
    //   174: goto -21 -> 153
    //   177: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	this	ayy
    //   0	178	1	paramayx	ayx
    //   4	164	2	localObject1	Object
    //   169	1	2	localObject2	Object
    //   173	1	2	localIOException	IOException
    //   67	70	3	localObject3	Object
    //   158	4	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   7	26	145	finally
    //   27	29	145	finally
    //   146	148	145	finally
    //   109	135	150	java/io/IOException
    //   109	135	158	finally
    //   135	140	169	finally
    //   135	140	173	java/io/IOException
  }
  
  @awj
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
  
  @cbr
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
    ayx localayx = a(paramBoolean);
    if (localayx == null) {
      return null;
    }
    return azd.b(mId);
  }
}

/* Location:
 * Qualified Name:     ayy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */