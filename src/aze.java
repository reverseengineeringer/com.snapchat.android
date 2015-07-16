import android.content.Context;
import android.os.Build;
import android.provider.Settings.Secure;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeyType;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.File;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import javax.crypto.spec.SecretKeySpec;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class aze
{
  private static final String BACKING_FILE = "/fdg78df67g5s6f2";
  private static final String BACKING_FILENAME = "fdg78df67g5s6f";
  private static final String HARDCODED_PASSWORD = "7f6as9d7f6dasf7";
  private static final String TAG = "SlightlySecurePreferences";
  private static final int VERSION = 2;
  public boolean mBackingFileIsEmpty;
  public boolean mBackingFileIsUpToDate;
  protected ExecutorService mExecutorService = avf.SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS;
  public final CountDownLatch mInitializationCountDownLatch = new CountDownLatch(1);
  @chc
  public final HashMap<azf, String> mMap = new HashMap();
  public boolean mShouldRunTasksInBackground = true;
  
  @chc
  public static SecretKeySpec a(Context paramContext)
  {
    Object localObject = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    paramContext = (Context)localObject;
    if (localObject == null) {
      paramContext = Build.FINGERPRINT;
    }
    localObject = MessageDigest.getInstance("MD5");
    ((MessageDigest)localObject).update(paramContext.getBytes());
    ((MessageDigest)localObject).update("7f6as9d7f6dasf7".getBytes());
    localObject = ((MessageDigest)localObject).digest();
    StringBuilder localStringBuilder = new StringBuilder();
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      for (paramContext = Integer.toHexString(localObject[i] & 0xFF); paramContext.length() < 2; paramContext = "0" + paramContext) {}
      localStringBuilder.append(paramContext);
      i += 1;
    }
    return new SecretKeySpec(localStringBuilder.toString().getBytes(), "AES");
  }
  
  private static SecretKeySpec b(Context paramContext)
  {
    Object localObject = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    paramContext = (Context)localObject;
    if (localObject == null) {
      paramContext = Build.FINGERPRINT;
    }
    localObject = MessageDigest.getInstance("MD5");
    ((MessageDigest)localObject).update(paramContext.getBytes());
    ((MessageDigest)localObject).update("seems legit...".getBytes());
    localObject = ((MessageDigest)localObject).digest();
    StringBuilder localStringBuilder = new StringBuilder();
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      for (paramContext = Integer.toHexString(localObject[i] & 0xFF); paramContext.length() < 2; paramContext = "0" + paramContext) {}
      localStringBuilder.append(paramContext);
      i += 1;
    }
    return new SecretKeySpec(localStringBuilder.toString().getBytes(), "AES");
  }
  
  @chd
  public final String a(@chc azf paramazf)
  {
    synchronized (mMap)
    {
      paramazf = (String)mMap.get(paramazf);
      return paramazf;
    }
  }
  
  @cbr
  public final void a()
  {
    try
    {
      mInitializationCountDownLatch.await();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  public final void a(@chc azf paramazf, @chd String paramString)
  {
    localHashMap = mMap;
    if (paramString == null) {}
    for (;;)
    {
      try
      {
        mMap.remove(paramazf);
        mBackingFileIsUpToDate = false;
        return;
      }
      finally {}
      mMap.put(paramazf, paramString);
    }
  }
  
  /* Error */
  public final boolean a(@chc File paramFile, @chd String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_1
    //   4: invokevirtual 180	java/io/File:isDirectory	()Z
    //   7: ifne +9 -> 16
    //   10: iconst_0
    //   11: istore 7
    //   13: iload 7
    //   15: ireturn
    //   16: aload_1
    //   17: new 182	azc
    //   20: dup
    //   21: ldc -72
    //   23: aconst_null
    //   24: invokespecial 187	azc:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   27: invokevirtual 191	java/io/File:listFiles	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   30: astore 11
    //   32: aload 11
    //   34: arraylength
    //   35: istore 5
    //   37: iconst_0
    //   38: istore_3
    //   39: iconst_0
    //   40: istore 6
    //   42: iload_3
    //   43: iload 5
    //   45: if_icmpge +216 -> 261
    //   48: aload 11
    //   50: iload_3
    //   51: aaload
    //   52: astore 12
    //   54: invokestatic 196	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   57: astore 9
    //   59: new 198	java/io/FileInputStream
    //   62: dup
    //   63: aload 12
    //   65: invokespecial 201	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   68: astore 8
    //   70: ldc -115
    //   72: invokestatic 206	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   75: astore 10
    //   77: aload 10
    //   79: iconst_2
    //   80: aload 9
    //   82: invokestatic 208	aze:b	(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    //   85: invokevirtual 212	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   88: new 214	javax/crypto/CipherInputStream
    //   91: dup
    //   92: aload 8
    //   94: aload 10
    //   96: invokespecial 217	javax/crypto/CipherInputStream:<init>	(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    //   99: astore 9
    //   101: aload 9
    //   103: ldc -37
    //   105: invokestatic 224	org/apache/commons/io/IOUtils:toString	(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    //   108: astore 10
    //   110: invokestatic 229	aul:a	()Lcom/google/gson/Gson;
    //   113: aload 10
    //   115: ldc 48
    //   117: invokevirtual 235	com/google/gson/Gson:fromJson	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   120: checkcast 48	java/util/HashMap
    //   123: astore 10
    //   125: aload 10
    //   127: getstatic 241	azh:CREDIT_CARD_TOKEN	Lazf;
    //   130: getfield 246	azf:mKey	Ljava/lang/String;
    //   133: invokevirtual 250	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   136: ifeq +24 -> 160
    //   139: aload_0
    //   140: getstatic 241	azh:CREDIT_CARD_TOKEN	Lazf;
    //   143: aload 10
    //   145: getstatic 241	azh:CREDIT_CARD_TOKEN	Lazf;
    //   148: getfield 246	azf:mKey	Ljava/lang/String;
    //   151: invokevirtual 154	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   154: checkcast 100	java/lang/String
    //   157: invokevirtual 252	aze:a	(Lazf;Ljava/lang/String;)V
    //   160: aload 10
    //   162: getstatic 255	azh:SQ_AUTH_TOKEN	Lazf;
    //   165: getfield 246	azf:mKey	Ljava/lang/String;
    //   168: invokevirtual 250	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   171: ifeq +24 -> 195
    //   174: aload_0
    //   175: getstatic 255	azh:SQ_AUTH_TOKEN	Lazf;
    //   178: aload 10
    //   180: getstatic 255	azh:SQ_AUTH_TOKEN	Lazf;
    //   183: getfield 246	azf:mKey	Ljava/lang/String;
    //   186: invokevirtual 154	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   189: checkcast 100	java/lang/String
    //   192: invokevirtual 252	aze:a	(Lazf;Ljava/lang/String;)V
    //   195: aload 9
    //   197: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   200: aload 8
    //   202: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   205: aload 12
    //   207: invokevirtual 263	java/io/File:delete	()Z
    //   210: ifeq +165 -> 375
    //   213: iconst_1
    //   214: istore 6
    //   216: iload_3
    //   217: iconst_1
    //   218: iadd
    //   219: istore_3
    //   220: goto -178 -> 42
    //   223: astore 8
    //   225: aconst_null
    //   226: astore 8
    //   228: aconst_null
    //   229: astore 9
    //   231: aload 8
    //   233: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   236: aload 9
    //   238: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   241: goto -36 -> 205
    //   244: astore_1
    //   245: aconst_null
    //   246: astore_2
    //   247: aconst_null
    //   248: astore 8
    //   250: aload_2
    //   251: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   254: aload 8
    //   256: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   259: aload_1
    //   260: athrow
    //   261: aload_1
    //   262: new 182	azc
    //   265: dup
    //   266: ldc 20
    //   268: aload_2
    //   269: invokespecial 187	azc:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   272: invokevirtual 191	java/io/File:listFiles	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   275: astore_1
    //   276: aload_1
    //   277: arraylength
    //   278: istore 5
    //   280: iload 4
    //   282: istore_3
    //   283: iload_3
    //   284: iload 5
    //   286: if_icmpge +22 -> 308
    //   289: aload_1
    //   290: iload_3
    //   291: aaload
    //   292: invokevirtual 263	java/io/File:delete	()Z
    //   295: ifeq +6 -> 301
    //   298: iconst_1
    //   299: istore 6
    //   301: iload_3
    //   302: iconst_1
    //   303: iadd
    //   304: istore_3
    //   305: goto -22 -> 283
    //   308: iload 6
    //   310: istore 7
    //   312: iload 6
    //   314: ifeq -301 -> 13
    //   317: invokestatic 268	akk:a	()Lakk;
    //   320: invokevirtual 271	akk:c	()V
    //   323: invokestatic 275	axo:b	()V
    //   326: iload 6
    //   328: ireturn
    //   329: astore_1
    //   330: aconst_null
    //   331: astore_2
    //   332: goto -82 -> 250
    //   335: astore_1
    //   336: aload 9
    //   338: astore_2
    //   339: goto -89 -> 250
    //   342: astore 9
    //   344: aconst_null
    //   345: astore 10
    //   347: aload 8
    //   349: astore 9
    //   351: aload 10
    //   353: astore 8
    //   355: goto -124 -> 231
    //   358: astore 10
    //   360: aload 8
    //   362: astore 10
    //   364: aload 9
    //   366: astore 8
    //   368: aload 10
    //   370: astore 9
    //   372: goto -141 -> 231
    //   375: goto -159 -> 216
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	378	0	this	aze
    //   0	378	1	paramFile	File
    //   0	378	2	paramString	String
    //   38	267	3	i	int
    //   1	280	4	j	int
    //   35	252	5	k	int
    //   40	287	6	bool1	boolean
    //   11	300	7	bool2	boolean
    //   68	133	8	localFileInputStream	java.io.FileInputStream
    //   223	1	8	localException1	Exception
    //   226	141	8	localObject1	Object
    //   57	280	9	localObject2	Object
    //   342	1	9	localException2	Exception
    //   349	22	9	localObject3	Object
    //   75	277	10	localObject4	Object
    //   358	1	10	localException3	Exception
    //   362	7	10	localObject5	Object
    //   30	19	11	arrayOfFile	File[]
    //   52	154	12	localFile	File
    // Exception table:
    //   from	to	target	type
    //   59	70	223	java/lang/Exception
    //   59	70	244	finally
    //   70	101	329	finally
    //   101	160	335	finally
    //   160	195	335	finally
    //   70	101	342	java/lang/Exception
    //   101	160	358	java/lang/Exception
    //   160	195	358	java/lang/Exception
  }
  
  /* Error */
  public final boolean b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aconst_null
    //   7: astore 6
    //   9: aload_0
    //   10: getfield 67	aze:mShouldRunTasksInBackground	Z
    //   13: ifeq +6 -> 19
    //   16: invokestatic 278	bhp:b	()V
    //   19: invokestatic 196	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   22: astore 7
    //   24: aload_0
    //   25: getfield 167	aze:mBackingFileIsUpToDate	Z
    //   28: ifeq +5 -> 33
    //   31: iconst_1
    //   32: ireturn
    //   33: aload_0
    //   34: iconst_1
    //   35: putfield 167	aze:mBackingFileIsUpToDate	Z
    //   38: aload 7
    //   40: invokevirtual 282	android/content/Context:getCacheDir	()Ljava/io/File;
    //   43: astore_2
    //   44: aload_2
    //   45: ifnonnull +5 -> 50
    //   48: iconst_0
    //   49: ireturn
    //   50: new 176	java/io/File
    //   53: dup
    //   54: new 113	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   61: aload_2
    //   62: invokevirtual 285	java/io/File:getPath	()Ljava/lang/String;
    //   65: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc 17
    //   70: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokespecial 286	java/io/File:<init>	(Ljava/lang/String;)V
    //   79: astore_2
    //   80: aload_2
    //   81: invokevirtual 289	java/io/File:exists	()Z
    //   84: ifne +35 -> 119
    //   87: aload_2
    //   88: invokevirtual 292	java/io/File:createNewFile	()Z
    //   91: istore_1
    //   92: iload_1
    //   93: ifne +26 -> 119
    //   96: iconst_0
    //   97: ireturn
    //   98: astore_2
    //   99: invokestatic 297	com/snapchat/android/util/debug/ReleaseManager:e	()Z
    //   102: ifeq +15 -> 117
    //   105: new 299	java/lang/RuntimeException
    //   108: dup
    //   109: ldc_w 301
    //   112: aload_2
    //   113: invokespecial 304	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   116: athrow
    //   117: iconst_0
    //   118: ireturn
    //   119: new 306	java/io/FileOutputStream
    //   122: dup
    //   123: aload_2
    //   124: invokespecial 307	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   127: astore_2
    //   128: aload_2
    //   129: astore_3
    //   130: aload 5
    //   132: astore 4
    //   134: ldc -115
    //   136: invokestatic 206	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   139: astore 8
    //   141: aload_2
    //   142: astore_3
    //   143: aload 5
    //   145: astore 4
    //   147: aload 8
    //   149: iconst_1
    //   150: aload 7
    //   152: invokestatic 309	aze:a	(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    //   155: invokevirtual 212	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   158: aload_2
    //   159: astore_3
    //   160: aload 5
    //   162: astore 4
    //   164: new 311	javax/crypto/CipherOutputStream
    //   167: dup
    //   168: aload_2
    //   169: aload 8
    //   171: invokespecial 314	javax/crypto/CipherOutputStream:<init>	(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    //   174: astore 5
    //   176: aload_0
    //   177: getfield 51	aze:mMap	Ljava/util/HashMap;
    //   180: astore_3
    //   181: aload_3
    //   182: monitorenter
    //   183: new 8	aze$2
    //   186: dup
    //   187: aload_0
    //   188: invokespecial 317	aze$2:<init>	(Laze;)V
    //   191: invokevirtual 321	aze$2:getType	()Ljava/lang/reflect/Type;
    //   194: astore 4
    //   196: invokestatic 229	aul:a	()Lcom/google/gson/Gson;
    //   199: aload_0
    //   200: getfield 51	aze:mMap	Ljava/util/HashMap;
    //   203: aload 4
    //   205: invokevirtual 325	com/google/gson/Gson:toJson	(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    //   208: astore 4
    //   210: aload_3
    //   211: monitorexit
    //   212: aload 5
    //   214: aload 4
    //   216: invokevirtual 104	java/lang/String:getBytes	()[B
    //   219: invokevirtual 328	javax/crypto/CipherOutputStream:write	([B)V
    //   222: aload 5
    //   224: invokevirtual 331	javax/crypto/CipherOutputStream:flush	()V
    //   227: aload_2
    //   228: invokevirtual 334	java/io/OutputStream:flush	()V
    //   231: aload 5
    //   233: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   236: aload_2
    //   237: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   240: aload_0
    //   241: iconst_0
    //   242: putfield 336	aze:mBackingFileIsEmpty	Z
    //   245: iconst_1
    //   246: ireturn
    //   247: astore 4
    //   249: aload_3
    //   250: monitorexit
    //   251: aload 4
    //   253: athrow
    //   254: astore_3
    //   255: aload 5
    //   257: astore 6
    //   259: aload_3
    //   260: astore 5
    //   262: aload_2
    //   263: astore_3
    //   264: aload 6
    //   266: astore 4
    //   268: invokestatic 297	com/snapchat/android/util/debug/ReleaseManager:e	()Z
    //   271: ifeq +40 -> 311
    //   274: aload_2
    //   275: astore_3
    //   276: aload 6
    //   278: astore 4
    //   280: new 299	java/lang/RuntimeException
    //   283: dup
    //   284: ldc_w 338
    //   287: aload 5
    //   289: invokespecial 304	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   292: athrow
    //   293: astore 5
    //   295: aload_3
    //   296: astore_2
    //   297: aload 5
    //   299: astore_3
    //   300: aload 4
    //   302: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   305: aload_2
    //   306: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   309: aload_3
    //   310: athrow
    //   311: aload 6
    //   313: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   316: aload_2
    //   317: invokestatic 260	bgo:a	(Ljava/io/Closeable;)V
    //   320: iconst_0
    //   321: ireturn
    //   322: astore_3
    //   323: aconst_null
    //   324: astore_2
    //   325: goto -25 -> 300
    //   328: astore_3
    //   329: aload 5
    //   331: astore 4
    //   333: goto -33 -> 300
    //   336: astore 5
    //   338: aconst_null
    //   339: astore_2
    //   340: goto -78 -> 262
    //   343: astore 5
    //   345: goto -83 -> 262
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	348	0	this	aze
    //   91	2	1	bool	boolean
    //   43	45	2	localFile	File
    //   98	26	2	localException1	Exception
    //   127	213	2	localObject1	Object
    //   254	6	3	localException2	Exception
    //   263	47	3	localObject3	Object
    //   322	1	3	localObject4	Object
    //   328	1	3	localObject5	Object
    //   4	211	4	localObject6	Object
    //   247	5	4	localObject7	Object
    //   266	66	4	localObject8	Object
    //   1	287	5	localObject9	Object
    //   293	37	5	localObject10	Object
    //   336	1	5	localException3	Exception
    //   343	1	5	localException4	Exception
    //   7	305	6	localObject11	Object
    //   22	129	7	localSnapchatApplication	SnapchatApplication
    //   139	31	8	localCipher	javax.crypto.Cipher
    // Exception table:
    //   from	to	target	type
    //   38	44	98	java/lang/Exception
    //   50	92	98	java/lang/Exception
    //   183	212	247	finally
    //   249	251	247	finally
    //   176	183	254	java/lang/Exception
    //   212	231	254	java/lang/Exception
    //   251	254	254	java/lang/Exception
    //   134	141	293	finally
    //   147	158	293	finally
    //   164	176	293	finally
    //   268	274	293	finally
    //   280	293	293	finally
    //   119	128	322	finally
    //   176	183	328	finally
    //   212	231	328	finally
    //   251	254	328	finally
    //   119	128	336	java/lang/Exception
    //   134	141	343	java/lang/Exception
    //   147	158	343	java/lang/Exception
    //   164	176	343	java/lang/Exception
  }
  
  public final void c()
  {
    for (;;)
    {
      synchronized (mMap)
      {
        Iterator localIterator = mMap.keySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        if (nextmType == SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT)
        {
          i = 1;
          if (i == 0) {
            continue;
          }
          localIterator.remove();
          mBackingFileIsUpToDate = false;
        }
      }
      int i = 0;
    }
    if (!mBackingFileIsUpToDate) {
      mExecutorService.execute(new Runnable()
      {
        public final void run()
        {
          synchronized (mMap)
          {
            int i = mMap.size();
            if (i <= 0) {
              break label77;
            }
            if (b()) {}
          }
          synchronized (mMap)
          {
            mMap.clear();
            e();
            return;
            localObject1 = finally;
            throw ((Throwable)localObject1);
          }
          label77:
          e();
        }
      });
    }
  }
  
  public final void d()
  {
    if (mBackingFileIsEmpty) {}
    do
    {
      return;
      for (;;)
      {
        synchronized (mMap)
        {
          Iterator localIterator = mMap.keySet().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          if (nextmType == SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN)
          {
            i = 1;
            if (i == 0) {
              continue;
            }
            localIterator.remove();
            mBackingFileIsUpToDate = false;
          }
        }
        int i = 0;
      }
    } while (mBackingFileIsUpToDate);
    mExecutorService.execute(new Runnable()
    {
      public final void run()
      {
        b();
      }
    });
  }
  
  protected final void e()
  {
    if (mShouldRunTasksInBackground) {
      bhp.b();
    }
    if (mBackingFileIsEmpty) {}
    do
    {
      for (;;)
      {
        return;
        try
        {
          File localFile = SnapchatApplication.b().getCacheDir();
          if (localFile != null)
          {
            a(localFile, null);
            mBackingFileIsEmpty = true;
            return;
          }
        }
        catch (Exception localException) {}
      }
    } while (!ReleaseManager.e());
    throw new RuntimeException(localException);
  }
}

/* Location:
 * Qualified Name:     aze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */