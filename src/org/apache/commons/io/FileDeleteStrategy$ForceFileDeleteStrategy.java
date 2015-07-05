package org.apache.commons.io;

import java.io.File;

class FileDeleteStrategy$ForceFileDeleteStrategy
  extends FileDeleteStrategy
{
  FileDeleteStrategy$ForceFileDeleteStrategy()
  {
    super("Force");
  }
  
  protected boolean doDelete(File paramFile)
  {
    FileUtils.forceDelete(paramFile);
    return true;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.FileDeleteStrategy.ForceFileDeleteStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */