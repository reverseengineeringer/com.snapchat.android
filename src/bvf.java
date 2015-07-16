import java.io.IOException;
import java.io.InputStream;

public final class bvf
  extends InputStream
  implements brm
{
  private brf a;
  private btc b;
  private InputStream c;
  private bum d;
  private brg e;
  
  public bvf(brf parambrf, InputStream paramInputStream, bum parambum)
  {
    if (parambrf == null) {
      throw new NullPointerException("socket was null");
    }
    if (paramInputStream == null) {
      throw new NullPointerException("delegate was null");
    }
    if (parambum == null) {
      throw new NullPointerException("dispatch was null");
    }
    a = parambrf;
    c = paramInputStream;
    d = parambum;
    e = b();
    if (e == null) {
      throw new NullPointerException("parser was null");
    }
  }
  
  private void a(Exception paramException)
  {
    try
    {
      btc localbtc = e();
      if (localbtc != null)
      {
        g = btb.a(paramException);
        d.a(localbtc, btc.a.h);
      }
      return;
    }
    catch (ThreadDeath paramException)
    {
      throw paramException;
    }
    catch (Throwable paramException)
    {
      bue.a(paramException);
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
      e = brt.d;
      bue.a(paramArrayOfByte);
    }
  }
  
  private btc e()
  {
    if (b == null) {
      b = a.b();
    }
    return b;
  }
  
  public final brg a()
  {
    return e;
  }
  
  public final void a(int paramInt)
  {
    btc localbtc = e();
    if (localbtc != null)
    {
      localbtc.d();
      e = paramInt;
    }
  }
  
  public final void a(brg parambrg)
  {
    e = parambrg;
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
  
  public final brg b()
  {
    return new brq(this);
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
          localObject1 = new btc(b.a());
          ((btc)localObject1).e(b.a);
          ((btc)localObject1).d(b.d);
          f = b.f;
        }
      }
      b.b(paramInt);
      d.a(b, btc.a.g);
    }
    b = ((btc)localObject1);
  }
  
  public final String c()
  {
    btc localbtc = e();
    String str = null;
    if (localbtc != null) {
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
        bue.a(localThrowable);
      }
    }
  }
  
  public final void d()
  {
    if ((b != null) && (b.g == btb.a) && (e != null)) {
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
        e = brt.d;
        bue.a(localThrowable);
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
 * Qualified Name:     bvf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */