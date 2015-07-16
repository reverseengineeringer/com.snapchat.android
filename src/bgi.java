import android.media.MediaMetadataRetriever;

public final class bgi
{
  private final ban mExceptionReporter;
  private final bgh mInitializer;
  private final bgg mRetrieverFactory;
  
  public bgi()
  {
    this(new bgh(), new bgg(), new ban());
  }
  
  private bgi(bgh parambgh, bgg parambgg, ban paramban)
  {
    mInitializer = parambgh;
    mRetrieverFactory = parambgg;
    mExceptionReporter = paramban;
  }
  
  @chd
  public final MediaMetadataRetriever a(String paramString)
  {
    MediaMetadataRetriever localMediaMetadataRetriever = new MediaMetadataRetriever();
    try
    {
      bgh.a(localMediaMetadataRetriever, paramString);
      return localMediaMetadataRetriever;
    }
    catch (bfv paramString)
    {
      localMediaMetadataRetriever.release();
      mExceptionReporter.b(paramString);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bgi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */