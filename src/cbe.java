import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class cbe
{
  private static final Logger a = Logger.getLogger(cbe.class.getName());
  
  public static caw a(cbj paramcbj)
  {
    if (paramcbj == null) {
      throw new IllegalArgumentException("sink == null");
    }
    return new cbf(paramcbj);
  }
  
  public static cax a(cbk paramcbk)
  {
    if (paramcbk == null) {
      throw new IllegalArgumentException("source == null");
    }
    return new cbg(paramcbk);
  }
  
  private static cbj a(OutputStream paramOutputStream)
  {
    return a(paramOutputStream, new cbl());
  }
  
  private static cbj a(final OutputStream paramOutputStream, cbl paramcbl)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("out == null");
    }
    if (paramcbl == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    new cbj()
    {
      public final cbl E_()
      {
        return a;
      }
      
      public final void a_(cav paramAnonymouscav, long paramAnonymousLong)
      {
        cbm.a(b, 0L, paramAnonymousLong);
        while (paramAnonymousLong > 0L)
        {
          a.g();
          cbh localcbh = a;
          int i = (int)Math.min(paramAnonymousLong, c - b);
          paramOutputStream.write(a, b, i);
          b += i;
          long l = paramAnonymousLong - i;
          b -= i;
          paramAnonymousLong = l;
          if (b == c)
          {
            a = localcbh.a();
            cbi.a(localcbh);
            paramAnonymousLong = l;
          }
        }
      }
      
      public final void close()
      {
        paramOutputStream.close();
      }
      
      public final void flush()
      {
        paramOutputStream.flush();
      }
      
      public final String toString()
      {
        return "sink(" + paramOutputStream + ")";
      }
    };
  }
  
  public static cbj a(Socket paramSocket)
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    cat localcat = c(paramSocket);
    return new cat.1(localcat, a(paramSocket.getOutputStream(), localcat));
  }
  
  public static cbk a(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return a(new FileInputStream(paramFile), new cbl());
  }
  
  private static cbk a(final InputStream paramInputStream, cbl paramcbl)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("in == null");
    }
    if (paramcbl == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    new cbk()
    {
      public final cbl E_()
      {
        return a;
      }
      
      public final long a(cav paramAnonymouscav, long paramAnonymousLong)
      {
        if (paramAnonymousLong < 0L) {
          throw new IllegalArgumentException("byteCount < 0: " + paramAnonymousLong);
        }
        if (paramAnonymousLong == 0L) {
          return 0L;
        }
        a.g();
        cbh localcbh = paramAnonymouscav.d(1);
        int i = (int)Math.min(paramAnonymousLong, 2048 - c);
        i = paramInputStream.read(a, c, i);
        if (i == -1) {
          return -1L;
        }
        c += i;
        b += i;
        return i;
      }
      
      public final void close()
      {
        paramInputStream.close();
      }
      
      public final String toString()
      {
        return "source(" + paramInputStream + ")";
      }
    };
  }
  
  public static cbj b(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return a(new FileOutputStream(paramFile));
  }
  
  public static cbk b(Socket paramSocket)
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    cat localcat = c(paramSocket);
    return new cat.2(localcat, a(paramSocket.getInputStream(), localcat));
  }
  
  private static cat c(Socket paramSocket)
  {
    new cat()
    {
      protected final void a()
      {
        try
        {
          a.close();
          return;
        }
        catch (Exception localException)
        {
          cbe.a().log(Level.WARNING, "Failed to close timed out socket " + a, localException);
        }
      }
    };
  }
  
  public static cbj c(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return a(new FileOutputStream(paramFile, true));
  }
}

/* Location:
 * Qualified Name:     cbe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */