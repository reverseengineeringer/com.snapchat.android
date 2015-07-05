import org.apache.http.util.CharArrayBuffer;

public final class bqg
  extends bqf
{
  private int d;
  private int e = 0;
  
  public bqg(bqf parambqf, int paramInt)
  {
    super(parambqf);
    d = paramInt;
  }
  
  public final boolean a(int paramInt)
  {
    if (paramInt == -1)
    {
      a.a(bqs.d);
      return true;
    }
    e += 1;
    c += 1;
    if (e == d)
    {
      a.b(a());
      bqf localbqf = a.b();
      a.a(localbqf);
      return true;
    }
    return false;
  }
  
  public final boolean a(CharArrayBuffer paramCharArrayBuffer)
  {
    return true;
  }
  
  public final int b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 == -1)
    {
      a.a(bqs.d);
      return -1;
    }
    if (e + paramInt2 < d)
    {
      e += paramInt2;
      c += paramInt2;
      return paramInt2;
    }
    paramInt1 = d - e;
    c += paramInt1;
    a.b(a());
    a.a(a.b());
    return paramInt1;
  }
  
  public final bqf b()
  {
    return bqs.d;
  }
  
  public final bqf c()
  {
    return bqs.d;
  }
  
  protected final int d()
  {
    return 0;
  }
  
  protected final int e()
  {
    return 0;
  }
  
  public final void f()
  {
    a.b(a());
    a.a(bqs.d);
  }
}

/* Location:
 * Qualified Name:     bqg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */