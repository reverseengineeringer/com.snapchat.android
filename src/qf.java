import java.io.File;

public final class qf
  extends ul
{
  private final File mFile;
  private final String mUrl;
  
  public qf(String paramString, File paramFile)
  {
    mUrl = paramString;
    mFile = paramFile;
  }
  
  public final Object getRequestPayload()
  {
    return mFile;
  }
  
  public final String getUrl()
  {
    return mUrl;
  }
}

/* Location:
 * Qualified Name:     qf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */