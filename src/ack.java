import android.graphics.Bitmap;
import android.net.Uri;
import com.snapchat.android.SnapchatApplication;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.UUID;
import java.util.zip.ZipOutputStream;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class ack
{
  public static ack a;
  public final afv b;
  @Inject
  protected aum c;
  
  public ack()
  {
    this(new afv());
    SnapchatApplication.b().c().a(this);
  }
  
  private ack(afv paramafv)
  {
    b = paramafv;
  }
  
  private static String a(String paramString)
  {
    return paramString + "~zip-" + UUID.randomUUID();
  }
  
  private static boolean a(@chc Bitmap paramBitmap)
  {
    return ((int)(paramBitmap.getWidth() * 0.8F) > 0) && ((int)(paramBitmap.getHeight() * 0.8F) > 0);
  }
  
  @chc
  private byte[] b(@chc aco paramaco, @chc Uri paramUri, @chd Bitmap paramBitmap1, @chd Bitmap paramBitmap2)
  {
    try
    {
      awg localawg = new awg();
      h = "video";
      localawg.a(a(h), paramUri.getPath());
      if (paramBitmap1 != null)
      {
        j = "thumbnail";
        localawg.a(a(j), avp.b(paramBitmap1));
      }
      if (paramBitmap2 != null)
      {
        i = "overlay";
        localawg.a(a(i), avp.a(paramBitmap2));
      }
      localawg.a(a("metadata"), c.a(paramaco).getBytes());
      out.close();
      paramaco = mByteArrayOutputStream.toByteArray();
      return paramaco;
    }
    catch (IOException paramaco) {}
    return null;
  }
  
  @chc
  public final byte[] a(aco paramaco, Bitmap paramBitmap)
  {
    try
    {
      awg localawg = new awg();
      h = "image";
      localawg.a(a(h), avp.b(paramBitmap));
      localawg.a(a("metadata"), c.a(paramaco).getBytes());
      out.close();
      paramaco = mByteArrayOutputStream.toByteArray();
      return paramaco;
    }
    catch (IOException paramaco) {}
    return null;
  }
  
  @chc
  public final byte[] a(@chc aco paramaco, @chc Uri paramUri, @chc Bitmap paramBitmap1, @chd Bitmap paramBitmap2)
  {
    byte[] arrayOfByte2 = b(paramaco, paramUri, paramBitmap1, paramBitmap2);
    if (arrayOfByte2 == null) {
      throw new ack.a("Zipped video data is null.");
    }
    byte[] arrayOfByte1 = arrayOfByte2;
    Bitmap localBitmap1 = paramBitmap1;
    Bitmap localBitmap2 = paramBitmap2;
    if (arrayOfByte2.length >= 4351591)
    {
      if (b(paramaco, paramUri, null, null).length >= 4351591) {}
      for (int i = 1;; i = 0)
      {
        arrayOfByte1 = arrayOfByte2;
        localBitmap1 = paramBitmap1;
        localBitmap2 = paramBitmap2;
        if (i == 0) {
          break;
        }
        throw new ack.a("Discover media size is larger than maximum size allowed to be shared.");
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
          arrayOfByte1 = b(paramaco, paramUri, paramBitmap2, paramBitmap1);
          localBitmap1 = paramBitmap2;
          localBitmap2 = paramBitmap1;
        }
      }
      else
      {
        throw new ack.a("Overlay is too large to be compressed.");
      }
      throw new ack.a("Overlay is too large to be compressed.");
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
 * Qualified Name:     ack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */