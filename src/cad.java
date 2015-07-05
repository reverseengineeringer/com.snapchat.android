import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class cad
{
  private static final Logger a = Logger.getLogger(cad.class.getName());
  
  public static bzv a(cai paramcai)
  {
    if (paramcai == null) {
      throw new IllegalArgumentException("sink == null");
    }
    return new cae(paramcai);
  }
  
  public static bzw a(caj paramcaj)
  {
    if (paramcaj == null) {
      throw new IllegalArgumentException("source == null");
    }
    return new caf(paramcaj);
  }
  
  private static cai a(OutputStream paramOutputStream)
  {
    return a(paramOutputStream, new cak());
  }
  
  private static cai a(final OutputStream paramOutputStream, cak paramcak)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("out == null");
    }
    if (paramcak == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    new cai()
    {
      public final cak E_()
      {
        return a;
      }
      
      public final void a_(bzu paramAnonymousbzu, long paramAnonymousLong)
      {
        cal.a(b, 0L, paramAnonymousLong);
        while (paramAnonymousLong > 0L)
        {
          a.g();
          cag localcag = a;
          int i = (int)Math.min(paramAnonymousLong, c - b);
          paramOutputStream.write(a, b, i);
          b += i;
          long l = paramAnonymousLong - i;
          b -= i;
          paramAnonymousLong = l;
          if (b == c)
          {
            a = localcag.a();
            cah.a(localcag);
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
  
  public static cai a(Socket paramSocket)
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    bzs localbzs = c(paramSocket);
    return new bzs.1(localbzs, a(paramSocket.getOutputStream(), localbzs));
  }
  
  public static caj a(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return a(new FileInputStream(paramFile), new cak());
  }
  
  private static caj a(final InputStream paramInputStream, cak paramcak)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("in == null");
    }
    if (paramcak == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    new caj()
    {
      public final cak E_()
      {
        return a;
      }
      
      public final long a(bzu paramAnonymousbzu, long paramAnonymousLong)
      {
        if (paramAnonymousLong < 0L) {
          throw new IllegalArgumentException("byteCount < 0: " + paramAnonymousLong);
        }
        if (paramAnonymousLong == 0L) {
          return 0L;
        }
        a.g();
        cag localcag = paramAnonymousbzu.d(1);
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
  
  public static cai b(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return a(new FileOutputStream(paramFile));
  }
  
  public static caj b(Socket paramSocket)
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    bzs localbzs = c(paramSocket);
    return new bzs.2(localbzs, a(paramSocket.getInputStream(), localbzs));
  }
  
  private static bzs c(Socket paramSocket)
  {
    new bzs()
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
          cad.a().log(Level.WARNING, "Failed to close timed out socket " + a, localException);
        }
      }
    };
  }
  
  public static cai c(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return a(new FileOutputStream(paramFile, true));
  }
}

/* Location:
 * Qualified Name:     cad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */