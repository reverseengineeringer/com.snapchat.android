import java.io.File;
import java.io.FilenameFilter;

final class bva$5
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".stacktrace");
  }
}

/* Location:
 * Qualified Name:     bva.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */