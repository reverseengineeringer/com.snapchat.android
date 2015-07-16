import android.content.ContentResolver;
import android.content.res.Resources;

public final class axi
  implements axf
{
  private static final String TAG = "EncryptedFileBitmapSource";
  private final aza mEncryptionAlgorithm;
  private final String mPath;
  
  public axi(@chc String paramString, @chc aza paramaza)
  {
    mPath = paramString;
    mEncryptionAlgorithm = paramaza;
  }
  
  /* Error */
  public final android.graphics.Bitmap a(android.graphics.BitmapFactory.Options paramOptions)
  {
    // Byte code:
    //   0: new 31	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 21	axi:mPath	Ljava/lang/String;
    //   8: invokespecial 34	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore 5
    //   13: aload 5
    //   15: invokevirtual 38	java/io/File:length	()J
    //   18: lstore_3
    //   19: lload_3
    //   20: ldc2_w 39
    //   23: lcmp
    //   24: ifle +5 -> 29
    //   27: aconst_null
    //   28: areturn
    //   29: lload_3
    //   30: l2i
    //   31: istore_2
    //   32: iload_2
    //   33: newarray <illegal type>
    //   35: astore 8
    //   37: new 42	java/io/BufferedInputStream
    //   40: dup
    //   41: new 44	java/io/FileInputStream
    //   44: dup
    //   45: aload 5
    //   47: invokespecial 47	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   50: invokespecial 50	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   53: astore 6
    //   55: aload 6
    //   57: astore 5
    //   59: aload 6
    //   61: aload 8
    //   63: iconst_0
    //   64: iload_2
    //   65: invokevirtual 56	java/io/InputStream:read	([BII)I
    //   68: pop
    //   69: aload 6
    //   71: invokestatic 61	bgo:a	(Ljava/io/Closeable;)V
    //   74: aload_0
    //   75: getfield 23	axi:mEncryptionAlgorithm	Laza;
    //   78: aload 8
    //   80: invokeinterface 67 2 0
    //   85: astore 5
    //   87: aload 5
    //   89: ifnull -62 -> 27
    //   92: aload 5
    //   94: iconst_0
    //   95: aload 5
    //   97: arraylength
    //   98: aload_1
    //   99: invokestatic 73	android/graphics/BitmapFactory:decodeByteArray	([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   102: areturn
    //   103: astore 7
    //   105: aconst_null
    //   106: astore 6
    //   108: aload 6
    //   110: astore 5
    //   112: aload 7
    //   114: invokestatic 79	android/util/Log:getStackTraceString	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   117: pop
    //   118: aload 6
    //   120: invokestatic 61	bgo:a	(Ljava/io/Closeable;)V
    //   123: goto -49 -> 74
    //   126: astore_1
    //   127: aconst_null
    //   128: astore 5
    //   130: aload 5
    //   132: invokestatic 61	bgo:a	(Ljava/io/Closeable;)V
    //   135: aload_1
    //   136: athrow
    //   137: astore_1
    //   138: goto -8 -> 130
    //   141: astore 7
    //   143: goto -35 -> 108
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	this	axi
    //   0	146	1	paramOptions	android.graphics.BitmapFactory.Options
    //   31	34	2	i	int
    //   18	12	3	l	long
    //   11	120	5	localObject	Object
    //   53	66	6	localBufferedInputStream	java.io.BufferedInputStream
    //   103	10	7	localIOException1	java.io.IOException
    //   141	1	7	localIOException2	java.io.IOException
    //   35	44	8	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   37	55	103	java/io/IOException
    //   37	55	126	finally
    //   59	69	137	finally
    //   112	118	137	finally
    //   59	69	141	java/io/IOException
  }
  
  public final void a(ContentResolver paramContentResolver, Resources paramResources) {}
}

/* Location:
 * Qualified Name:     axi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */