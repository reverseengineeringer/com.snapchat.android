import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

final class boi$1
  implements boi
{
  public final cbk a(File paramFile)
  {
    return cbe.a(paramFile);
  }
  
  public final void a(File paramFile1, File paramFile2)
  {
    d(paramFile2);
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException("failed to rename " + paramFile1 + " to " + paramFile2);
    }
  }
  
  public final cbj b(File paramFile)
  {
    try
    {
      cbj localcbj = cbe.b(paramFile);
      return localcbj;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      paramFile.getParentFile().mkdirs();
    }
    return cbe.b(paramFile);
  }
  
  public final cbj c(File paramFile)
  {
    try
    {
      cbj localcbj = cbe.c(paramFile);
      return localcbj;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      paramFile.getParentFile().mkdirs();
    }
    return cbe.c(paramFile);
  }
  
  public final void d(File paramFile)
  {
    if ((!paramFile.delete()) && (paramFile.exists())) {
      throw new IOException("failed to delete " + paramFile);
    }
  }
  
  public final boolean e(File paramFile)
  {
    return paramFile.exists();
  }
  
  public final long f(File paramFile)
  {
    return paramFile.length();
  }
  
  public final void g(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      throw new IOException("not a readable directory: " + paramFile);
    }
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      paramFile = arrayOfFile[i];
      if (paramFile.isDirectory()) {
        g(paramFile);
      }
      if (!paramFile.delete()) {
        throw new IOException("failed to delete " + paramFile);
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     boi.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */