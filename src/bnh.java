import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract interface bnh
{
  public static final bnh a = new bnh()
  {
    public final caj a(File paramAnonymousFile)
    {
      return cad.a(paramAnonymousFile);
    }
    
    public final void a(File paramAnonymousFile1, File paramAnonymousFile2)
    {
      d(paramAnonymousFile2);
      if (!paramAnonymousFile1.renameTo(paramAnonymousFile2)) {
        throw new IOException("failed to rename " + paramAnonymousFile1 + " to " + paramAnonymousFile2);
      }
    }
    
    public final cai b(File paramAnonymousFile)
    {
      try
      {
        cai localcai = cad.b(paramAnonymousFile);
        return localcai;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        paramAnonymousFile.getParentFile().mkdirs();
      }
      return cad.b(paramAnonymousFile);
    }
    
    public final cai c(File paramAnonymousFile)
    {
      try
      {
        cai localcai = cad.c(paramAnonymousFile);
        return localcai;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        paramAnonymousFile.getParentFile().mkdirs();
      }
      return cad.c(paramAnonymousFile);
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
  
  public abstract caj a(File paramFile);
  
  public abstract void a(File paramFile1, File paramFile2);
  
  public abstract cai b(File paramFile);
  
  public abstract cai c(File paramFile);
  
  public abstract void d(File paramFile);
  
  public abstract boolean e(File paramFile);
  
  public abstract long f(File paramFile);
  
  public abstract void g(File paramFile);
}

/* Location:
 * Qualified Name:     bnh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */