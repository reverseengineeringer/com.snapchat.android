import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video.Thumbnails;

final class boy
  extends bop
{
  private static final String[] b = { "orientation" };
  
  boy(Context paramContext)
  {
    super(paramContext);
  }
  
  /* Error */
  private static int a(ContentResolver paramContentResolver, Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: getstatic 17	boy:b	[Ljava/lang/String;
    //   5: aconst_null
    //   6: aconst_null
    //   7: aconst_null
    //   8: invokevirtual 31	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   11: astore_0
    //   12: aload_0
    //   13: ifnull +16 -> 29
    //   16: aload_0
    //   17: invokeinterface 37 1 0
    //   22: istore 4
    //   24: iload 4
    //   26: ifne +17 -> 43
    //   29: aload_0
    //   30: ifnull +9 -> 39
    //   33: aload_0
    //   34: invokeinterface 40 1 0
    //   39: iconst_0
    //   40: istore_2
    //   41: iload_2
    //   42: ireturn
    //   43: aload_0
    //   44: iconst_0
    //   45: invokeinterface 44 2 0
    //   50: istore_3
    //   51: iload_3
    //   52: istore_2
    //   53: aload_0
    //   54: ifnull -13 -> 41
    //   57: aload_0
    //   58: invokeinterface 40 1 0
    //   63: iload_3
    //   64: ireturn
    //   65: astore_0
    //   66: aconst_null
    //   67: astore_0
    //   68: aload_0
    //   69: ifnull +9 -> 78
    //   72: aload_0
    //   73: invokeinterface 40 1 0
    //   78: iconst_0
    //   79: ireturn
    //   80: astore_1
    //   81: aconst_null
    //   82: astore_0
    //   83: aload_0
    //   84: ifnull +9 -> 93
    //   87: aload_0
    //   88: invokeinterface 40 1 0
    //   93: aload_1
    //   94: athrow
    //   95: astore_1
    //   96: goto -13 -> 83
    //   99: astore_1
    //   100: goto -32 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	paramContentResolver	ContentResolver
    //   0	103	1	paramUri	Uri
    //   40	13	2	i	int
    //   50	14	3	j	int
    //   22	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   0	12	65	java/lang/RuntimeException
    //   0	12	80	finally
    //   16	24	95	finally
    //   43	51	95	finally
    //   16	24	99	java/lang/RuntimeException
    //   43	51	99	java/lang/RuntimeException
  }
  
  public final boolean a(bpg parambpg)
  {
    parambpg = d;
    return ("content".equals(parambpg.getScheme())) && ("media".equals(parambpg.getAuthority()));
  }
  
  public final bpi.a b(bpg parambpg)
  {
    int j = 1;
    ContentResolver localContentResolver = a.getContentResolver();
    int k = a(localContentResolver, d);
    Object localObject = localContentResolver.getType(d);
    int i;
    int m;
    int n;
    if ((localObject != null) && (((String)localObject).startsWith("video/")))
    {
      i = 1;
      if (!parambpg.c()) {
        break label290;
      }
      m = h;
      n = i;
      if ((m > ae) || (n > af)) {
        break label132;
      }
      localObject = boy.a.a;
    }
    for (;;)
    {
      if ((i != 0) || (localObject != boy.a.c)) {
        break label170;
      }
      return new bpi.a(null, c(parambpg), bpd.d.b, k);
      i = 0;
      break;
      label132:
      if ((m <= be) && (n <= bf)) {
        localObject = boy.a.b;
      } else {
        localObject = boy.a.c;
      }
    }
    label170:
    long l = ContentUris.parseId(d);
    BitmapFactory.Options localOptions = d(parambpg);
    inJustDecodeBounds = true;
    a(h, i, e, f, localOptions, parambpg);
    if (i != 0) {
      if (localObject == boy.a.c) {
        i = j;
      }
    }
    for (localObject = MediaStore.Video.Thumbnails.getThumbnail(localContentResolver, l, i, localOptions);; localObject = MediaStore.Images.Thumbnails.getThumbnail(localContentResolver, l, d, localOptions))
    {
      if (localObject == null) {
        break label290;
      }
      return new bpi.a((Bitmap)localObject, null, bpd.d.b, k);
      i = d;
      break;
    }
    label290:
    return new bpi.a(null, c(parambpg), bpd.d.b, k);
  }
  
  static enum a
  {
    final int d;
    final int e;
    final int f;
    
    private a(int paramInt1, int paramInt2, int paramInt3)
    {
      d = paramInt1;
      e = paramInt2;
      f = paramInt3;
    }
  }
}

/* Location:
 * Qualified Name:     boy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */