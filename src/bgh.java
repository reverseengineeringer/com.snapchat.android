import android.media.MediaMetadataRetriever;

public final class bgh
{
  public static MediaMetadataRetriever a(MediaMetadataRetriever paramMediaMetadataRetriever, String paramString)
  {
    try
    {
      paramMediaMetadataRetriever.setDataSource(paramString);
      return paramMediaMetadataRetriever;
    }
    catch (RuntimeException paramMediaMetadataRetriever)
    {
      throw new bfv();
    }
  }
}

/* Location:
 * Qualified Name:     bgh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */