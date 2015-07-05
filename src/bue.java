import java.io.IOException;
import java.io.InputStream;

public final class bue
  extends InputStream
  implements bql
{
  private bqe a;
  private bsb b;
  private InputStream c;
  private btl d;
  private bqf e;
  
  public bue(bqe parambqe, InputStream paramInputStream, btl parambtl)
  {
    if (parambqe == null) {
      throw new NullPointerException("socket was null");
    }
    if (paramInputStream == null) {
      throw new NullPointerException("delegate was null");
    }
    if (parambtl == null) {
      throw new NullPointerException("dispatch was null");
    }
    a = parambqe;
    c = paramInputStream;
    d = parambtl;
    e = b();
    if (e == null) {
      throw new NullPointerException("parser was null");
    }
  }
  
  private void a(Exception paramException)
  {
    try
    {
      bsb localbsb = e();
      if (localbsb != null)
      {
        g = bsa.a(paramException);
        d.a(localbsb, bsb.a.h);
      }
      return;
    }
    catch (ThreadDeath paramException)
    {
      throw paramException;
    }
    catch (Throwable paramException)
    {
      btd.a(paramException);
    }
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      e.a(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (ThreadDeath paramArrayOfByte)
    {
      throw paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      e = bqs.d;
      btd.a(paramArrayOfByte);
    }
  }
  
  private bsb e()
  {
    if (b == null) {
      b = a.b();
    }
    return b;
  }
  
  public final bqf a()
  {
    return e;
  }
  
  public final void a(int paramInt)
  {
    bsb localbsb = e();
    if (localbsb != null)
    {
      localbsb.d();
      e = paramInt;
    }
  }
  
  public final void a(bqf parambqf)
  {
    e = parambqf;
  }
  
  public final void a(String paramString) {}
  
  public final void a(String paramString1, String paramString2) {}
  
  public final boolean a(InputStream paramInputStream)
  {
    return c == paramInputStream;
  }
  
  public final int available()
  {
    return c.available();
  }
  
  public final bqf b()
  {
    return new bqp(this);
  }
  
  public final void b(int paramInt)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    if (b != null)
    {
      int i = b.e;
      localObject1 = localObject2;
      if (i >= 100)
      {
        localObject1 = localObject2;
        if (i < 200)
        {
          localObject1 = new bsb(b.a());
          ((bsb)localObject1).e(b.a);
          ((bsb)localObject1).d(b.d);
          f = b.f;
        }
      }
      b.b(paramInt);
      d.a(b, bsb.a.g);
    }
    b = ((bsb)localObject1);
  }
  
  public final String c()
  {
    bsb localbsb = e();
    String str = null;
    if (localbsb != null) {
      str = f;
    }
    return str;
  }
  
  public final void close()
  {
    try
    {
      e.f();
      c.close();
      return;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        btd.a(localThrowable);
      }
    }
  }
  
  public final void d()
  {
    if ((b != null) && (b.g == bsa.a) && (e != null)) {
      e.f();
    }
  }
  
  public final void mark(int paramInt)
  {
    c.mark(paramInt);
  }
  
  public final boolean markSupported()
  {
    return c.markSupported();
  }
  
  public final int read()
  {
    try
    {
      int i = c.read();
      return i;
    }
    catch (IOException localIOException)
    {
      try
      {
        e.a(i);
        return i;
      }
      catch (ThreadDeath localThreadDeath)
      {
        throw localThreadDeath;
      }
      catch (Throwable localThrowable)
      {
        e = bqs.d;
        btd.a(localThrowable);
      }
      localIOException = localIOException;
      a(localIOException);
      throw localIOException;
    }
  }
  
  public final int read(byte[] paramArrayOfByte)
  {
    try
    {
      int i = c.read(paramArrayOfByte);
      a(paramArrayOfByte, 0, i);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      a(paramArrayOfByte);
      throw paramArrayOfByte;
    }
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt2 = c.read(paramArrayOfByte, paramInt1, paramInt2);
      a(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt2;
    }
    catch (IOException paramArrayOfByte)
    {
      a(paramArrayOfByte);
      throw paramArrayOfByte;
    }
  }
  
  public final void reset()
  {
    try
    {
      c.reset();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final long skip(long paramLong)
  {
    return c.skip(paramLong);
  }
}

/* Location:
 * Qualified Name:     bue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */