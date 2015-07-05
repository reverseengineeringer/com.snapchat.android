import android.content.ContentResolver;
import android.content.res.Resources;

public final class awk
  implements awh
{
  private static final String TAG = "EncryptedFileBitmapSource";
  private final ayc mEncryptionAlgorithm;
  private final String mPath;
  
  public awk(@cgb String paramString, @cgb ayc paramayc)
  {
    mPath = paramString;
    mEncryptionAlgorithm = paramayc;
  }
  
  /* Error */
  public final android.graphics.Bitmap a(android.graphics.BitmapFactory.Options paramOptions)
  {
    // Byte code:
    //   0: new 31	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 21	awk:mPath	Ljava/lang/String;
    //   8: invokespecial 34	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore 5
    //   13: aload 5
    //   15: invokevirtual 38	java/io/File:length	()J
    //   18: lstore_3
    //   19: lload_3
    //   20: ldc2_w 39
    //   23: lcmp
    //   24: ifle +16 -> 40
    //   27: ldc 10
    //   29: ldc 42
    //   31: iconst_0
    //   32: anewarray 4	java/lang/Object
    //   35: invokestatic 48	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   38: aconst_null
    //   39: areturn
    //   40: lload_3
    //   41: l2i
    //   42: istore_2
    //   43: iload_2
    //   44: newarray <illegal type>
    //   46: astore 8
    //   48: new 50	java/io/BufferedInputStream
    //   51: dup
    //   52: new 52	java/io/FileInputStream
    //   55: dup
    //   56: aload 5
    //   58: invokespecial 55	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   61: invokespecial 58	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   64: astore 6
    //   66: aload 6
    //   68: astore 5
    //   70: aload 6
    //   72: aload 8
    //   74: iconst_0
    //   75: iload_2
    //   76: invokevirtual 64	java/io/InputStream:read	([BII)I
    //   79: pop
    //   80: aload 6
    //   82: invokestatic 69	bfo:a	(Ljava/io/Closeable;)V
    //   85: aload_0
    //   86: getfield 23	awk:mEncryptionAlgorithm	Layc;
    //   89: aload 8
    //   91: invokeinterface 75 2 0
    //   96: astore 5
    //   98: aload 5
    //   100: ifnull -62 -> 38
    //   103: aload 5
    //   105: iconst_0
    //   106: aload 5
    //   108: arraylength
    //   109: aload_1
    //   110: invokestatic 81	android/graphics/BitmapFactory:decodeByteArray	([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   113: areturn
    //   114: astore 7
    //   116: aconst_null
    //   117: astore 6
    //   119: aload 6
    //   121: astore 5
    //   123: ldc 10
    //   125: aload 7
    //   127: invokestatic 87	android/util/Log:getStackTraceString	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   130: iconst_0
    //   131: anewarray 4	java/lang/Object
    //   134: invokestatic 48	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   137: aload 6
    //   139: invokestatic 69	bfo:a	(Ljava/io/Closeable;)V
    //   142: goto -57 -> 85
    //   145: astore_1
    //   146: aconst_null
    //   147: astore 5
    //   149: aload 5
    //   151: invokestatic 69	bfo:a	(Ljava/io/Closeable;)V
    //   154: aload_1
    //   155: athrow
    //   156: astore_1
    //   157: goto -8 -> 149
    //   160: astore 7
    //   162: goto -43 -> 119
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	awk
    //   0	165	1	paramOptions	android.graphics.BitmapFactory.Options
    //   42	34	2	i	int
    //   18	23	3	l	long
    //   11	139	5	localObject	Object
    //   64	74	6	localBufferedInputStream	java.io.BufferedInputStream
    //   114	12	7	localIOException1	java.io.IOException
    //   160	1	7	localIOException2	java.io.IOException
    //   46	44	8	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   48	66	114	java/io/IOException
    //   48	66	145	finally
    //   70	80	156	finally
    //   123	137	156	finally
    //   70	80	160	java/io/IOException
  }
  
  public final void a(ContentResolver paramContentResolver, Resources paramResources) {}
}

/* Location:
 * Qualified Name:     awk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */