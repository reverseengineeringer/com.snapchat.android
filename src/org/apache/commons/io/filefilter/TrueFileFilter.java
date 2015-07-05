package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class TrueFileFilter
  implements Serializable, IOFileFilter
{
  public static final IOFileFilter INSTANCE;
  public static final IOFileFilter TRUE;
  
  static
  {
    TrueFileFilter localTrueFileFilter = new TrueFileFilter();
    TRUE = localTrueFileFilter;
    INSTANCE = localTrueFileFilter;
  }
  
  public boolean accept(File paramFile)
  {
    return true;
  }
  
  public boolean accept(File paramFile, String paramString)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.filefilter.TrueFileFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */