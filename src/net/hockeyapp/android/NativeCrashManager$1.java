package net.hockeyapp.android;

import java.io.File;
import java.io.FilenameFilter;

final class NativeCrashManager$1
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".dmp");
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.NativeCrashManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */