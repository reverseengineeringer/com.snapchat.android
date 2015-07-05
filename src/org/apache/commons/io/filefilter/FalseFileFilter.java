package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class FalseFileFilter
  implements Serializable, IOFileFilter
{
  public static final IOFileFilter FALSE;
  public static final IOFileFilter INSTANCE;
  
  static
  {
    FalseFileFilter localFalseFileFilter = new FalseFileFilter();
    FALSE = localFalseFileFilter;
    INSTANCE = localFalseFileFilter;
  }
  
  public boolean accept(File paramFile)
  {
    return false;
  }
  
  public boolean accept(File paramFile, String paramString)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.filefilter.FalseFileFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */