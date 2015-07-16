import java.io.OutputStream;

public final class bve
  extends OutputStream
  implements brm
{
  private brf a;
  private OutputStream b;
  private btc c;
  private brg d;
  
  public bve(brf parambrf, OutputStream paramOutputStream)
  {
    if (parambrf == null) {
      throw new NullPointerException("socket was null");
    }
    if (paramOutputStream == null) {
      throw new NullPointerException("output stream was null");
    }
    a = parambrf;
    b = paramOutputStream;
    d = b();
    if (d == null) {
      throw new NullPointerException("parser was null");
    }
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      d.a(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (ThreadDeath paramArrayOfByte)
    {
      throw paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      bue.a(paramArrayOfByte);
      d = brt.d;
    }
  }
  
  private btc d()
  {
    if (c == null) {
      c = a.a();
    }
    return c;
  }
  
  public final brg a()
  {
    return d;
  }
  
  public final void a(int paramInt) {}
  
  public final void a(brg parambrg)
  {
    d = parambrg;
  }
  
  public final void a(String paramString)
  {
    btc localbtc = d();
    if (localbtc != null) {
      localbtc.a(paramString);
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    btc localbtc = d();
    localbtc.c();
    f = paramString1;
    i = null;
    paramString1 = h;
    if (paramString2 != null) {
      c = paramString2;
    }
    a.a(localbtc);
  }
  
  public final boolean a(OutputStream paramOutputStream)
  {
    return b == paramOutputStream;
  }
  
  public final brg b()
  {
    return new bro(this);
  }
  
  public final void b(int paramInt)
  {
    btc localbtc = c;
    c = null;
    if (localbtc != null) {
      localbtc.d(paramInt);
    }
  }
  
  public final String c()
  {
    btc localbtc = d();
    String str = null;
    if (localbtc != null) {
      str = f;
    }
    return str;
  }
  
  public final void close()
  {
    b.close();
  }
  
  public final void flush()
  {
    b.flush();
  }
  
  public final void write(int paramInt)
  {
    b.write(paramInt);
    try
    {
      d.a(paramInt);
      return;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable)
    {
      bue.a(localThrowable);
      d = brt.d;
    }
  }
  
  public final void write(byte[] paramArrayOfByte)
  {
    b.write(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      a(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
  }
  
  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b.write(paramArrayOfByte, paramInt1, paramInt2);
    if (paramArrayOfByte != null) {
      a(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     bve
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */