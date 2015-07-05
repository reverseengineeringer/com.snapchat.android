import android.content.ContentResolver;
import android.content.res.Resources;

public final class awo
  implements awh
{
  private static final String TAG = "UriBitmapSource";
  private ContentResolver mContentResolver;
  private final String mUri;
  
  public awo(String paramString)
  {
    if (!paramString.startsWith("file://"))
    {
      mUri = ("file://" + paramString);
      return;
    }
    mUri = paramString;
  }
  
  /* Error */
  public final android.graphics.Bitmap a(android.graphics.BitmapFactory.Options paramOptions)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 49	awo:mContentResolver	Landroid/content/ContentResolver;
    //   6: ifnonnull +21 -> 27
    //   9: aload_2
    //   10: astore_1
    //   11: invokestatic 55	com/snapchat/android/util/debug/ReleaseManager:e	()Z
    //   14: ifeq +43 -> 57
    //   17: new 57	java/lang/IllegalStateException
    //   20: dup
    //   21: ldc 59
    //   23: invokespecial 60	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   26: athrow
    //   27: aload_0
    //   28: getfield 40	awo:mUri	Ljava/lang/String;
    //   31: invokestatic 66	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   34: astore_2
    //   35: aload_0
    //   36: getfield 49	awo:mContentResolver	Landroid/content/ContentResolver;
    //   39: aload_2
    //   40: invokevirtual 72	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   43: astore_2
    //   44: aload_2
    //   45: astore_3
    //   46: aload_2
    //   47: aconst_null
    //   48: aload_1
    //   49: invokestatic 78	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   52: astore_1
    //   53: aload_2
    //   54: invokestatic 83	bfo:a	(Ljava/io/Closeable;)V
    //   57: aload_1
    //   58: areturn
    //   59: astore_1
    //   60: aconst_null
    //   61: astore_2
    //   62: aload_2
    //   63: astore_3
    //   64: ldc 10
    //   66: aload_1
    //   67: invokestatic 88	com/snapchat/android/Timber:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   70: aload_2
    //   71: invokestatic 83	bfo:a	(Ljava/io/Closeable;)V
    //   74: aconst_null
    //   75: areturn
    //   76: astore_1
    //   77: aconst_null
    //   78: astore_3
    //   79: aload_3
    //   80: invokestatic 83	bfo:a	(Ljava/io/Closeable;)V
    //   83: aload_1
    //   84: athrow
    //   85: astore_1
    //   86: goto -7 -> 79
    //   89: astore_1
    //   90: goto -28 -> 62
    //   93: astore_1
    //   94: aconst_null
    //   95: astore_2
    //   96: goto -34 -> 62
    //   99: astore_1
    //   100: goto -38 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	this	awo
    //   0	103	1	paramOptions	android.graphics.BitmapFactory.Options
    //   1	95	2	localObject1	Object
    //   45	35	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   27	44	59	java/io/IOException
    //   27	44	76	finally
    //   46	53	85	finally
    //   64	70	85	finally
    //   46	53	89	java/io/IOException
    //   27	44	93	java/lang/IllegalArgumentException
    //   46	53	99	java/lang/IllegalArgumentException
  }
  
  public final void a(ContentResolver paramContentResolver, Resources paramResources)
  {
    mContentResolver = paramContentResolver;
  }
}

/* Location:
 * Qualified Name:     awo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */