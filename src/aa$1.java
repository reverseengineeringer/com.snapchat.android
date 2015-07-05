import java.io.File;
import java.io.FileFilter;

final class aa$1
  implements FileFilter
{
  aa$1(String paramString) {}
  
  public final boolean accept(File paramFile)
  {
    return !paramFile.getName().startsWith(a);
  }
}

/* Location:
 * Qualified Name:     aa.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */