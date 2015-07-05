import android.graphics.Bitmap;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import java.io.ByteArrayInputStream;
import java.util.Random;

public final class awz
{
  private static final String TAG = "SnapVideoDecryptor";
  private final avp mBitmapLoader;
  private final nh mMemoryAnalytics;
  private final Random mRandom;
  private final awp mUnencryptedVideoCache;
  
  public awz()
  {
    this(new Random(), new avp(SnapchatApplication.b().getApplicationContext()), awq.UNENCRYPTED_VIDEO_CACHE, new nh());
  }
  
  private awz(@cgb Random paramRandom, @cgb avp paramavp, @cgb awp paramawp, @cgb nh paramnh)
  {
    mRandom = paramRandom;
    mBitmapLoader = paramavp;
    mUnencryptedVideoCache = paramawp;
    mMemoryAnalytics = paramnh;
  }
  
  /* Error */
  private awz.a a(@cgb String paramString, @cgb java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 68	mh
    //   3: dup
    //   4: ldc 11
    //   6: ldc 70
    //   8: invokespecial 73	mh:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   11: astore 4
    //   13: new 6	awz$a
    //   16: dup
    //   17: aload_0
    //   18: iconst_0
    //   19: invokespecial 76	awz$a:<init>	(Lawz;B)V
    //   22: astore 5
    //   24: new 78	java/util/zip/ZipInputStream
    //   27: dup
    //   28: aload_2
    //   29: invokespecial 81	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   32: astore 6
    //   34: aload 6
    //   36: invokevirtual 85	java/util/zip/ZipInputStream:getNextEntry	()Ljava/util/zip/ZipEntry;
    //   39: astore 7
    //   41: aload 7
    //   43: ifnull +199 -> 242
    //   46: aload 7
    //   48: invokevirtual 91	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   51: astore 7
    //   53: new 93	java/io/ByteArrayOutputStream
    //   56: dup
    //   57: invokespecial 94	java/io/ByteArrayOutputStream:<init>	()V
    //   60: astore 8
    //   62: sipush 1024
    //   65: newarray <illegal type>
    //   67: astore 9
    //   69: aload 6
    //   71: aload 9
    //   73: invokevirtual 98	java/util/zip/ZipInputStream:read	([B)I
    //   76: istore_3
    //   77: iload_3
    //   78: iconst_m1
    //   79: if_icmpeq +42 -> 121
    //   82: aload 8
    //   84: aload 9
    //   86: iconst_0
    //   87: iload_3
    //   88: invokevirtual 102	java/io/ByteArrayOutputStream:write	([BII)V
    //   91: goto -22 -> 69
    //   94: astore_1
    //   95: aload 6
    //   97: invokevirtual 105	java/util/zip/ZipInputStream:close	()V
    //   100: aload_1
    //   101: athrow
    //   102: astore_1
    //   103: ldc 11
    //   105: aload_1
    //   106: invokestatic 110	com/snapchat/android/Timber:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   109: aload_2
    //   110: invokevirtual 113	java/io/InputStream:close	()V
    //   113: aload 4
    //   115: invokestatic 116	com/snapchat/android/Timber:a	(Lmh;)V
    //   118: aload 5
    //   120: areturn
    //   121: aload 4
    //   123: ldc 118
    //   125: invokevirtual 121	mh:a	(Ljava/lang/String;)V
    //   128: aload 8
    //   130: invokevirtual 125	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   133: astore 8
    //   135: aload 7
    //   137: ldc 127
    //   139: invokevirtual 133	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   142: ifeq +80 -> 222
    //   145: new 135	avx$a
    //   148: dup
    //   149: invokespecial 136	avx$a:<init>	()V
    //   152: astore 9
    //   154: aload 9
    //   156: aload 8
    //   158: putfield 140	avx$a:mBytes	[B
    //   161: aload 9
    //   163: aload_1
    //   164: putfield 143	avx$a:mRequestId	Ljava/lang/String;
    //   167: aload 9
    //   169: iconst_0
    //   170: putfield 147	avx$a:mRequireExactDimensions	Z
    //   173: aload 9
    //   175: invokevirtual 150	avx$a:a	()Lavx;
    //   178: astore 8
    //   180: aload 5
    //   182: aload_0
    //   183: getfield 58	awz:mBitmapLoader	Lavp;
    //   186: aload 8
    //   188: invokevirtual 153	avp:a	(Lavx;)Lavo;
    //   191: getfield 159	avo:mBitmap	Landroid/graphics/Bitmap;
    //   194: putfield 162	awz$a:overlayBitmap	Landroid/graphics/Bitmap;
    //   197: aload 4
    //   199: new 164	java/lang/StringBuilder
    //   202: dup
    //   203: ldc -90
    //   205: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   208: aload 7
    //   210: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokevirtual 121	mh:a	(Ljava/lang/String;)V
    //   219: goto -185 -> 34
    //   222: aload 7
    //   224: ldc -79
    //   226: invokevirtual 133	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   229: ifeq -32 -> 197
    //   232: aload 5
    //   234: aload 8
    //   236: putfield 180	awz$a:videoData	[B
    //   239: goto -42 -> 197
    //   242: aload 6
    //   244: invokevirtual 105	java/util/zip/ZipInputStream:close	()V
    //   247: aload_2
    //   248: invokevirtual 113	java/io/InputStream:close	()V
    //   251: goto -138 -> 113
    //   254: astore_1
    //   255: ldc 11
    //   257: ldc -74
    //   259: iconst_0
    //   260: anewarray 4	java/lang/Object
    //   263: invokestatic 186	com/snapchat/android/Timber:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   266: goto -153 -> 113
    //   269: astore_1
    //   270: ldc 11
    //   272: ldc -74
    //   274: iconst_0
    //   275: anewarray 4	java/lang/Object
    //   278: invokestatic 186	com/snapchat/android/Timber:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   281: goto -168 -> 113
    //   284: astore_1
    //   285: aload_2
    //   286: invokevirtual 113	java/io/InputStream:close	()V
    //   289: aload_1
    //   290: athrow
    //   291: astore_2
    //   292: ldc 11
    //   294: ldc -74
    //   296: iconst_0
    //   297: anewarray 4	java/lang/Object
    //   300: invokestatic 186	com/snapchat/android/Timber:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   303: goto -14 -> 289
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	306	0	this	awz
    //   0	306	1	paramString	String
    //   0	306	2	paramInputStream	java.io.InputStream
    //   76	12	3	i	int
    //   11	187	4	localmh	mh
    //   22	211	5	locala	awz.a
    //   32	211	6	localZipInputStream	java.util.zip.ZipInputStream
    //   39	184	7	localObject1	Object
    //   60	175	8	localObject2	Object
    //   67	107	9	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   34	41	94	finally
    //   46	69	94	finally
    //   69	77	94	finally
    //   82	91	94	finally
    //   121	197	94	finally
    //   197	219	94	finally
    //   222	239	94	finally
    //   24	34	102	java/io/IOException
    //   95	102	102	java/io/IOException
    //   242	247	102	java/io/IOException
    //   247	251	254	java/io/IOException
    //   109	113	269	java/io/IOException
    //   24	34	284	finally
    //   95	102	284	finally
    //   103	109	284	finally
    //   242	247	284	finally
    //   285	289	291	java/io/IOException
  }
  
  @cgc
  public final aip a(@cgb awy paramawy, boolean paramBoolean1, boolean paramBoolean2)
  {
    mh localmh = new mh("SnapVideoDecryptor", "decrypt");
    if (paramawy == null) {
      throw new NullPointerException("videoSnapCacheInfo is null");
    }
    Object localObject1 = mCache;
    String str = mKey;
    localObject1 = ((awp)localObject1).a(str);
    if (localObject1 == null) {
      return null;
    }
    localmh.a("get " + str);
    Object localObject2 = mAlgorithm;
    paramawy = (awy)localObject1;
    if (localObject2 != null) {}
    for (;;)
    {
      try
      {
        paramawy = ((ayc)localObject2).b((byte[])localObject1);
        if (paramawy == null) {
          break;
        }
        localmh.a("decrypt");
        if (!paramBoolean1) {
          break label341;
        }
        paramawy = a(str, new ByteArrayInputStream(paramawy));
        if (videoData == null) {
          break;
        }
        localObject1 = videoData;
        localmh.a("unzip");
        localObject2 = str + "#" + mRandom.nextLong();
      }
      catch (OutOfMemoryError paramawy)
      {
        nh.a(paramawy);
        return null;
      }
      try
      {
        mUnencryptedVideoCache.a((String)localObject2, (byte[])localObject1);
        localmh.a("put");
        localObject1 = new aip.a(mUnencryptedVideoCache, (String)localObject2);
        if (paramawy != null)
        {
          if (overlayBitmap == null) {
            break label318;
          }
          if (!paramBoolean2) {
            break label285;
          }
          ((aip.a)localObject1).a(avh.a(overlayBitmap, SnapchatApplication.b()));
        }
      }
      catch (aws paramawy)
      {
        Timber.f("SnapVideoDecryptor", "External storage not available to save unencrypted video", new Object[0]);
        return null;
        Timber.f("SnapVideoDecryptor", "Overlay bitmap is null while decrypting snap video!", new Object[0]);
        continue;
      }
      finally
      {
        Timber.a(localmh);
      }
      paramawy = new aip(mCache, mKey, mBitmap, (byte)0);
      Timber.a(localmh);
      return paramawy;
      label285:
      ((aip.a)localObject1).a(overlayBitmap);
      continue;
      label318:
      label341:
      localObject2 = null;
      localObject1 = paramawy;
      paramawy = (awy)localObject2;
    }
  }
  
  final class a
  {
    public Bitmap overlayBitmap = null;
    public byte[] videoData = null;
    
    private a() {}
  }
}

/* Location:
 * Qualified Name:     awz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */