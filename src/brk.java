import org.apache.http.util.CharArrayBuffer;

public final class brk
  extends brg
{
  public brk(brg parambrg)
  {
    super(parambrg);
  }
  
  public final boolean a(int paramInt)
  {
    if (paramInt == -1)
    {
      a.b(a());
      a.a(brt.d);
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
      a.a(brt.d);
      return -1;
    }
    c += paramInt2;
    return paramInt2;
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
    return Integer.MAX_VALUE;
  }
  
  public final void f()
  {
    a.b(a());
    a.a(brt.d);
  }
}

/* Location:
 * Qualified Name:     brk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */