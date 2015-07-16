import android.graphics.Bitmap;
import com.snapchat.android.SnapchatApplication;
import java.util.Random;

public final class axx
{
  private static final String TAG = "SnapVideoDecryptor";
  private final awn mBitmapLoader;
  private final ny mMemoryAnalytics;
  private final Random mRandom;
  private final axn mUnencryptedVideoCache;
  
  public axx()
  {
    this(new Random(), new awn(SnapchatApplication.b().getApplicationContext()), axo.UNENCRYPTED_VIDEO_CACHE, new ny());
  }
  
  private axx(@chc Random paramRandom, @chc awn paramawn, @chc axn paramaxn, @chc ny paramny)
  {
    mRandom = paramRandom;
    mBitmapLoader = paramawn;
    mUnencryptedVideoCache = paramaxn;
    mMemoryAnalytics = paramny;
  }
  
  /* Error */
  private axx.a a(@chc String paramString, @chc java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 6	axx$a
    //   3: dup
    //   4: aload_0
    //   5: iconst_0
    //   6: invokespecial 69	axx$a:<init>	(Laxx;B)V
    //   9: astore 4
    //   11: new 71	java/util/zip/ZipInputStream
    //   14: dup
    //   15: aload_2
    //   16: invokespecial 74	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   19: astore 5
    //   21: aload 5
    //   23: invokevirtual 78	java/util/zip/ZipInputStream:getNextEntry	()Ljava/util/zip/ZipEntry;
    //   26: astore 6
    //   28: aload 6
    //   30: ifnull +159 -> 189
    //   33: aload 6
    //   35: invokevirtual 84	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   38: astore 6
    //   40: new 86	java/io/ByteArrayOutputStream
    //   43: dup
    //   44: invokespecial 87	java/io/ByteArrayOutputStream:<init>	()V
    //   47: astore 7
    //   49: sipush 1024
    //   52: newarray <illegal type>
    //   54: astore 8
    //   56: aload 5
    //   58: aload 8
    //   60: invokevirtual 91	java/util/zip/ZipInputStream:read	([B)I
    //   63: istore_3
    //   64: iload_3
    //   65: iconst_m1
    //   66: if_icmpeq +31 -> 97
    //   69: aload 7
    //   71: aload 8
    //   73: iconst_0
    //   74: iload_3
    //   75: invokevirtual 95	java/io/ByteArrayOutputStream:write	([BII)V
    //   78: goto -22 -> 56
    //   81: astore_1
    //   82: aload 5
    //   84: invokevirtual 98	java/util/zip/ZipInputStream:close	()V
    //   87: aload_1
    //   88: athrow
    //   89: astore_1
    //   90: aload_2
    //   91: invokevirtual 101	java/io/InputStream:close	()V
    //   94: aload 4
    //   96: areturn
    //   97: aload 7
    //   99: invokevirtual 105	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   102: astore 7
    //   104: aload 6
    //   106: ldc 107
    //   108: invokevirtual 113	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   111: ifeq +58 -> 169
    //   114: new 115	awv$a
    //   117: dup
    //   118: invokespecial 116	awv$a:<init>	()V
    //   121: astore 6
    //   123: aload 6
    //   125: aload 7
    //   127: putfield 120	awv$a:mBytes	[B
    //   130: aload 6
    //   132: aload_1
    //   133: putfield 123	awv$a:mRequestId	Ljava/lang/String;
    //   136: aload 6
    //   138: iconst_0
    //   139: putfield 127	awv$a:mRequireExactDimensions	Z
    //   142: aload 6
    //   144: invokevirtual 130	awv$a:a	()Lawv;
    //   147: astore 6
    //   149: aload 4
    //   151: aload_0
    //   152: getfield 58	axx:mBitmapLoader	Lawn;
    //   155: aload 6
    //   157: invokevirtual 133	awn:a	(Lawv;)Lawm;
    //   160: getfield 139	awm:mBitmap	Landroid/graphics/Bitmap;
    //   163: putfield 142	axx$a:overlayBitmap	Landroid/graphics/Bitmap;
    //   166: goto -145 -> 21
    //   169: aload 6
    //   171: ldc -112
    //   173: invokevirtual 113	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   176: ifeq -155 -> 21
    //   179: aload 4
    //   181: aload 7
    //   183: putfield 147	axx$a:videoData	[B
    //   186: goto -165 -> 21
    //   189: aload 5
    //   191: invokevirtual 98	java/util/zip/ZipInputStream:close	()V
    //   194: aload_2
    //   195: invokevirtual 101	java/io/InputStream:close	()V
    //   198: aload 4
    //   200: areturn
    //   201: astore_1
    //   202: aload 4
    //   204: areturn
    //   205: astore_1
    //   206: aload_2
    //   207: invokevirtual 101	java/io/InputStream:close	()V
    //   210: aload_1
    //   211: athrow
    //   212: astore_1
    //   213: aload 4
    //   215: areturn
    //   216: astore_2
    //   217: goto -7 -> 210
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	220	0	this	axx
    //   0	220	1	paramString	String
    //   0	220	2	paramInputStream	java.io.InputStream
    //   63	12	3	i	int
    //   9	205	4	locala	axx.a
    //   19	171	5	localZipInputStream	java.util.zip.ZipInputStream
    //   26	144	6	localObject1	Object
    //   47	135	7	localObject2	Object
    //   54	18	8	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   21	28	81	finally
    //   33	56	81	finally
    //   56	64	81	finally
    //   69	78	81	finally
    //   97	166	81	finally
    //   169	186	81	finally
    //   11	21	89	java/io/IOException
    //   82	89	89	java/io/IOException
    //   189	194	89	java/io/IOException
    //   194	198	201	java/io/IOException
    //   11	21	205	finally
    //   82	89	205	finally
    //   189	194	205	finally
    //   90	94	212	java/io/IOException
    //   206	210	216	java/io/IOException
  }
  
  /* Error */
  @chd
  public final ajl a(@chc axw paramaxw, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +13 -> 14
    //   4: new 155	java/lang/NullPointerException
    //   7: dup
    //   8: ldc -99
    //   10: invokespecial 160	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_1
    //   15: getfield 165	axw:mCache	Laxn;
    //   18: astore 4
    //   20: aload_1
    //   21: getfield 168	axw:mKey	Ljava/lang/String;
    //   24: astore 6
    //   26: aload 4
    //   28: aload 6
    //   30: invokevirtual 173	axn:a	(Ljava/lang/String;)[B
    //   33: astore 4
    //   35: aload 4
    //   37: ifnonnull +5 -> 42
    //   40: aconst_null
    //   41: areturn
    //   42: aload_1
    //   43: getfield 177	axw:mAlgorithm	Laza;
    //   46: astore 5
    //   48: aload 4
    //   50: astore_1
    //   51: aload 5
    //   53: ifnull +17 -> 70
    //   56: aload 5
    //   58: aload 4
    //   60: invokeinterface 182 2 0
    //   65: astore_1
    //   66: aload_1
    //   67: ifnull -27 -> 40
    //   70: iload_2
    //   71: ifeq +172 -> 243
    //   74: aload_0
    //   75: aload 6
    //   77: new 184	java/io/ByteArrayInputStream
    //   80: dup
    //   81: aload_1
    //   82: invokespecial 187	java/io/ByteArrayInputStream:<init>	([B)V
    //   85: invokespecial 189	axx:a	(Ljava/lang/String;Ljava/io/InputStream;)Laxx$a;
    //   88: astore_1
    //   89: aload_1
    //   90: getfield 147	axx$a:videoData	[B
    //   93: ifnull -53 -> 40
    //   96: aload_1
    //   97: getfield 147	axx$a:videoData	[B
    //   100: astore 4
    //   102: new 191	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   109: aload 6
    //   111: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc -58
    //   116: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload_0
    //   120: getfield 56	axx:mRandom	Ljava/util/Random;
    //   123: invokevirtual 202	java/util/Random:nextLong	()J
    //   126: invokevirtual 205	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   129: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: astore 5
    //   134: aload_0
    //   135: getfield 60	axx:mUnencryptedVideoCache	Laxn;
    //   138: aload 5
    //   140: aload 4
    //   142: invokevirtual 211	axn:a	(Ljava/lang/String;[B)V
    //   145: new 213	ajl$a
    //   148: dup
    //   149: aload_0
    //   150: getfield 60	axx:mUnencryptedVideoCache	Laxn;
    //   153: aload 5
    //   155: invokespecial 216	ajl$a:<init>	(Laxn;Ljava/lang/String;)V
    //   158: astore 4
    //   160: aload_1
    //   161: ifnull +30 -> 191
    //   164: aload_1
    //   165: getfield 142	axx$a:overlayBitmap	Landroid/graphics/Bitmap;
    //   168: ifnull +23 -> 191
    //   171: iload_3
    //   172: ifeq +52 -> 224
    //   175: aload 4
    //   177: aload_1
    //   178: getfield 142	axx$a:overlayBitmap	Landroid/graphics/Bitmap;
    //   181: invokestatic 33	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   184: invokestatic 221	awf:a	(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    //   187: invokevirtual 224	ajl$a:a	(Landroid/graphics/Bitmap;)Lajl$a;
    //   190: pop
    //   191: new 226	ajl
    //   194: dup
    //   195: aload 4
    //   197: getfield 227	ajl$a:mCache	Laxn;
    //   200: aload 4
    //   202: getfield 228	ajl$a:mKey	Ljava/lang/String;
    //   205: aload 4
    //   207: getfield 229	ajl$a:mBitmap	Landroid/graphics/Bitmap;
    //   210: iconst_0
    //   211: invokespecial 232	ajl:<init>	(Laxn;Ljava/lang/String;Landroid/graphics/Bitmap;B)V
    //   214: astore_1
    //   215: aload_1
    //   216: areturn
    //   217: astore_1
    //   218: aload_1
    //   219: invokestatic 235	ny:a	(Ljava/lang/Throwable;)V
    //   222: aconst_null
    //   223: areturn
    //   224: aload 4
    //   226: aload_1
    //   227: getfield 142	axx$a:overlayBitmap	Landroid/graphics/Bitmap;
    //   230: invokevirtual 224	ajl$a:a	(Landroid/graphics/Bitmap;)Lajl$a;
    //   233: pop
    //   234: goto -43 -> 191
    //   237: astore_1
    //   238: aconst_null
    //   239: areturn
    //   240: astore_1
    //   241: aload_1
    //   242: athrow
    //   243: aconst_null
    //   244: astore 5
    //   246: aload_1
    //   247: astore 4
    //   249: aload 5
    //   251: astore_1
    //   252: goto -150 -> 102
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	255	0	this	axx
    //   0	255	1	paramaxw	axw
    //   0	255	2	paramBoolean1	boolean
    //   0	255	3	paramBoolean2	boolean
    //   18	230	4	localObject1	Object
    //   46	204	5	localObject2	Object
    //   24	86	6	str	String
    // Exception table:
    //   from	to	target	type
    //   56	66	217	java/lang/OutOfMemoryError
    //   134	160	237	axq
    //   164	171	237	axq
    //   175	191	237	axq
    //   191	215	237	axq
    //   224	234	237	axq
    //   134	160	240	finally
    //   164	171	240	finally
    //   175	191	240	finally
    //   191	215	240	finally
    //   224	234	240	finally
  }
  
  final class a
  {
    public Bitmap overlayBitmap = null;
    public byte[] videoData = null;
    
    private a() {}
  }
}

/* Location:
 * Qualified Name:     axx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */