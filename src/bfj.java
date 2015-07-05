import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;

public final class bfj
{
  private final bfi mProvider;
  
  public bfj()
  {
    this(new bfi());
  }
  
  private bfj(bfi parambfi)
  {
    mProvider = parambfi;
  }
  
  public final int a(@cgb String paramString)
  {
    paramString = mProvider.a(paramString);
    if (paramString == null) {
      return 0;
    }
    String str = paramString.extractMetadata(9);
    paramString.release();
    try
    {
      int i = Integer.parseInt(str);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return 0;
  }
  
  @cgc
  public final Bitmap b(@cgb String paramString)
  {
    paramString = mProvider.a(paramString);
    if (paramString == null) {
      return null;
    }
    Bitmap localBitmap = paramString.getFrameAtTime(0L, 3);
    paramString.release();
    return localBitmap;
  }
}

/* Location:
 * Qualified Name:     bfj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */