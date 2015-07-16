import org.apache.http.util.CharArrayBuffer;

public final class brh
  extends brg
{
  private int d;
  private int e = 0;
  
  public brh(brg parambrg, int paramInt)
  {
    super(parambrg);
    d = paramInt;
  }
  
  public final boolean a(int paramInt)
  {
    if (paramInt == -1)
    {
      a.a(brt.d);
      return true;
    }
    e += 1;
    c += 1;
    if (e == d)
    {
      a.b(a());
      brg localbrg = a.b();
      a.a(localbrg);
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
      a.a(brt.d);
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
  
  public final brg b()
  {
    return brt.d;
  }
  
  public final brg c()
  {
    return brt.d;
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
    a.a(brt.d);
  }
}

/* Location:
 * Qualified Name:     brh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */