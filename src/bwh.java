import android.content.ContentResolver;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public final class bwh
{
  public static int a(Context paramContext, Uri paramUri)
  {
    Context localContext = null;
    try
    {
      paramContext = paramContext.getContentResolver().openInputStream(paramUri);
      localContext = paramContext;
      int i = a(paramContext);
      return i;
    }
    finally
    {
      if (localContext != null) {
        localContext.close();
      }
    }
  }
  
  public static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int k = outHeight;
    int m = outWidth;
    int j = 1;
    int i = 1;
    if ((k > paramInt2) || (m > paramInt1))
    {
      k /= 2;
      m /= 2;
      for (;;)
      {
        j = i;
        if (k / i <= paramInt2) {
          break;
        }
        j = i;
        if (m / i <= paramInt1) {
          break;
        }
        i *= 2;
      }
    }
    return j;
  }
  
  public static int a(File paramFile)
  {
    FileInputStream localFileInputStream;
    try
    {
      localFileInputStream = new FileInputStream(paramFile);
      int i;
      if (localFileInputStream == null) {
        break label31;
      }
    }
    finally
    {
      try
      {
        i = a(localFileInputStream);
        localFileInputStream.close();
        return i;
      }
      finally {}
      paramFile = finally;
      localFileInputStream = null;
    }
    localFileInputStream.close();
    label31:
    throw paramFile;
  }
  
  private static int a(InputStream paramInputStream)
  {
    int i = 1;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeStream(paramInputStream, null, localOptions);
    if ((outWidth == -1) || (outHeight == -1)) {
      i = 0;
    }
    while (outWidth / outHeight > 1.0F) {
      return i;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     bwh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */