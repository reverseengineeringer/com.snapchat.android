import java.io.File;
import java.io.FilenameFilter;

public final class azc
  implements FilenameFilter
{
  private final String EXCLUDE_FILENAME;
  private final String FILENAME_PREFIX;
  
  public azc(@chc String paramString1, @chd String paramString2)
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
 * Qualified Name:     azc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */