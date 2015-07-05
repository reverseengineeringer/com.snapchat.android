import android.graphics.Bitmap;
import android.net.Uri;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.UUID;
import java.util.zip.ZipOutputStream;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class abk
{
  public static abk a;
  public final aev b;
  @Inject
  protected ato c;
  
  public abk()
  {
    this(new aev());
    SnapchatApplication.b().c().a(this);
  }
  
  private abk(aev paramaev)
  {
    b = paramaev;
  }
  
  private static String a(String paramString)
  {
    return paramString + "~zip-" + UUID.randomUUID();
  }
  
  private static boolean a(@cgb Bitmap paramBitmap)
  {
    return ((int)(paramBitmap.getWidth() * 0.8F) > 0) && ((int)(paramBitmap.getHeight() * 0.8F) > 0);
  }
  
  @cgb
  private byte[] b(@cgb abo paramabo, @cgb Uri paramUri, @cgc Bitmap paramBitmap1, @cgc Bitmap paramBitmap2)
  {
    try
    {
      avi localavi = new avi();
      h = "video";
      localavi.a(a(h), paramUri.getPath());
      if (paramBitmap1 != null)
      {
        j = "thumbnail";
        localavi.a(a(j), aur.b(paramBitmap1));
      }
      if (paramBitmap2 != null)
      {
        i = "overlay";
        localavi.a(a(i), aur.a(paramBitmap2));
      }
      localavi.a(a("metadata"), c.a(paramabo).getBytes());
      out.close();
      paramabo = mByteArrayOutputStream.toByteArray();
      return paramabo;
    }
    catch (IOException paramabo)
    {
      Timber.a("DSnapMediaExtractor", paramabo);
    }
    return null;
  }
  
  @cgb
  public final byte[] a(abo paramabo, Bitmap paramBitmap)
  {
    try
    {
      avi localavi = new avi();
      h = "image";
      localavi.a(a(h), aur.b(paramBitmap));
      localavi.a(a("metadata"), c.a(paramabo).getBytes());
      out.close();
      paramabo = mByteArrayOutputStream.toByteArray();
      return paramabo;
    }
    catch (IOException paramabo)
    {
      Timber.a("DSnapMediaExtractor", paramabo);
    }
    return null;
  }
  
  @cgb
  public final byte[] a(@cgb abo paramabo, @cgb Uri paramUri, @cgb Bitmap paramBitmap1, @cgc Bitmap paramBitmap2)
  {
    byte[] arrayOfByte2 = b(paramabo, paramUri, paramBitmap1, paramBitmap2);
    if (arrayOfByte2 == null) {
      throw new abk.a("Zipped video data is null.");
    }
    byte[] arrayOfByte1 = arrayOfByte2;
    Bitmap localBitmap1 = paramBitmap1;
    Bitmap localBitmap2 = paramBitmap2;
    if (arrayOfByte2.length >= 4351591)
    {
      if (b(paramabo, paramUri, null, null).length >= 4351591) {}
      for (int i = 1;; i = 0)
      {
        arrayOfByte1 = arrayOfByte2;
        localBitmap1 = paramBitmap1;
        localBitmap2 = paramBitmap2;
        if (i == 0) {
          break;
        }
        throw new abk.a("Discover media size is larger than maximum size allowed to be shared.");
      }
    }
    while ((localBitmap1 != null) && (arrayOfByte1 != null) && (arrayOfByte1.length >= 2621440))
    {
      if ((localBitmap2 != null) && (a(localBitmap2)))
      {
        paramBitmap1 = Bitmap.createScaledBitmap(localBitmap2, (int)(localBitmap2.getWidth() * 0.8F), (int)(localBitmap2.getHeight() * 0.8F), true);
        if ((paramBitmap1 != null) && (a(paramBitmap1)))
        {
          paramBitmap2 = Bitmap.createScaledBitmap(paramBitmap1, (int)(paramBitmap1.getWidth() * 0.8F), (int)(paramBitmap1.getHeight() * 0.8F), true);
          localBitmap1 = paramBitmap2;
          localBitmap2 = paramBitmap1;
          if (paramBitmap2 == null) {
            continue;
          }
          arrayOfByte1 = b(paramabo, paramUri, paramBitmap2, paramBitmap1);
          localBitmap1 = paramBitmap2;
          localBitmap2 = paramBitmap1;
        }
      }
      else
      {
        throw new abk.a("Overlay is too large to be compressed.");
      }
      throw new abk.a("Overlay is too large to be compressed.");
    }
    return arrayOfByte1;
  }
  
  public static final class a
    extends Exception
  {
    public a(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     abk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */