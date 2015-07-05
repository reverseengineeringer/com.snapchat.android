import java.io.OutputStream;

public final class bud
  extends OutputStream
  implements bql
{
  private bqe a;
  private OutputStream b;
  private bsb c;
  private bqf d;
  
  public bud(bqe parambqe, OutputStream paramOutputStream)
  {
    if (parambqe == null) {
      throw new NullPointerException("socket was null");
    }
    if (paramOutputStream == null) {
      throw new NullPointerException("output stream was null");
    }
    a = parambqe;
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
      btd.a(paramArrayOfByte);
      d = bqs.d;
    }
  }
  
  private bsb d()
  {
    if (c == null) {
      c = a.a();
    }
    return c;
  }
  
  public final bqf a()
  {
    return d;
  }
  
  public final void a(int paramInt) {}
  
  public final void a(bqf parambqf)
  {
    d = parambqf;
  }
  
  public final void a(String paramString)
  {
    bsb localbsb = d();
    if (localbsb != null) {
      localbsb.a(paramString);
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    bsb localbsb = d();
    localbsb.c();
    f = paramString1;
    i = null;
    paramString1 = h;
    if (paramString2 != null) {
      c = paramString2;
    }
    a.a(localbsb);
  }
  
  public final boolean a(OutputStream paramOutputStream)
  {
    return b == paramOutputStream;
  }
  
  public final bqf b()
  {
    return new bqn(this);
  }
  
  public final void b(int paramInt)
  {
    bsb localbsb = c;
    c = null;
    if (localbsb != null) {
      localbsb.d(paramInt);
    }
  }
  
  public final String c()
  {
    bsb localbsb = d();
    String str = null;
    if (localbsb != null) {
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
      btd.a(localThrowable);
      d = bqs.d;
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
 * Qualified Name:     bud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */