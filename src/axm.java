import android.content.ContentResolver;
import android.content.res.Resources;

public final class axm
  implements axf
{
  private static final String TAG = "UriBitmapSource";
  private ContentResolver mContentResolver;
  private final String mUri;
  
  public axm(String paramString)
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
    //   1: astore_3
    //   2: aconst_null
    //   3: astore_2
    //   4: aload_0
    //   5: getfield 49	axm:mContentResolver	Landroid/content/ContentResolver;
    //   8: ifnonnull +21 -> 29
    //   11: aload_2
    //   12: astore_1
    //   13: invokestatic 55	com/snapchat/android/util/debug/ReleaseManager:e	()Z
    //   16: ifeq +41 -> 57
    //   19: new 57	java/lang/IllegalStateException
    //   22: dup
    //   23: ldc 59
    //   25: invokespecial 60	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   28: athrow
    //   29: aload_0
    //   30: getfield 40	axm:mUri	Ljava/lang/String;
    //   33: invokestatic 66	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   36: astore_2
    //   37: aload_0
    //   38: getfield 49	axm:mContentResolver	Landroid/content/ContentResolver;
    //   41: aload_2
    //   42: invokevirtual 72	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   45: astore_2
    //   46: aload_2
    //   47: aconst_null
    //   48: aload_1
    //   49: invokestatic 78	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   52: astore_1
    //   53: aload_2
    //   54: invokestatic 83	bgo:a	(Ljava/io/Closeable;)V
    //   57: aload_1
    //   58: areturn
    //   59: astore_1
    //   60: aconst_null
    //   61: astore_1
    //   62: aload_1
    //   63: invokestatic 83	bgo:a	(Ljava/io/Closeable;)V
    //   66: aconst_null
    //   67: astore_1
    //   68: goto -11 -> 57
    //   71: astore_1
    //   72: aload_3
    //   73: astore_2
    //   74: aload_2
    //   75: invokestatic 83	bgo:a	(Ljava/io/Closeable;)V
    //   78: aload_1
    //   79: athrow
    //   80: astore_1
    //   81: goto -7 -> 74
    //   84: astore_1
    //   85: aload_2
    //   86: astore_1
    //   87: goto -25 -> 62
    //   90: astore_1
    //   91: aconst_null
    //   92: astore_1
    //   93: goto -31 -> 62
    //   96: astore_1
    //   97: aload_2
    //   98: astore_1
    //   99: goto -37 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	this	axm
    //   0	102	1	paramOptions	android.graphics.BitmapFactory.Options
    //   3	95	2	localObject1	Object
    //   1	72	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   29	46	59	java/io/IOException
    //   29	46	71	finally
    //   46	53	80	finally
    //   46	53	84	java/io/IOException
    //   29	46	90	java/lang/IllegalArgumentException
    //   46	53	96	java/lang/IllegalArgumentException
  }
  
  public final void a(ContentResolver paramContentResolver, Resources paramResources)
  {
    mContentResolver = paramContentResolver;
  }
}

/* Location:
 * Qualified Name:     axm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */