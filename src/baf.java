import android.content.Context;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.DefaultHttpClient;

public final class baf
  implements blb
{
  private static final String ANR_TRACE_FILE = "/data/anr/traces.txt";
  private static final int MAX_DUMP_SIZE = 204800;
  private static final String TAG = "HOCKEYAPPREPORTER";
  final bag mAnrTraceBuilder;
  private final Context mContext;
  protected final String mFileDirectory;
  private final String mHockeyAppId;
  private final boolean mShouldUploadDump;
  
  public baf(@cgb Context paramContext, @cgb String paramString, boolean paramBoolean)
  {
    this(paramContext, paramString, paramBoolean, new bag());
  }
  
  private baf(@cgb Context paramContext, @cgb String paramString, boolean paramBoolean, @cgb bag parambag)
  {
    mContext = paramContext;
    mHockeyAppId = paramString;
    mShouldUploadDump = paramBoolean;
    mAnrTraceBuilder = parambag;
    paramContext = paramContext.getFilesDir();
    if (paramContext == null) {
      throw new NullPointerException();
    }
    mFileDirectory = paramContext.getAbsolutePath();
  }
  
  /* Error */
  @cgc
  private String a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	baf:mContext	Landroid/content/Context;
    //   4: ifnonnull +285 -> 289
    //   7: aconst_null
    //   8: astore 9
    //   10: invokestatic 75	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   13: invokevirtual 78	java/util/UUID:toString	()Ljava/lang/String;
    //   16: astore 10
    //   18: new 80	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   25: aload_0
    //   26: getfield 65	baf:mFileDirectory	Ljava/lang/String;
    //   29: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc 87
    //   34: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload 10
    //   39: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: ldc 89
    //   44: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: astore 7
    //   52: ldc 18
    //   54: new 80	java/lang/StringBuilder
    //   57: dup
    //   58: ldc 92
    //   60: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: aload 7
    //   65: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: iconst_0
    //   72: anewarray 4	java/lang/Object
    //   75: invokestatic 101	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   78: new 103	java/io/RandomAccessFile
    //   81: dup
    //   82: ldc 12
    //   84: ldc 105
    //   86: invokespecial 108	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   89: astore 6
    //   91: new 110	java/io/FileOutputStream
    //   94: dup
    //   95: aload 7
    //   97: invokespecial 111	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   100: astore 11
    //   102: iconst_0
    //   103: istore_1
    //   104: lconst_0
    //   105: lstore_3
    //   106: aload 6
    //   108: astore 8
    //   110: aload 11
    //   112: astore 7
    //   114: aload 6
    //   116: invokeinterface 116 1 0
    //   121: astore 12
    //   123: iload_1
    //   124: istore_2
    //   125: aload 12
    //   127: ifnull +143 -> 270
    //   130: iload_1
    //   131: istore_2
    //   132: lload_3
    //   133: ldc2_w 117
    //   136: lcmp
    //   137: ifge +133 -> 270
    //   140: iload_1
    //   141: istore_2
    //   142: aload 6
    //   144: astore 8
    //   146: aload 11
    //   148: astore 7
    //   150: aload 12
    //   152: new 80	java/lang/StringBuilder
    //   155: dup
    //   156: ldc 120
    //   158: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   161: aload 9
    //   163: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokevirtual 126	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   172: ifeq +5 -> 177
    //   175: iconst_1
    //   176: istore_2
    //   177: iload_2
    //   178: istore_1
    //   179: iload_2
    //   180: ifeq -74 -> 106
    //   183: aload 6
    //   185: astore 8
    //   187: aload 11
    //   189: astore 7
    //   191: new 80	java/lang/StringBuilder
    //   194: dup
    //   195: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   198: aload 12
    //   200: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: ldc -128
    //   205: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokevirtual 132	java/lang/String:getBytes	()[B
    //   214: astore 13
    //   216: aload 6
    //   218: astore 8
    //   220: aload 11
    //   222: astore 7
    //   224: lload_3
    //   225: aload 13
    //   227: arraylength
    //   228: i2l
    //   229: ladd
    //   230: lstore_3
    //   231: aload 6
    //   233: astore 8
    //   235: aload 11
    //   237: astore 7
    //   239: aload 11
    //   241: aload 13
    //   243: invokevirtual 136	java/io/FileOutputStream:write	([B)V
    //   246: aload 6
    //   248: astore 8
    //   250: aload 11
    //   252: astore 7
    //   254: aload 12
    //   256: ldc -118
    //   258: invokevirtual 126	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   261: istore 5
    //   263: iload_2
    //   264: istore_1
    //   265: iload 5
    //   267: ifeq -161 -> 106
    //   270: iload_2
    //   271: ifne +30 -> 301
    //   274: aload 6
    //   276: checkcast 140	java/io/Closeable
    //   279: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   282: aload 11
    //   284: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   287: aconst_null
    //   288: areturn
    //   289: aload_0
    //   290: getfield 42	baf:mContext	Landroid/content/Context;
    //   293: invokevirtual 148	android/content/Context:getPackageName	()Ljava/lang/String;
    //   296: astore 9
    //   298: goto -288 -> 10
    //   301: aload 6
    //   303: astore 8
    //   305: aload 11
    //   307: astore 7
    //   309: aload 11
    //   311: invokevirtual 151	java/io/FileOutputStream:flush	()V
    //   314: aload 6
    //   316: astore 8
    //   318: aload 11
    //   320: astore 7
    //   322: new 80	java/lang/StringBuilder
    //   325: dup
    //   326: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   329: aload 10
    //   331: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: ldc 89
    //   336: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   342: astore 9
    //   344: aload 6
    //   346: checkcast 140	java/io/Closeable
    //   349: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   352: aload 11
    //   354: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   357: aload 9
    //   359: areturn
    //   360: astore 10
    //   362: aconst_null
    //   363: astore 6
    //   365: aconst_null
    //   366: astore 9
    //   368: aload 9
    //   370: astore 8
    //   372: aload 6
    //   374: astore 7
    //   376: aload 10
    //   378: invokevirtual 154	java/io/IOException:printStackTrace	()V
    //   381: aload 9
    //   383: instanceof 140
    //   386: ifeq +11 -> 397
    //   389: aload 9
    //   391: checkcast 140	java/io/Closeable
    //   394: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   397: aload 6
    //   399: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   402: aconst_null
    //   403: areturn
    //   404: astore 8
    //   406: aconst_null
    //   407: astore 7
    //   409: aconst_null
    //   410: astore 6
    //   412: aload 6
    //   414: instanceof 140
    //   417: ifeq +11 -> 428
    //   420: aload 6
    //   422: checkcast 140	java/io/Closeable
    //   425: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   428: aload 7
    //   430: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   433: aload 8
    //   435: athrow
    //   436: astore 8
    //   438: aconst_null
    //   439: astore 7
    //   441: goto -29 -> 412
    //   444: astore 9
    //   446: aload 8
    //   448: astore 6
    //   450: aload 9
    //   452: astore 8
    //   454: goto -42 -> 412
    //   457: astore 10
    //   459: aconst_null
    //   460: astore 7
    //   462: aload 6
    //   464: astore 9
    //   466: aload 7
    //   468: astore 6
    //   470: goto -102 -> 368
    //   473: astore 10
    //   475: aload 6
    //   477: astore 9
    //   479: aload 11
    //   481: astore 6
    //   483: goto -115 -> 368
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	486	0	this	baf
    //   103	162	1	i	int
    //   124	147	2	j	int
    //   105	126	3	l	long
    //   261	5	5	bool	boolean
    //   89	393	6	localObject1	Object
    //   50	417	7	localObject2	Object
    //   108	263	8	localObject3	Object
    //   404	30	8	localObject4	Object
    //   436	11	8	localObject5	Object
    //   452	1	8	localObject6	Object
    //   8	382	9	str1	String
    //   444	7	9	localObject7	Object
    //   464	14	9	localObject8	Object
    //   16	314	10	str2	String
    //   360	17	10	localIOException1	IOException
    //   457	1	10	localIOException2	IOException
    //   473	1	10	localIOException3	IOException
    //   100	380	11	localFileOutputStream	java.io.FileOutputStream
    //   121	134	12	str3	String
    //   214	28	13	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   10	91	360	java/io/IOException
    //   10	91	404	finally
    //   91	102	436	finally
    //   114	123	444	finally
    //   150	175	444	finally
    //   191	216	444	finally
    //   224	231	444	finally
    //   239	246	444	finally
    //   254	263	444	finally
    //   309	314	444	finally
    //   322	344	444	finally
    //   376	381	444	finally
    //   91	102	457	java/io/IOException
    //   114	123	473	java/io/IOException
    //   150	175	473	java/io/IOException
    //   191	216	473	java/io/IOException
    //   224	231	473	java/io/IOException
    //   239	246	473	java/io/IOException
    //   254	263	473	java/io/IOException
    //   309	314	473	java/io/IOException
    //   322	344	473	java/io/IOException
  }
  
  /* Error */
  @cgc
  private String b(@cgb String paramString)
  {
    // Byte code:
    //   0: invokestatic 75	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   3: invokevirtual 78	java/util/UUID:toString	()Ljava/lang/String;
    //   6: astore 4
    //   8: new 80	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   15: aload_0
    //   16: getfield 65	baf:mFileDirectory	Ljava/lang/String;
    //   19: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: bipush 47
    //   24: invokevirtual 162	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   27: aload 4
    //   29: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc -92
    //   34: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: astore_2
    //   41: ldc 18
    //   43: new 80	java/lang/StringBuilder
    //   46: dup
    //   47: ldc -90
    //   49: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   52: aload_2
    //   53: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: iconst_0
    //   60: anewarray 4	java/lang/Object
    //   63: invokestatic 101	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   66: aload_0
    //   67: getfield 42	baf:mContext	Landroid/content/Context;
    //   70: invokevirtual 170	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   73: aload_0
    //   74: getfield 42	baf:mContext	Landroid/content/Context;
    //   77: invokevirtual 148	android/content/Context:getPackageName	()Ljava/lang/String;
    //   80: iconst_0
    //   81: invokevirtual 176	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   84: astore 5
    //   86: new 178	java/io/BufferedWriter
    //   89: dup
    //   90: new 180	java/io/FileWriter
    //   93: dup
    //   94: aload_2
    //   95: invokespecial 181	java/io/FileWriter:<init>	(Ljava/lang/String;)V
    //   98: invokespecial 184	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   101: astore_2
    //   102: aload_2
    //   103: astore_3
    //   104: aload_2
    //   105: new 80	java/lang/StringBuilder
    //   108: dup
    //   109: ldc -70
    //   111: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   114: aload 5
    //   116: getfield 191	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   119: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: bipush 10
    //   124: invokevirtual 162	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   127: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokevirtual 193	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   133: aload_2
    //   134: astore_3
    //   135: aload_2
    //   136: new 80	java/lang/StringBuilder
    //   139: dup
    //   140: ldc -61
    //   142: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: aload 5
    //   147: getfield 198	android/content/pm/PackageInfo:versionCode	I
    //   150: invokevirtual 201	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   153: bipush 10
    //   155: invokevirtual 162	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   158: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokevirtual 193	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   164: aload_2
    //   165: astore_3
    //   166: aload_2
    //   167: new 80	java/lang/StringBuilder
    //   170: dup
    //   171: ldc -53
    //   173: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   176: getstatic 208	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   179: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: bipush 10
    //   184: invokevirtual 162	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   187: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokevirtual 193	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   193: aload_2
    //   194: astore_3
    //   195: aload_2
    //   196: new 80	java/lang/StringBuilder
    //   199: dup
    //   200: ldc -46
    //   202: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   205: getstatic 215	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   208: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: bipush 10
    //   213: invokevirtual 162	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   216: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: invokevirtual 193	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   222: aload_2
    //   223: astore_3
    //   224: aload_2
    //   225: new 80	java/lang/StringBuilder
    //   228: dup
    //   229: ldc -39
    //   231: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   234: getstatic 220	android/os/Build:MODEL	Ljava/lang/String;
    //   237: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: bipush 10
    //   242: invokevirtual 162	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   245: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   248: invokevirtual 193	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   251: aload_2
    //   252: astore_3
    //   253: aload_2
    //   254: new 80	java/lang/StringBuilder
    //   257: dup
    //   258: ldc -34
    //   260: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   263: new 224	java/util/Date
    //   266: dup
    //   267: invokespecial 225	java/util/Date:<init>	()V
    //   270: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   273: bipush 10
    //   275: invokevirtual 162	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   278: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   281: invokevirtual 193	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   284: aload_2
    //   285: astore_3
    //   286: aload_2
    //   287: ldc -128
    //   289: invokevirtual 193	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   292: aload_2
    //   293: astore_3
    //   294: aload_2
    //   295: aload_1
    //   296: invokevirtual 193	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   299: aload_2
    //   300: astore_3
    //   301: aload_2
    //   302: invokevirtual 229	java/io/BufferedWriter:flush	()V
    //   305: aload_2
    //   306: astore_3
    //   307: new 80	java/lang/StringBuilder
    //   310: dup
    //   311: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   314: aload 4
    //   316: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: ldc -92
    //   321: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   327: astore_1
    //   328: aload_2
    //   329: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   332: aload_1
    //   333: areturn
    //   334: astore_1
    //   335: aconst_null
    //   336: astore_2
    //   337: aload_2
    //   338: astore_3
    //   339: aload_1
    //   340: invokevirtual 232	java/lang/Exception:printStackTrace	()V
    //   343: aload_2
    //   344: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   347: aconst_null
    //   348: areturn
    //   349: astore_1
    //   350: aconst_null
    //   351: astore_3
    //   352: aload_3
    //   353: invokestatic 145	bfo:a	(Ljava/io/Closeable;)V
    //   356: aload_1
    //   357: athrow
    //   358: astore_1
    //   359: goto -7 -> 352
    //   362: astore_1
    //   363: goto -26 -> 337
    //   366: astore_1
    //   367: aconst_null
    //   368: astore_2
    //   369: goto -32 -> 337
    //   372: astore_1
    //   373: goto -36 -> 337
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	376	0	this	baf
    //   0	376	1	paramString	String
    //   40	329	2	localObject1	Object
    //   103	250	3	localObject2	Object
    //   6	309	4	str	String
    //   84	62	5	localPackageInfo	android.content.pm.PackageInfo
    // Exception table:
    //   from	to	target	type
    //   0	102	334	java/io/IOException
    //   0	102	349	finally
    //   104	133	358	finally
    //   135	164	358	finally
    //   166	193	358	finally
    //   195	222	358	finally
    //   224	251	358	finally
    //   253	284	358	finally
    //   286	292	358	finally
    //   294	299	358	finally
    //   301	305	358	finally
    //   307	328	358	finally
    //   339	343	358	finally
    //   104	133	362	java/io/IOException
    //   135	164	362	java/io/IOException
    //   166	193	362	java/io/IOException
    //   195	222	362	java/io/IOException
    //   224	251	362	java/io/IOException
    //   253	284	362	java/io/IOException
    //   286	292	362	java/io/IOException
    //   294	299	362	java/io/IOException
    //   301	305	362	java/io/IOException
    //   307	328	362	java/io/IOException
    //   0	102	366	android/content/pm/PackageManager$NameNotFoundException
    //   104	133	372	android/content/pm/PackageManager$NameNotFoundException
    //   135	164	372	android/content/pm/PackageManager$NameNotFoundException
    //   166	193	372	android/content/pm/PackageManager$NameNotFoundException
    //   195	222	372	android/content/pm/PackageManager$NameNotFoundException
    //   224	251	372	android/content/pm/PackageManager$NameNotFoundException
    //   253	284	372	android/content/pm/PackageManager$NameNotFoundException
    //   286	292	372	android/content/pm/PackageManager$NameNotFoundException
    //   294	299	372	android/content/pm/PackageManager$NameNotFoundException
    //   301	305	372	android/content/pm/PackageManager$NameNotFoundException
    //   307	328	372	android/content/pm/PackageManager$NameNotFoundException
  }
  
  final void a(@cgb String paramString)
  {
    String str = b(paramString);
    if (str == null) {
      return;
    }
    if (mShouldUploadDump) {}
    for (paramString = a();; paramString = null) {
      try
      {
        HttpPost localHttpPost = new HttpPost("https://rink.hockeyapp.net/api/2/apps/" + mHockeyAppId + "/crashes/upload");
        MultipartEntityBuilder localMultipartEntityBuilder = MultipartEntityBuilder.create();
        localMultipartEntityBuilder.addPart("log", new FileBody(new File(mFileDirectory, str)));
        if (paramString != null) {
          localMultipartEntityBuilder.addPart("description", new FileBody(new File(mFileDirectory, paramString)));
        }
        localHttpPost.setEntity(localMultipartEntityBuilder.build());
        new DefaultHttpClient().execute(localHttpPost);
        return;
      }
      catch (IOException localIOException)
      {
        Timber.f("HOCKEYAPPREPORTER", "Failed to upload crashes: " + localIOException.getMessage(), new Object[0]);
        return;
      }
      finally
      {
        if (paramString != null) {
          new File(paramString).delete();
        }
        new File(str).delete();
      }
    }
  }
  
  public final void a(final String paramString, bla parambla)
  {
    paramString = new Runnable()
    {
      public final void run()
      {
        String str = paramString;
        bag.a[] arrayOfa = bag.IGNORED_METHODS;
        int j = arrayOfa.length;
        int i = 0;
        while (i < j)
        {
          bag.a locala = arrayOfa[i];
          str = str.replaceAll(bag.a(mClassName, mMethodName), "ignore.$1");
          i += 1;
        }
        a(str);
      }
    };
    AsyncTask.THREAD_POOL_EXECUTOR.execute(paramString);
  }
}

/* Location:
 * Qualified Name:     baf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */