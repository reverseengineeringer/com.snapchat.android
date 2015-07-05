import android.media.MediaMetadataRetriever;

public final class bfi
{
  private final azo mExceptionReporter;
  private final bfh mInitializer;
  private final bfg mRetrieverFactory;
  
  public bfi()
  {
    this(new bfh(), new bfg(), new azo());
  }
  
  private bfi(bfh parambfh, bfg parambfg, azo paramazo)
  {
    mInitializer = parambfh;
    mRetrieverFactory = parambfg;
    mExceptionReporter = paramazo;
  }
  
  @cgc
  public final MediaMetadataRetriever a(String paramString)
  {
    MediaMetadataRetriever localMediaMetadataRetriever = new MediaMetadataRetriever();
    try
    {
      bfh.a(localMediaMetadataRetriever, paramString);
      return localMediaMetadataRetriever;
    }
    catch (bew paramString)
    {
      localMediaMetadataRetriever.release();
      mExceptionReporter.b(paramString);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bfi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */