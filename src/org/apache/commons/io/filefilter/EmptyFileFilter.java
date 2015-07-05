package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class EmptyFileFilter
  extends AbstractFileFilter
  implements Serializable
{
  public static final IOFileFilter EMPTY = new EmptyFileFilter();
  public static final IOFileFilter NOT_EMPTY = new NotFileFilter(EMPTY);
  
  public boolean accept(File paramFile)
  {
    boolean bool = false;
    if (paramFile.isDirectory())
    {
      paramFile = paramFile.listFiles();
      if ((paramFile == null) || (paramFile.length == 0)) {
        bool = true;
      }
    }
    while (paramFile.length() != 0L) {
      return bool;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.filefilter.EmptyFileFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */