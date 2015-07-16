import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract interface boi
{
  public static final boi a = new boi()
  {
    public final cbk a(File paramAnonymousFile)
    {
      return cbe.a(paramAnonymousFile);
    }
    
    public final void a(File paramAnonymousFile1, File paramAnonymousFile2)
    {
      d(paramAnonymousFile2);
      if (!paramAnonymousFile1.renameTo(paramAnonymousFile2)) {
        throw new IOException("failed to rename " + paramAnonymousFile1 + " to " + paramAnonymousFile2);
      }
    }
    
    public final cbj b(File paramAnonymousFile)
    {
      try
      {
        cbj localcbj = cbe.b(paramAnonymousFile);
        return localcbj;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        paramAnonymousFile.getParentFile().mkdirs();
      }
      return cbe.b(paramAnonymousFile);
    }
    
    public final cbj c(File paramAnonymousFile)
    {
      try
      {
        cbj localcbj = cbe.c(paramAnonymousFile);
        return localcbj;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        paramAnonymousFile.getParentFile().mkdirs();
      }
      return cbe.c(paramAnonymousFile);
    }
    
    public final void d(File paramAnonymousFile)
    {
      if ((!paramAnonymousFile.delete()) && (paramAnonymousFile.exists())) {
        throw new IOException("failed to delete " + paramAnonymousFile);
      }
    }
    
    public final boolean e(File paramAnonymousFile)
    {
      return paramAnonymousFile.exists();
    }
    
    public final long f(File paramAnonymousFile)
    {
      return paramAnonymousFile.length();
    }
    
    public final void g(File paramAnonymousFile)
    {
      File[] arrayOfFile = paramAnonymousFile.listFiles();
      if (arrayOfFile == null) {
        throw new IOException("not a readable directory: " + paramAnonymousFile);
      }
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        paramAnonymousFile = arrayOfFile[i];
        if (paramAnonymousFile.isDirectory()) {
          g(paramAnonymousFile);
        }
        if (!paramAnonymousFile.delete()) {
          throw new IOException("failed to delete " + paramAnonymousFile);
        }
        i += 1;
      }
    }
  };
  
  public abstract cbk a(File paramFile);
  
  public abstract void a(File paramFile1, File paramFile2);
  
  public abstract cbj b(File paramFile);
  
  public abstract cbj c(File paramFile);
  
  public abstract void d(File paramFile);
  
  public abstract boolean e(File paramFile);
  
  public abstract long f(File paramFile);
  
  public abstract void g(File paramFile);
}

/* Location:
 * Qualified Name:     boi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */