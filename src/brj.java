import org.apache.http.util.CharArrayBuffer;

public final class brj
  extends brg
{
  private int d = -1;
  
  public brj(brg parambrg)
  {
    super(parambrg);
  }
  
  public final boolean a(CharArrayBuffer paramCharArrayBuffer)
  {
    int i = paramCharArrayBuffer.indexOf(59);
    int j = paramCharArrayBuffer.length();
    if (i > 0) {}
    for (;;)
    {
      try
      {
        d = Integer.parseInt(paramCharArrayBuffer.substringTrimmed(0, i), 16);
        return true;
      }
      catch (NumberFormatException paramCharArrayBuffer)
      {
        return false;
      }
      i = j;
    }
  }
  
  public final brg b()
  {
    if (d == 0) {
      return new brr(this);
    }
    b.clear();
    return new bri(this, d);
  }
  
  public final brg c()
  {
    return brt.d;
  }
  
  protected final int d()
  {
    return 16;
  }
  
  protected final int e()
  {
    return 256;
  }
  
  public final void f()
  {
    a.b(a());
    a.a(brt.d);
  }
}

/* Location:
 * Qualified Name:     brj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */