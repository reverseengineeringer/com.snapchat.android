import android.content.Context;
import android.os.AsyncTask;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.DefaultHttpClient;

public final class bbf
  implements bmc
{
  private static final String ANR_TRACE_FILE = "/data/anr/traces.txt";
  private static final int MAX_DUMP_SIZE = 204800;
  private static final String TAG = "HOCKEYAPPREPORTER";
  final bbg mAnrTraceBuilder;
  private final Context mContext;
  protected final String mFileDirectory;
  private final String mHockeyAppId;
  private final boolean mShouldUploadDump;
  
  public bbf(@chc Context paramContext, @chc String paramString, boolean paramBoolean)
  {
    this(paramContext, paramString, paramBoolean, new bbg());
  }
  
  private bbf(@chc Context paramContext, @chc String paramString, boolean paramBoolean, @chc bbg parambbg)
  {
    mContext = paramContext;
    mHockeyAppId = paramString;
    mShouldUploadDump = paramBoolean;
    mAnrTraceBuilder = parambbg;
    paramContext = paramContext.getFilesDir();
    if (paramContext == null) {
      throw new NullPointerException();
    }
    mFileDirectory = paramContext.getAbsolutePath();
  }
  
  /* Error */
  @chd
  private String a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	bbf:mContext	Landroid/content/Context;
    //   4: ifnonnull +211 -> 215
    //   7: aconst_null
    //   8: astore 8
    //   10: invokestatic 75	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   13: invokevirtual 78	java/util/UUID:toString	()Ljava/lang/String;
    //   16: astore 9
    //   18: new 80	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   25: aload_0
    //   26: getfield 65	bbf:mFileDirectory	Ljava/lang/String;
    //   29: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc 87
    //   34: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload 9
    //   39: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: ldc 89
    //   44: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: astore 7
    //   52: new 92	java/io/RandomAccessFile
    //   55: dup
    //   56: ldc 12
    //   58: ldc 94
    //   60: invokespecial 97	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   63: astore 6
    //   65: new 99	java/io/FileOutputStream
    //   68: dup
    //   69: aload 7
    //   71: invokespecial 102	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   74: astore 7
    //   76: iconst_0
    //   77: istore_1
    //   78: lconst_0
    //   79: lstore_3
    //   80: aload 6
    //   82: invokeinterface 107 1 0
    //   87: astore 10
    //   89: iload_1
    //   90: istore_2
    //   91: aload 10
    //   93: ifnull +103 -> 196
    //   96: iload_1
    //   97: istore_2
    //   98: lload_3
    //   99: ldc2_w 108
    //   102: lcmp
    //   103: ifge +93 -> 196
    //   106: iload_1
    //   107: istore_2
    //   108: aload 10
    //   110: new 80	java/lang/StringBuilder
    //   113: dup
    //   114: ldc 111
    //   116: invokespecial 112	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   119: aload 8
    //   121: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   127: invokevirtual 118	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   130: ifeq +5 -> 135
    //   133: iconst_1
    //   134: istore_2
    //   135: iload_2
    //   136: istore_1
    //   137: iload_2
    //   138: ifeq -58 -> 80
    //   141: new 80	java/lang/StringBuilder
    //   144: dup
    //   145: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   148: aload 10
    //   150: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: ldc 120
    //   155: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokevirtual 124	java/lang/String:getBytes	()[B
    //   164: astore 11
    //   166: lload_3
    //   167: aload 11
    //   169: arraylength
    //   170: i2l
    //   171: ladd
    //   172: lstore_3
    //   173: aload 7
    //   175: aload 11
    //   177: invokevirtual 128	java/io/FileOutputStream:write	([B)V
    //   180: aload 10
    //   182: ldc -126
    //   184: invokevirtual 118	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   187: istore 5
    //   189: iload_2
    //   190: istore_1
    //   191: iload 5
    //   193: ifeq -113 -> 80
    //   196: iload_2
    //   197: ifne +30 -> 227
    //   200: aload 6
    //   202: checkcast 132	java/io/Closeable
    //   205: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   208: aload 7
    //   210: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   213: aconst_null
    //   214: areturn
    //   215: aload_0
    //   216: getfield 42	bbf:mContext	Landroid/content/Context;
    //   219: invokevirtual 140	android/content/Context:getPackageName	()Ljava/lang/String;
    //   222: astore 8
    //   224: goto -214 -> 10
    //   227: aload 7
    //   229: invokevirtual 143	java/io/FileOutputStream:flush	()V
    //   232: new 80	java/lang/StringBuilder
    //   235: dup
    //   236: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   239: aload 9
    //   241: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: ldc 89
    //   246: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: astore 8
    //   254: aload 6
    //   256: checkcast 132	java/io/Closeable
    //   259: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   262: aload 7
    //   264: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   267: aload 8
    //   269: areturn
    //   270: astore 6
    //   272: aconst_null
    //   273: astore 6
    //   275: aconst_null
    //   276: astore 7
    //   278: aload 7
    //   280: instanceof 132
    //   283: ifeq +11 -> 294
    //   286: aload 7
    //   288: checkcast 132	java/io/Closeable
    //   291: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   294: aload 6
    //   296: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   299: aconst_null
    //   300: areturn
    //   301: astore 6
    //   303: aconst_null
    //   304: astore 7
    //   306: aconst_null
    //   307: astore 8
    //   309: aload 8
    //   311: instanceof 132
    //   314: ifeq +11 -> 325
    //   317: aload 8
    //   319: checkcast 132	java/io/Closeable
    //   322: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   325: aload 7
    //   327: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   330: aload 6
    //   332: athrow
    //   333: astore 9
    //   335: aconst_null
    //   336: astore 7
    //   338: aload 6
    //   340: astore 8
    //   342: aload 9
    //   344: astore 6
    //   346: goto -37 -> 309
    //   349: astore 9
    //   351: aload 6
    //   353: astore 8
    //   355: aload 9
    //   357: astore 6
    //   359: goto -50 -> 309
    //   362: astore 7
    //   364: aconst_null
    //   365: astore 8
    //   367: aload 6
    //   369: astore 7
    //   371: aload 8
    //   373: astore 6
    //   375: goto -97 -> 278
    //   378: astore 8
    //   380: aload 7
    //   382: astore 8
    //   384: aload 6
    //   386: astore 7
    //   388: aload 8
    //   390: astore 6
    //   392: goto -114 -> 278
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	395	0	this	bbf
    //   77	114	1	i	int
    //   90	107	2	j	int
    //   79	94	3	l	long
    //   187	5	5	bool	boolean
    //   63	192	6	localRandomAccessFile	java.io.RandomAccessFile
    //   270	1	6	localIOException1	IOException
    //   273	22	6	localCloseable	java.io.Closeable
    //   301	38	6	localObject1	Object
    //   344	47	6	localObject2	Object
    //   50	287	7	localObject3	Object
    //   362	1	7	localIOException2	IOException
    //   369	18	7	localObject4	Object
    //   8	364	8	localObject5	Object
    //   378	1	8	localIOException3	IOException
    //   382	7	8	localObject6	Object
    //   16	224	9	str1	String
    //   333	10	9	localObject7	Object
    //   349	7	9	localObject8	Object
    //   87	94	10	str2	String
    //   164	12	11	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   10	65	270	java/io/IOException
    //   10	65	301	finally
    //   65	76	333	finally
    //   80	89	349	finally
    //   108	133	349	finally
    //   141	189	349	finally
    //   227	254	349	finally
    //   65	76	362	java/io/IOException
    //   80	89	378	java/io/IOException
    //   108	133	378	java/io/IOException
    //   141	189	378	java/io/IOException
    //   227	254	378	java/io/IOException
  }
  
  /* Error */
  @chd
  private String b(@chc String paramString)
  {
    // Byte code:
    //   0: invokestatic 75	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   3: invokevirtual 78	java/util/UUID:toString	()Ljava/lang/String;
    //   6: astore 4
    //   8: new 80	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   15: aload_0
    //   16: getfield 65	bbf:mFileDirectory	Ljava/lang/String;
    //   19: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: bipush 47
    //   24: invokevirtual 151	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   27: aload 4
    //   29: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc -103
    //   34: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: astore_2
    //   41: aload_0
    //   42: getfield 42	bbf:mContext	Landroid/content/Context;
    //   45: invokevirtual 157	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   48: aload_0
    //   49: getfield 42	bbf:mContext	Landroid/content/Context;
    //   52: invokevirtual 140	android/content/Context:getPackageName	()Ljava/lang/String;
    //   55: iconst_0
    //   56: invokevirtual 163	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   59: astore 5
    //   61: new 165	java/io/BufferedWriter
    //   64: dup
    //   65: new 167	java/io/FileWriter
    //   68: dup
    //   69: aload_2
    //   70: invokespecial 168	java/io/FileWriter:<init>	(Ljava/lang/String;)V
    //   73: invokespecial 171	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   76: astore_2
    //   77: aload_2
    //   78: astore_3
    //   79: aload_2
    //   80: new 80	java/lang/StringBuilder
    //   83: dup
    //   84: ldc -83
    //   86: invokespecial 112	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: aload 5
    //   91: getfield 178	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   94: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: bipush 10
    //   99: invokevirtual 151	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   102: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: invokevirtual 180	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   108: aload_2
    //   109: astore_3
    //   110: aload_2
    //   111: new 80	java/lang/StringBuilder
    //   114: dup
    //   115: ldc -74
    //   117: invokespecial 112	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   120: aload 5
    //   122: getfield 185	android/content/pm/PackageInfo:versionCode	I
    //   125: invokevirtual 188	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   128: bipush 10
    //   130: invokevirtual 151	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   133: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: invokevirtual 180	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   139: aload_2
    //   140: astore_3
    //   141: aload_2
    //   142: new 80	java/lang/StringBuilder
    //   145: dup
    //   146: ldc -66
    //   148: invokespecial 112	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   151: getstatic 195	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   154: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: bipush 10
    //   159: invokevirtual 151	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   162: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokevirtual 180	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   168: aload_2
    //   169: astore_3
    //   170: aload_2
    //   171: new 80	java/lang/StringBuilder
    //   174: dup
    //   175: ldc -59
    //   177: invokespecial 112	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: getstatic 202	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   183: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: bipush 10
    //   188: invokevirtual 151	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   191: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokevirtual 180	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   197: aload_2
    //   198: astore_3
    //   199: aload_2
    //   200: new 80	java/lang/StringBuilder
    //   203: dup
    //   204: ldc -52
    //   206: invokespecial 112	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   209: getstatic 207	android/os/Build:MODEL	Ljava/lang/String;
    //   212: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: bipush 10
    //   217: invokevirtual 151	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   220: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: invokevirtual 180	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   226: aload_2
    //   227: astore_3
    //   228: aload_2
    //   229: new 80	java/lang/StringBuilder
    //   232: dup
    //   233: ldc -47
    //   235: invokespecial 112	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   238: new 211	java/util/Date
    //   241: dup
    //   242: invokespecial 212	java/util/Date:<init>	()V
    //   245: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   248: bipush 10
    //   250: invokevirtual 151	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   253: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   256: invokevirtual 180	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   259: aload_2
    //   260: astore_3
    //   261: aload_2
    //   262: ldc 120
    //   264: invokevirtual 180	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   267: aload_2
    //   268: astore_3
    //   269: aload_2
    //   270: aload_1
    //   271: invokevirtual 180	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   274: aload_2
    //   275: astore_3
    //   276: aload_2
    //   277: invokevirtual 216	java/io/BufferedWriter:flush	()V
    //   280: aload_2
    //   281: astore_3
    //   282: new 80	java/lang/StringBuilder
    //   285: dup
    //   286: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   289: aload 4
    //   291: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: ldc -103
    //   296: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   302: astore_1
    //   303: aload_2
    //   304: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   307: aload_1
    //   308: areturn
    //   309: astore_1
    //   310: aconst_null
    //   311: astore_2
    //   312: aload_2
    //   313: astore_3
    //   314: aload_1
    //   315: invokevirtual 221	java/lang/Exception:printStackTrace	()V
    //   318: aload_2
    //   319: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   322: aconst_null
    //   323: areturn
    //   324: astore_1
    //   325: aconst_null
    //   326: astore_3
    //   327: aload_3
    //   328: invokestatic 137	bgo:a	(Ljava/io/Closeable;)V
    //   331: aload_1
    //   332: athrow
    //   333: astore_1
    //   334: goto -7 -> 327
    //   337: astore_1
    //   338: goto -26 -> 312
    //   341: astore_1
    //   342: aconst_null
    //   343: astore_2
    //   344: goto -32 -> 312
    //   347: astore_1
    //   348: goto -36 -> 312
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	351	0	this	bbf
    //   0	351	1	paramString	String
    //   40	304	2	localObject1	Object
    //   78	250	3	localObject2	Object
    //   6	284	4	str	String
    //   59	62	5	localPackageInfo	android.content.pm.PackageInfo
    // Exception table:
    //   from	to	target	type
    //   0	77	309	java/io/IOException
    //   0	77	324	finally
    //   79	108	333	finally
    //   110	139	333	finally
    //   141	168	333	finally
    //   170	197	333	finally
    //   199	226	333	finally
    //   228	259	333	finally
    //   261	267	333	finally
    //   269	274	333	finally
    //   276	280	333	finally
    //   282	303	333	finally
    //   314	318	333	finally
    //   79	108	337	java/io/IOException
    //   110	139	337	java/io/IOException
    //   141	168	337	java/io/IOException
    //   170	197	337	java/io/IOException
    //   199	226	337	java/io/IOException
    //   228	259	337	java/io/IOException
    //   261	267	337	java/io/IOException
    //   269	274	337	java/io/IOException
    //   276	280	337	java/io/IOException
    //   282	303	337	java/io/IOException
    //   0	77	341	android/content/pm/PackageManager$NameNotFoundException
    //   79	108	347	android/content/pm/PackageManager$NameNotFoundException
    //   110	139	347	android/content/pm/PackageManager$NameNotFoundException
    //   141	168	347	android/content/pm/PackageManager$NameNotFoundException
    //   170	197	347	android/content/pm/PackageManager$NameNotFoundException
    //   199	226	347	android/content/pm/PackageManager$NameNotFoundException
    //   228	259	347	android/content/pm/PackageManager$NameNotFoundException
    //   261	267	347	android/content/pm/PackageManager$NameNotFoundException
    //   269	274	347	android/content/pm/PackageManager$NameNotFoundException
    //   276	280	347	android/content/pm/PackageManager$NameNotFoundException
    //   282	303	347	android/content/pm/PackageManager$NameNotFoundException
  }
  
  final void a(@chc String paramString)
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
        new StringBuilder("Failed to upload crashes: ").append(localIOException.getMessage());
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
  
  public final void a(final String paramString, bmb parambmb)
  {
    paramString = new Runnable()
    {
      public final void run()
      {
        String str = paramString;
        bbg.a[] arrayOfa = bbg.IGNORED_METHODS;
        int j = arrayOfa.length;
        int i = 0;
        while (i < j)
        {
          bbg.a locala = arrayOfa[i];
          str = str.replaceAll(bbg.a(mClassName, mMethodName), "ignore.$1");
          i += 1;
        }
        a(str);
      }
    };
    AsyncTask.THREAD_POOL_EXECUTOR.execute(paramString);
  }
}

/* Location:
 * Qualified Name:     bbf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */