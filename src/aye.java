import java.io.File;
import java.io.FilenameFilter;

public final class aye
  implements FilenameFilter
{
  private final String EXCLUDE_FILENAME;
  private final String FILENAME_PREFIX;
  
  public aye(@cgb String paramString1, @cgc String paramString2)
  {
    FILENAME_PREFIX = paramString1;
    EXCLUDE_FILENAME = paramString2;
  }
  
  public final boolean accept(File paramFile, String paramString)
  {
    return (paramString.startsWith(FILENAME_PREFIX)) && ((EXCLUDE_FILENAME == null) || (!paramString.equals(EXCLUDE_FILENAME)));
  }
}

/* Location:
 * Qualified Name:     aye
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */