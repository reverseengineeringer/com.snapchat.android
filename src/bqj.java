import org.apache.http.util.CharArrayBuffer;

public final class bqj
  extends bqf
{
  public bqj(bqf parambqf)
  {
    super(parambqf);
  }
  
  public final boolean a(int paramInt)
  {
    if (paramInt == -1)
    {
      a.b(a());
      a.a(bqs.d);
      return true;
    }
    c += 1;
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
      a.b(a());
      a.a(bqs.d);
      return -1;
    }
    c += paramInt2;
    return paramInt2;
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
    return Integer.MAX_VALUE;
  }
  
  public final void f()
  {
    a.b(a());
    a.a(bqs.d);
  }
}

/* Location:
 * Qualified Name:     bqj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */