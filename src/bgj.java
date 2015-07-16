import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;

public final class bgj
{
  private final bgi mProvider;
  
  public bgj()
  {
    this(new bgi());
  }
  
  private bgj(bgi parambgi)
  {
    mProvider = parambgi;
  }
  
  public final int a(@chc String paramString)
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
  
  @chd
  public final Bitmap b(@chc String paramString)
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
 * Qualified Name:     bgj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */